package generator

import (
	"errors"
	"fmt"
	"math/rand"
	"strconv"

	"github.com/cnordg/ast-group-project/src/ast"
	"github.com/cnordg/ast-group-project/src/schema"
)

var debug = false

// TODO: maybe we can also generate random ALTER TABLE stmts

// GenerateTable takes number of tables and an empty scope
// and generates 'num' tables and populates scope
func (g *Generator) GenerateTable(num int) *schema.Schema {
	schm := &schema.Schema{}

	for i := range num {
		nCols := 1 + rand.Intn(10)

		cols := make([]*schema.Column, nCols)
		defaults := make([]string, nCols)
		dummy := &ast.SelectStmt{Base: ast.NewBase(nil)}
		for i := range nCols {
			col := &schema.Column{
				Name: fmt.Sprintf("c%d", i),
				Typ:  randomPick(g.types),
			}

			// TODO: randomly add primary key constraubt
			// TODO: randomly add not null
			// TODO: randomly add unique

			cols[i] = col
			if d6() == 1 {
				v := g.GenerateConstantExpression(dummy, col.Typ)
				defaults = append(defaults, v.Out())
			}
		}
		tab := schema.NewTable(
			fmt.Sprintf("t%d", i),
			cols,
			defaults,
			rand.Intn(2) == 0,
			rand.Intn(2) == 0,
		)
		// TODO: randomly reference another table

		schm.Tables = append(schm.Tables, tab)
	}
	// register aggregates and functions
	schm.Aggregates = schema.BuiltInAggregates
	if g.isDeterministic {
		schm.Routines = schema.RemoveNonDeterministic(schema.BuiltInFunctions)
	} else {
		schm.Routines = schema.BuiltInFunctions

	}

	return schm
}

func (g *Generator) GenerateView(p ast.Prod, s *ast.Scope) ast.Prod {
	view := ast.NewViewStmt(p, s)

	view.Name = fmt.Sprintf("v%d", view.GetStmtUid("view"))
	view.IncrStmtUid("view")

	if d6() < 4 {
		view.Temporary = true
	}
	if d6() < 4 {
		view.IfNotExists = true
	}

	if d6() < 5 {
		slct := g.GenerateSelect(view, view.Scope)
		view.Select = slct
		view.Scope.Refs = append(view.Scope.Refs, slct.References()...)
	} else {
		cte := g.GenerateCTE(view, view.Scope)
		view.Select = cte
		for i := range cte.Refs {
			aliased := &schema.AliasedRelation{
				Alias: cte.Refs[i],
				Cols:  cte.Query.SelectClause.DerivedColumns,
			}
			view.Scope.Refs = append(view.Scope.Refs, aliased)
		}
	}

	// at least one column in view
	types := view.AvailableTypes()
start:
	col, err := retry(func() (ast.ValueExpr, error) {
		typ := randomPick(types)
		// modified version of generateColumnReference
		// as views cant have table qualified names
		// e.g. (t0.c1)
		pairs := ast.RefsOfType(view.References(), typ)
		if len(pairs) == 0 {
			return nil, errors.New("no matching pairs found by type")
		}
		pick := randomPick(pairs)
		return &ast.ColumnReference{
			Base:      view.Base,
			Reference: pick.Col.Name,
			Typ:       typ,
		}, nil
	})
	assert(err == nil, "expected no error")

	view.Cols = append(view.Cols, col)

	if d6() > 1 {
		goto start
	}

	return view

}

func (g *Generator) GenerateIUD(p ast.Prod, s *ast.Scope) ast.Prod {
	if d6() < 4 { // 50%
		return g.GenerateInsert(p, s)
	} else if d6() < 6 { // 25%
		return g.GenerateUpdate(p, s)
	}

	// if d6() == 6 { // 25%
	return g.GenerateDelete(p, s)
}

func (g *Generator) GenerateSelectOrCTE(p ast.Prod, s *ast.Scope) ast.Prod {
	if d42() < 2 {
		return g.GenerateCTE(p, s)
	}
	return g.GenerateSelect(p, s)
}

func (g *Generator) GenerateRandom(p ast.Prod, s *ast.Scope) ast.Prod {
	if d42() == 1 {
		return g.GenerateInsert(p, s)
	} else if d42() == 1 {
		return g.GenerateUpdate(p, s)
	} else if d42() == 1 {
		return g.GenerateDelete(p, s)
	} else if d42() == 1 {
		return g.GenerateCTE(p, s)
	} else if d42() == 1 {
		return g.GenerateCompound(p, s)
	} else if d100() == 1 {
		return g.GenerateSavepoint(p, s)
	} else if d100() == 1 {
		// NOTE: as fuzzer uses interactive conn using unix pipes
		// we need to also first DROP the view
		// return g.GenerateView(p, s)
	} else if d1000() == 1 {
		return g.GenerateAnalyse(p, s)
	} else if d1000() == 1 {
		return g.GenerateExplain(p, s)
	} else if d1000()+d1000() == 1 {
		return g.GenerateVacuum(p, s)
	}
	return g.GenerateSelect(p, s)
}

func (g *Generator) GenerateStatement(p ast.Prod, s *ast.Scope) ast.Prod {
	if d42() == 1 {
		return g.GenerateInsert(p, s)
	} else if d42() == 1 {
		return g.GenerateUpdate(p, s)
	} else if d42() == 1 {
		return g.GenerateDelete(p, s)
	} else if d42() == 1 {
		return g.GenerateCTE(p, s)
	} else if d1000() == 1 {
		return g.GenerateAnalyse(p, s)
	} else if d1000()+d1000() == 1 {
		return g.GenerateVacuum(p, s)
	}
	/*else if d42() == 1 {
		return g.generateUpsert(nil, s)
	}
	*/
	return g.GenerateSelect(p, s)
}

func (g *Generator) GenerateExplain(p ast.Prod, s *ast.Scope) *ast.ExplainStmt {
	expl := ast.NewExplainStmt(p, s)
	if d6() < 3 {
		expl.QueryPlan = true
	}
	expl.Stmt = g.GenerateStatement(p, s)

	return expl
}

func (g *Generator) GenerateAnalyse(p ast.Prod, s *ast.Scope) *ast.AnalyseStmt {
	stmt := ast.NewAnalyseStmt(p, s)
	if s.Schema.Name != "" && d6() < 3 {
		stmt.Name = s.Schema.Name
	} else if s.Schema.Name != "" {
		t := randomPick(s.Tables)
		stmt.Name = s.Schema.Name + "." + t.Name()
	} else {
		t := randomPick(s.Tables)
		stmt.Name = t.Name()
	}

	return stmt
}

func (g *Generator) GenerateVacuum(p ast.Prod, s *ast.Scope) *ast.VacuumStmt {
	stmt := ast.NewVacuumStmt(p, s)

	// Not supported in 3.26.0..
	// if d100() == 1 {
	// 	dir, err := os.MkdirTemp("", "sqlite3-")
	// 	if err != nil {
	// 		panic(err)
	// 	}
	// 	stmt.File += fmt.Sprintf("'%s/%d'", dir, time.Now().UnixMilli())
	// }

	if s.Schema.Name != "" {
		stmt.Name = s.Schema.Name
	} else {
		stmt.Name = "main"
	}

	return stmt
}

// Generates UNION, INTERSECT and EXCEPT queries
func (g *Generator) GenerateCompound(p ast.Prod, s *ast.Scope) *ast.CompoundStmt {
	stmt := ast.NewCompoundStmt(p, s)
	slct := g.GenerateSelect(p, s)
	// LIMIT and ORDER BY clause needs to come after UNION
	stmt.LimitClause = slct.LimitClause
	// BUG: order by clause does not always work
	// with compound operations because it uses
	// <table>.<column> instead of the alias
	// stmt.OrderByClause = slct.OrderByClause
	slct.LimitClause = ""
	slct.OrderByClause = nil

	// the reason we set both sides to the same
	// query is that grammar currently cant
	// generate queries based on a predefined
	// select list (we generate select list
	// based on FromClause)
	stmt.Lhs = slct
	stmt.Rhs = slct

	switch d6() {
	case 1:
		stmt.Op = "UNION"
	case 2:
		stmt.Op = "UNION ALL"
	case 3, 4:
		stmt.Op = "INTERSECT"
	case 5, 6:
		stmt.Op = "EXCEPT"
	}

	return stmt
}

func (g *Generator) GenerateSavepoint(p ast.Prod, s *ast.Scope) *ast.SavepointStmt {
	stmt := ast.NewSavepointStmt(p, s)

	// create save point
	sp := fmt.Sprintf("sp%d", stmt.GetStmtUid("sp"))
	stmt.IncrStmtUid("sp")
	stmt.Name = sp
	stmt.Scope.Savepoints = append(stmt.Scope.Savepoints, sp)

	// to avoid infinite recursion we stop at the
	// latest after 12 nested levels
	if stmt.Level() > d12() {
		stmt.Name = stmt.Scope.Savepoints[0]
		return stmt
	}

	// randomly use a savepoint in rollback
	// or release operation
	idx := randomPickIndex(stmt.Scope.Savepoints)
	stmt.EndIdx = idx
	popped := stmt.Scope.Savepoints[idx:]
	endSp := popped[len(stmt.Scope.Savepoints[:idx])-idx]
	if d6() < 3 {
		stmt.End = fmt.Sprintf("ROLLBACK TO SAVEPOINT %s", endSp)
		stmt.Scope.Savepoints = stmt.Scope.Savepoints[:idx]
	} else if d6() < 3 {
		stmt.End = fmt.Sprintf("RELEASE %s", endSp)
		stmt.Scope.Savepoints = stmt.Scope.Savepoints[:idx]
	}

	stmtCnt := d6()
	for range stmtCnt {
		q := g.GenerateStatement(stmt, stmt.Scope)
		stmt.Stmts = append(stmt.Stmts, q)
	}

	// randomly nest savepoints and avoid
	// conflicts during release and rollback
	// operations by removing end clause if
	// nested savepoint accesses savepoint
	// higher up in stack than current savepoint
	// end clause
	if d6() < 3 {
		spStmt := g.GenerateSavepoint(p, stmt.Scope)
		stmt.Stmts = append(stmt.Stmts, spStmt)
		if spStmt.EndIdx < idx {
			stmt.End = ""
			stmt.EndIdx = spStmt.EndIdx
		}
	}

	return stmt
}

// GenerateInsert picks a random table and then generates
// values expressions for each column
// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L374
func (g *Generator) GenerateInsert(p ast.Prod, s *ast.Scope) *ast.InsertStmt {
	victim := randomPick(s.Tables)
	stmt := ast.NewInsertStmt(p, s, victim)

	assert(len(stmt.Scope.Refs) == 0, "expected zero references in insert stmt")
	assert(len(stmt.LocalScope.Refs) == 0, "expected zero references in insert stmt")

	// TODO: randomly generate INSERT OR REPLACE
	// or INSERT OR IGNORE

	for _, col := range stmt.Table.Columns() {
		expr, err := retry(func() (ast.ValueExpr, error) {
			return g.generateValueExpression(stmt, col.Typ)
		})
		assert(err == nil, "expected no error")
		stmt.Exprs = append(stmt.Exprs, expr)
	}

	// NOTE: should we add optional ON CONFLICT clause?
	// or generate conflicting inserts on purpose

	return stmt
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L433
func (g *Generator) GenerateUpdate(p ast.Prod, s *ast.Scope) *ast.UpdateStmt {
	victim := randomPick(s.Tables)
	stmt := ast.NewUpdateStmt(p, s, victim)

	stmt.Scope.Refs = append(stmt.Scope.Refs, victim)
	stmt.WhereClause = g.generateBoolExpression(stmt)
	stmt.SetClause = g.generateSetClause(stmt, victim)

	// NOTE: maybe we can combine update_stmt and update_returning
	// as one struct. I am not sure why sqlsmith has two seperate
	// classes for this.

	return stmt
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L408
func (g *Generator) generateSetClause(p ast.Prod, t schema.NamedRelation) *ast.SetClause {
	b := ast.NewBase(p.GetBase())

	t, ok := t.(*schema.Table)
	assert(ok, "expected type to be of *schema.Table")

start:
	c := &ast.SetClause{Base: b}
	for _, col := range t.Columns() {
		if d6() < 4 {
			continue
		}
		expr, err := retry(func() (ast.ValueExpr, error) {
			return g.generateValueExpression(c, col.Type())
		})
		assert(err == nil, "expected no error")
		c.Values = append(c.Values, expr)
		c.Names = append(c.Names, col.Name)
	}
	// ensure we get at least one column in update
	if len(c.Values) == 0 {
		goto start
	}

	return c
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L362
func (g *Generator) GenerateDelete(p ast.Prod, s *ast.Scope) *ast.DeleteStmt {
	victim := randomPick(s.Tables)
	stmt := ast.NewDeleteStmt(p, s, victim)

	stmt.Scope.Refs = append(stmt.Scope.Refs, victim)
	stmt.WhereClause = g.generateBoolExpression(stmt)

	return stmt
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L498
func (g *Generator) GenerateCTE(p ast.Prod, s *ast.Scope) *ast.CTEStmt {
	stmt := ast.NewCTEStmt(p, s)

	// create at least one SELECT within CTE
repeat1:
	query := g.GenerateSelect(stmt, s)
	stmt.WithQueries = append(stmt.WithQueries, query)

	alias := fmt.Sprintf("cte%d", stmt.GetStmtUid("cte"))
	stmt.IncrStmtUid("cte")
	stmt.Refs = append(stmt.Refs, alias)

	aliasedRel := query.SelectClause.DerivedColumns
	stmt.Scope.Refs = append(stmt.Scope.Refs, &schema.AliasedRelation{Alias: alias, Cols: aliasedRel})

	if d6() > 3 {
		goto repeat1
	}

	// add random tables from original scope
repeat2:
	tab := randomPick(s.Tables)
	stmt.Scope.Tables = append(stmt.Scope.Tables, tab)

	if d6() > 4 {
		goto repeat2
	}

	// generate main SQL statement
	stmt.Query = g.GenerateSelect(stmt, stmt.Scope)

	return stmt
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L314
func (g *Generator) GenerateSelect(p ast.Prod, s *ast.Scope) *ast.SelectStmt {
	stmt := ast.NewSelectStmt(p, s, false)

	if d100() == 1 {
		stmt.SetQuantifier = "DISTINCT"
	} else if d100() == 1 {
		stmt.SetQuantifier = "ALL"
	}

	stmt.FromClause = g.generateFromClause(stmt)
	// needs to be run after fromClause to ensure `Refs`
	// are available
	stmt.SelectClause = g.generateSelectClause(stmt)
	stmt.WhereClause = g.generateBoolExpression(stmt)
	stmt.OrderByClause = g.generateOrderByClause(stmt.SelectClause.DerivedColumns)

	if d6() > 2 {
		stmt.LimitClause = fmt.Sprintf("LIMIT %d", dN())
		if d6() > 2 {
			stmt.OffsetClause = fmt.Sprintf("OFFSET %d", dN())
		}
	}

	return stmt
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L200
func (g *Generator) generateFromClause(p ast.Prod) *ast.FromClause {
	c := &ast.FromClause{Base: ast.NewBase(p.GetBase()), TableRefs: []ast.TableRef{}}

	// we need at least one reference in FROM clause
	c.TableRefs = append(c.TableRefs, g.generateTableRef(c))

	for _, r := range c.TableRefs[0].References() {
		c.Base.Scope.Refs = append(c.Base.Scope.Refs, r)
	}

	// NOTE: sqlite 3.26.0 does not support
	// lateral queries yet
	return c
}

// generates list of expressions for the select clause
// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L215
func (g *Generator) generateSelectClause(p ast.Prod) *ast.SelectClause {
	c := &ast.SelectClause{
		Base:           ast.NewBase(p.GetBase()),
		ValueExprs:     []ast.ValueExpr{},
		DerivedColumns: []*schema.Column{},
	}

	// add at least one column
	types := p.AvailableTypes()
start:
	typ := randomPick(types)
	expr, err := retry(func() (ast.ValueExpr, error) {
		return g.generateValueExpression(p, typ)
	})
	assert(err == nil, "expected no error")
	col := &schema.Column{
		Name: fmt.Sprintf("c%d", c.GetStmtUid("c")),
		Typ:  typ,
	}
	c.IncrStmtUid("c")

	c.ValueExprs = append(c.ValueExprs, expr)
	c.DerivedColumns = append(c.DerivedColumns, col)

	if d6() > 1 {
		goto start
	}

	return c
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L153
func (g *Generator) generateJoinedTable(p ast.Prod) *ast.JoinedTable {
	tab := &ast.JoinedTable{
		Base: ast.NewBase(p.GetBase()),
	}

retry:
	tab.Lhs = g.generateTableRef(tab)
	tab.Rhs = g.generateTableRef(tab)

	typ := ""
	hasOnClause := true
	if d20() == 1 {
		typ = "CROSS"
	} else {
		// BUG: i have commented this out
		// as the queries are not properly
		// generated with NATURAL join. We
		// need to revisit this in future
		// if d6() == 1 {
		// 	tab.Type = "NATURAL "
		// 	hasOnClause = false
		// }
		isInner := false
		if d6() < 4 {
			typ += "INNER"
			isInner = true
		} else /*if d6() < 4*/ {
			typ += "LEFT"
			// NOTE: FULL not supported in 3.26
			// } else if d6() == 1 {
			// tab.Type += "FULL"
			// NOTE> RIGHT not supported in 3.26
			// } else {
			// tab.Type += "RIGHT"
		}
		if !isInner && d6() == 1 {
			typ += " OUTER"
		}
	}
	tab.Type = typ
	// natural join cant have ON clause
	if hasOnClause {
		cond, err := g.generateJoinCondition(tab, tab.Lhs, tab.Rhs)
		if err != nil {
			goto retry
		}
		tab.Condition = cond
	}

	// copy all lhs and rhs refs to current refs
	lRefs := tab.Lhs.References()
	rRefs := tab.Rhs.References()
	tab.Refs = make([]schema.NamedRelation, len(lRefs)+len(rRefs))
	for i := range lRefs {
		tab.Refs[i] = lRefs[i]
	}
	for j := range rRefs {
		i := j + len(lRefs)
		tab.Refs[i] = rRefs[j]
	}

	return tab
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L96
func (g *Generator) generateJoinCondition(p ast.Prod, l, r ast.TableRef) (ast.JoinCondition, error) {
	if d6() < 6 {
		return g.generateExpressionJoinCondition(p, l, r)
	}
	return g.generateSimpleJoinCondition(p, l, r)
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L109
func (g *Generator) generateSimpleJoinCondition(p ast.Prod, l, r ast.TableRef) (ast.JoinCondition, error) {
	// assert at least one ref in lhs with columns not empty
	assert(atLeastOneColumn(l.References()), "expected at least one column in refs")

	cnt := 0
retry:
	if cnt > 10 {
		return nil, errors.New("retried 10 times without finding join condition")
	}
	cnt++

	lRef := randomPick(l.References())
	if len(lRef.Columns()) == 0 {
		goto retry
	}
	rRef := randomPick(r.References())
	col1 := randomPick(lRef.Columns())

	condition := ""
	for _, col2 := range rRef.Columns() {
		if col1.Typ == col2.Typ {
			condition += lRef.Name() + "." + col1.Name + " = " + rRef.Name() + "." + col2.Name
			break
		}
	}

	if condition == "" {
		goto retry
	}

	return &ast.SimpleJoinCondition{
		Base:      ast.NewBase(p.GetBase()),
		Condition: condition,
	}, nil
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L138
func (g *Generator) generateExpressionJoinCondition(p ast.Prod, l, r ast.TableRef) (ast.JoinCondition, error) {
	b := ast.NewBase(p.GetBase())
	b.Scope = ast.NewScope(b.Scope)

	cond :=
		&ast.ExpressionJoinCondition{
			Base:       b,
			LocalScope: b.Scope,
			Lhs:        l,
			Rhs:        r,
		}

	for _, ref := range l.References() {
		b.Scope.Refs = append(b.Scope.Refs, ref)
	}
	for _, ref := range r.References() {
		b.Scope.Refs = append(b.Scope.Refs, ref)
	}
	cond.WhereClause = g.generateBoolExpression(cond)

	return cond, nil

}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L81
func (g *Generator) generateTableSubquery(p ast.Prod, lateral bool) *ast.TableSubquery {
	assert(!lateral, "sqlite 3.26 does not support lateral subqueries")

	b := ast.NewBase(p.GetBase())
	b.Scope = ast.NewScope(b.Scope)
	subq := &ast.TableSubquery{
		Base:      b,
		IsLateral: lateral,
	}
	subq.Query = g.GenerateSelect(subq, b.Scope)

	alias := fmt.Sprintf("subq%d", subq.Scope.StmtSeq["subq"])
	subq.Scope.StmtSeq["subq"]++
	aliasedRel := subq.Query.SelectClause.DerivedColumns

	subq.Scope.Refs = append(subq.Scope.Refs, &schema.AliasedRelation{Alias: alias, Cols: aliasedRel})

	return subq
}

// generateOrderByClause creates a random ORDER BY clause for a SQL statement
func (g *Generator) generateOrderByClause(cols []*schema.Column) *ast.OrderByClause {
	// termCount := 1 + rand.Intn(3)
	// if len(cols) < termCount {
	// termCount = len(types)
	// }
	clause := &ast.OrderByClause{
		Terms: make([]*ast.OrderByTerm, len(cols)),
	}

	for i, col := range cols {
		term := &ast.OrderByTerm{}

		term.ColumnName = col.Ident()

		if d6() == 1 {
			collations := []string{"BINARY", "NOCASE", "RTRIM"}
			term.Collation = randomPick(collations)
		}

		if d12() <= 3 {
			term.SortDirection = "ASC"
		} else if d12() <= 3 {
			term.SortDirection = "DESC"
		}

		clause.Terms[i] = term
	}

	return clause
}

// ---------- //
// References //
// ---------- //

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L15
func (g *Generator) generateTableRef(p ast.Prod) ast.TableRef {
	if p.Level() < 3+d6() {
		if d6() > 3 && p.Level() < d6() {
			return g.generateTableSubquery(p, false)
		}
		if d6() > 3 {
			return g.generateJoinedTable(p)
		}
	}

	// if d6() > 3 {
	return g.generateTableOrQueryName(p)
	// } else {
	// TODO
	// return generateTableSample(p)
	//}
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L33
func (g *Generator) generateTableOrQueryName(p ast.Prod) *ast.TableOrQueryName {
	tq := &ast.TableOrQueryName{
		Base: ast.NewBase(p.GetBase()),
	}

	tq.Table = randomPick(tq.Tables())
	assert(tq.Table != nil, "expected t to not be nil")

	tq.StartStmtUid("c", uint(len(tq.Table.Columns())))
	tq.IncrStmtUid("table")
	alias := fmt.Sprintf("t%d", tq.GetStmtUid("table"))

	tq.Refs = []schema.NamedRelation{
		schema.NewTable(
			alias, tq.Table.Columns(),
			[]string{}, false, false,
		),
	}

	return tq
}

// creates a reference to an existing column
// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L77
func (g *Generator) generateColumnReference(p ast.Prod, t schema.SqlType) (ast.ValueExpr, error) {
	if len(p.References()) == 0 {
		return nil, errors.New("no references available")
	}

	if t == 0 {
		rel := randomPick(p.References())
		cols := rel.Columns()
		c := randomPick(cols)
		return &ast.ColumnReference{
			Base:      p.GetBase(),
			Reference: fmt.Sprintf("%s.%s", rel.Name(), c.Name),
			Typ:       c.Typ,
		}, nil
	}
	// find all columns that match t\
	pairs := ast.RefsOfType(p.References(), t)
	if len(pairs) == 0 {
		return nil, errors.New("no matching pairs found by type")
	}

	pick := randomPick(pairs)

	return &ast.ColumnReference{
		Base:      p.GetBase(),
		Reference: fmt.Sprintf("%s.%s", pick.Rel.Name(), pick.Col.Name),
		Typ:       pick.Col.Typ,
	}, nil
}

// ----------- //
// Expressions //
// ----------- //

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L17
func (g *Generator) generateValueExpression(p ast.Prod, t schema.SqlType) (ast.ValueExpr, error) {
	if d20() == 1 && p.Level() < d6() && g.isWindowFunctionAllowed(p) {
		return g.generateWindowFunction(p, t)
	} else if p.Level() < d6() && 1 == d42() {
		return g.generateCastExpression(p, t)
	} else if p.Level() < d6() && 1 == d42() {
		return g.generateCoalesceExpression(p, t)
	} else if p.Level() < d6() && 1 == d42() {
		return g.generateIfNullIfExpression(p, t)
	} else if p.Level() < d6() && d6() == 1 {
		return g.generateFunctionCallExpression(p, t, false)
	} else if p.Level() < d6() && d9() == 1 {
		return g.generateCaseExpression(p, t)
	} else if len(p.References()) > 0 && d20() > 1 {
		return g.generateColumnReference(p, t)
	}

	return g.GenerateConstantExpression(p, t), nil
}

// creates a constant expression based on t or existing sqlite types
// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L195
func (g *Generator) GenerateConstantExpression(p ast.Prod, t schema.SqlType) ast.ValueExpr {
	var value string

	// select random type if not set
	if t == 0 {
		t = randomPick(g.types)
	}

	// create random value for type
	switch t {
	case schema.INT:
		value = strconv.Itoa(d100())
	case schema.REAL:
		value = fmt.Sprintf("%.2f", float64(rand.Intn(100))/float64(rand.Intn(10)+1))
	case schema.TEXT:
		value = fmt.Sprintf("'text%d'", d100())
	case schema.BLOB:
		value = fmt.Sprintf("X'%02x%02x%02x%02x'", rand.Intn(256), rand.Intn(256), rand.Intn(256), rand.Intn(256))
	case schema.NUMERIC:
		// numeric can be integer or float
		if d6() > 3 {
			value = strconv.Itoa(d100())
		} else {
			value = fmt.Sprintf("%f", float64(rand.Intn(100))/float64(rand.Intn(10)+1))
		}
	case schema.BOOL:
		if d6() > 3 {
			value = "TRUE"
		} else {
			value = "FALSE"
		}
	case schema.DATE:
		if d6() < 6 {
			year := rand.Intn(9999)
			month := 1 + rand.Intn(12)
			day := 1 + rand.Intn(28)
			value = fmt.Sprintf("'%04d-%02d-%02d'", year, month, day)
		} else {
			value = "CURRENT_DATE"
		}
	case schema.TIME:
		if d6() == 0 && g.isDeterministic {
			value = "CURRENT_TIME"
		} else {
			hour := rand.Intn(24)
			minute := rand.Intn(60)
			second := rand.Intn(60)
			value = fmt.Sprintf("'%02d:%02d:%02d'", hour, minute, second)
		}
	case schema.DATETIME:
		// if d6() < 6 {
		if d6() == 0 && g.isDeterministic {
			value = "CURRENT_TIMESTAMP"
		} else {
			year := rand.Intn(9999)
			month := 1 + rand.Intn(12)
			day := 1 + rand.Intn(28)
			hour := rand.Intn(24)
			minute := rand.Intn(60)
			second := rand.Intn(60)
			value = fmt.Sprintf("'%04d-%02d-%02d %02d:%02d:%02d'", year, month, day, hour, minute, second)
		}
	default:
		value = "NULL"
	}

	return &ast.ConstExpr{
		Base:  p.GetBase(),
		Value: value,
		Typ:   t,
	}
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L96
func (g *Generator) generateBoolExpression(p ast.Prod) ast.BoolExpr {
	assert(len(p.AvailableTypes()) > 0, "expected types to be available")

	if p.Level() > d100() {
		return g.generateTruthExpression(p)
	}
	if d6() < 4 {
		return g.generateComparisonOperation(p)
	} else if d6() < 4 {
		return g.generateBooleanComparisonOperation(p)
	} else if d6() < 4 {
		return g.generateNullPredicateExpression(p)
	} else if d6() < 4 {
		return g.generateTruthExpression(p)
	} else {
		return g.generateExistsExpression(p)
	}
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.hh#L98
func (g *Generator) generateTruthExpression(p ast.Prod) ast.BoolExpr {
	if d6() < 4 {
		return &ast.TruthExpr{Base: p.GetBase(), Value: true}
	}
	return &ast.TruthExpr{Base: p.GetBase(), Value: false}
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L42
func (g *Generator) generateComparisonOperation(p ast.Prod) ast.BoolExpr {
	typ := randomPick(p.AvailableTypes())
	left, err := retry(func() (ast.ValueExpr, error) {
		return g.generateValueExpression(p, typ)
	})
	assert(err == nil, "expected no error")

	op := g.randomOperatorByType(typ)

	// make sure rhs matches the lhs type
	right, err := retry(func() (ast.ValueExpr, error) {
		return g.generateValueExpression(p, typ)
	})
	assert(err == nil, "expected no error")

	return &ast.BinaryExpr{
		Base:  p.GetBase(),
		Left:  left,
		Op:    op,
		Right: right,
	}
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.hh#L147
func (g *Generator) generateBooleanComparisonOperation(p ast.Prod) ast.BoolExpr {
	left := g.generateBoolExpression(p)
	op := randomPick([]string{"AND", "OR"})
	right := g.generateBoolExpression(p)

	return &ast.BinaryExpr{
		Base:  p.GetBase(),
		Left:  left,
		Op:    op,
		Right: right,
	}
}

func (g *Generator) generateNullPredicateExpression(p ast.Prod) ast.BoolExpr {
	exp, err := retry(func() (ast.ValueExpr, error) {
		return g.generateValueExpression(p, 0)
	})
	assert(err == nil, "expected no error")

	return &ast.NullPredicateExpr{
		Base:   p.GetBase(),
		Negate: d6() < 4,
		Expr:   exp,
	}
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L119
func (g *Generator) generateExistsExpression(p ast.Prod) ast.BoolExpr {
	exp := &ast.ExistsExpr{
		Base: ast.NewBase(p.GetBase()),
	}
	exp.Subquery = g.GenerateSelect(exp, exp.Scope)
	return exp
}

func (g *Generator) randomOperatorByType(t schema.SqlType) string {
	commonOps := []string{"=", "<>"}

	switch t {
	case schema.INT, schema.REAL,
		schema.NUMERIC, schema.DATE,
		schema.TIME, schema.DATETIME,
		schema.TEXT, schema.BLOB:
		return randomPick(append(commonOps, "<", ">", "<=", ">="))
	case schema.BOOL:
		return randomPick(commonOps)
	default:
		return randomPick(commonOps)
	}
}

func (g *Generator) generateCaseExpression(p ast.Prod, constraint schema.SqlType) (ast.ValueExpr, error) {
	b := ast.NewBase(p.GetBase())
	exp := &ast.CaseExpr{
		Base: b,
	}

	// default case we generate 'iff' variant:
	// CASE WHEN c1 THEN v1 ELSE v2 END
	n := 1
	if d6() < 4 {
		// if this branch is run we generate
		// CASE x WHEN c1 THEN v1 ... ELSE vn END
		// with multiple when then
		n = d12()
		val, err := retry(func() (ast.ValueExpr, error) {
			return g.generateColumnReference(exp, constraint)
		})
		if err != nil {
			return nil, err
		}
		exp.Val = val
	}

	if len(exp.AvailableTypes()) == 0 {
		return nil, errors.New("no available types")
	}

	for range n {
		when := g.generateBoolExpression(exp)
		then, err := retry(func() (ast.ValueExpr, error) {
			return g.generateValueExpression(exp, constraint)
		})
		if err != nil {
			return nil, err
		}
		exp.When = append(exp.When, when)
		exp.Then = append(exp.Then, then)
	}

	// else clause
	els, err := retry(func() (ast.ValueExpr, error) {
		return g.generateValueExpression(exp, constraint)
	})
	if err != nil {
		return nil, err
	}
	exp.Else = els

	return exp, nil
}

func (g *Generator) generateCastExpression(p ast.Prod, constraint schema.SqlType) (*ast.CastExpr, error) {
	expr := &ast.CastExpr{
		Base: ast.NewBase(p.GetBase()),
	}

	sourceExpr, err := retry(func() (ast.ValueExpr, error) {
		return g.generateValueExpression(expr, 0)
	})
	assert(err == nil, "expected no error")
	expr.Expr = sourceExpr

pick:
	// NOTE: this might not always yield
	// a correct cast
	expr.Typ = randomPick(g.types)
	if expr.Typ == schema.NULL {
		goto pick
	}

	return expr, nil
}

func (g *Generator) generateCoalesceExpression(p ast.Prod, constraint schema.SqlType) (*ast.CoalesceExpr, error) {
	expr := &ast.CoalesceExpr{
		Base: ast.NewBase(p.GetBase()),
	}

	numExprs := 2 + rand.Intn(5)
	expr.Exprs = make([]ast.ValueExpr, numExprs)

	types := []schema.SqlType{constraint, 0, schema.NULL}
	var err error
	for i := range numExprs {
		expr.Exprs[i], err = retry(func() (ast.ValueExpr, error) {
			t := randomPick(types)
			return g.generateValueExpression(expr, t)
		})
		assert(err == nil, "expected no error")
	}

	return expr, nil
}

func (g *Generator) generateIfNullIfExpression(p ast.Prod, constraint schema.SqlType) (*ast.IfNullIfExpr, error) {
	expr := &ast.IfNullIfExpr{
		Base: ast.NewBase(p.GetBase()),
	}

	expr.IsIfNull = d6() < 4

	var err error
	expr.Expr1, err = g.generateValueExpression(expr, constraint)
	if err != nil {
		return nil, err
	}

	expr.Expr2, err = g.generateValueExpression(expr, constraint)
	if err != nil {
		return nil, err
	}

	expr.Typ = constraint
	if constraint == 0 {
		expr.Typ = expr.Expr1.Type()
	}

	return expr, nil
}

// --------- //
// Functions //
// --------- //

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L359
func (g *Generator) generateWindowFunction(p ast.Prod, constraint schema.SqlType) (*ast.WindowFunExpr, error) {
	expr := &ast.WindowFunExpr{
		Base: ast.NewBase(p.GetBase()),
	}
	agg, err := g.generateAggregateCallExpression(p, constraint)
	if err != nil {
		return nil, err
	}

	expr.Aggregate = agg
	expr.Typ = agg.Typ

	pb, err := g.generateColumnReference(expr, expr.Typ)
	expr.PartionBy = append(expr.PartionBy, pb)
	for d6() < 4 {
		pb, err := g.generateColumnReference(expr, expr.Typ)
		assert(err == nil, "expected no error")
		expr.PartionBy = append(expr.PartionBy, pb)
	}

	ob, err := g.generateColumnReference(expr, expr.Typ)
	expr.OrderBy = append(expr.OrderBy, ob)
	for d6() < 4 {
		ob, err := g.generateColumnReference(expr, expr.Typ)
		assert(err == nil, "expected no error")
		expr.OrderBy = append(expr.OrderBy, ob)
	}

	return expr, nil
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L374C1-L383C2
func (g *Generator) isWindowFunctionAllowed(p ast.Prod) bool {
	if sc, ok := p.(*ast.SelectClause); ok {
		_, ok := sc.Parent().(*ast.SelectStmt)
		return ok
	}
	if _, ok := p.(*ast.WindowFunExpr); ok {
		return false
	}
	if ve, ok := p.(ast.ValueExpr); ok {
		return g.isWindowFunctionAllowed(ve.Parent())
	}
	return false
}

// if [constraint] is nil a random function is selected
// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L210
func (g *Generator) generateFunctionCallExpression(p ast.Prod, constraint schema.SqlType, aggregate bool) (*ast.FunCallExpr, error) {
	if aggregate {
		return g.generateAggregateCallExpression(p, constraint)
	}

	// pick a random built in function e.g. core,
	// math or datetime
	proc := randomPick(p.Schema().Routines)
	args := g.generateFunctionArguments(p, proc.ArgTypes)
	if constraint != 0 && proc.RetType != constraint {
		return nil, errors.New("no matching constraint found")
	}

	return &ast.FunCallExpr{
		Base:   p.GetBase(),
		Proc:   proc,
		Params: args,
		Typ:    proc.RetType,
	}, nil

}

func (g *Generator) generateAggregateCallExpression(p ast.Prod, constraint schema.SqlType) (*ast.FunCallExpr, error) {
	b := ast.NewBase(p.GetBase())
	expr := &ast.FunCallExpr{
		Base:        b,
		IsAggregate: true,
	}

	proc := randomPick(p.Schema().Aggregates)
	if constraint != 0 && proc.RetType != constraint {
		return nil, errors.New("no matching constraint found")
	}

	var params []ast.ValueExpr
	if proc.Name == "count" && d6() < 4 {
		// keep empty so we get count(*)
	} else {
		params = make([]ast.ValueExpr, len(proc.ArgTypes))
		for i, argType := range proc.ArgTypes {
			exp, err := g.generateValueExpression(p, argType)
			if err != nil {
				return nil, err
			}
			params[i] = exp
		}
	}

	expr.Proc = proc
	expr.Params = params
	expr.Typ = proc.RetType

	if len(params) == 1 && d6() == 1 {
		expr.SetQuantifier = "DISTINCT"
	}
	return expr, nil
}

func (g *Generator) generateFunctionArguments(p ast.Prod, argTypes []schema.SqlType) []ast.ValueExpr {
	var vals []ast.ValueExpr
	var tValue string

	i := len(argTypes)
	// j can be at most len(argTypes) - 1
	j := 0
	for range i {
		at := argTypes[j]
		switch at {
		case schema.MULTI:
			// generate random number of additional
			// arguments
			i += rand.Intn(100)
		case schema.TIMEVALUE:
			val, tVal := g.generateDatetimeValue()
			tValue = tVal
			vals = append(vals, ast.NewConstant(p, val, schema.TEXT))
		case schema.TIMEMODIFIER:
			// as timevalues always precede modifiers
			// we just get last time value
			assert(tValue != "", "expected tValue to be set")
			mod := g.generateDatetimeModifier(tValue)
			vals = append(vals, ast.NewConstant(p, mod, schema.TEXT))
		case schema.RUNE:
			vals = append(vals, g.generateUnicode(p))
		case schema.ANY:
			vals = append(vals, g.GenerateConstantExpression(p, 0))
		case schema.REAL01:
			// altjhough 1.0 not included this should
			// be fine
			r := fmt.Sprintf("%f", rand.Float32())
			vals = append(vals, ast.NewConstant(p, r, schema.REAL))
		default:
			vals = append(vals, g.GenerateConstantExpression(p, at))
		}
		if j < len(argTypes) {
			j++
		}
	}

	assert(len(vals) <= len(argTypes), "expected vals to be <= argTypes")

	return vals
}

// https://sqlite.org/lang_datefunc.html
func (g *Generator) generateDatetimeValue() (string, string) {
	i := rand.Intn(12)
	tv := schema.DatetimeTimeValues[i]
	switch i + 1 {
	case 1:
		y := randomInt(9999)
		m := randomInt(12)
		d := g.generateDay(m)
		return fmt.Sprintf(tv, y, m, d), tv
	case 2, 5:
		y := randomInt(9999)
		mn := randomInt(12)
		d := g.generateDay(mn)
		h := randomInt(24)
		m := randomInt(59)
		return fmt.Sprintf(tv, y, mn, d, h, m), tv
	case 3, 6:
		y := randomInt(9999)
		mn := randomInt(12)
		d := g.generateDay(mn)
		h := randomInt(24)
		m := randomInt(59)
		s := randomInt(59)
		return fmt.Sprintf(tv, y, mn, d, h, m, s), tv
	case 4, 7:
		y := randomInt(9999)
		mn := randomInt(12)
		d := g.generateDay(mn)
		h := randomInt(24)
		m := randomInt(59)
		s := randomInt(59)
		ms := randomInt(999)
		return fmt.Sprintf(tv, y, mn, d, h, m, s, ms), tv
	case 8:
		h := randomInt(24)
		m := randomInt(59)
		return fmt.Sprintf(tv, h, m), tv
	case 9:
		h := randomInt(24)
		m := randomInt(59)
		s := randomInt(59)
		return fmt.Sprintf(tv, h, m, s), tv
	case 10:
		h := randomInt(24)
		m := randomInt(59)
		s := randomInt(59)
		ms := randomInt(999)
		return fmt.Sprintf(tv, h, m, s, ms), tv
	case 11:
		return tv, tv
	case 12:
		return fmt.Sprintf("'%d'", randomInt(99999999999)), tv
	default:
		panic("unreachable")
	}
}

func (g *Generator) generateDatetimeModifier(timeValue string) string {
	i := rand.Intn(25)
	// only julianday, unixepoch, auto
	// and localtime supported with that
	// time value
	if timeValue == "DDDDDDDDD" {
		i = rand.Intn(4) + 20
	}
	mod := schema.DatetimeModifiers[i]
	switch i + 1 {
	case 1, 2, 3, 4, 5, 6, 19:
		return fmt.Sprintf(mod, rand.Int())
	case 7:
		h := randomInt(24)
		m := randomInt(59)
		return fmt.Sprintf(mod, h, m)
	case 8:
		h := randomInt(24)
		m := randomInt(59)
		s := randomInt(59)
		return fmt.Sprintf(mod, h, m, s)
	case 9:
		h := randomInt(24)
		m := randomInt(59)
		s := randomInt(59)
		ms := randomInt(999)
		return fmt.Sprintf(mod, h, m, s, ms)
	case 10:
		y := randomInt(9999)
		m := randomInt(12)
		d := g.generateDay(m)
		return fmt.Sprintf(mod, y, m, d)
	case 11:
		y := randomInt(9999)
		mn := randomInt(12)
		d := g.generateDay(mn)
		h := randomInt(24)
		m := randomInt(59)
		return fmt.Sprintf(mod, y, mn, d, h, m)
	case 12:
		y := randomInt(9999)
		mn := randomInt(12)
		d := g.generateDay(mn)
		h := randomInt(24)
		m := randomInt(59)
		s := randomInt(59)
		return fmt.Sprintf(mod, y, mn, d, h, m, s)
	case 13:
		y := randomInt(9999)
		mn := randomInt(12)
		d := g.generateDay(mn)
		h := randomInt(24)
		m := randomInt(59)
		s := randomInt(59)
		ms := randomInt(999)
		return fmt.Sprintf(mod, y, mn, d, h, m, s, ms)
	case 14, 15, 16, 17, 18, 20, 21, 22, 23, 24, 25:
		return schema.DatetimeModifiers[i]
	default:
		panic("unreachable")
	}
}

func (g *Generator) generateDay(month int) int {
	var d int
	// NOTE: we will get invalid days
	// if 'y' is a leap year
	if month == 7 {
		d = randomInt(28)
	}
	if month <= 7 {
		if month%2 == 0 {
			d = randomInt(30)
		} else {
			d = randomInt(31)
		}
	} else {
		if month%2 == 0 {
			d = randomInt(31)
		} else {
			d = randomInt(30)
		}
	}
	return d
}

func (g *Generator) generateUnicode(p ast.Prod) ast.ValueExpr {
	for {
		cp := rune(rand.Intn(0x10FFFF + 1))

		// check if surrogate
		if cp >= 0xD800 && cp <= 0xDFFF {
			continue
		}
		return ast.NewConstant(p, "'"+string(cp)+"'", schema.TEXT)
	}
}

// ------ //
// Helper //
// ------ //

func retry[T any](fn func() (T, error)) (T, error) {
	cnt := 0
retry:
	if cnt > 100 {
		return *new(T), errors.New("unable to generated valid value")
	}
	cnt++

	res, err := fn()
	if err != nil {
		goto retry
	}

	return res, nil
}

func assert(b bool, rsn string) {
	if debug && !b {
		panic(rsn)
	}
}

func atLeastOneColumn(refs []schema.NamedRelation) bool {
	for _, ref := range refs {
		if len(ref.Columns()) > 0 {
			return true
		}
	}
	return false
}
