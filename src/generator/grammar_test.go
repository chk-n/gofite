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

// The goal of these tests is to generate a large
// variety of random SQL statements and ensure they
// are syntactically and semantically correct i.e.
// do not cause errors when executed on sqlite3.
// The tests generate 5 million queries per type
// (select, insert, update, delete) and executes
// them.

func TestSelectGeneration(t *testing.T) {
	t.Parallel()

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

		// generate and execute each query
		nQueries := 1_000
		for i := range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			slct := generateStatement(s)

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

func TestInsertGeneration(t *testing.T) {
	t.Parallel()

	nIter := 5_000
	for range nIter {
		db, err := sql.Open("sqlite3", ":memory:")
		if err != nil {
			t.Fatalf("Failed to open database: %v", err)
		}

		// each new connection creates a new in-memory db
		ctx, cancel := context.WithCancel(context.Background())
		conn, err := db.Conn(ctx)
		if err != nil {
			t.Fatalf("Failed to get db connection: %v", err)
		}

		// create schema
		sch := generateTable(1)
		schemaSQL := sch.Out()
		for stmt := range strings.SplitSeq(schemaSQL, ";") {
			if stmt = strings.TrimSpace(stmt); stmt == "" {
				continue
			}
			_, err = conn.ExecContext(ctx, stmt)
			if err != nil {
				t.Fatalf("Failed to execute schema creation: %v\nSQL: %s", err, stmt)
			}
		}

		// generate inserts
		nInserts := 1_000
		for j := range nInserts {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			p := &ast.Prod{
				Scope: s,
			}

			insertStmt := generateInsert(p, s)
			insertSQL := insertStmt.Out()

			_, err := conn.ExecContext(ctx, insertSQL)
			if err != nil {
				t.Errorf("Failed to execute insert %d: %v\nSchema: %s\nSQL: %s", j+1, err, schemaSQL, insertSQL)
			}
		}

		// verify data inserted
		for _, table := range sch.Tables {
			var count int
			err := conn.QueryRowContext(ctx, "SELECT COUNT(*) FROM "+table.Name()).Scan(&count)
			if err != nil {
				t.Errorf("Failed to count rows in table %s: %v", table.Name(), err)
			}

			if count != nInserts {
				t.Errorf("Expected %d rows in table %s, but found %d", nInserts, table.Name(), count)
			}
		}

		cancel()
		conn.Close()
		db.Close()
	}
}

func TestUpdateGeneration(t *testing.T) {
	t.Parallel()

	nIter := 5_000
	for range nIter {
		db, err := sql.Open("sqlite3", ":memory:")
		if err != nil {
			t.Fatalf("Failed to open database: %v", err)
		}

		// each new connection creates a new in-memory db
		ctx, cancel := context.WithCancel(context.Background())
		conn, err := db.Conn(ctx)
		if err != nil {
			t.Fatalf("Failed to get db connection: %v", err)
		}

		// create schema
		sch := generateTable(1)
		schemaSQL := sch.Out()
		for stmt := range strings.SplitSeq(schemaSQL, ";") {
			if stmt = strings.TrimSpace(stmt); stmt == "" {
				continue
			}
			_, err = conn.ExecContext(ctx, stmt)
			if err != nil {
				t.Fatalf("Failed to execute schema creation: %v\nSQL: %s", err, stmt)
			}
		}

		// generate updates
		nUpdates := 1_000
		for j := range nUpdates {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			p := &ast.Prod{
				Scope: s,
			}

			updateStmt := generateUpdate(p, s)
			updateSQL := updateStmt.Out()

			_, err := conn.ExecContext(ctx, updateSQL)
			if err != nil {
				t.Errorf("Failed to execute update %d: %v\nSchema: %s\nSQL: %s", j+1, err, schemaSQL, updateSQL)
			}
		}

		cancel()
		conn.Close()
		db.Close()
	}
}
func TestDeleteGeneration(t *testing.T) {
	t.Parallel()

	nIter := 5_000
	for range nIter {
		db, err := sql.Open("sqlite3", ":memory:")
		if err != nil {
			t.Fatalf("Failed to open database: %v", err)
		}

		// each new connection creates a new in-memory db
		ctx, cancel := context.WithCancel(context.Background())
		conn, err := db.Conn(ctx)
		if err != nil {
			t.Fatalf("Failed to get db connection: %v", err)
		}

		// create schema
		sch := generateTable(1)
		schemaSQL := sch.Out()
		for stmt := range strings.SplitSeq(schemaSQL, ";") {
			if stmt = strings.TrimSpace(stmt); stmt == "" {
				continue
			}
			_, err = conn.ExecContext(ctx, stmt)
			if err != nil {
				t.Fatalf("Failed to execute schema creation: %v\nSQL: %s", err, stmt)
			}
		}

		// generate deletes
		nDeletes := 1_000
		for j := range nDeletes {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			p := &ast.Prod{
				Scope: s,
			}

			deleteStmt := generateDelete(p, s)
			deleteSQL := deleteStmt.Out()

			_, err := conn.ExecContext(ctx, deleteSQL)
			if err != nil {
				t.Errorf("Failed to execute delete %d: %v\nSchema: %s\nSQL: %s", j+1, err, schemaSQL, deleteSQL)
			}
		}

		cancel()
		conn.Close()
		db.Close()
	}
}
