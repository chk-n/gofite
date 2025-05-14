package ast_test

import (
	"fmt"
	"testing"

	"github.com/cnordg/ast-group-project/src/ast"
	"github.com/cnordg/ast-group-project/src/generator"
	"github.com/cnordg/ast-group-project/src/schema"
)

func TestCharacteristicsVisitor(t *testing.T) {
	g := generator.New(&generator.Config{})
	sch := g.GenerateTable(1)

	s := &ast.Scope{
		Tables:  sch.Tables,
		Schema:  sch,
		Refs:    []schema.NamedRelation{},
		StmtSeq: make(map[string]uint),
	}

	stmt := g.GenerateStatement(nil, s)

	fmt.Printf("Generated Query:\n%s\n\n", stmt.Out())

	visitor := ast.NewCharacteristicsVisitor()
	visitor.Visit(stmt)

	fmt.Printf("Clause Counts: %v\n", visitor.ClauseCounts)
	fmt.Printf("Max Depth: %d\n", visitor.MaxDepth)
}
