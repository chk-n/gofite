package diff_test_engine

import (
	"log/slog"
	"os"
	"testing"

	_ "github.com/cnordg/ast-group-project/src/diff_test_engine/sqlite_3_26_driver"
	_ "github.com/cnordg/ast-group-project/src/diff_test_engine/sqlite_3_39_4_driver"
)

// Test execution, the source code of this function indicates how to use the engine.
func TestDiffTestEngine(t *testing.T) {
	var initSQL = `
		CREATE TABLE t(x INTEGER);
		INSERT INTO t VALUES (1), (2), (3);
	`

	// Create and initialize the databases
	dte := New(slog.New(slog.NewTextHandler(os.Stdin, nil)))

	_ = dte.ExecAndCompareSQLErrors(initSQL)

	// Run the same queries on both drivers
	query := "SELECT * FROM t WHERE x > 1;"
	if err := dte.ExecAndCompareQuery(query); err != nil {
		t.Error(err)
	}
	sql := "INSERT INTO t VALUES (21), (32), (13);"
	if err := dte.ExecAndCompareSQLErrors(sql); err != nil {
		t.Error(err)
	}
	if err := dte.CompareDBStates(); err != nil {
		t.Error(err)
	}
}
