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

	g := New(&Config{IsDeterministic: false})

	debug = true
	nIter := 100
	for range nIter {
		sch := g.GenerateTable(1)
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

			q := g.GenerateSelect(nil, s)
			query := schemaSql + q.Out() + ";\n"
			cmd := exec.Command("/bin/sqlite3-3.26.0", ":memory:", query)
			var buf bytes.Buffer
			cmd.Stderr = &buf
			if err := cmd.Run(); err != nil {
				t.Fatalf("Query failed: %s\n%s",
					buf.String(), query)
			}
		}
	}
}

func TestCTEGeneration(t *testing.T) {
	t.Parallel()

	g := New(&Config{IsDeterministic: false})
	debug = true

	nIter := 500
	for range nIter {

		sch := g.GenerateTable(1)
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

			q := g.GenerateCTE(nil, s)
			query := schemaSql + q.Out() + ";\n"
			cmd := exec.Command("/bin/sqlite3-3.26.0", ":memory:", query)
			var buf bytes.Buffer
			cmd.Stderr = &buf
			if err := cmd.Run(); err != nil {
				t.Fatalf("Query failed: %s\n%s",
					buf.String(), query)
			}
		}
	}
}

func TestInsertGeneration(t *testing.T) {
	t.Parallel()

	g := New(&Config{IsDeterministic: false})
	debug = true
	nIter := 500
	for range nIter {
		sch := g.GenerateTable(1)
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

			q := g.GenerateInsert(nil, s)
			query := schemaSql + q.Out() + ";\n"
			cmd := exec.Command("/bin/sqlite3-3.26.0", ":memory:", query)
			var buf bytes.Buffer
			cmd.Stderr = &buf
			if err := cmd.Run(); err != nil {
				t.Fatalf("Query failed: %s\n%s",
					buf.String(), query)
			}
		}
	}
}

func TestUpdateGeneration(t *testing.T) {
	t.Parallel()

	g := New(&Config{IsDeterministic: false})
	debug = true
	nIter := 500
	for range nIter {

		sch := g.GenerateTable(1)
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

			q := g.GenerateUpdate(nil, s)
			query := schemaSql + q.Out() + ";\n"
			cmd := exec.Command("/bin/sqlite3-3.26.0", ":memory:", query)
			var buf bytes.Buffer
			cmd.Stderr = &buf
			if err := cmd.Run(); err != nil {
				t.Fatalf("Query failed: %s\n%s",
					buf.String(), query)
			}
		}
	}
}

func TestDeleteGeneration(t *testing.T) {
	t.Parallel()

	g := New(&Config{IsDeterministic: false})
	debug = true
	nIter := 500
	for range nIter {
		sch := g.GenerateTable(1)
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

			q := g.GenerateDelete(nil, s)
			query := schemaSql + q.Out() + ";\n"
			cmd := exec.Command("/bin/sqlite3-3.26.0", ":memory:", query)
			var buf bytes.Buffer
			cmd.Stderr = &buf
			if err := cmd.Run(); err != nil {
				t.Fatalf("Query failed: %s\n%s",
					buf.String(), query)
			}
		}
	}
}

func TestExplainGeneration(t *testing.T) {
	t.Parallel()

	g := New(&Config{IsDeterministic: false})
	debug = true
	nIter := 10
	for range nIter {
		sch := g.GenerateTable(1)
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

			q := g.GenerateExplain(nil, s)
			query := schemaSql + q.Out() + ";\n"
			cmd := exec.Command("/bin/sqlite3-3.26.0", ":memory:", query)
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

	g := New(&Config{IsDeterministic: false})
	debug = true
	nIter := 10
	for range nIter {
		sch := g.GenerateTable(1)
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

			q := g.GenerateAnalyse(nil, s)
			query := schemaSql + q.Out() + ";\n"
			cmd := exec.Command("/bin/sqlite3-3.26.0", ":memory:", query)
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

	g := New(&Config{IsDeterministic: false})
	debug = true
	nIter := 1000
	for range nIter {
		sch := g.GenerateTable(1)
		schemaSql := sch.Out() + "\n "

		s := &ast.Scope{
			Tables:  sch.Tables,
			Schema:  sch,
			Refs:    []schema.NamedRelation{},
			StmtSeq: make(map[string]uint),
		}

		q := g.GenerateVacuum(nil, s)
		query := schemaSql + q.Out() + ";\n"
		cmd := exec.Command("/bin/sqlite3-3.26.0", ":memory:", query)
		var buf bytes.Buffer
		cmd.Stderr = &buf
		if err := cmd.Run(); err != nil {
			t.Fatalf("Query failed: %s\n%s",
				buf.String(), query)
		}
	}
}

func TestCompoundGeneration(t *testing.T) {
	t.Parallel()

	g := New(&Config{IsDeterministic: false})
	debug = true
	nIter := 100
	for range nIter {
		sch := g.GenerateTable(1)
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

			q := g.GenerateCompound(nil, s)
			query := schemaSql + q.Out() + ";\n"
			cmd := exec.Command("/bin/sqlite3-3.26.0", ":memory:", query)
			var buf bytes.Buffer
			cmd.Stderr = &buf
			if err := cmd.Run(); err != nil {
				t.Fatalf("Query failed: %s\n%s",
					buf.String(), query)
			}
		}
	}
}

func TestSavepointGeneration(t *testing.T) {
	t.Parallel()

	g := New(&Config{IsDeterministic: false})
	debug = true
	nIter := 100
	for range nIter {
		sch := g.GenerateTable(1)
		schemaSql := sch.Out() + "\n "

		// generate queries
		nQueries := 250
		for range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			q := g.GenerateSavepoint(nil, s)
			query := schemaSql + q.Out() + ";\n"
			cmd := exec.Command("/bin/sqlite3-3.26.0", ":memory:", query)
			var buf bytes.Buffer
			cmd.Stderr = &buf
			if err := cmd.Run(); err != nil {
				t.Fatalf("Query failed: %s\n%s",
					buf.String(), query)
			}
		}
	}
}

func TestCreateView(t *testing.T) {
	t.Parallel()

	g := New(&Config{IsDeterministic: false})
	debug = true
	nIter := 100
	for range nIter {
		sch := g.GenerateTable(1)
		schemaSql := sch.Out() + "\n "

		// generate queries
		nQueries := 250
		for range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			q := g.GenerateView(nil, s)
			query := schemaSql + q.Out() + ";\n"
			cmd := exec.Command("/bin/sqlite3-3.26.0", ":memory:", query)
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
	g := New(&Config{IsDeterministic: false})
	schm := g.GenerateTable(1)

	for b.Loop() {
		// fresh s for each stmt
		s := &ast.Scope{
			Schema:  schm,
			Tables:  schm.Tables,
			Refs:    []schema.NamedRelation{},
			StmtSeq: make(map[string]uint),
		}

		stmt := g.GenerateSelect(nil, s)

		// check to avoid function from being optimised
		// away. not sure if this is still required in bench
		if stmt == nil {
			b.Fatal("Generated statement should not be nil")
		}
	}
}
