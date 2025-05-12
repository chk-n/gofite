package fuzzer

import (
	"context"
	"fmt"
	"hash/fnv"
	"log/slog"
	"os"
	"runtime"
	"strings"
	"sync"
	"sync/atomic"
	"time"

	"github.com/cnordg/ast-group-project/src/ast"
	"github.com/cnordg/ast-group-project/src/diff_test_engine"
	"github.com/cnordg/ast-group-project/src/generator"

	// To be tested version
	sqlite_old_driver "github.com/cnordg/ast-group-project/src/diff_test_engine/sqlite_3_26_driver"
	// Verifying version
	sqlite_new_driver "github.com/cnordg/ast-group-project/src/diff_test_engine/sqlite_3_39_4_driver"
)

// The general algorithm:
//
// Initial phase:
// 1. Generate random SQL queries
// 2. Execute those queries and gather
// coverage metrics
// 3. Build initial seed corpus with
// queries that had highest coverage
//
// Mutation based fuzzing
// 4. Get seed from corpus using a
// weighted selection algorithm
// 5. Mutate query using some strategy
// 6. Execute and gather coverage
// 7. If new coverage add to corpus
// 8. Maybe we randomly add fresh
// queries to corpus
// 9. Maybe we prune redundant seeds
// after some time.
// 10. Maybe we minimise complex queries?

type Config struct {
	Debug   bool
	Threads int
	// number of queries generated per batch
	BatchSize uint
	// Where error prone sql statements are stored
	OutDir string
}

type Fuzzer struct {
	// path to the sqlite executable
	exe string
	// directory to save queries that triggered error
	outDir string
	// batch size from config
	batchSize uint
	// global program coverage
	coverage atomic.Pointer[Coverage]
	ctx      context.Context
	// TODO: define corpus data structure
	corpus []ast.Prod
	// queries to be executed
	batches chan *Batch
	// queries that caused an error
	crash chan *Batch

	pool sync.Pool

	log *slog.Logger
}

func New(cfg *Config) *Fuzzer {
	opts := &slog.HandlerOptions{}
	if cfg.Debug {
		opts = &slog.HandlerOptions{
			Level: slog.LevelDebug, // Explicitly set the level
		}
	}
	// TODO: set config Threads
	f := &Fuzzer{
		batchSize: cfg.BatchSize,
		outDir:    cfg.OutDir,
		batches:   make(chan *Batch, 50_000), // TODO: empirically determine channel size
		crash:     make(chan *Batch, 1_000),  // TODO: empirically determine channel size
		pool: sync.Pool{
			New: func() any {
				return strings.Builder{}
			},
		},
		log: slog.New(slog.NewTextHandler(os.Stdout, opts)),
	}
	cov := NewCoverage()
	f.coverage.Store(cov)

	if cfg.Debug {
		f.log.Debug("[*] Initializing SQLite Differential Testing Engine")
		vOld, _, _ := sqlite_old_driver.Version()
		f.log.Debug("[**] Old SQLite Version", slog.String("version", vOld))
		vNew, _, _ := sqlite_new_driver.Version()
		f.log.Debug("[**] New SQLite Version", slog.String("version", vNew))
	}

	return f
}

func (f *Fuzzer) Fuzz() {
	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()

	f.ctx = ctx

	enoughCPU := runtime.NumCPU() >= 4
	if !enoughCPU {
		f.log.Error("not enough CPU cores for fuzzer", slog.Int("cores", runtime.NumCPU()))
		return
	}
	f.log.Debug("starting seed corpus generation")
	// start sql query generator
	go f.seedCorpus()

	// ratio between mutation vs execution is 1:4 // TODO: empirically determine ratio
	// mutateCPU := runtime.NumCPU() / 4
	// for range mutateCPU {
	// 	// TODO: mutator reads from corpus and
	// 	// mutates and generates new queries
	// 	go f.mutate()
	// }

	f.log.Debug("starting minimisation")
	go f.minimise()

	f.log.Debug("starting f.run")
	runCPU := (runtime.NumCPU() / 4) * 3
	for range runCPU {
		go f.run()
	}

	<-ctx.Done()

}

// generate an initial number of random sql queries
// to determine a set of interesting queries to use
// for corpus
func (f *Fuzzer) seedCorpus() {
	g := generator.New(&generator.Config{})
	for range 100_000 {
		stmts := g.NextBatchUID(f.batchSize)
		b := NewBatch(stmts[0].Schema().Out(), stmts)
		select {
		case f.batches <- b:
		default:
			// channel full
			f.log.Error("query channel full. ignoring batch")
		}
	}
}

// runs on one thread executing batches sequentially
func (f *Fuzzer) run() {
	for {
		b := <-f.batches

		// TODO: implement coverage
		// initialise new coverage bitmap
		// cov := NewCoverage()

		out := f.pool.Get().(strings.Builder)
		sql := b.String(out)

		// execute using diff_test_engine
		dte := diff_test_engine.New(f.log)

		if err := dte.ExecAndCompareSQLErrors(sql); err != nil {
			f.log.Info("crash detected!")
			b.err = err
			select {
			case f.crash <- b:
			default:
				dte.Close()
				// NOTE: idk if we first need to reset 'out' or not
				f.pool.Put(out)
				f.log.Error("crash channel full. ignoring batch")
				continue
			}
		}
		if err := dte.CompareDBStates(); err != nil {
			f.log.Info("mismatch detected in compareDB!")
			// fmt.Println("DEBUG (raw):", err.Error())
			b.err = err
			select {
			case f.crash <- b:
			default:
				dte.Close()
				// NOTE: idk if we first need to reset 'out' or not
				f.pool.Put(out)
				f.log.Error("crash channel full. ignoring batch")
				continue
			}
		}

		dte.Close()
		f.pool.Put(out)

		// cov.Collect()

		// 	cnt := 0
		// retry:
		// 	if cnt > 5 {
		// 		f.log.Error("retry limit reached: too much contention updating global coverage")
		// 		continue
		// 	}

		// 	old := f.coverage.Load()

		// 	// check if new coverage discovered
		// 	if !cov.Compare(old) {
		// 		continue
		// 	}
		// 	// update global coverage with new coverage atomically
		// 	upd := cov.Copy(old)
		// 	if !f.coverage.CompareAndSwap(old, upd) {
		// 		// if there was a conflict we wait a bit and retry
		// 		wait := time.Microsecond * time.Duration(1<<cnt) * time.Duration(rand.IntN(10))
		// 		time.Sleep(wait)
		// 		goto retry
		// 	}

		// TODO: send batch to be minimised or integrated with corpus
	}
}

// TODO: implement mutation startegy
func (f *Fuzzer) mutate() {
	for {
		// 1. read from corpus
		// 2. mutate according to some startegy
		// 3. pass batch to f.batches
	}
}

// minise batches to find first query which
// caused the crash
func (f *Fuzzer) minimise() {
	for {
		bs := <-f.crash
		n := bs.Len()

		if n == 0 {
			continue
		}

		b := f.binarySearch(bs, 0, n)

		out := f.pool.Get().(strings.Builder)
		defer f.pool.Put(out)

		// save to disk
		sql := b.CrashString(out)
		h := fnv.New64a()
		now := time.Now().UnixMilli()
		h.Write([]byte(sql))
		filePath := f.outDir + fmt.Sprintf("/crash-%d-%d.sql", now, h.Sum64())
		if err := os.WriteFile(filePath, []byte(sql), 0644); err != nil {
			f.log.Error("failed to write crash file", slog.String("error", err.Error()))
		}
	}
}

// reduces a batch to find the smallest set of sql statements
// that caused the issue. NOTE: returned minimal batch might
// contain sql statements not needed for error to be triggered
func (f *Fuzzer) binarySearch(b *Batch, l, h int) *Batch {
	if l-h <= 1 {
		// case 1: minimal batch consisting of one query
		return b
	}

	mid := (l + h) / 2

	out := f.pool.Get().(strings.Builder)
	defer f.pool.Put(out)

	// execute ls
	ls := b.Slice(l, mid)
	// TODO: check if it is okay to reuse dte for executing RHS
	// or if its better to create new dte instance
	dte := diff_test_engine.New(f.log)
	defer dte.Close()

	if err := dte.ExecAndCompareQuery(ls.String(out)); err != nil {
		return f.binarySearch(ls, l, mid)
	}
	// we need to reset as it was written to already
	out.Reset()

	// execute rs
	rs := b.Slice(mid, h)
	if err := dte.ExecAndCompareQuery(rs.String(out)); err != nil {
		return f.binarySearch(rs, mid, h)
	}

	// case 2: minimal batch consisting of multiple queries
	return b

}
