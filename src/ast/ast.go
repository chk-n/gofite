// this file contains the abstract sybtax tree
// of the generated queries
package ast

import (
	"fmt"
	"strings"

	"github.com/cnordg/ast-group-project/src/schema"
)

// node is the base interface for all SQL productions
type Prod interface {
	Parent() Prod
	// output the SQL representation
	Out() string
	// return level of nesting
	Level() int
	GetBase() *Base
	Schema() *schema.Schema
	// get current available references
	References() []schema.NamedRelation
	AvailableTypes() []schema.SqlType
	// TODO: add visitor pattern
}

type Base struct {
	parent Prod
	// the current level in AST
	level int
	// Scope keeps track of column/table reference
	// visibility
	Scope *Scope
}

// Creates a new production struct one
// level deeper while keeping the scope
// the same
func NewBase(parent *Base) *Base {
	if parent != nil {
		return &Base{
			parent: parent.parent,
			level:  parent.level + 1,
			Scope:  parent.Scope,
		}
	}
	return &Base{}
}

func (b *Base) Parent() Prod {
	return b.parent
}

func (b *Base) Level() int {
	return b.level
}

func (b *Base) Indent() string {
	s := "\n"
	for range b.level {
		s = s + " "
	}
	return s
}

func (b *Base) GetBase() *Base {
	return b
}

func (b *Base) Schema() *schema.Schema {
	return b.Scope.Schema
}

func (b *Base) References() []schema.NamedRelation {
	return b.Scope.Refs
}

func (b *Base) AvailableTypes() []schema.SqlType {
	return b.Scope.AvailableTypes()
}

func (b *Base) GetStmtUid(s string) uint {
	return b.Scope.StmtSeq[s]
}

func (b *Base) IncrStmtUid(s string) {
	b.Scope.StmtSeq[s]++
}

func (b *Base) StartStmtUid(s string, c uint) {
	b.Scope.StmtSeq[s] = c
}

func (b *Base) Tables() []schema.NamedRelation {
	return b.Scope.Tables
}

type TableRef interface {
	Prod
	References() []schema.NamedRelation
}

type InsertStmt struct {
	*Base
	LocalScope *Scope
	Table      *schema.Table
	// If len == 0 then default values used in
	// insert statement
	Exprs []ValueExpr
}

func NewInsertStmt(p Prod, s *Scope, t schema.NamedRelation) *InsertStmt {
	tab, ok := t.(*schema.Table)
	if !ok {
		panic("type assertion failed")
	}

	var b *Base
	if p != nil {
		b = p.GetBase()
	}

	stmt := &InsertStmt{
		Base:       NewBase(b),
		LocalScope: NewScope(s),
		Table:      tab,
	}

	stmt.Scope = stmt.LocalScope

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
	*Base
	LocalScope *Scope
	Table      *schema.Table
	SetClause  *SetClause
	Where      BoolExpr
}

func NewUpdateStmt(p Prod, s *Scope, t schema.NamedRelation) *UpdateStmt {
	tab, ok := t.(*schema.Table)
	if !ok {
		panic("type assertion failed")
	}

	var b *Base
	if p != nil {
		b = p.GetBase()
	}

	stmt := &UpdateStmt{
		Base:       NewBase(b),
		LocalScope: NewScope(s),
		Table:      tab,
	}

	stmt.Scope = stmt.LocalScope

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
	*Base
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
	*Base
	LocalScope *Scope
	Table      *schema.Table
	Where      BoolExpr
}

// NOTE: these `modifying_stmt` are all the same. We should
// probs refactor
func NewDeleteStmt(p Prod, s *Scope, t schema.NamedRelation) *DeleteStmt {
	tab, ok := t.(*schema.Table)
	if !ok {
		panic("type assertion failed")
	}

	var b *Base
	if p != nil {
		b = p.GetBase()
	}

	stmt := &DeleteStmt{
		Base:       NewBase(b),
		LocalScope: NewScope(s),
		Table:      tab,
	}

	stmt.Scope = stmt.LocalScope

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

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.hh#L315
type CTEStmt struct {
	*Base
	LocalScope  *Scope
	WithQueries []*SelectStmt
	// Main select query
	Query *SelectStmt
	Refs  []schema.NamedRelation
}

func NewCTEStmt(p Prod, s *Scope) *CTEStmt {
	var b *Base
	if p != nil {
		b = p.GetBase()
	}

	stmt := &CTEStmt{
		Base:       NewBase(b),
		LocalScope: NewScope(s),
	}

	stmt.Scope = stmt.LocalScope

	return stmt
}

func (s *CTEStmt) Out() string {
	var buf strings.Builder
	buf.WriteString("WITH ")
	for i, q := range s.WithQueries {
		buf.WriteString(s.Indent())
		buf.WriteString(s.Refs[i].Name())
		buf.WriteString(" AS (")
		buf.WriteString(q.Out())
		buf.WriteString(")")
		if i+1 != len(s.WithQueries) {
			buf.WriteString(", ")
		}
		buf.WriteString(s.Indent())
	}
	buf.WriteString(s.Query.Out())
	return buf.String()
}

// selectStmt represents a SELECT query
// https://sqlite.org/lang_select.html
type SelectStmt struct {
	*Base
	LocalScope *Scope
	// TODO: add quantifier "ALL"
	SetQuantifier string
	SelectClause  *SelectClause
	FromClause    *FromClause
	WhereClause   BoolExpr
	// TODO: add GROUP BY ... HAVING
	// TODO: add ORDER BY
	// TODO: add WINDOW
	// TODO: add compound op (UNION)
	LimitClause string
	// TODO: add OFFSET
}

func NewSelectStmt(p Prod, s *Scope, lateral bool) *SelectStmt {
	var b *Base
	if p != nil {
		b = p.GetBase()
	}
	stmt := &SelectStmt{
		Base: NewBase(b),
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

func (s *SelectStmt) Out() string {
	// TODO: get indentation from level
	var buf strings.Builder
	buf.WriteString("SELECT ")
	if s.SetQuantifier != "" {
		buf.WriteString(s.SetQuantifier + " ")
	}
	buf.WriteString(s.SelectClause.Out())
	buf.WriteString(s.Base.Indent())
	buf.WriteString(s.FromClause.Out())
	buf.WriteString(s.Base.Indent())
	buf.WriteString("WHERE ")
	buf.WriteString(s.WhereClause.Out())
	if s.LimitClause != "" {
		buf.WriteString("\n")
		buf.WriteString(s.LimitClause)
	}
	return buf.String()
}

// fromClause represents the FROM part of a query
type FromClause struct {
	*Base
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
	*Base
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
	*Base
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

type ExplainStmt struct {
	*Base
	QueryPlan bool
	Stmt      Prod
}

func NewExplainStmt(p Prod) *ExplainStmt {
	var b *Base
	if p != nil {
		b = p.GetBase()
	}
	return &ExplainStmt{
		Base: b,
	}
}

func (s *ExplainStmt) Out() string {
	var buf strings.Builder
	buf.WriteString("EXPLAIN ")
	if s.QueryPlan {
		buf.WriteString("QUERY PLAN ")
	}
	buf.WriteString(s.Stmt.Out())
	return buf.String()
}

type AnalyseStmt struct {
	*Base
	// schema, table_name or
	// schema.table_name
	Name string
}

func NewAnalyseStmt(p Prod) *AnalyseStmt {
	var b *Base
	if p != nil {
		b = p.GetBase()
	}
	return &AnalyseStmt{
		Base: b,
	}
}

func (s *AnalyseStmt) Out() string {
	return "ANALYZE " + s.Name
}

type VacuumStmt struct {
	*Base
	Name string
	File string
}

func NewVacuumStmt(p Prod) *VacuumStmt {
	var b *Base
	if p != nil {
		b = p.GetBase()
	}
	return &VacuumStmt{
		Base: b,
	}
}

func (s *VacuumStmt) Out() string {
	if s.File == "" {
		return "VACUUM " + s.Name
	}
	return "VACUUM " + s.Name +
		" INTO " + s.File
}

type CompoundStmt struct {
	*Base
	Lhs         *SelectStmt
	Rhs         *SelectStmt
	Op          string
	LimitClause string
}

func NewCompoundStmt(p Prod) *CompoundStmt {
	var b *Base
	if p != nil {
		b = p.GetBase()
	}
	return &CompoundStmt{
		Base: b,
	}
}

func (s *CompoundStmt) Out() string {
	var buf strings.Builder
	buf.WriteString(s.Lhs.Out())
	buf.WriteString("\n" + s.Op + "\n")
	buf.WriteString(s.Rhs.Out())
	buf.WriteString("\n" + s.LimitClause)
	return buf.String()
}

// Each savepoint statement creates
// a new savepoint, followed by a
// randomly generated statement and
// optionally releases or rollsback
// a p arent savepoint
type SavepointStmt struct {
	*Base
	Stmts []Prod
	Name  string
	// Position of chosen savepoint to
	// rollback or release in stack
	EndIdx int
	// this is optional and can be
	// ROLLBACK or RELEASE with name
	// of the savepoint
	End string
}

func NewSavepointStmt(p Prod, s *Scope) *SavepointStmt {
	var b *Base
	if p != nil {
		b = p.GetBase()
	}
	stmt := &SavepointStmt{
		Base: NewBase(b),
	}
	stmt.Scope = s

	return stmt
}

func (s *SavepointStmt) Out() string {
	var buf strings.Builder
	buf.WriteString("SAVEPOINT " + s.Name)
	buf.WriteString(";\n")

	for _, stmt := range s.Stmts {
		buf.WriteString(stmt.Out())
		buf.WriteString(";\n")
	}
	buf.WriteString(s.End)
	return buf.String()
}

type TableSubquery struct {
	*Base
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
	Prod
	Type() schema.SqlType
}

// columnReference represents a reference to a column
type ColumnReference struct {
	*Base
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
	*Base
	Value string
	Typ   schema.SqlType
}

func NewConstant(p Prod, c string, t schema.SqlType) *ConstExpr {
	return &ConstExpr{
		Base:  p.GetBase(),
		Value: c,
		Typ:   t,
	}
}

func (c *ConstExpr) Out() string {
	return c.Value
}

func (c *ConstExpr) Type() schema.SqlType {
	return c.Typ
}

type BoolExpr interface {
	Prod
	Type() schema.SqlType
}

type BinaryExpr struct {
	*Base
	Left  ValueExpr
	Op    string
	Right ValueExpr
}

func (c *BinaryExpr) Out() string {
	return fmt.Sprintf("%s %s %s", c.Left.Out(), c.Op, c.Right.Out())
}

func (c *BinaryExpr) Type() schema.SqlType {
	return "BOOLEAN"
}

type ExistsExpr struct {
	*Base
	Subquery *SelectStmt
}

func (e *ExistsExpr) Out() string {
	var buf strings.Builder
	buf.WriteString("EXISTS (")
	buf.WriteString(e.Base.Indent())
	buf.WriteString(e.Subquery.Out() + ")")
	return buf.String()
}
func (e *ExistsExpr) Type() schema.SqlType {
	return "BOOLEAN"
}

type TruthExpr struct {
	*Base
	Value bool
}

func (e *TruthExpr) Out() string {
	if e.Value {
		return "true"
	}
	return "false"
}

func (e *TruthExpr) Type() schema.SqlType {
	return "BOOLEAN"
}

type NullPredicateExpr struct {
	*Base
	Negate bool
	Expr   ValueExpr
}

func (e *NullPredicateExpr) Out() string {
	var buf strings.Builder
	buf.WriteString(e.Expr.Out())
	buf.WriteString(" IS ")
	if e.Negate {
		buf.WriteString("NOT ")
	}
	buf.WriteString("NULL")
	return buf.String()
}

func (e *NullPredicateExpr) Type() schema.SqlType {
	return "BOOLEAN"
}

type FunCallExpr struct {
	*Base
	Proc          *schema.Routine
	IsAggregate   bool
	SetQuantifier string
	Params        []ValueExpr
	Typ           schema.SqlType
}

func (e *FunCallExpr) Out() string {
	var buf strings.Builder
	buf.WriteString(e.Proc.Indent())
	buf.WriteString("(")
	if e.IsAggregate && len(e.Params) == 0 {
		buf.WriteString("*")
	} else if len(e.Params) == 1 {
		buf.WriteString(e.SetQuantifier + " ")
		buf.WriteString(e.Params[0].Out())
	} else {
		for i, p := range e.Params {
			buf.WriteString(e.Indent())
			// NOTE: they do a cast here idk if necessary
			buf.WriteString(p.Out())
			if i+1 != len(e.Params) {
				buf.WriteString(",")
			}
		}
	}
	buf.WriteString(")")
	return buf.String()
}

func (e *FunCallExpr) Type() schema.SqlType {
	return e.Typ
}

type WindowFunExpr struct {
	*Base
	PartionBy []ValueExpr
	OrderBy   []ValueExpr
	Aggregate *FunCallExpr
	Typ       schema.SqlType
}

func (e *WindowFunExpr) Out() string {
	var buf strings.Builder
	buf.WriteString(e.Indent())
	buf.WriteString(e.Aggregate.Out())
	buf.WriteString(" OVER (PARTITION BY ")
	for i, p := range e.PartionBy {
		buf.WriteString(p.Out())
		if i+1 != len(e.PartionBy) {
			buf.WriteString(",")
		}
	}
	buf.WriteString(" ORDER BY ")
	for i, o := range e.OrderBy {
		buf.WriteString(o.Out())
		if i+1 != len(e.PartionBy) {
			buf.WriteString(",")
		}
	}
	buf.WriteString(")")
	return buf.String()
}

func (e *WindowFunExpr) Type() schema.SqlType {
	return e.Typ
}

// ---- //
// Join //
// ---- //

type JoinCondition interface {
	joinCondition()
	Out() string
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.hh#L85
type JoinedTable struct {
	*Base
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
	buf.WriteString(j.Indent())
	buf.WriteString(j.Type + " JOIN ")
	if nested, isNestedJoin := j.Rhs.(*JoinedTable); isNestedJoin {
		// Add parentheses around nested joins
		buf.WriteString("(")
		buf.WriteString(j.Indent())
		buf.WriteString(nested.Out())
		buf.WriteString(j.Indent())
		buf.WriteString(")")
	} else {
		buf.WriteString(j.Rhs.Out())
		buf.WriteString(j.Indent())
	}

	if j.Condition != nil {
		buf.WriteString(" ON (" + j.Condition.Out() + ")")
	}

	return buf.String()
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.hh#L68
type SimpleJoinCondition struct {
	*Base
	Condition string
}

func (c *SimpleJoinCondition) joinCondition() {}
func (c *SimpleJoinCondition) Out() string {
	return c.Condition
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.hh#L74
type ExpressionJoinCondition struct {
	*Base
	LocalScope *Scope
	Lhs        TableRef
	Rhs        TableRef
	Where      BoolExpr
}

func (c *ExpressionJoinCondition) joinCondition() {}
func (c *ExpressionJoinCondition) Out() string {
	return c.Where.Out()
}
