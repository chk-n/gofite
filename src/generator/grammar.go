package generator

import (
	"errors"
	"fmt"
	"math/rand"
	"os"
	"strconv"
	"time"

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
		defaults := make([]string, nCols)
		dummy := &ast.SelectStmt{Base: ast.NewBase(nil)}
		for i := range nCols {
			col := schema.Column{
				Name: fmt.Sprintf("c%d", i),
				Typ:  randomPick(types),
			}

			// TODO: randomly add primary key constraubt
			// TODO: randomly add not null
			// TODO: randomly add unique

			cols[i] = col
			if d6() == 1 {
				v := generateConstantExpression(dummy, col.Typ)
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
	schm.Routines = schema.BuiltInFunctions

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
	} else if d42() == 1 {
		return GenerateCTE(nil, s)
	} else if d1000() == 1 {
		return GenerateAnalyse(nil, s)
	} else if d1000()+d1000() == 1 {
		return GenerateVacuum(nil, s)
	}
	/*else if d42() == 1 {
		return generateUpsert(nil, s)
	}
	*/
	return GenerateSelect(nil, s)
}

func GenerateExplain(p ast.Prod, s *ast.Scope) *ast.ExplainStmt {
	expl := ast.NewExplainStmt(p)
	if d6() < 3 {
		expl.QueryPlan = true
	}
	expl.Stmt = GenerateStatement(s)

	return expl
}

func GenerateAnalyse(p ast.Prod, s *ast.Scope) *ast.AnalyseStmt {
	stmt := ast.NewAnalyseStmt(p)
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

func GenerateVacuum(p ast.Prod, s *ast.Scope) *ast.VacuumStmt {
	stmt := ast.NewVacuumStmt(p)

	if d100() == 1 {
		var err error
		stmt.File += "'"
		stmt.File, err = os.MkdirTemp("", "sqlite3-")
		if err != nil {
			panic(err)
		}
		stmt.File += fmt.Sprintf("%d", time.Now().UnixMilli())
		stmt.File += "'"
	}

	if s.Schema.Name != "" {
		stmt.Name = s.Schema.Name
	} else {
		stmt.Name = "main"
	}

	return stmt
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

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L498
func GenerateCTE(p ast.Prod, s *ast.Scope) *ast.CTEStmt {
	stmt := ast.NewCTEStmt(p, s)

	// create at least one SELECT within CTE
repeat1:
	query := GenerateSelect(stmt, s)
	stmt.WithQueries = append(stmt.WithQueries, query)

	alias := fmt.Sprintf("cte%d", stmt.GetStmtUid("cte"))
	stmt.IncrStmtUid("cte")
	aliasedRel := query.SelectClause.DerivedColumns
	stmt.Refs = append(stmt.Refs, &schema.AliasedRelation{Alias: alias, Cols: aliasedRel})

	if d6() > 2 {
		goto repeat1
	}

	// add random tables from original scope
repeat2:
	tab := randomPick(s.Tables)
	stmt.Scope.Tables = append(stmt.Scope.Tables, tab)

	if d6() > 3 {
		goto repeat2
	}

	// generate main SQL statement
	stmt.Query = GenerateSelect(stmt, stmt.Scope)

	return stmt
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L314
func GenerateSelect(p ast.Prod, s *ast.Scope) *ast.SelectStmt {
	stmt := ast.NewSelectStmt(p, s, false)

	if d100() == 1 {
		stmt.SetQuantifier = "DISTINCT"
	} else if d100() == 1 {
		stmt.SetQuantifier = "ALL"
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
	// TODO: add case expressions
	// TODO: add coalesce
	// TODO: add nullif
	if d20() == 1 && p.Level() < d6() && isWindowFunctionAllowed(p) {
		return generateWindowFunction(p, t)
	} else if p.Level() < d6() && d6() == 1 {
		return generateFunctionCallExpression(p, t, false)
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
		if d6() < 6 {
			year := 2000 + rand.Intn(23)
			month := 1 + rand.Intn(12)
			day := 1 + rand.Intn(28)
			value = fmt.Sprintf("'%04d-%02d-%02d'", year, month, day)
		} else {
			value = "CURRENT_DATE"
		}
	case "TIME":
		if d6() < 6 {
			hour := rand.Intn(24)
			minute := rand.Intn(60)
			second := rand.Intn(60)
			value = fmt.Sprintf("'%02d:%02d:%02d'", hour, minute, second)
		} else {
			value = "CURRENT_TIME"
		}
	case "DATETIME":
		if d6() < 6 {
			year := rand.Intn(9999)
			month := 1 + rand.Intn(12)
			day := 1 + rand.Intn(28)
			hour := rand.Intn(24)
			minute := rand.Intn(60)
			second := rand.Intn(60)
			value = fmt.Sprintf("'%04d-%02d-%02d %02d:%02d:%02d'", year, month, day, hour, minute, second)
		} else {
			value = "CURRENT_TIMESTAMP"
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
func generateWindowFunction(p ast.Prod, constraint schema.SqlType) (*ast.WindowFunExpr, error) {
	expr := &ast.WindowFunExpr{
		Base: ast.NewBase(p.GetBase()),
	}
	agg, err := generateAggregateCallExpression(p, constraint)
	if err != nil {
		return nil, err
	}

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

	return expr, nil
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
		return generateAggregateCallExpression(p, constraint)
	}

	// pick a random built in function e.g. core,
	// math or datetime
	proc := randomPick(schema.BuiltInFunctions)
	args := generateFunctionArguments(p, proc.ArgTypes)
	if constraint != "" && proc.RetType != constraint {
		return nil, errors.New("no matching constraint found")
	}

	return &ast.FunCallExpr{
		Base:   p.GetBase(),
		Proc:   proc,
		Params: args,
		Typ:    proc.RetType,
	}, nil

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

func generateFunctionArguments(p ast.Prod, argTypes []schema.SqlType) []ast.ValueExpr {
	var vals []ast.ValueExpr
	var tValue string

	i := len(argTypes)
	// j can be at most len(argTypes) - 1
	j := 0
	for range i {
		at := argTypes[j]
		switch at {
		case "MULTI":
			// generate random number of additional
			// arguments
			i += rand.Intn(100)
		case "TIMEVALUE":
			val, tVal := generateDatetimeValue()
			tValue = tVal
			vals = append(vals, ast.NewConstant(p, val, "TEXT"))
		case "TIMEMODIFIER":
			// as timevalues always precede modifiers
			// we just get last time value
			assert(tValue != "", "expected tValue to be set")
			mod := generateDatetimeModifier(tValue)
			vals = append(vals, ast.NewConstant(p, mod, "TEXT"))
		case "RUNE":
			vals = append(vals, generateUnicode(p))
		case "ANY":
			vals = append(vals, generateConstantExpression(p, ""))
		case "REAL01":
			// altjhough 1.0 not included this should
			// be fine
			r := fmt.Sprintf("%f", rand.Float32())
			vals = append(vals, ast.NewConstant(p, r, "REAL"))
		default:
			vals = append(vals, generateConstantExpression(p, at))
		}
		if j < len(argTypes) {
			j++
		}
	}

	assert(len(vals) <= len(argTypes), "expected vals to be <= argTypes")

	return vals
}

// https://sqlite.org/lang_datefunc.html
func generateDatetimeValue() (string, string) {
	i := rand.Intn(12)
	tv := schema.DatetimeTimeValues[i]
	switch i + 1 {
	case 1:
		y := randomInt(9999)
		m := randomInt(12)
		d := generateDay(m)
		return fmt.Sprintf(tv, y, m, d), tv
	case 2, 5:
		y := randomInt(9999)
		mn := randomInt(12)
		d := generateDay(mn)
		h := randomInt(24)
		m := randomInt(59)
		return fmt.Sprintf(tv, y, mn, d, h, m), tv
	case 3, 6:
		y := randomInt(9999)
		mn := randomInt(12)
		d := generateDay(mn)
		h := randomInt(24)
		m := randomInt(59)
		s := randomInt(59)
		return fmt.Sprintf(tv, y, mn, d, h, m, s), tv
	case 4, 7:
		y := randomInt(9999)
		mn := randomInt(12)
		d := generateDay(mn)
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

func generateDatetimeModifier(timeValue string) string {
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
		d := generateDay(m)
		return fmt.Sprintf(mod, y, m, d)
	case 11:
		y := randomInt(9999)
		mn := randomInt(12)
		d := generateDay(mn)
		h := randomInt(24)
		m := randomInt(59)
		return fmt.Sprintf(mod, y, mn, d, h, m)
	case 12:
		y := randomInt(9999)
		mn := randomInt(12)
		d := generateDay(mn)
		h := randomInt(24)
		m := randomInt(59)
		s := randomInt(59)
		return fmt.Sprintf(mod, y, mn, d, h, m, s)
	case 13:
		y := randomInt(9999)
		mn := randomInt(12)
		d := generateDay(mn)
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

func generateDay(month int) int {
	var d int
	// NOTE: we will getinvalid days
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

func generateUnicode(p ast.Prod) ast.ValueExpr {
	for {
		cp := rune(rand.Intn(0x10FFFF + 1))

		// check if surrogate
		if cp >= 0xD800 && cp <= 0xDFFF {
			continue
		}
		return ast.NewConstant(p, "'"+string(cp)+"'", "TEXT")
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
