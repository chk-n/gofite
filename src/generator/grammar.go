package generator

import (
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

// generateTable takes number of tables and an empty scope
// and generates 'num' tables and populates scope
func generateTable(num int) *schema.Schema {
	schm := &schema.Schema{}

	for i := range num {
		tab := schema.Table{
			Schema: "public",
			Name:   fmt.Sprintf("t%d", i),
		}
		nCols := 2 + rand.Intn(9)

		for i := range nCols {
			col := schema.Column{
				Name: fmt.Sprintf("c%d", i),
				Typ:  randomPick(types),
			}

			// TODO: randomly add primary key constraubt
			// TODO: randomly add not null
			// TODO: randomly add unique
			// TODO: randomly add default

			tab.Cols = append(tab.Cols, col)
		}
		// TODO: randomly reference another table

		schm.Tables = append(schm.Tables, tab)
	}
	return schm
}

func generateStatement(s *ast.Scope) (ast.Production, error) {
	// TODO: add remaining statements
	p := &ast.Prod{
		Scope: s,
	}
	return generateSelect(p, s)
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L314
func generateSelect(p *ast.Prod, s *ast.Scope) (*ast.SelectStmt, error) {
	stmt := ast.NewSelectStmt(p, s, true)

	if d100() == 1 {
		stmt.SetQuantifier = "distinct"
	}

	var err error
	stmt.FromClause, err = generateFromClause(stmt.Prod)
	if err != nil {
		return nil, err
	}
	// needs to be run after fromClause to ensure `Refs`
	// are available
	stmt.SelectList = generateSelectClause(stmt.Prod)
	stmt.WhereClause = generateBoolExpression(stmt.Prod)

	if d6() > 2 {
		stmt.LimitClause = fmt.Sprintf("LIMIT %d", d100())
	}

	return stmt, nil
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L200
func generateFromClause(p *ast.Prod) (*ast.FromClause, error) {
	f := &ast.FromClause{Prod: p, TableRefs: []ast.TableRef{}}

	// we need at least one reference in FROM clause
	f.TableRefs = append(f.TableRefs, generateTableRef(p))

	for _, r := range f.TableRefs[0].Refs {
		f.Prod.Scope.Refs = append(f.Prod.Scope.Refs, r)
	}

	// TODO: add lateral subquery
	// for d6() > 5 {
	// }
	return f, nil
}

// generates list of expressions for the select clause
// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L215
func generateSelectClause(p *ast.Prod) *ast.SelectClause {
	clause := &ast.SelectClause{
		ValueExprs:     []ast.ValueExpr{},
		DerivedColumns: []schema.Column{},
	}

	// add at least one column
	{
	start:
		expr := generateValueExpression(p, "")
		col := schema.Column{
			Name: fmt.Sprintf("c%d", p.Scope.StmtSeq["c"]),
			Typ:  expr.Type(),
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

// ---------- //
// References //
// ---------- //

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/grammar.cc#L15
func generateTableRef(p *ast.Prod) ast.TableRef {
	// TODO: here we can also generate:
	// * subquery
	// * joined table
	// * table sample
	t := randomPick(p.Scope.Tables)

	alias := fmt.Sprintf("t%d", p.Scope.StmtSeq["table"])
	p.Scope.StmtSeq["table"]++

	return ast.TableRef{
		Prod: p,
		Refs: []schema.NamedRelation{{Name: alias, Columns: t.Columns}},
	}
}

// creates a reference to an existing column
// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L77
func generateColumnReference(p *ast.Prod, t schema.SqlType) ast.ValueExpr {
	if t == "" {
		rel := randomPick(p.Scope.Refs)
		cols := rel.Columns
		c := randomPick(cols)
		return &ast.ColumnReference{
			Reference: fmt.Sprintf("%s.%s", rel.Name, c.Name),
			Typ:       c.Typ,
		}
	}
	// find all columns that match t
	pairs := p.Scope.RefsOfType(t)

	if len(pairs) == 0 {
		panic("no pairs found for type t")
	}

	pick := randomPick(pairs)

	return &ast.ColumnReference{
		Reference: fmt.Sprintf("%s.%s", pick.Rel.Name, pick.Col.Name),
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
func generateBoolExpression(p *ast.Prod) *ast.BoolExpr {

	// if d6() < 4 {
	// 	// return generateComparisonOperation(ctx)
	// } else if d6() < 4 {
	// 	// TODO: generate bool term
	// } else if d6() < 4 {
	// 	// TODO: generate null predicate
	// } else if d6() < 4 {
	// 	// TODO: generate truth value
	// } else {
	// 	// TODO: generate exists predicate
	// }

	return generateComparisonOperation(p)

}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/expr.cc#L42
func generateComparisonOperation(p *ast.Prod) *ast.BoolExpr {
	left := generateValueExpression(p, "")

	operators := []string{"=", "<>", "<", ">", "<=", ">="}
	op := randomPick(operators)

	// make sure rhs matches the lhs type
	right := generateValueExpression(p, left.Type())

	return &ast.BoolExpr{
		Left:  left,
		Op:    op,
		Right: right,
	}
}
