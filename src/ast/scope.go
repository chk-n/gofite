package ast

import (
	"slices"

	"github.com/cnordg/ast-group-project/src/schema"
)

// Scope keeps track of the available tables,
// columns and schema that can be used within a
// given query
type Scope struct {
	parent *Scope
	// available Tables or aliased reliation that
	// can be used to reference in FROM clause.
	// This is different from Refs that can be used
	// within SELECT and WHERE clauses
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

func NewScope(parent *Scope) *Scope {
	if parent != nil {
		return &Scope{
			parent:  parent,
			Schema:  parent.Schema,
			Tables:  parent.Tables,
			Refs:    slices.Clone(parent.Refs),
			StmtSeq: parent.StmtSeq,
		}
	}
	return &Scope{
		StmtSeq: make(map[string]uint),
	}
}

// AvailableTypes may return duplicate types.
func (s *Scope) AvailableTypes() []schema.SqlType {
	var types []schema.SqlType

	for _, r := range s.Refs {
		for _, c := range r.Columns() {
			types = append(types, c.Type())
		}
	}

	return types
}

func (s *Scope) RefsOfType(t schema.SqlType) []schema.RelationColumn {
	res := []schema.RelationColumn{}
	for _, r := range s.Refs {
		for _, c := range r.Columns() {
			if c.Type() == t {
				res = append(res, schema.RelationColumn{Rel: r, Col: c})
			}
		}
	}
	return res
}
