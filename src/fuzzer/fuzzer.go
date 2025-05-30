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
)

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
	// coverage *Coverage
	ctx     context.Context
	mainCtx context.Context
	// TODO: define corpus data structure
	corpus []ast.Prod
	// queries to be executed
	batchesRandom     chan *generator.Batch
	batchesStructured chan *generator.Batch
	// queries that caused an error
	crash chan *generator.Batch

	verifiedCrash chan *generator.Batch

	startTime  time.Time
	queriesCnt atomic.Int64

	pool *sync.Pool
	mu   sync.RWMutex

	log *slog.Logger
}

func New(cfg *Config, ctx context.Context) *Fuzzer {
	opts := &slog.HandlerOptions{}
	if cfg.Debug {
		opts = &slog.HandlerOptions{
			Level: slog.LevelDebug, // Explicitly set the level
		}
	}

	f := &Fuzzer{
		batchSize:         cfg.BatchSize,
		outDir:            cfg.OutDir,
		batchesRandom:     make(chan *generator.Batch, 5_000),
		batchesStructured: make(chan *generator.Batch, 5_000),
		crash:             make(chan *generator.Batch, 100),
		// coverage: NewCoverage(),
		pool: &sync.Pool{
			New: func() any {
				return &strings.Builder{}
			},
		},
		mainCtx: ctx,
		log:     slog.New(slog.NewTextHandler(os.Stdout, opts)),
	}

	return f
}

func (f *Fuzzer) Fuzz() {
	f.startTime = time.Now()
	f.ctx = context.Background()

	enoughCPU := runtime.NumCPU() >= 4
	if !enoughCPU {
		f.log.Error("not enough CPU cores for fuzzer", slog.Int("cores", runtime.NumCPU()))
		return
	}

	f.log.Debug("starting random input generator")
	go f.randomInput()

	f.log.Debug("starting structured input generator")
	go f.structuredInput()

	f.log.Debug("starting minimisation")
	go f.minimise()

	f.log.Debug("starting crash runner")
	for range runtime.NumCPU() {
		go f.run()
	}

	f.log.Debug("starting comparison runner")
	for range runtime.NumCPU() {
		go f.runCmp()
	}

	f.log.Debug("starting statistics reporter")
	go f.reportStats()

	// block forever
	select {}
}

// Report statistics on queries per second
func (f *Fuzzer) reportStats() {
	ticker := time.NewTicker(1 * time.Second)
	defer ticker.Stop()

	for {
		select {
		case <-ticker.C:
			elapsed := time.Since(f.startTime).Seconds()
			queries := f.queriesCnt.Load()
			qps := float64(queries) / elapsed

			f.log.Info(fmt.Sprintf("N: %d, Elapsed: %.2fs, QPS: %.2f",
				queries, elapsed, qps))

		case <-f.ctx.Done():
			return
		}
	}
}

// generate many random sql queries
func (f *Fuzzer) randomInput() {
	g := generator.New(&generator.Config{IsDeterministic: false})
	for {
		stmts := g.NextBatchRandom(f.batchSize)
		b := generator.NewBatch(stmts[0].Schema().Out(), stmts)
		select {
		case f.batchesRandom <- b:
		default:
			// channel full
			time.Sleep(2 * time.Second)
			f.log.Error("query channel full. ignoring batch")
		}
		time.Sleep(10 * time.Millisecond)
	}
}

func (f *Fuzzer) structuredInput() {
	g := generator.New(&generator.Config{IsDeterministic: true})
	for {
		stmts := g.NextBatchStructured(f.batchSize)
		b := generator.NewBatch(stmts[0].Schema().Out(), stmts)
		select {
		case f.batchesStructured <- b:
		default:
			// channel full
			time.Sleep(2 * time.Second)
			f.log.Error("query channel full. ignoring batch")
		}
		time.Sleep(10 * time.Millisecond)
	}
}

// runs on one thread executing batches sequentially
// using non-deterministic compeltely random queries
func (f *Fuzzer) run() {
	// execute using diff_test_engine
	dte := diff_test_engine.New(f.log, f.pool)
	defer dte.Close()
	for {
		select {
		case <-f.mainCtx.Done():
			return
		default:
			b := <-f.batchesRandom
			f.queriesCnt.Add(int64(f.batchSize))

			ok := dte.RunBatch(b, true)
			if !ok {
				f.log.Info("bug detected! verifying...")
				select {
				case f.crash <- b:
				default:
					f.log.Error("crash channel full. ignoring batch")
					continue
				}
			}
		}
	}
}

// runs on one thread executing batches sequentially
func (f *Fuzzer) runCmp() {
	// execute using diff_test_engine
	dte := diff_test_engine.New(f.log, f.pool)
	defer dte.Close()
	for {
		select {
		case <-f.mainCtx.Done():
			return
		default:
			b, _ := <-f.batchesStructured

			f.queriesCnt.Add(int64(f.batchSize))

			ok := dte.RunBatch(b, false)
			if !ok {
				f.log.Info("bug detected! verifying...")
				select {
				case f.crash <- b:
				default:
					f.log.Error("crash channel full. ignoring batch")
					continue
				}
			}
		}
	}
}

// minise batches to find first query which
// caused the crash
func (f *Fuzzer) minimise() {
	for {
		bs, _ := <-f.crash
		n := bs.Len()

		if n == 0 {
			continue
		}

		b := bs
		// b := f.binarySearch(bs, 0, n)

		out := f.pool.Get().(*strings.Builder)

		// save to disk
		sql := b.CrashString(out)
		h := fnv.New64a()
		now := time.Now().UnixMilli()
		h.Write([]byte(sql))
		filePath := f.outDir + fmt.Sprintf("/crash-%d-%d.sql", now, h.Sum64())
		if err := os.WriteFile(filePath, []byte(sql), 0644); err != nil {
			f.log.Error("failed to write crash file", slog.String("error", err.Error()))
		}
		out.Reset()
		f.pool.Put(out)
	}
}

// reduces a batch to find the smallest set of sql statements
// that caused the issue. NOTE: returned minimal batch might
// contain sql statements not needed for error to be triggered
// func (f *Fuzzer) binarySearch(b *generator.Batch, l, h int) *generator.Batch {
// if l-h <= 1 {
// 	// case 1: minimal batch consisting of one query
// 	return b
// }

// mid := (l + h) / 2

// out := f.pool.Get().(*strings.Builder)
// defer out.Reset()
// defer f.pool.Put(out)

// // execute ls
// ls := b.Slice(l, mid)
// // TODO: check if it is okay to reuse dte for executing RHS
// // or if its better to create new dte instance
// dte := diff_test_engine.New(f.log)
// defer dte.Close()

// if err := dte.ExecAndCompareQuery(ls.String(out)); err != nil {
// 	return f.binarySearch(ls, l, mid)
// }
// // we need to reset as it was written to already
// out.Reset()

// // execute rs
// rs := b.Slice(mid, h)
// if err := dte.ExecAndCompareQuery(rs.String(out)); err != nil {
// 	return f.binarySearch(rs, mid, h)
// }

// // case 2: minimal batch consisting of multiple queries
// return b
// }
