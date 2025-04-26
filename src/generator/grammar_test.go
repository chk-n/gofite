package generator

import (
	"bytes"
	"os/exec"
	"testing"

	"github.com/cnordg/ast-group-project/src/ast"
	"github.com/cnordg/ast-group-project/src/schema"
)

// The goal of these tests is to generate a large
// variety of random SQL statements and ensure they
// are syntactically and semantically correct i.e.
// do not cause errors when executed on sqlite3. The
// tests generate hundreds of thousands of queries per
// type (select, insert, update, delete) and executes
// them.

func TestSelectGeneration(t *testing.T) {
	t.Parallel()

	var buf bytes.Buffer
	cmd := exec.Command("./sqlite3-3.26.0", "-interactive", ":memory:")
	in, _ := cmd.StdinPipe()
	cmd.Stderr = &buf
	if err := cmd.Start(); err != nil {
		t.Fatal(err)
	}

	nIter := 1000
	for range nIter {

		sch := generateTable(1)
		schemaSql := sch.Out() + "\n"
		in.Write([]byte(schemaSql))
		// generate queries
		nQueries := 500
		for range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			q := GenerateSelect(nil, s)
			query := q.Out() + ";\n"

			if _, err := in.Write([]byte(query)); err != nil {
				t.Fatalf("unable to write to pipe: %s", err)
			}

			if buf.Len() > 0 {
				t.Fatalf("Query failed: %s\nSchema:\n%s\nInsert:%s",
					buf.String(), schemaSql, query)
			}
		}
		in.Write([]byte("DROP TABLE IF EXISTS t0;\n"))
	}
}

func TestCTEGeneration(t *testing.T) {
	t.Parallel()

	var buf bytes.Buffer
	cmd := exec.Command("./sqlite3-3.26.0", "-interactive", ":memory:")
	in, _ := cmd.StdinPipe()
	cmd.Stderr = &buf
	if err := cmd.Start(); err != nil {
		t.Fatal(err)
	}

	nIter := 500
	for range nIter {

		sch := generateTable(1)
		schemaSql := sch.Out() + "\n"
		in.Write([]byte(schemaSql))
		// generate queries
		nQueries := 100
		for range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			q := GenerateCTE(nil, s)
			query := q.Out() + ";\n"

			if _, err := in.Write([]byte(query)); err != nil {
				t.Fatalf("unable to write to pipe: %s", err)
			}

			if buf.Len() > 0 {
				t.Fatalf("Query failed: %s\nSchema:\n%s\nInsert:%s",
					buf.String(), schemaSql, query)
			}
		}
		in.Write([]byte("DROP TABLE IF EXISTS t0;\n"))
	}
}

func TestInsertGeneration(t *testing.T) {
	t.Parallel()

	var buf bytes.Buffer
	cmd := exec.Command("./sqlite3-3.26.0", "-interactive", ":memory:")
	in, _ := cmd.StdinPipe()
	cmd.Stderr = &buf
	if err := cmd.Start(); err != nil {
		t.Fatal(err)
	}

	nIter := 5000
	for range nIter {

		sch := generateTable(1)
		schemaSql := sch.Out() + "\n"
		in.Write([]byte(schemaSql))
		// generate queries
		nQueries := 1000
		for range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			q := GenerateInsert(nil, s)
			query := q.Out() + ";\n"
			if _, err := in.Write([]byte(query)); err != nil {
				t.Fatalf("unable to write to pipe: %s", err)
			}

			if buf.Len() > 0 {
				t.Fatalf("Query failed: %s\nSchema:\n%s\nInsert:%s",
					buf.String(), schemaSql, query)
			}
		}
		in.Write([]byte("DROP TABLE IF EXISTS t0;\n"))
	}
}

func TestUpdateGeneration(t *testing.T) {
	t.Parallel()

	var buf bytes.Buffer
	cmd := exec.Command("./sqlite3-3.26.0", "-interactive", ":memory:")
	in, _ := cmd.StdinPipe()
	cmd.Stderr = &buf
	if err := cmd.Start(); err != nil {
		t.Fatal(err)
	}

	nIter := 5000
	for range nIter {

		sch := generateTable(1)
		schemaSql := sch.Out() + "\n"
		in.Write([]byte(schemaSql))
		// generate queries
		nQueries := 1000
		for range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			q := GenerateUpdate(nil, s)
			query := q.Out() + ";\n"

			if _, err := in.Write([]byte(query)); err != nil {
				t.Fatalf("unable to write to pipe: %s", err)
			}

			if buf.Len() > 0 {
				t.Fatalf("Query failed: %s\nSchema:\n%s\nInsert:%s",
					buf.String(), schemaSql, query)
			}
		}
		in.Write([]byte("DROP TABLE IF EXISTS t0;\n"))
	}
}

func TestDeleteGeneration(t *testing.T) {
	t.Parallel()

	var buf bytes.Buffer
	cmd := exec.Command("./sqlite3-3.26.0", "-interactive", ":memory:")
	in, _ := cmd.StdinPipe()
	cmd.Stderr = &buf
	if err := cmd.Start(); err != nil {
		t.Fatal(err)
	}

	nIter := 5000
	for range nIter {

		sch := generateTable(1)
		schemaSql := sch.Out() + "\n"
		in.Write([]byte(schemaSql))
		// generate queries
		nQueries := 1000
		for range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			q := GenerateDelete(nil, s)
			query := q.Out() + ";\n"

			if _, err := in.Write([]byte(query)); err != nil {
				t.Fatalf("unable to write to pipe: %s", err)
			}

			if buf.Len() > 0 {
				t.Fatalf("Query failed: %s\nSchema:\n%s\nInsert:%s",
					buf.String(), schemaSql, query)
			}
		}
		in.Write([]byte("DROP TABLE IF EXISTS t0;\n"))
	}
}

// func BenchmarkGenerateSelect(b *testing.B) {
// 	schm := generateTable(1)

// 	for b.Loop() {
// 		// fresh s for each stmt
// 		s := &ast.Scope{
// 			Schema:  schm,
// 			Tables:  schm.Tables,
// 			Refs:    []schema.NamedRelation{},
// 			StmtSeq: make(map[string]uint),
// 		}

// 		p := &ast.Prod{
// 			Scope: s,
// 		}

// 		stmt := generateSelect(p, s)

// 		// check to avoid function from being optimised
// 		// away. not sure if this is still required in bench
// 		if stmt == nil {
// 			b.Fatal("Generated statement should not be nil")
// 		}
// 	}
// }
