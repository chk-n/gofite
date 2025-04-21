// this file contains the abstract sybtax tree
// of the generated queries
package ast

import (
	"fmt"
	"strings"

	"github.com/cnordg/ast-group-project/src/schema"
)

// production is the base interface for all SQL productions
type Production interface {
	// output the SQL representation
	Out() string
	Level() int
	// TODO: add visitor pattern
}

type Prod struct {
	parent *Prod
	// the current level in AST
	level int
	// Scope keeps track of column/table reference
	// visibility
	Scope *Scope
}

// Creates a new production struct one
// level deeper while keeping the scope
// the same
func NewProd(parent *Prod) *Prod {
	return &Prod{
		parent: parent,
		level:  parent.level + 1,
		Scope:  parent.Scope,
	}
}

func (p *Prod) Level() int {
	return p.level
}

func (p *Prod) Indent() string {
	s := ""
	for range p.level {
		s = s + " "
	}
	return s
}

type TableRef struct {
	*Prod
	Refs []schema.NamedRelation
}

func (t *TableRef) Out() string {
	var buf strings.Builder
	for i, ref := range t.Refs {
		buf.WriteString(ref.Name())
		if i < len(t.Refs)-1 {
			buf.WriteString(", ")
		}
	}

	return buf.String()
}

type InsertStmt struct {
	*Prod
	LocalScope *Scope
	Table      *schema.Table
	// If len == 0 then default values used in
	// insert statement
	Exprs []ValueExpr
}

func NewInsertStmt(p *Prod, s *Scope, t schema.NamedRelation) *InsertStmt {
	tab, ok := t.(*schema.Table)
	if !ok {
		panic("type assertion failed")
	}
	p = NewProd(p)
	s = NewScope(s)

	stmt := &InsertStmt{
		Prod:       p,
		LocalScope: s,
		Table:      tab,
	}

	stmt.Scope = s

	return stmt
}

func (i *InsertStmt) Out() string {
	var buffer strings.Builder

	buffer.WriteString("INSERT INTO ")
	buffer.WriteString(i.Table.Name())
	buffer.WriteString(" ")

	if len(i.Exprs) == 0 {
		buffer.WriteString("DEFAULT VALUES")
		return buffer.String()
	}

	buffer.WriteString("VALUES (")

	for idx, expr := range i.Exprs {
		if idx > 0 {
			buffer.WriteString(", ")
		}
		buffer.WriteString(expr.Out())
	}
	buffer.WriteString(")")

	return buffer.String()
}

// selectStmt represents a SELECT query
type SelectStmt struct {
	*Prod
	LocalScope    *Scope
	SetQuantifier string
	SelectList    *SelectClause
	FromClause    *FromClause
	WhereClause   *BoolExpr
	LimitClause   string
}

func NewSelectStmt(p *Prod, s *Scope, lateral bool) *SelectStmt {
	p = NewProd(p)

	stmt := &SelectStmt{
		Prod: p,
		LocalScope: &Scope{
			parent:  s,
			Schema:  s.Schema,
			StmtSeq: s.StmtSeq,
		},
	}

	stmt.Scope = stmt.LocalScope
	stmt.Scope.Tables = make([]schema.NamedRelation, len(s.Tables))
	copy(stmt.Scope.Tables, s.Tables)

	if lateral {
		stmt.Scope.Refs = make([]schema.NamedRelation, len(s.Refs))
		copy(stmt.Scope.Refs, s.Refs)
	}

	return stmt
}

func (q *SelectStmt) Out() string {
	// TODO: get indentation from level
	var builder strings.Builder
	builder.WriteString("SELECT ")
	if q.SetQuantifier != "" {
		builder.WriteString(q.SetQuantifier + " ")
	}
	builder.WriteString(q.SelectList.Out())
	builder.WriteString("\n")
	builder.WriteString(q.FromClause.Out())
	builder.WriteString("\n")
	builder.WriteString("WHERE ")
	builder.WriteString(q.WhereClause.Out())
	if q.LimitClause != "" {
		builder.WriteString("\n")
		builder.WriteString(q.LimitClause)
	}
	return builder.String()
}

// fromClause represents the FROM part of a query
type FromClause struct {
	*Prod
	TableRefs []TableRef
}

func (f *FromClause) Out() string {
	var builder strings.Builder
	builder.WriteString("FROM ")
	for i, ref := range f.TableRefs {
		builder.WriteString(ref.Out())
		if i < len(f.TableRefs)-1 {
			builder.WriteString(", ")
		}
	}
	return builder.String()
}

// type TableOrQueryName struct {
// 	Table schema.NamedRelation
// 	Refs  []schema.NamedRelation
// 	Alias string
// }

// func (t *TableOrQueryName) Out() string {
// 	return fmt.Sprintf("%s AS %s", t.Table.Ident(), t.Alias)
// }

// func (t *TableOrQueryName) References() []schema.NamedRelation {
// 	return t.Refs
// }

// aliasedRelation represents a relation with an alias
// type AliasedRelation struct {
// 	Name    string
// 	Columns []schema.Column
// }

// func (a *AliasedRelation) Ident() string {
// 	return a.Name
// }

// selectClause represents the list of expressions in a SELECT
type SelectClause struct {
	ValueExprs     []ValueExpr
	DerivedColumns []schema.Column
}

func (s *SelectClause) Out() string {
	var builder strings.Builder
	for i, expr := range s.ValueExprs {
		builder.WriteString(expr.Out())
		builder.WriteString(" AS ")
		builder.WriteString(s.DerivedColumns[i].Ident())
		if i < len(s.ValueExprs)-1 {
			builder.WriteString(", ")
		}
	}
	return builder.String()
}

// ----------------- //
// Value expressions //
// ----------------- //

// valueExpr is an interface for expressions that
// return a value
type ValueExpr interface {
	Out() string
	Type() schema.SqlType
}

// columnReference represents a reference to a column
type ColumnReference struct {
	Reference string
	Typ       schema.SqlType
}

func (c *ColumnReference) Out() string {
	return c.Reference
}

func (c *ColumnReference) Type() schema.SqlType {
	return c.Typ
}

// constExpr represents a constant value in SQL
type ConstExpr struct {
	Value string
	Typ   schema.SqlType
}

func (c *ConstExpr) Out() string {
	return c.Value
}

func (c *ConstExpr) Type() schema.SqlType {
	return c.Typ
}

// boolExpr represents a boolean expression
type BoolExpr struct {
	Left  ValueExpr
	Op    string
	Right ValueExpr
}

func (b *BoolExpr) Out() string {
	return fmt.Sprintf("%s %s %s", b.Left.Out(), b.Op, b.Right.Out())
}

func (b *BoolExpr) Type() schema.SqlType {
	return "BOOLEAN"
}
