package ast

import "github.com/cnordg/ast-group-project/src/schema"

// Scope keeps track of the available tables,
// columns and schema that can be used within a
// given query
type Scope struct {
	parent *Scope
	// available Tables or aliased reliation that
	// can be used to populate FROM clause during
	// generation
	Tables []schema.NamedRelation
	// available tables, columns, new tables
	// introduced during generation, subqueries
	// or CTEs that can be referenced during
	// generation
	Refs []schema.NamedRelation
	// the Schema of the database
	// NOTE: should not be modified
	Schema *schema.Schema
	// tracks unique identifiers to avoid reusing
	// idents which would cause syntax errors
	StmtSeq map[string]uint
}

func (s *Scope) RefsOfType(t schema.SqlType) []schema.RelationColumn {
	res := []schema.RelationColumn{}
	for _, r := range s.Refs {
		for _, c := range r.Columns {
			if c.Type() == t {
				res = append(res, schema.RelationColumn{Rel: r, Col: c})
			}
		}
	}
	return res
}
