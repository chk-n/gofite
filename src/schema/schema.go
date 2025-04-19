package schema

import (
	"fmt"
	"strings"
)

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/relmodel.hh#L46
type Relation interface {
	Columns() []Column
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/relmodel.hh#L51
type NamedRelation struct {
	Name    string
	Columns []Column
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/relmodel.hh#L20
type SqlType string

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/schema.hh#L16
type Schema struct {
	Tables    []Table
	Operators []Operator
	// routines []routine
	// aggregates []routine
}

func (s *Schema) Out() string {
	var buf strings.Builder

	for i, table := range s.Tables {
		if i > 0 {
			buf.WriteString("\n\n")
		}

		buf.WriteString(table.Out())

		buf.WriteString(";")
	}

	return buf.String()
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/relmodel.hh#L65
type Table struct {
	Schema string
	Name   string
	Cols   []Column
	// TODO: add constraints
}

func (t *Table) Out() string {
	var buf strings.Builder

	buf.WriteString(fmt.Sprintf("CREATE TABLE %s (\n", t.Ident()))

	for i, col := range t.Cols {
		buf.WriteString("    ")
		buf.WriteString(col.Out())
		if i < len(t.Cols)-1 {
			buf.WriteString(",")
		}
		buf.WriteString("\n")
	}

	buf.WriteString(")")

	return buf.String()
}

func (t *Table) Columns() []Column {
	return t.Cols
}

func (t *Table) Ident() string {
	return t.Name
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/relmodel.hh#L37
type Column struct {
	Name string
	Typ  SqlType
}

func (c *Column) Out() string {
	return c.Name + " " + string(c.Typ)
}

func (c *Column) Ident() string {
	return c.Name
}
func (c *Column) Type() SqlType {
	return c.Typ
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/relmodel.hh#L117
type Operator struct {
	name string
	lhs  SqlType
	rhs  SqlType
	res  SqlType
}

func (o *Operator) Ident() string {
	return o.name
}

type RelationColumn struct {
	Rel NamedRelation
	Col Column
}
