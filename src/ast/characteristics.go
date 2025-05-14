package ast

import "strings"

type CharacteristicsVisitor struct {
	ClauseCounts map[string]int
	MaxDepth     int
}

func NewCharacteristicsVisitor() *CharacteristicsVisitor {
	return &CharacteristicsVisitor{
		ClauseCounts: make(map[string]int),
		MaxDepth:     0,
	}
}

func (v *CharacteristicsVisitor) Visit(node Prod) {
	if node == nil {
		return
	}

	depth := node.Level()
	if depth > v.MaxDepth {
		v.MaxDepth = depth
	}

	switch n := node.(type) {
	case *SelectStmt:
		v.ClauseCounts["SELECT"]++
		if n.WhereClause != nil {
			v.ClauseCounts["WHERE"]++
		}
		if n.SetQuantifier != "" {
			v.ClauseCounts[n.SetQuantifier]++
		}
		if n.LimitClause != "" {
			v.ClauseCounts["LIMIT"]++
		}
		if n.OrderByClause != nil {
			v.ClauseCounts["ORDER"]++
		}
		if n.OffsetClause != "" {
			v.ClauseCounts["OFFSET"]++
		}
		v.Visit(n.SelectClause)
		v.Visit(n.FromClause)
		v.Visit(n.WhereClause)

	case *FromClause:
		v.ClauseCounts["FROM"]++
		for _, tableRef := range n.TableRefs {
			v.Visit(tableRef)
		}

	case *JoinedTable:
		v.ClauseCounts["JOIN"]++
		// Count specific join types
		joinType := strings.TrimSpace(strings.Split(n.Type, "JOIN")[0])
		if joinType != "" {
			v.ClauseCounts[joinType+" JOIN"]++
		}
		v.Visit(n.Lhs)
		v.Visit(n.Rhs)
		v.Visit(n.Condition)

	case *InsertStmt:
		v.ClauseCounts["INSERT"]++
		for _, expr := range n.Exprs {
			v.Visit(expr)
		}

	case *UpdateStmt:
		v.ClauseCounts["UPDATE"]++
		v.Visit(n.SetClause)
		v.Visit(n.WhereClause)

	case *DeleteStmt:
		v.ClauseCounts["DELETE"]++
		v.Visit(n.WhereClause)

	case *CTEStmt:
		v.ClauseCounts["WITH"]++
		for _, withQuery := range n.WithQueries {
			v.Visit(withQuery)
		}
		v.Visit(n.Query)

	case *ViewStmt:
		v.ClauseCounts["CREATE VIEW"]++
		for _, col := range n.Cols {
			v.Visit(col)
		}
		v.Visit(n.Select)

	case *ExplainStmt:
		v.ClauseCounts["EXPLAIN"]++
		if n.QueryPlan {
			v.ClauseCounts["QUERY PLAN"]++
		}
		v.Visit(n.Stmt)

	case *AnalyseStmt:
		v.ClauseCounts["ANALYZE"]++

	case *VacuumStmt:
		v.ClauseCounts["VACUUM"]++

	case *CompoundStmt:
		v.ClauseCounts[n.Op]++
		if n.LimitClause != "" {
			v.ClauseCounts["LIMIT"]++
		}
		if n.OrderByClause != nil {
			v.ClauseCounts["ORDER"]++
		}
		v.Visit(n.Lhs)
		v.Visit(n.Rhs)

	case *SavepointStmt:
		v.ClauseCounts["SAVEPOINT"]++
		for _, stmt := range n.Stmts {
			v.Visit(stmt)
		}

	case *TableSubquery:
		v.ClauseCounts["SUBQUERY"]++
		// if n.IsLateral {
		// 	v.ClauseCounts["LATERAL"]++
		// }
		v.Visit(n.Query)

	case *SelectClause:
		for _, expr := range n.ValueExprs {
			v.Visit(expr)
		}

	case *SetClause:
		v.ClauseCounts["SET"]++
		for _, val := range n.Values {
			v.Visit(val)
		}

	case *ColumnReference, *ConstExpr, *TruthExpr, *SimpleJoinCondition:
		// Leaf nodes, no further traversal

	case *BinaryExpr:
		v.Visit(n.Left)
		v.Visit(n.Right)

	case *ExistsExpr:
		v.ClauseCounts["EXISTS"]++
		v.Visit(n.Subquery)

	case *NullPredicateExpr:
		v.ClauseCounts["IS NULL"]++
		v.Visit(n.Expr)

	case *FunCallExpr:
		v.ClauseCounts["FUNCTION"]++
		if n.IsAggregate {
			v.ClauseCounts["AGGREGATE"]++
		}
		if n.SetQuantifier != "" {
			v.ClauseCounts[n.SetQuantifier]++
		}
		for _, param := range n.Params {
			v.Visit(param)
		}

	case *WindowFunExpr:
		v.ClauseCounts["WINDOW"]++
		v.Visit(n.Aggregate)
		for _, expr := range n.PartionBy {
			v.Visit(expr)
		}
		for _, expr := range n.OrderBy {
			v.Visit(expr)
		}

	case *CaseExpr:
		v.ClauseCounts["CASE"]++
		if n.Val != nil {
			v.Visit(n.Val)
		}
		for i := range n.When {
			v.Visit(n.When[i])
			v.Visit(n.Then[i])
		}
		if n.Else != nil {
			v.Visit(n.Else)
		}

	case *CastExpr:
		v.ClauseCounts["CAST"]++
		v.Visit(n.Expr)

	case *CoalesceExpr:
		v.ClauseCounts["COALESCE"]++
		for _, expr := range n.Exprs {
			v.Visit(expr)
		}

	case *IfNullIfExpr:
		if n.IsIfNull {
			v.ClauseCounts["IFNULL"]++
		} else {
			v.ClauseCounts["NULLIF"]++
		}
		v.Visit(n.Expr1)
		v.Visit(n.Expr2)

	case *ExpressionJoinCondition:
		v.Visit(n.WhereClause)
	}
}
