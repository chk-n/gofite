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

	nIter := 100
	for range nIter {
		sch := generateTable(1)
		schemaSql := sch.Out() + "\n "

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
			query := schemaSql + q.Out() + ";\n"
			cmd := exec.Command("./sqlite3-3.26.0", ":memory:", query)
			var buf bytes.Buffer
			cmd.Stderr = &buf
			if err := cmd.Run(); err != nil {
				t.Fatalf("Query failed: %s\nSchema:\n%s\nInsert:%s",
					buf.String(), schemaSql, query)
			}
		}
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
			query := schemaSql + q.Out() + ";\n"
			cmd := exec.Command("./sqlite3-3.26.0", ":memory:", query)
			var buf bytes.Buffer
			cmd.Stderr = &buf
			if err := cmd.Run(); err != nil {
				t.Fatalf("Query failed: %s\nSchema:\n%s\nInsert:%s",
					buf.String(), schemaSql, query)
			}
		}
	}
}

func TestInsertGeneration(t *testing.T) {
	t.Parallel()

	nIter := 500
	for range nIter {
		sch := generateTable(1)
		schemaSql := sch.Out() + "\n"
		// generate queries
		nQueries := 100
		for range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			q := GenerateInsert(nil, s)
			query := schemaSql + q.Out() + ";\n"
			cmd := exec.Command("./sqlite3-3.26.0", ":memory:", query)
			var buf bytes.Buffer
			cmd.Stderr = &buf
			if err := cmd.Run(); err != nil {
				t.Fatalf("Query failed: %s\nSchema:\n%s\nInsert:%s",
					buf.String(), schemaSql, query)
			}
		}
	}
}

func TestUpdateGeneration(t *testing.T) {
	t.Parallel()

	nIter := 500
	for range nIter {

		sch := generateTable(1)
		schemaSql := sch.Out() + "\n"
		// generate queries
		nQueries := 100
		for range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			q := GenerateUpdate(nil, s)
			query := schemaSql + q.Out() + ";\n"
			cmd := exec.Command("./sqlite3-3.26.0", ":memory:", query)
			var buf bytes.Buffer
			cmd.Stderr = &buf
			if err := cmd.Run(); err != nil {
				t.Fatalf("Query failed: %s\nSchema:\n%s\nInsert:%s",
					buf.String(), schemaSql, query)
			}
		}
	}
}

func TestDeleteGeneration(t *testing.T) {
	t.Parallel()

	nIter := 500
	for range nIter {
		sch := generateTable(1)
		schemaSql := sch.Out() + "\n"
		// generate queries
		nQueries := 100
		for range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			q := GenerateDelete(nil, s)
			query := schemaSql + q.Out() + ";\n"
			cmd := exec.Command("./sqlite3-3.26.0", ":memory:", query)
			var buf bytes.Buffer
			cmd.Stderr = &buf
			if err := cmd.Run(); err != nil {
				t.Fatalf("Query failed: %s\nSchema:\n%s\nInsert:%s",
					buf.String(), schemaSql, query)
func TestExplainGeneration(t *testing.T) {
	t.Parallel()

	nIter := 100
	for range nIter {
		sch := generateTable(1)
		schemaSql := sch.Out() + "\n "

		// generate queries
		nQueries := 500
		for range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			q := GenerateExplain(nil, s)
			query := schemaSql + q.Out() + ";\n"
			cmd := exec.Command("./sqlite3-3.26.0", ":memory:", query)
			var buf bytes.Buffer
			cmd.Stderr = &buf
			if err := cmd.Run(); err != nil {
				t.Fatalf("Query failed: %s\n%s",
					buf.String(), query)
			}
		}
	}
}

func TestAnalyseGeneration(t *testing.T) {
	t.Parallel()

	nIter := 10
	for range nIter {
		sch := generateTable(1)
		schemaSql := sch.Out() + "\n "

		// generate queries
		nQueries := 500
		for range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			q := GenerateAnalyse(nil, s)
			query := schemaSql + q.Out() + ";\n"
			cmd := exec.Command("./sqlite3-3.26.0", ":memory:", query)
			var buf bytes.Buffer
			cmd.Stderr = &buf
			if err := cmd.Run(); err != nil {
				t.Fatalf("Query failed: %s\n%s",
					buf.String(), query)
			}
		}
	}
}

func TestVacuumGeneration(t *testing.T) {
	t.Parallel()

	nIter := 10
	for range nIter {
		sch := generateTable(1)
		schemaSql := sch.Out() + "\n "

		// generate queries
		nQueries := 10
		for range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			q := GenerateVacuum(nil, s)
			query := schemaSql + q.Out() + ";\n"
			cmd := exec.Command("./sqlite3-3.26.0", ":memory:", query)
			var buf bytes.Buffer
			cmd.Stderr = &buf
			if err := cmd.Run(); err != nil {
				t.Fatalf("Query failed: %s\n%s",
					buf.String(), query)
			}
		}
	}
}

func BenchmarkGenerateSelect(b *testing.B) {
	schm := generateTable(1)

	for b.Loop() {
		// fresh s for each stmt
		s := &ast.Scope{
			Schema:  schm,
			Tables:  schm.Tables,
			Refs:    []schema.NamedRelation{},
			StmtSeq: make(map[string]uint),
		}

		stmt := GenerateSelect(nil, s)

		// check to avoid function from being optimised
		// away. not sure if this is still required in bench
		if stmt == nil {
			b.Fatal("Generated statement should not be nil")
		}
	}
}
