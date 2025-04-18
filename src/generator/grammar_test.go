package generator

import (
	"testing"

	"github.com/cnordg/ast-group-project/src/ast"
	"github.com/cnordg/ast-group-project/src/schema"
)

func TestGenerateTable(t *testing.T) {
	sch := generateTable(1)

	t.Log(sch.Out())

	named := []schema.NamedRelation{}
	for _, t := range sch.Tables {
		named = append(named, schema.NamedRelation{Name: t.Name, Columns: t.Cols})
	}
	s := &ast.Scope{
		Tables:  named,
		Schema:  sch,
		Refs:    []schema.NamedRelation{},
		StmtSeq: make(map[string]uint),
	}

	slct, err := generateStatement(s)
	if err != nil {
		t.Error(err.Error())
	}

	t.Error(slct.Out())
}
