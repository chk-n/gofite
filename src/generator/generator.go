package generator

import (
	"github.com/cnordg/ast-group-project/src/ast"
	"github.com/cnordg/ast-group-project/src/schema"
)

type Config struct {
	// whether query generation should yield
	// deterministic output that returns exact
	// same output no matter when it is run.
	IsDeterministic bool
}

type Generator struct {
	isDeterministic bool
	types           []schema.SqlType
}

func New(cfg *Config) *Generator {

	var types []schema.SqlType
	if cfg.IsDeterministic {
		types = []schema.SqlType{
			schema.INT, schema.TEXT,
			schema.BOOL, schema.NULL,
		}
	} else {
		types = []schema.SqlType{
			schema.NUMERIC, schema.INT, schema.TEXT,
			schema.BLOB, schema.BOOL, schema.NULL,
		}
	}
	return &Generator{
		isDeterministic: cfg.IsDeterministic,
		types:           types,
	}
}

// generates a batch of random sql queries.
// each batch creates a new table
func (g *Generator) NextBatchRandom(n uint) []ast.Prod {
	batch := make([]ast.Prod, n)

	sch := g.GenerateTable(1)

	for i := range n {
		s := &ast.Scope{
			Tables:  sch.Tables,
			Schema:  sch,
			StmtSeq: make(map[string]uint),
		}
		batch[i] = g.GenerateRandom(nil, s)
	}

	return batch
}

func (g *Generator) NextBatchUID(n uint) []ast.Prod {
	batch := make([]ast.Prod, n)

	sch := g.GenerateTable(1)

	for i := range n {
		s := &ast.Scope{
			Tables:  sch.Tables,
			Schema:  sch,
			StmtSeq: make(map[string]uint),
		}
		batch[i] = g.GenerateIUD(nil, s)
	}

	return batch
}

var uid_statements uint = 5

func (g *Generator) NextBatchStructured(n uint) []ast.Prod {
	assert(n > uid_statements, "Batch not large enough")
	batch := make([]ast.Prod, n)

	sch := g.GenerateTable(1)
	var i uint
	for i = range uid_statements {
		s := &ast.Scope{
			Tables:  sch.Tables,
			Schema:  sch,
			StmtSeq: make(map[string]uint),
		}
		batch[i] = g.GenerateIUD(nil, s)
	}

	for ; i < n; i++ {
		s := &ast.Scope{
			Tables:  sch.Tables,
			Schema:  sch,
			StmtSeq: make(map[string]uint),
		}
		batch[i] = g.GenerateStatement(nil, s)
	}

	return batch
}
