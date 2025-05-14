package diff_test_engine

import (
	"log/slog"
	"os"
	"testing"

	"github.com/cnordg/ast-group-project/src/generator"
)

// Test execution, the source code of this function indicates how to use the engine.
func TestDiffTestEngine(t *testing.T) {
	// Initialise DTE
	dte := New(slog.New(slog.NewTextHandler(os.Stdin, nil)))
	defer dte.Close()

	// Create random batch
	g := generator.New(nil)
	stmts := g.NextBatchRandom(10)
	batch := generator.NewBatch(stmts[0].Schema().Out(), stmts)

	// Run the same queries on both drivers
	if ok := dte.RunBatch(batch, true); !ok {
		t.Error("batch failed")
	}
}
