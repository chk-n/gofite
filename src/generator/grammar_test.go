package generator

import (
	"bytes"
	"fmt"
	"io"
	"os"
	"os/exec"
	"strings"
	"testing"

	"github.com/cnordg/ast-group-project/src/ast"
	"github.com/cnordg/ast-group-project/src/schema"
)

// The goal of these tests is to generate a large
// variety of random SQL statements and ensure they
// are syntactically and semantically correct i.e.
// do not cause errors when executed on sqlite3.
// The tests generate 5 million queries per type
// (select, insert, update, delete) and executes
// them.

// one container spun up for all tests
var containerId string
var in io.WriteCloser

func TestMain(m *testing.M) {
	// launch container
	untarCmd := exec.Command("unzip", "sqlite3-test.zip")
	var errBuf bytes.Buffer
	untarCmd.Stderr = &errBuf
	if err := untarCmd.Run(); err != nil && !strings.Contains(errBuf.String(), "File exist") {
		panic(fmt.Sprintf("failed to uncompress .tar.xz: %v", err))
	}
	cmd := exec.Command("docker", "load", "-i", "sqlite3-test.tar")
	cmd.Stderr = os.Stderr
	if err := cmd.Run(); err != nil {
		panic(fmt.Sprintf("failed to load Docker image: %v", err))
	}
	startCmd := exec.Command("docker", "run", "-d", "--rm", "sqlite3-test:latest", "tail", "-f", "/dev/null")
	output, err := startCmd.Output()
	if err != nil {
		panic(fmt.Sprintf("failed to start container: %v", err))
	}
	containerId = string(output)[:12]

	// initialise persistent in-memory db
	execCmd := exec.Command("docker", "exec", "-i", containerId, "/usr/bin/sqlite3-3.26.0", "-interactive", ":memory:")
	var stderr bytes.Buffer
	execCmd.Stderr = &stderr
	in, err = execCmd.StdinPipe()
	if err != nil {
		panic("unable to get stdin pipe: " + err.Error())
	}
	if err := execCmd.Start(); err != nil {
		panic("failed to start SQLite process: " + err.Error())
	}

	// NOTE: did some testing but nothing
	// dramatically reduced execution time
	// https://www.sqlite.org/pragma.html
	// initCommands := []string{
	// 	"PRAGMA synchronous=OFF;",
	// 	"PRAGMA journal_mode=OFF;",
	// 	"PRAGMA temp_store=MEMORY;",
	// 	"PRAGMA mmap_size = 0;",
	// 	"PRAGMA count_changes = OFF;",
	// 	"PRAGMA cell_size_check = OFF;",
	// 	"PRAGMA ignore_check_constraints = ON;",
	// 	"PRAGMA defer_foreign_keys = ON;",
	// 	"PRAGMA soft_heap_limit = 10000000;",
	// }
	// for _, cmd := range initCommands {
	// 	if _, err := in.Write([]byte(cmd + ";\n")); err != nil {
	// 		panic("unable to write to pipe: " + err.Error())
	// 	}
	// }

	// run all tests
	exitCode := m.Run()

	if stderr.Len() != 0 {
		panic(stderr.String())
	}
	// clean up
	in.Close()
	stopCmd := exec.Command("docker", "stop", containerId)
	stopCmd.Run()
	containerId = ""

	os.Exit(exitCode)
}

func TestSelectGeneration(t *testing.T) {
	nIter := 500
	for range nIter {
		sch := generateTable(1)
		schemaSQL := sch.Out()

		if _, err := in.Write([]byte(schemaSQL + ";\n")); err != nil {
			t.Fatalf("Failed to create schema: %v", err)
		}

		// generate and execute each query
		nQueries := 1000
		for range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}
			p := ast.NewProd(nil)

			slct := generateSelect(p, s)

			selectSQL := slct.Out()
			selectSQL += ";\n"

			if _, err := in.Write([]byte(selectSQL)); err != nil {
				t.Fatalf("Failed to write to pipe: %s", err)
			}
		}
		// Drop the table after all queries for this iteration
		dropSQL := "DROP TABLE IF EXISTS t0;\n"
		if _, err := in.Write([]byte(dropSQL)); err != nil {
			t.Fatalf("Failed to drop table: %v", err)
		}
	}
}

func TestInsertGeneration(t *testing.T) {
	nIter := 500
	for range nIter {
		sch := generateTable(1)
		schemaSQL := sch.Out()

		if _, err := in.Write([]byte(schemaSQL + ";\n")); err != nil {
			t.Fatalf("Failed to create schema: %v", err)
		}

		// generate and execute each query
		nQueries := 1000
		for range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}
			p := ast.NewProd(nil)

			slct := generateInsert(p, s)

			selectSQL := slct.Out()
			selectSQL += ";\n"

			if _, err := in.Write([]byte(selectSQL)); err != nil {
				t.Fatalf("Failed to write to pipe: %s", err)
			}
		}
		// Drop the table after all queries for this iteration
		dropSQL := "DROP TABLE IF EXISTS t0;\n"
		if _, err := in.Write([]byte(dropSQL)); err != nil {
			t.Fatalf("Failed to drop table: %v", err)
		}
	}
}

func TestUpdateGeneration(t *testing.T) {
	nIter := 500
	for range nIter {
		sch := generateTable(1)
		schemaSQL := sch.Out()

		if _, err := in.Write([]byte(schemaSQL + ";\n")); err != nil {
			t.Fatalf("Failed to create schema: %v", err)
		}

		// generate and execute each query
		nQueries := 1000
		for range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}
			p := ast.NewProd(nil)

			slct := generateUpdate(p, s)

			selectSQL := slct.Out()
			selectSQL += ";\n"

			if _, err := in.Write([]byte(selectSQL)); err != nil {
				t.Fatalf("Failed to write to pipe: %s", err)
			}
		}
		// Drop the table after all queries for this iteration
		dropSQL := "DROP TABLE IF EXISTS t0;\n"
		if _, err := in.Write([]byte(dropSQL)); err != nil {
			t.Fatalf("Failed to drop table: %v", err)
		}
	}
}

func TestDeleteGeneration(t *testing.T) {
	nIter := 500
	for range nIter {
		sch := generateTable(1)
		schemaSQL := sch.Out()

		if _, err := in.Write([]byte(schemaSQL + ";\n")); err != nil {
			t.Fatalf("Failed to create schema: %v", err)
		}

		// generate and execute each query
		nQueries := 1000
		for range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}
			p := ast.NewProd(nil)

			slct := generateDelete(p, s)

			selectSQL := slct.Out()
			selectSQL += ";\n"

			if _, err := in.Write([]byte(selectSQL)); err != nil {
				t.Fatalf("Failed to write to pipe: %s", err)
			}
		}
		// Drop the table after all queries for this iteration
		dropSQL := "DROP TABLE IF EXISTS t0;\n"
		if _, err := in.Write([]byte(dropSQL)); err != nil {
			t.Fatalf("Failed to drop table: %v", err)
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

		p := &ast.Prod{
			Scope: s,
		}

		stmt := generateSelect(p, s)

		// check to avoid function from being optimised
		// away. not sure if this is still required in bench
		if stmt == nil {
			b.Fatal("Generated statement should not be nil")
		}
	}
}
