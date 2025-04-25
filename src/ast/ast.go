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
	if parent != nil {
		return &Prod{
			parent: parent,
			level:  parent.level + 1,
			Scope:  parent.Scope,
		}
	}
	return &Prod{}
}

func (p *Prod) Level() int {
	return p.level
}

func (p *Prod) Indent() string {
	s := "\n"
	for range p.level {
		s = s + " "
	}
	return s
}

type TableRef interface {
	Production
	References() []schema.NamedRelation
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

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.hh#L247
type UpdateStmt struct {
	*Prod
	LocalScope *Scope
	Table      *schema.Table
	SetClause  *SetClause
	Where      *BoolExpr
}

func NewUpdateStmt(p *Prod, s *Scope, t schema.NamedRelation) *UpdateStmt {
	tab, ok := t.(*schema.Table)
	if !ok {
		panic("type assertion failed")
	}
	p = NewProd(p)
	s = NewScope(s)

	stmt := &UpdateStmt{
		Prod:       p,
		LocalScope: s,
		Table:      tab,
	}

	stmt.Scope = s

	return stmt
}

func (u *UpdateStmt) Out() string {
	var buf strings.Builder

	buf.WriteString("UPDATE ")
	buf.WriteString(u.Table.Name() + " ")
	buf.WriteString("\n")
	buf.WriteString(u.SetClause.Out())
	buf.WriteString("\n")
	buf.WriteString("WHERE ")
	buf.WriteString(u.Where.Out())

	return buf.String()
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.hh#L217
type SetClause struct {
	*Prod
	Values []ValueExpr
	Names  []string
}

func (c *SetClause) Out() string {
	var buf strings.Builder

	buf.WriteString("SET ")

	for i := range len(c.Names) {
		if i > 0 {
			buf.WriteString(", ")
		}

		buf.WriteString(c.Names[i])
		buf.WriteString(" = ")
		buf.WriteString(c.Values[i].Out())
	}

	return buf.String()
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.hh#L177
type DeleteStmt struct {
	*Prod
	LocalScope *Scope
	Table      *schema.Table
	Where      *BoolExpr
}

// NOTE: these `modifying_stmt` are all the same. We should
// probs refactor
func NewDeleteStmt(p *Prod, s *Scope, t schema.NamedRelation) *DeleteStmt {
	tab, ok := t.(*schema.Table)
	if !ok {
		panic("type assertion failed")
	}
	p = NewProd(p)
	s = NewScope(s)

	stmt := &DeleteStmt{
		Prod:       p,
		LocalScope: s,
		Table:      tab,
	}

	stmt.Scope = s

	return stmt
}

func (s *DeleteStmt) Out() string {
	var buf strings.Builder

	buf.WriteString("DELETE FROM ")
	buf.WriteString(s.Table.Name())
	buf.WriteString("\n")
	buf.WriteString("WHERE ")
	buf.WriteString(s.Where.Out())

	return buf.String()
}

// selectStmt represents a SELECT query
// https://sqlite.org/lang_select.html
type SelectStmt struct {
	*Prod
	LocalScope *Scope
	// TODO: add quantifier "ALL"
	SetQuantifier string
	SelectClause  *SelectClause
	FromClause    *FromClause
	WhereClause   *BoolExpr
	// TODO: add GROUP BY ... HAVING
	// TODO: add ORDER BY
	// TODO: add WINDOW
	// TODO: add compound op (UNION)
	LimitClause string
	// TODO: add OFFSET
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
	var buf strings.Builder
	buf.WriteString("SELECT ")
	if q.SetQuantifier != "" {
		buf.WriteString(q.SetQuantifier + " ")
	}
	buf.WriteString(q.SelectClause.Out())
	buf.WriteString(q.Prod.Indent())
	buf.WriteString(q.FromClause.Out())
	buf.WriteString(q.Prod.Indent())
	buf.WriteString("WHERE ")
	buf.WriteString(q.WhereClause.Out())
	if q.LimitClause != "" {
		buf.WriteString("\n")
		buf.WriteString(q.LimitClause)
	}
	return buf.String()
}

// fromClause represents the FROM part of a query
type FromClause struct {
	*Prod
	TableRefs []TableRef
}

func (f *FromClause) Out() string {
	var buf strings.Builder
	buf.WriteString("FROM ")
	for i, ref := range f.TableRefs {
		buf.WriteString(ref.Out())
		if i < len(f.TableRefs)-1 {
			buf.WriteString(", ")
		}
	}
	return buf.String()
}

type TableOrQueryName struct {
	*Prod
	Table schema.NamedRelation
	Refs  []schema.NamedRelation
}

func (t *TableOrQueryName) Out() string {
	return fmt.Sprintf("%s AS %s", t.Table.Name(), t.Refs[0].Name())
}

func (t *TableOrQueryName) References() []schema.NamedRelation {
	return t.Refs
}

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
	var buf strings.Builder
	for i, expr := range s.ValueExprs {
		buf.WriteString(expr.Out())
		buf.WriteString(" AS ")
		buf.WriteString(s.DerivedColumns[i].Ident())
		if i < len(s.ValueExprs)-1 {
			buf.WriteString(", ")
		}
	}
	return buf.String()
}

type AliasedRelation struct {
}

type TableSubquery struct {
	*Prod
	IsLateral bool
	Query     *SelectStmt
	// Refs      []schema.NamedRelation
}

func (t *TableSubquery) Out() string {
	var buf strings.Builder
	if t.IsLateral {
		buf.WriteString("LATERAL ")
	}
	buf.WriteString("(")
	buf.WriteString(t.Query.Out())
	buf.WriteString(") as ")
	buf.WriteString(t.Scope.Refs[0].Name())
	buf.WriteString(t.Indent())
	return buf.String()
}

func (t *TableSubquery) References() []schema.NamedRelation {
	return t.Scope.Refs
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

//

type JoinCondition interface {
	joinCondition()
	Out() string
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.hh#L85
type JoinedTable struct {
	*Prod
	// INNER, NATURAL OUTEr etc.
	Type      string
	Refs      []schema.NamedRelation
	Lhs       TableRef
	Rhs       TableRef
	Condition JoinCondition
	Alias     string
}

func (j *JoinedTable) Ident() string {
	return j.Alias
}

func (j *JoinedTable) References() []schema.NamedRelation {
	return j.Refs
}

func (j *JoinedTable) Out() string {
	var buf strings.Builder

	buf.WriteString(j.Lhs.Out())
	buf.WriteString(j.Prod.Indent())
	buf.WriteString(j.Type + " JOIN ")
	if nested, isNestedJoin := j.Rhs.(*JoinedTable); isNestedJoin {
		// Add parentheses around nested joins
		buf.WriteString("(")
		buf.WriteString(j.Prod.Indent())
		buf.WriteString(nested.Out())
		buf.WriteString(j.Prod.Indent())
		buf.WriteString(")")
	} else {
		buf.WriteString(j.Rhs.Out())
		buf.WriteString(j.parent.Indent())
	}

	if j.Condition != nil {
		buf.WriteString(" ON (" + j.Condition.Out() + ")")
	}

	return buf.String()
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.hh#L68
type SimpleJoinCondition struct {
	*Prod
	Condition string
}

func (c *SimpleJoinCondition) joinCondition() {}
func (c *SimpleJoinCondition) Out() string {
	return c.Condition
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.hh#L74
type ExpressionJoinCondition struct {
	*Prod
	LocalScope *Scope
	Lhs        TableRef
	Rhs        TableRef
	Where      *BoolExpr
}

func (c *ExpressionJoinCondition) joinCondition() {}
func (c *ExpressionJoinCondition) Out() string {
	return c.Where.Out()
}
