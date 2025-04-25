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
	return schm
}

func generateStatement(s *ast.Scope) ast.Production {
	// TODO: add remaining statements
	//

	if d42() == 1 {
		return generateInsert(nil, s)
	} else if d42() == 1 {
		return generateUpdate(nil, s)
	} else if d42() == 1 {
		return generateDelete(nil, s)
	} /*else if d42() == 1 {
		return generateCommonTableExpression(p, s)
	} else if d42() == 1 {
		return generateUpsert(p, s)
	}
	*/
	return generateSelect(nil, s)
}

// generateInsert picks a random table and then generates
// values expressions for each column
// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L374
func generateInsert(p *ast.Prod, s *ast.Scope) *ast.InsertStmt {
	victim := randomPick(s.Tables)
	stmt := ast.NewInsertStmt(p, s, victim)

	assert(len(stmt.Scope.Refs) == 0, "expected zero references in insert stmt")
	assert(len(stmt.LocalScope.Refs) == 0, "expected zero references in insert stmt")

	// TODO: randomly generate INSERT OR REPLACE
	// or INSERT OR IGNORE

	for _, col := range stmt.Table.Columns() {
		expr := generateValueExpression(stmt.Prod, col.Typ)
		stmt.Exprs = append(stmt.Exprs, expr)
	}

	// NOTE: should we add optional ON CONFLICT clause?
	// or generate conflicting inserts on purpose

	return stmt
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L433
func generateUpdate(p *ast.Prod, s *ast.Scope) *ast.UpdateStmt {
	victim := randomPick(s.Tables)
	stmt := ast.NewUpdateStmt(p, s, victim)

	stmt.Scope.Refs = append(stmt.Scope.Refs, victim)
	stmt.Where = generateBoolExpression(stmt.Prod)
	stmt.SetClause = generateSetClause(stmt.Prod, victim)

	// NOTE: maybe we can combine update_stmt and update_returning
	// as one struct. I am not sure why sqlsmith has two seperate
	// classes for this.

	return stmt
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L408
func generateSetClause(p *ast.Prod, t schema.NamedRelation) *ast.SetClause {
	p = ast.NewProd(p)

	t, ok := t.(*schema.Table)
	assert(ok, "expected type to be of *schema.Table")

start:
	clause := &ast.SetClause{Prod: p}
	for _, col := range t.Columns() {
		if d6() < 4 {
			continue
		}
		expr := generateValueExpression(clause.Prod, col.Type())
		clause.Values = append(clause.Values, expr)
		clause.Names = append(clause.Names, col.Name)
	}
	// ensure we get at least one column in update
	if len(clause.Values) == 0 {
		goto start
	}

	return clause
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L362
func generateDelete(p *ast.Prod, s *ast.Scope) *ast.DeleteStmt {
	victim := randomPick(s.Tables)
	stmt := ast.NewDeleteStmt(p, s, victim)

	stmt.Scope.Refs = append(stmt.Scope.Refs, victim)
	stmt.Where = generateBoolExpression(stmt.Prod)

	return stmt
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L314
func generateSelect(p *ast.Prod, s *ast.Scope) *ast.SelectStmt {
	stmt := ast.NewSelectStmt(p, s, false)

	if d100() == 1 {
		stmt.SetQuantifier = "distinct"
	}

	stmt.FromClause = generateFromClause(stmt.Prod)
	// needs to be run after fromClause to ensure `Refs`
	// are available
	stmt.SelectClause = generateSelectClause(stmt.Prod)
	stmt.WhereClause = generateBoolExpression(stmt.Prod)

	if d6() > 2 {
		stmt.LimitClause = fmt.Sprintf("LIMIT %d", d100()+d100())
	}

	return stmt
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L200
func generateFromClause(p *ast.Prod) *ast.FromClause {
	clause := &ast.FromClause{Prod: p, TableRefs: []ast.TableRef{}}

	// we need at least one reference in FROM clause
	clause.TableRefs = append(clause.TableRefs, generateTableRef(clause.Prod))

	for _, r := range clause.TableRefs[0].References() {
		clause.Prod.Scope.Refs = append(clause.Prod.Scope.Refs, r)
	}

	// TODO: add lateral subquery
	// for d6() > 5 {
	// }
	return clause
}

// generates list of expressions for the select clause
// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L215
func generateSelectClause(p *ast.Prod) *ast.SelectClause {
	p = ast.NewProd(p)

	clause := &ast.SelectClause{
		ValueExprs:     []ast.ValueExpr{},
		DerivedColumns: []schema.Column{},
	}

	// add at least one column
	{
	start:
		typ := randomPick(p.Scope.AvailableTypes())
		expr := generateValueExpression(p, typ)
		col := schema.Column{
			Name: fmt.Sprintf("c%d", p.Scope.StmtSeq["c"]),
			Typ:  typ,
		}
		p.Scope.StmtSeq["c"]++

		clause.ValueExprs = append(clause.ValueExprs, expr)
		clause.DerivedColumns = append(clause.DerivedColumns, col)

		if d6() > 1 {
			goto start
		}
	}
	return clause
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L153
func generateJoinedTable(p *ast.Prod) *ast.JoinedTable {
	tab := &ast.JoinedTable{
		Prod: ast.NewProd(p),
	}

retry:
	tab.Lhs = generateTableRef(tab.Prod)
	tab.Rhs = generateTableRef(tab.Prod)

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
		cond, err := generateJoinCondition(tab.Prod, tab.Lhs, tab.Rhs)
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
func generateJoinCondition(p *ast.Prod, l, r ast.TableRef) (ast.JoinCondition, error) {
	if d6() < 6 {
		return generateExpressionJoinCondition(p, l, r)
	}
	return generateSimpleJoinCondition(p, l, r)
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L109
func generateSimpleJoinCondition(p *ast.Prod, l, r ast.TableRef) (ast.JoinCondition, error) {
	p = ast.NewProd(p)
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
		Prod:      p,
		Condition: condition,
	}, nil
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L138
func generateExpressionJoinCondition(p *ast.Prod, l, r ast.TableRef) (ast.JoinCondition, error) {
	s := ast.NewScope(p.Scope)
	p = ast.NewProd(p)
	p.Scope = s

	for _, ref := range l.References() {
		s.Refs = append(s.Refs, ref)
	}
	for _, ref := range r.References() {
		s.Refs = append(s.Refs, ref)
	}
	where := generateBoolExpression(p)

	return &ast.ExpressionJoinCondition{
		Prod:       p,
		LocalScope: s,
		Lhs:        l,
		Rhs:        r,
		Where:      where,
	}, nil

}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L81
func generateTableSubquery(p *ast.Prod, lateral bool) *ast.TableSubquery {
	assert(!lateral, "sqlite 3.26 does not support lateral subqueries")

	p = ast.NewProd(p)
	p.Scope = ast.NewScope(p.Scope)
	subq := &ast.TableSubquery{
		Prod:      p,
		IsLateral: lateral,
		Query:     generateSelect(p, p.Scope),
	}

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
func generateTableRef(p *ast.Prod) ast.TableRef {
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
func generateTableOrQueryName(p *ast.Prod) *ast.TableOrQueryName {
	p = ast.NewProd(p)

	t := randomPick(p.Scope.Tables)
	assert(t != nil, "expected t to not be nil")

	p.Scope.StmtSeq["c"] = uint(len(t.Columns()))
	p.Scope.StmtSeq["table"]++
	alias := fmt.Sprintf("t%d", p.Scope.StmtSeq["table"])

	return &ast.TableOrQueryName{
		Prod:  p,
		Table: t,
		Refs:  []schema.NamedRelation{schema.NewTable(alias, t.Columns())},
	}
}

// creates a reference to an existing column
// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L77
func generateColumnReference(p *ast.Prod, t schema.SqlType) ast.ValueExpr {
	p = ast.NewProd(p)

	if t == "" {
		rel := randomPick(p.Scope.Refs)
		cols := rel.Columns()
		c := randomPick(cols)
		return &ast.ColumnReference{
			Reference: fmt.Sprintf("%s.%s", rel.Name(), c.Name),
			Typ:       c.Typ,
		}
	}
	// find all columns that match t
	pairs := p.Scope.RefsOfType(t)
	assert(len(pairs) != 0, "expected at least one pair")

	pick := randomPick(pairs)

	return &ast.ColumnReference{
		Reference: fmt.Sprintf("%s.%s", pick.Rel.Name(), pick.Col.Name),
		Typ:       pick.Col.Typ,
	}
}

// ----------- //
// Expressions //
// ----------- //

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L17
func generateValueExpression(p *ast.Prod, t schema.SqlType) ast.ValueExpr {
	// generate column reference if available
	if len(p.Scope.Refs) > 0 && d20() > 1 {
		return generateColumnReference(p, t)
	}

	return generateConstantExpression(p, t)
}

// creates a constant expression based on t or existing sqlite types
// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L195
func generateConstantExpression(p *ast.Prod, t schema.SqlType) ast.ValueExpr {
	p = ast.NewProd(p)

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
		Value: value,
		Typ:   t,
	}
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L96
func generateBoolExpression(p *ast.Prod) ast.BoolExpr {
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
func generateTruthExpression(p *ast.Prod) ast.BoolExpr {
	if d6() < 4 {
		return &ast.TruthExpr{Value: true}
	}
	return &ast.TruthExpr{Value: false}
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L42
func generateComparisonOperation(p *ast.Prod) ast.BoolExpr {
	p = ast.NewProd(p)

	typ := randomPick(p.Scope.AvailableTypes())
	left := generateValueExpression(p, typ)

	op := randomOperatorByType(typ)

	// make sure rhs matches the lhs type
	right := generateValueExpression(p, typ)

	return &ast.BinaryExpr{
		Left:  left,
		Op:    op,
		Right: right,
	}
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.hh#L147
func generateBooleanComparisonOperation(p *ast.Prod) ast.BoolExpr {
	p = ast.NewProd(p)

	left := generateBoolExpression(p)
	op := randomPick([]string{"AND", "OR"})
	right := generateBoolExpression(p)

	return &ast.BinaryExpr{
		Left:  left,
		Op:    op,
		Right: right,
	}
}

func generateNullPredicateExpression(p *ast.Prod) ast.BoolExpr {
	p = ast.NewProd(p)

	return &ast.NullPredicateExpr{
		Negate: d6() < 4,
		Expr:   generateValueExpression(p, ""),
	}
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L119
func generateExistsExpression(p *ast.Prod) ast.BoolExpr {
	p = ast.NewProd(p)
	exp := &ast.ExistsExpr{
		Prod:     p,
		Subquery: generateSelect(p, p.Scope),
	}
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

// ------ //
// Helper //
// ------ //

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

func colOfTypeExists(cols []schema.Column, t schema.SqlType) bool {
	for _, col := range cols {
		if col.Typ == t {
			return true
		}
	}
	return false
}
