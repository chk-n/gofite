package generator

import (
	"github.com/cnordg/ast-group-project/src/ast"
)

type Config struct{}

type generator struct{}

func New(cfg *Config) *generator {
	return &generator{}
}

// generates the next random sql query
func (g *generator) Next() string {
	panic("implement me")
}

// generates a batch of random sql queries.
// each batch creates a new table
func (g *generator) NextBatchRandom(n uint) []ast.Prod {
	batch := make([]ast.Prod, n)

	sch := generateTable(1)

	for i := range n {
		s := &ast.Scope{
			Tables:  sch.Tables,
			Schema:  sch,
			StmtSeq: make(map[string]uint),
		}
		batch[i] = GenerateStatement(nil, s)
	}

	return batch
}

func (g *generator) NextBatchUID(n uint) []ast.Prod {
	batch := make([]ast.Prod, n)

	sch := generateTable(1)

	for i := range n {
		s := &ast.Scope{
			Tables:  sch.Tables,
			Schema:  sch,
			StmtSeq: make(map[string]uint),
		}
		batch[i] = GenerateIUD(nil, s)
	}

	return batch
}
