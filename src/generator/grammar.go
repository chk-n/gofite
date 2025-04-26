package generator

import (
	"errors"
	"fmt"
	"math/rand"
	"strconv"

	"github.com/cnordg/ast-group-project/src/ast"
	"github.com/cnordg/ast-group-project/src/schema"
)

var types = []schema.SqlType{
	"INTEGER", "REAL", "TEXT", "BLOB", "NUMERIC",
	"BOOLEAN", "DATE", "TIME", "DATETIME", "NULL",
}

// TODO: maybe we can also generate random ALTER TABLE stmts

// generateTable takes number of tables and an empty scope
// and generates 'num' tables and populates scope
func generateTable(num int) *schema.Schema {
	schm := &schema.Schema{}

	for i := range num {
		nCols := 2 + rand.Intn(9)

		cols := make([]schema.Column, nCols)
		for i := range nCols {
			col := schema.Column{
				Name: fmt.Sprintf("c%d", i),
				Typ:  randomPick(types),
			}

			// TODO: randomly add primary key constraubt
			// TODO: randomly add not null
			// TODO: randomly add unique
			// TODO: randomly add default

			cols[i] = col
		}
		tab := schema.NewTable(fmt.Sprintf("t%d", i), cols)
		// TODO: randomly reference another table

		schm.Tables = append(schm.Tables, tab)
	}
	// register aggregates
	schm.Aggregates = schema.BuiltInAggregates

	return schm
}

func GenerateStatement(s *ast.Scope) ast.Prod {
	// TODO: add remaining statements
	//

	if d42() == 1 {
		return GenerateInsert(nil, s)
	} else if d42() == 1 {
		return GenerateUpdate(nil, s)
	} else if d42() == 1 {
		return GenerateDelete(nil, s)
	} /*else if d42() == 1 {
		return generateCommonTableExpression(p, s)
	} else if d42() == 1 {
		return generateUpsert(p, s)
	}
	*/
	return GenerateSelect(nil, s)
}

// GenerateInsert picks a random table and then generates
// values expressions for each column
// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L374
func GenerateInsert(p ast.Prod, s *ast.Scope) *ast.InsertStmt {
	victim := randomPick(s.Tables)
	stmt := ast.NewInsertStmt(p, s, victim)

	assert(len(stmt.Scope.Refs) == 0, "expected zero references in insert stmt")
	assert(len(stmt.LocalScope.Refs) == 0, "expected zero references in insert stmt")

	// TODO: randomly generate INSERT OR REPLACE
	// or INSERT OR IGNORE

	for _, col := range stmt.Table.Columns() {
		expr, err := retry(func() (ast.ValueExpr, error) {
			return generateValueExpression(stmt, col.Typ)
		})
		assert(err == nil, "expected no error")
		stmt.Exprs = append(stmt.Exprs, expr)
	}

	// NOTE: should we add optional ON CONFLICT clause?
	// or generate conflicting inserts on purpose

	return stmt
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L433
func GenerateUpdate(p ast.Prod, s *ast.Scope) *ast.UpdateStmt {
	victim := randomPick(s.Tables)
	stmt := ast.NewUpdateStmt(p, s, victim)

	stmt.Scope.Refs = append(stmt.Scope.Refs, victim)
	stmt.Where = generateBoolExpression(stmt)
	stmt.SetClause = generateSetClause(stmt, victim)

	// NOTE: maybe we can combine update_stmt and update_returning
	// as one struct. I am not sure why sqlsmith has two seperate
	// classes for this.

	return stmt
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L408
func generateSetClause(p ast.Prod, t schema.NamedRelation) *ast.SetClause {
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
			return generateValueExpression(c, col.Type())
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
func GenerateDelete(p ast.Prod, s *ast.Scope) *ast.DeleteStmt {
	victim := randomPick(s.Tables)
	stmt := ast.NewDeleteStmt(p, s, victim)

	stmt.Scope.Refs = append(stmt.Scope.Refs, victim)
	stmt.Where = generateBoolExpression(stmt)

	return stmt
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L314
func GenerateSelect(p ast.Prod, s *ast.Scope) *ast.SelectStmt {
	stmt := ast.NewSelectStmt(p, s, false)

	if d100() == 1 {
		stmt.SetQuantifier = "DISTINCT"
	}

	stmt.FromClause = generateFromClause(stmt)
	// needs to be run after fromClause to ensure `Refs`
	// are available
	stmt.SelectClause = generateSelectClause(stmt)
	stmt.WhereClause = generateBoolExpression(stmt)

	if d6() > 2 {
		stmt.LimitClause = fmt.Sprintf("LIMIT %d", d100()+d100())
	}

	return stmt
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L200
func generateFromClause(p ast.Prod) *ast.FromClause {
	c := &ast.FromClause{Base: ast.NewBase(p.GetBase()), TableRefs: []ast.TableRef{}}

	// we need at least one reference in FROM clause
	c.TableRefs = append(c.TableRefs, generateTableRef(c))

	for _, r := range c.TableRefs[0].References() {
		c.Base.Scope.Refs = append(c.Base.Scope.Refs, r)
	}

	// TODO: add lateral subquery
	// for d6() > 5 {
	// }
	return c
}

// generates list of expressions for the select clause
// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L215
func generateSelectClause(p ast.Prod) *ast.SelectClause {
	c := &ast.SelectClause{
		Base:           ast.NewBase(p.GetBase()),
		ValueExprs:     []ast.ValueExpr{},
		DerivedColumns: []schema.Column{},
	}

	// add at least one column
start:
	typ := randomPick(p.AvailableTypes())
	expr, err := retry(func() (ast.ValueExpr, error) {
		return generateValueExpression(p, typ)
	})
	assert(err == nil, "expected no error")
	col := schema.Column{
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
func generateJoinedTable(p ast.Prod) *ast.JoinedTable {
	tab := &ast.JoinedTable{
		Base: ast.NewBase(p.GetBase()),
	}

retry:
	tab.Lhs = generateTableRef(tab)
	tab.Rhs = generateTableRef(tab)

	hasOnClause := true
	if d20() == 1 {
		tab.Type = "CROSS"
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
			tab.Type += "INNER"
			isInner = true
		} else /*if d6() < 4*/ {
			tab.Type += "LEFT"
			// NOTE: FULL not supported in 3.26
			// } else if d6() == 1 {
			// tab.Type += "FULL"
			// NOTE> RIGHT not supported in 3.26
			// } else {
			// tab.Type += "RIGHT"
		}
		if !isInner && d6() == 1 {
			tab.Type += " OUTER"
		}
	}
	// natural join cant have ON clause
	if hasOnClause {
		cond, err := generateJoinCondition(tab, tab.Lhs, tab.Rhs)
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
func generateJoinCondition(p ast.Prod, l, r ast.TableRef) (ast.JoinCondition, error) {
	if d6() < 6 {
		return generateExpressionJoinCondition(p, l, r)
	}
	return generateSimpleJoinCondition(p, l, r)
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L109
func generateSimpleJoinCondition(p ast.Prod, l, r ast.TableRef) (ast.JoinCondition, error) {
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
func generateExpressionJoinCondition(p ast.Prod, l, r ast.TableRef) (ast.JoinCondition, error) {
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
	cond.Where = generateBoolExpression(cond)

	return cond, nil

}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L81
func generateTableSubquery(p ast.Prod, lateral bool) *ast.TableSubquery {
	assert(!lateral, "sqlite 3.26 does not support lateral subqueries")

	b := ast.NewBase(p.GetBase())
	b.Scope = ast.NewScope(b.Scope)
	subq := &ast.TableSubquery{
		Base:      b,
		IsLateral: lateral,
	}
	subq.Query = GenerateSelect(subq, b.Scope)

	alias := fmt.Sprintf("subq%d", subq.Scope.StmtSeq["subq"])
	subq.Scope.StmtSeq["subq"]++
	aliasedRel := subq.Query.SelectClause.DerivedColumns

	subq.Scope.Refs = append(subq.Scope.Refs, &schema.AliasedRelation{Alias: alias, Cols: aliasedRel})

	return subq
}

// ---------- //
// References //
// ---------- //

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L15
func generateTableRef(p ast.Prod) ast.TableRef {
	if p.Level() < 3+d6() {
		if d6() > 3 && p.Level() < d6() {
			return generateTableSubquery(p, false)
		}
		if d6() > 3 {
			return generateJoinedTable(p)
		}
	}

	// if d6() > 3 {
	return generateTableOrQueryName(p)
	// } else {
	// TODO
	// return generateTableSample(p)
	//}
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L33
func generateTableOrQueryName(p ast.Prod) *ast.TableOrQueryName {
	tq := &ast.TableOrQueryName{
		Base: ast.NewBase(p.GetBase()),
	}

	tq.Table = randomPick(tq.Tables())
	assert(tq.Table != nil, "expected t to not be nil")

	tq.StartStmtUid("c", uint(len(tq.Table.Columns())))
	tq.IncrStmtUid("table")
	alias := fmt.Sprintf("t%d", tq.GetStmtUid("table"))

	tq.Refs = []schema.NamedRelation{schema.NewTable(alias, tq.Table.Columns())}

	return tq
}

// creates a reference to an existing column
// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L77
func generateColumnReference(p ast.Prod, t schema.SqlType) (ast.ValueExpr, error) {
	if t == "" {
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
func generateValueExpression(p ast.Prod, t schema.SqlType) (ast.ValueExpr, error) {
	if d20() == 1 && p.Level() < d6() && isWindowFunctionAllowed(p) {
		return generateAggregateCallExpression(p, t)
		// else if p.Level() < d6() && d6() == 1 {
		// NOTE: currently only aggregate fns supported
		// return generateFunctionCallExpression(p, t, false)
	} else if len(p.References()) > 0 && d20() > 1 {
		return generateColumnReference(p, t)
	}

	return generateConstantExpression(p, t), nil
}

// creates a constant expression based on t or existing sqlite types
// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L195
func generateConstantExpression(p ast.Prod, t schema.SqlType) ast.ValueExpr {

	var value string

	// select random type if not set
	if t == "" {
		t = randomPick(types)
	}

	// create random value for type
	switch t {
	case "INTEGER":
		value = strconv.Itoa(d100())
	case "REAL":
		value = fmt.Sprintf("%f", float64(rand.Intn(100))/float64(rand.Intn(10)+1))
	case "TEXT":
		value = fmt.Sprintf("'text%d'", d100())
	case "BLOB":
		value = fmt.Sprintf("X'%02x%02x%02x%02x'", rand.Intn(256), rand.Intn(256), rand.Intn(256), rand.Intn(256))
	case "NUMERIC":
		// numeric can be integer or float
		if d6() > 3 {
			value = strconv.Itoa(d100())
		} else {
			value = fmt.Sprintf("%f", float64(rand.Intn(100))/float64(rand.Intn(10)+1))
		}
	case "BOOLEAN":
		if d6() > 3 {
			value = "TRUE"
		} else {
			value = "FALSE"
		}
	case "DATE":
		year := 2000 + rand.Intn(23)
		month := 1 + rand.Intn(12)
		day := 1 + rand.Intn(28)
		value = fmt.Sprintf("'%04d-%02d-%02d'", year, month, day)
	case "TIME":
		hour := rand.Intn(24)
		minute := rand.Intn(60)
		second := rand.Intn(60)
		value = fmt.Sprintf("'%02d:%02d:%02d'", hour, minute, second)
	case "DATETIME":
		year := 2000 + rand.Intn(23)
		month := 1 + rand.Intn(12)
		day := 1 + rand.Intn(28)
		hour := rand.Intn(24)
		minute := rand.Intn(60)
		second := rand.Intn(60)
		value = fmt.Sprintf("'%04d-%02d-%02d %02d:%02d:%02d'", year, month, day, hour, minute, second)
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
func generateBoolExpression(p ast.Prod) ast.BoolExpr {
	if p.Level() > d100() {
		return generateTruthExpression(p)
	}
	if d6() < 4 {
		return generateComparisonOperation(p)
	} else if d6() < 4 {
		return generateBooleanComparisonOperation(p)
	} else if d6() < 4 {
		return generateNullPredicateExpression(p)
	} else if d6() < 4 {
		return generateTruthExpression(p)
	} else {
		return generateExistsExpression(p)
	}
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.hh#L98
func generateTruthExpression(p ast.Prod) ast.BoolExpr {
	if d6() < 4 {
		return &ast.TruthExpr{Base: p.GetBase(), Value: true}
	}
	return &ast.TruthExpr{Base: p.GetBase(), Value: false}
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L42
func generateComparisonOperation(p ast.Prod) ast.BoolExpr {
	// b := ast.NewBase(p.GetBase())

	typ := randomPick(p.AvailableTypes())
	left, err := retry(func() (ast.ValueExpr, error) {
		return generateValueExpression(p, typ)
	})
	assert(err == nil, "expected no error")

	op := randomOperatorByType(typ)

	// make sure rhs matches the lhs type
	right, err := retry(func() (ast.ValueExpr, error) {
		return generateValueExpression(p, typ)
	})
	assert(err == nil, "expected no error")

	return &ast.BinaryExpr{
		Left:  left,
		Op:    op,
		Right: right,
	}
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.hh#L147
func generateBooleanComparisonOperation(p ast.Prod) ast.BoolExpr {
	left := generateBoolExpression(p)
	op := randomPick([]string{"AND", "OR"})
	right := generateBoolExpression(p)

	return &ast.BinaryExpr{
		Base:  p.GetBase(),
		Left:  left,
		Op:    op,
		Right: right,
	}
}

func generateNullPredicateExpression(p ast.Prod) ast.BoolExpr {
	exp, err := retry(func() (ast.ValueExpr, error) {
		return generateValueExpression(p, "")
	})
	assert(err == nil, "expected no error")

	return &ast.NullPredicateExpr{
		Base:   p.GetBase(),
		Negate: d6() < 4,
		Expr:   exp,
	}
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L119
func generateExistsExpression(p ast.Prod) ast.BoolExpr {
	b := ast.NewBase(p.GetBase())
	exp := &ast.ExistsExpr{
		Base: b,
	}
	exp.Subquery = GenerateSelect(exp, b.Scope)
	return exp
}

func randomOperatorByType(t schema.SqlType) string {
	commonOps := []string{"=", "<>"}

	switch t {
	case "INTEGER", "REAL", "NUMERIC", "DATE",
		"TIME", "DATETIME", "TEXT", "BLOB":
		return randomPick(append(commonOps, "<", ">", "<=", ">="))
	case "BOOLEAN":
		return randomPick(commonOps)
	default:
		return randomPick(commonOps)
	}
}

// --------- //
// Functions //
// --------- //

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L359
func generateWindowFunction(p ast.Prod, constraint schema.SqlType) *ast.WindowFunExpr {
	expr := &ast.WindowFunExpr{
		Base: ast.NewBase(p.GetBase()),
	}
	agg, err := generateAggregateCallExpression(p, constraint)
	assert(err == nil, "expected no error")

	expr.Aggregate = agg
	expr.Typ = agg.Typ

	pb, err := generateColumnReference(expr, expr.Typ)
	expr.PartionBy = append(expr.PartionBy, pb)
	for d6() < 4 {
		pb, err := generateColumnReference(expr, expr.Typ)
		assert(err == nil, "expected no error")
		expr.PartionBy = append(expr.PartionBy, pb)
	}

	ob, err := generateColumnReference(expr, expr.Typ)
	expr.OrderBy = append(expr.OrderBy, ob)
	for d6() < 4 {
		ob, err := generateColumnReference(expr, expr.Typ)
		assert(err == nil, "expected no error")
		expr.OrderBy = append(expr.OrderBy, ob)
	}

	return expr
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L374C1-L383C2
func isWindowFunctionAllowed(p ast.Prod) bool {
	if sc, ok := p.(*ast.SelectClause); ok {
		_, ok := sc.Parent().(*ast.SelectStmt)
		return ok
	}
	if _, ok := p.(*ast.WindowFunExpr); ok {
		return false
	}
	if ve, ok := p.(ast.ValueExpr); ok {
		return isWindowFunctionAllowed(ve.Parent())
	}
	return false
}

// if [constraint] is nil a random function is selected
// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L210
func generateFunctionCallExpression(p ast.Prod, constraint schema.SqlType, aggregate bool) (*ast.FunCallExpr, error) {
	if aggregate {
		return retry(func() (*ast.FunCallExpr, error) {
			return generateAggregateCallExpression(p, constraint)
		})
	}
	panic("non aggregate functions currently not supported")
}

func generateAggregateCallExpression(p ast.Prod, constraint schema.SqlType) (*ast.FunCallExpr, error) {
	b := ast.NewBase(p.GetBase())
	expr := &ast.FunCallExpr{
		Base:        b,
		IsAggregate: true,
	}

	proc := randomPick(p.Schema().Aggregates)
	if constraint != "" && proc.RetType != constraint {
		return nil, errors.New("no matching constraint found")
	}

	var params []ast.ValueExpr
	if proc.Name == "count" && d6() < 4 {
		// keep empty so we get count(*)
	} else {
		params = make([]ast.ValueExpr, len(proc.ArgTypes))
		for i, argType := range proc.ArgTypes {
			exp, err := generateValueExpression(p, argType)
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
	if !b {
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
