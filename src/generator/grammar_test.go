package generator

import (
	"bufio"
	"context"
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
// do not cause errors when executed on sqlite3. The
// tests generate hundreds of thousands of queries per
// type (select, insert, update, delete) and executes
// them.

// backlog of queries to be processed
var backCh = make(chan string, 2000)

// only one query can be processed at a time
var curCh = make(chan string, 1)

func TestMain(t *testing.M) {
	// setup interactive in-memory persistent db
	cmd := exec.CommandContext(context.Background(), "./sqlite3-3.26.0", "-interactive", ":memory:")

	stdin, _ := cmd.StdinPipe()
	stdout, _ := cmd.StdoutPipe()
	stderr, _ := cmd.StderrPipe()

	// unblock current query if we see output in stdout
	go func() {
		scanner := bufio.NewScanner(stdout)
		for scanner.Scan() {
			line := scanner.Text()
			if strings.Contains(line, "sqlite>") {
				<-curCh
			}
		}
	}()

	// if an error occurs read query that triggered
	// which also unblocks channel allowing next query
	// to be processed.
	go func() {
		scanner := bufio.NewScanner(stderr)
		for scanner.Scan() {
			line := scanner.Text()
			var buf strings.Builder
			buf.WriteString("-----------------------\n")
			buf.WriteString("SQL:")
			buf.WriteString(<-curCh)
			buf.WriteString("\nError: ")
			buf.WriteString(line)
			buf.WriteString("\n-----------------------")
			panic(buf.String())
		}
	}()

	// process one query at a time
	go func() {
		for sql := range backCh {
			if _, err := stdin.Write([]byte(sql)); err != nil {
				panic("unable to write to stdin pipe: " + err.Error())
			}
			curCh <- sql
		}
	}()

	if err := cmd.Start(); err != nil {
		panic("error starting cmd: " + err.Error())
	}

	exit := t.Run()

	close(backCh)
	close(curCh)

	if err := cmd.Cancel(); err != nil {
		panic("error waiting for cmd: " + err.Error())
	}
	os.Exit(exit)
}

func TestSelectGeneration(t *testing.T) {
	t.Parallel()
	nIter := 500
	for range nIter {
		var buf strings.Builder
		sch := generateTable(1)
		buf.WriteString(sch.Out() + "\n")

		// generate queries
		nQueries := 10_000
		for range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			slct := GenerateSelect(nil, s)
			buf.WriteString(slct.Out() + ";\n")
		}
		// Drop the table after all queries for this iteration
		buf.WriteString("DROP TABLE IF EXISTS t0;\n")

		backCh <- buf.String()
	}
}

func TestCTEGeneration(t *testing.T) {
	t.Parallel()
	nIter := 500
	for range nIter {
		var buf strings.Builder
		sch := generateTable(1)
		buf.WriteString(sch.Out() + "\n")

		// generate queries
		nQueries := 1000
		for range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			cte := GenerateCTE(nil, s)
			buf.WriteString(cte.Out() + ";\n")
		}
		// Drop the table after all queries for this iteration
		buf.WriteString("DROP TABLE IF EXISTS t0;\n")

		backCh <- buf.String()
	}
}

func TestInsertGeneration(t *testing.T) {
	t.Parallel()
	nIter := 50_000
	for range nIter {
		var buf strings.Builder
		sch := generateTable(1)
		buf.WriteString(sch.Out() + "\n")

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
			buf.WriteString(q.Out() + ";\n")
		}
		// Drop the table after all queries for this iteration
		buf.WriteString("DROP TABLE IF EXISTS t0;\n")

		backCh <- buf.String()
	}
}

func TestUpdateGeneration(t *testing.T) {
	t.Parallel()
	nIter := 500
	for range nIter {
		var buf strings.Builder
		sch := generateTable(1)
		buf.WriteString(sch.Out() + "\n")

		// generate queries
		nQueries := 10_000
		for range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			q := GenerateUpdate(nil, s)
			buf.WriteString(q.Out() + ";\n")
		}
		// Drop the table after all queries for this iteration
		buf.WriteString("DROP TABLE IF EXISTS t0;\n")

		backCh <- buf.String()
	}
}

func TestDeleteGeneration(t *testing.T) {
	t.Parallel()
	nIter := 500
	for range nIter {
		var buf strings.Builder
		sch := generateTable(1)
		buf.WriteString(sch.Out() + "\n")

		// generate queries
		nQueries := 10_000
		for range nQueries {
			s := &ast.Scope{
				Tables:  sch.Tables,
				Schema:  sch,
				Refs:    []schema.NamedRelation{},
				StmtSeq: make(map[string]uint),
			}

			q := GenerateDelete(nil, s)
			buf.WriteString(q.Out() + ";\n")
		}
		// Drop the table after all queries for this iteration
		buf.WriteString("DROP TABLE IF EXISTS t0;\n")

		backCh <- buf.String()
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
