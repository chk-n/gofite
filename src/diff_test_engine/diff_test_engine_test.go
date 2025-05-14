package diff_test_engine

import (
	"log/slog"
	"os"
	"strings"
	"sync"
	"testing"

	"github.com/cnordg/ast-group-project/src/generator"
)

// Test execution, the source code of this function indicates how to use the engine.
func TestDiffTestEngine(t *testing.T) {
	// Initialise DTE
	p := &sync.Pool{
		New: func() any {
			return &strings.Builder{}
		},
	}
	dte := New(slog.New(slog.NewTextHandler(os.Stdin, nil)), p)
	defer dte.Close()

	// Create random batch
	g := generator.New(&generator.Config{})
	stmts := g.NextBatchRandom(10)
	batch := generator.NewBatch(stmts[0].Schema().Out(), stmts)

	// Run the same queries on both drivers
	if ok := dte.RunBatch(batch, true); !ok {
		t.Error("batch failed")
	}
}
