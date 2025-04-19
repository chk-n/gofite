package generator

import (
	"context"
	"database/sql"
	"strings"
	"testing"

	"github.com/cnordg/ast-group-project/src/ast"
	"github.com/cnordg/ast-group-project/src/schema"

	_ "github.com/mattn/go-sqlite3"
)

// This test generates a random schema and 1k queries
// 5k times to ensure we generate syntactically and
// semantically valid queries
// NOTE: currently takes ~300 seconds
func TestSelectGeneration(t *testing.T) {

	nIter := 5_000
	for range nIter {
		db, err := sql.Open("sqlite3", ":memory:")
		if err != nil {
			t.Fatalf("Failed to open database: %v", err)
		}
		// db.SetMaxOpenConns(1)
		// db.SetMaxIdleConns(1)
		// db.SetConnMaxLifetime(0)

		// each new connection creates a new in-memory db
		ctx, cancel := context.WithCancel(context.Background())
		conn, err := db.Conn(ctx)
		if err != nil {
			t.Fatalf("Failed to get db connection: %v", err)
		}

		sch := generateTable(1)

		schemaSQL := sch.Out()

		for stmt := range strings.SplitSeq(schemaSQL, ";") {
			if stmt == "" {
				continue
			}
			_, err = conn.ExecContext(ctx, stmt)
			if err != nil {
				t.Fatalf("Failed to execute schema creation: %v\nSQL: %s", err, stmt)
			}
		}

		// NOTE: the fact we need to convert here is an issue
		// with how we define structs without abstractions atm
		named := []schema.NamedRelation{}
		for _, table := range sch.Tables {
			named = append(named, schema.NamedRelation{Name: table.Name, Columns: table.Cols})
		}

		// generate and execute each query
		nQueries := 1_000
		for i := range nQueries {
			s := &ast.Scope{
				Tables:  named,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			slct, err := generateStatement(s)
			if err != nil {
				t.Errorf("Failed to generate statement for query %d: %v", i+1, err)
				continue
			}

			selectSQL := slct.Out()
			if _, err := conn.QueryContext(ctx, selectSQL); err != nil {
				t.Errorf("Failed to execute query %d: %v\nSchema: %s\nSQL: %s", i+1, err, schemaSQL, selectSQL)
			}
		}

		cancel()
		conn.Close()
		db.Close()
	}
}
