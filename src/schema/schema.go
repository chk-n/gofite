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
type NamedRelation interface {
	Out() string
	Name() string
	Columns() []Column
}

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/relmodel.hh#L20
type SqlType string

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/schema.hh#L16
type Schema struct {
	Name       string // NOTE: currently not used
	Tables     []NamedRelation
	Operators  []*Operator
	Routines   []*Routine
	Aggregates []*Routine
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
	name     string
	cols     []Column
	defaults []string
	// TODO: add constraints
	// true means a tempory
	// table will be generated
	isTemp bool
	// if true it will add
	// 'IF NOT EXISTS' to Out()
	ifNotExists bool
}

func NewTable(n string, cols []Column, defaults []string, isTemp, ifNotExists bool) *Table {
	return &Table{
		name:        n,
		cols:        cols,
		isTemp:      isTemp,
		ifNotExists: ifNotExists,
	}
}

func (t *Table) Out() string {
	var buf strings.Builder

	buf.WriteString(fmt.Sprintf("CREATE TABLE %s (\n", t.Name()))

	for i, col := range t.cols {
		buf.WriteString("    ")
		buf.WriteString(col.Out())
		if len(t.defaults) > 0 && t.defaults[i] != "" {
			buf.WriteString(" DEFAULT ")
			buf.WriteString(t.defaults[i])
		}
		if i < len(t.cols)-1 {
			buf.WriteString(",")
		}
		buf.WriteString("\n")
	}

	buf.WriteString(")")

	return buf.String()
}

func (t *Table) Columns() []Column {
	return t.cols
}

func (t *Table) Name() string {
	return t.name
}

type AliasedRelation struct {
	Alias string
	Cols  []Column
}

func (t *AliasedRelation) Out() string {
	panic("dont use. required for interface")
}

func (t *AliasedRelation) Name() string {
	return t.Alias
}

func (t *AliasedRelation) Columns() []Column {
	return t.Cols
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

// https://github.com/anse1/sqlsmith/blob/46c1df710ea0217d87247bb1fc77f4a09bca77f7/relmodel.hh#L127
type Routine struct {
	Name     string
	Schema   string
	ArgTypes []SqlType
	RetType  SqlType
}

func (r *Routine) Ident() string {
	if r.Schema != "" {
		return r.Schema + "." + r.Name
	}
	return r.Name
}

var BuiltInAggregates = []*Routine{
	{Name: "avg", Schema: "", ArgTypes: []SqlType{"INTEGER"}, RetType: "INTEGER"},
	{Name: "avg", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	{Name: "count", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "INTEGER"},
	{Name: "count", Schema: "", ArgTypes: []SqlType{"TEXT"}, RetType: "INTEGER"},
	{Name: "count", Schema: "", ArgTypes: []SqlType{"INTEGER"}, RetType: "INTEGER"},
	{Name: "count", Schema: "", ArgTypes: []SqlType{}, RetType: "INTEGER"}, // count(*)
	{Name: "group_concat", Schema: "", ArgTypes: []SqlType{"TEXT"}, RetType: "TEXT"},
	{Name: "group_concat", Schema: "", ArgTypes: []SqlType{"TEXT", "TEXT"}, RetType: "TEXT"},
	{Name: "string_agg", Schema: "", ArgTypes: []SqlType{"TEXT", "TEXT"}, RetType: "TEXT"},
	{Name: "max", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	{Name: "max", Schema: "", ArgTypes: []SqlType{"INTEGER"}, RetType: "INTEGER"},
	{Name: "max", Schema: "", ArgTypes: []SqlType{"TEXT"}, RetType: "TEXT"},
	{Name: "min", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	{Name: "min", Schema: "", ArgTypes: []SqlType{"INTEGER"}, RetType: "INTEGER"},
	{Name: "min", Schema: "", ArgTypes: []SqlType{"TEXT"}, RetType: "TEXT"},
	{Name: "sum", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	{Name: "sum", Schema: "", ArgTypes: []SqlType{"INTEGER"}, RetType: "INTEGER"},
	{Name: "total", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	{Name: "total", Schema: "", ArgTypes: []SqlType{"INTEGER"}, RetType: "REAL"},
}

// Some special types are used here such as
// * MULTI: to represent ability to add n arguments followed by a type
// * RUNE: unicode code point
// * ANY: any sqlite data type allowed
// * REAL01: real number in range [0.0, 1.0]
// * TIMEVALUE: sqlite time-value
// * TIMEMODIFIER: sqlite modifier
//
// NOTE: some functions are commented out because
// they would return differing results even if same
// data inserted e.g. due to randomness. Perhaps it
// would be better to keep them all in array and then
// filter based on what type of automated test we
// are running
var BuiltInFunctions = []*Routine{

	// -------------- //
	// Core functions //
	// -------------- //

	{Name: "abs", Schema: "", ArgTypes: []SqlType{"ANY"}, RetType: "REAL"},
	{Name: "round", Schema: "", ArgTypes: []SqlType{"ANY"}, RetType: "REAL"},
	{Name: "round", Schema: "", ArgTypes: []SqlType{"ANY", "ANY"}, RetType: "REAL"},
	// {Name: "sign", Schema: "", ArgTypes: []SqlType{"ANY"}, RetType: "INTEGER"},
	{Name: "max", Schema: "", ArgTypes: []SqlType{"ANY", "ANY", "MULTI", "ANY"}, RetType: "REAL"},
	{Name: "min", Schema: "", ArgTypes: []SqlType{"ANY", "ANY", "MULTI", "ANY"}, RetType: "REAL"},
	// RUNE gets converted to INTEGER but is required so
	// we know to generate a unicode code point
	{Name: "char", Schema: "", ArgTypes: []SqlType{"MULTI", "RUNE"}, RetType: "TEXT"},
	// {Name: "concat", Schema: "", ArgTypes: []SqlType{"ANY", "MULTI", "ANY"}, RetType: "TEXT"},
	// {Name: "concat_ws", Schema: "", ArgTypes: []SqlType{"TEXT", "ANY", "MULTI", "ANY"}, RetType: "TEXT"},
	// {Name: "format", Schema: "", ArgTypes: []SqlType{"TEXT", "MULTI", "ANY"}, RetType: "TEXT"},
	{Name: "hex", Schema: "", ArgTypes: []SqlType{"ANY"}, RetType: "TEXT"},
	{Name: "instr", Schema: "", ArgTypes: []SqlType{"ANY", "ANY"}, RetType: "INTEGER"},
	{Name: "length", Schema: "", ArgTypes: []SqlType{"ANY"}, RetType: "INTEGER"},
	{Name: "like", Schema: "", ArgTypes: []SqlType{"ANY", "ANY"}, RetType: "INTEGER"},
	// last param i.e. escape character can only be 1 character long
	{Name: "like", Schema: "", ArgTypes: []SqlType{"ANY", "ANY", "RUNE"}, RetType: "INTEGER"},
	{Name: "lower", Schema: "", ArgTypes: []SqlType{"ANY"}, RetType: "TEXT"},
	{Name: "ltrim", Schema: "", ArgTypes: []SqlType{"ANY"}, RetType: "TEXT"},
	{Name: "ltrim", Schema: "", ArgTypes: []SqlType{"ANY", "ANY"}, RetType: "TEXT"},
	// {Name: "octet_length", Schema: "", ArgTypes: []SqlType{"ANY"}, RetType: "INTEGER"},
	{Name: "printf", Schema: "", ArgTypes: []SqlType{"TEXT", "MULTI", "ANY"}, RetType: "TEXT"},
	{Name: "quote", Schema: "", ArgTypes: []SqlType{"ANY"}, RetType: "TEXT"},
	{Name: "replace", Schema: "", ArgTypes: []SqlType{"ANY", "ANY", "ANY"}, RetType: "TEXT"},
	{Name: "rtrim", Schema: "", ArgTypes: []SqlType{"ANY"}, RetType: "TEXT"},
	{Name: "rtrim", Schema: "", ArgTypes: []SqlType{"ANY", "ANY"}, RetType: "TEXT"},
	// NOTE: only available if enabled during compilation of sqlite
	// {Name: "soundex", Schema: "", ArgTypes: []SqlType{"TEXT"}, RetType: "TEXT"},
	{Name: "substr", Schema: "", ArgTypes: []SqlType{"ANY", "ANY"}, RetType: "TEXT"},
	{Name: "substr", Schema: "", ArgTypes: []SqlType{"ANY", "ANY", "ANY"}, RetType: "TEXT"},
	// {Name: "substring", Schema: "", ArgTypes: []SqlType{"ANY", "ANY"}, RetType: "TEXT"},
	// {Name: "substring", Schema: "", ArgTypes: []SqlType{"ANY", "ANY", "ANY"}, RetType: "TEXT"},
	{Name: "trim", Schema: "", ArgTypes: []SqlType{"ANY"}, RetType: "TEXT"},
	{Name: "trim", Schema: "", ArgTypes: []SqlType{"ANY", "ANY"}, RetType: "TEXT"},
	{Name: "unicode", Schema: "", ArgTypes: []SqlType{"ANY"}, RetType: "INTEGER"},
	{Name: "upper", Schema: "", ArgTypes: []SqlType{"ANY"}, RetType: "TEXT"},
	// {Name: "unhex", Schema: "", ArgTypes: []SqlType{"ANY"}, RetType: "BLOB"},
	// {Name: "unhex", Schema: "", ArgTypes: []SqlType{"ANY", "ANY"}, RetType: "BLOB"},
	{Name: "coalesce", Schema: "", ArgTypes: []SqlType{"ANY", "ANY", "MULTI", "ANY"}, RetType: "TEXT"},
	{Name: "ifnull", Schema: "", ArgTypes: []SqlType{"ANY", "ANY"}, RetType: "TEXT"},
	// NOTE: if and iif equivalent to CASE expression
	// {Name: "if", Schema: "", ArgTypes: []SqlType{"INTEGER", "ANY", "MULTI", "INTEGER", "ANY"}, RetType: "TEXT"},
	// {Name: "iif", Schema: "", ArgTypes: []SqlType{"INTEGER", "ANY", "MULTI", "INTEGER", "ANY"}, RetType: "TEXT"},
	{Name: "nullif", Schema: "", ArgTypes: []SqlType{"ANY", "ANY"}, RetType: "TEXT"},
	{Name: "likelihood", Schema: "", ArgTypes: []SqlType{"ANY", "REAL01"}, RetType: "INTEGER"},
	{Name: "likely", Schema: "", ArgTypes: []SqlType{"ANY"}, RetType: "INTEGER"},
	{Name: "unlikely", Schema: "", ArgTypes: []SqlType{"ANY"}, RetType: "INTEGER"},
	{Name: "typeof", Schema: "", ArgTypes: []SqlType{"ANY"}, RetType: "TEXT"},
	{Name: "glob", Schema: "", ArgTypes: []SqlType{"ANY", "ANY"}, RetType: "INTEGER"},
	{Name: "changes", Schema: "", ArgTypes: []SqlType{}, RetType: "INTEGER"},
	{Name: "last_insert_rowid", Schema: "", ArgTypes: []SqlType{}, RetType: "INTEGER"},
	// NOTE: removed as we wont be loading extensions
	// {Name: "load_extension", Schema: "", ArgTypes: []SqlType{"TEXT"}, RetType: "NULL"},
	// {Name: "load_extension", Schema: "", ArgTypes: []SqlType{"TEXT", "TEXT"}, RetType: "NULL"},
	// NOTE: for differential testing we want to avoid
	// any random behaviour.
	// {Name: "random", Schema: "", ArgTypes: []SqlType{}, RetType: "INTEGER"},
	// {Name: "randomblob", Schema: "", ArgTypes: []SqlType{"INTEGER"}, RetType: "BLOB"},
	// NOTE HARRY : Disabled to make deterministic
	// {Name: "sqlite_compileoption_get", Schema: "", ArgTypes: []SqlType{"INTEGER"}, RetType: "TEXT"},
	// NOTE: if we enable this we need to keep a list of
	// compile time option strings
	// {Name: "sqlite_compileoption_used", Schema: "", ArgTypes: []SqlType{"TEXT"}, RetType: "INTEGER"},
	// NOTE: this might not be the same across two database
	// instances. TODO: test this
	// {Name: "sqlite_offset", Schema: "", ArgTypes: []SqlType{"COLUMN"}, RetType: "INTEGER"},
	// NOTE: this value will be different between both
	// DBs during differential testing
	// {Name: "sqlite_source_id", Schema: "", ArgTypes: []SqlType{}, RetType: "TEXT"},
	// NOTE: removed as we will test two different versions
	// {Name: "sqlite_version", Schema: "", ArgTypes: []SqlType{}, RetType: "TEXT"},
	{Name: "total_changes", Schema: "", ArgTypes: []SqlType{}, RetType: "INTEGER"},
	{Name: "zeroblob", Schema: "", ArgTypes: []SqlType{"INTEGER"}, RetType: "BLOB"},

	// -------------- //
	// Math functions //
	// -------------- //

	// NOTE: math functions are only enabled if sqlite
	// compiled with -DSQLITE_ENABLE_MATH_FUNCTIONS flag
	// {Name: "sin", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	// {Name: "cos", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	// {Name: "tan", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	// {Name: "asin", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	// {Name: "acos", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	// {Name: "atan", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	// {Name: "atan2", Schema: "", ArgTypes: []SqlType{"REAL", "REAL"}, RetType: "REAL"},
	// {Name: "sinh", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	// {Name: "cosh", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	// {Name: "tanh", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	// {Name: "asinh", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	// {Name: "acosh", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	// {Name: "atanh", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	// {Name: "ceil", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "INTEGER"},
	// {Name: "ceiling", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "INTEGER"},
	// {Name: "floor", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "INTEGER"},
	// {Name: "trunc", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "INTEGER"},
	// {Name: "exp", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	// {Name: "ln", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	// {Name: "log", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	// {Name: "log", Schema: "", ArgTypes: []SqlType{"REAL", "REAL"}, RetType: "REAL"},
	// {Name: "log10", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	// {Name: "log2", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	// {Name: "pow", Schema: "", ArgTypes: []SqlType{"REAL", "REAL"}, RetType: "REAL"},
	// {Name: "power", Schema: "", ArgTypes: []SqlType{"REAL", "REAL"}, RetType: "REAL"},
	// {Name: "sqrt", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	// {Name: "degrees", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	// {Name: "radians", Schema: "", ArgTypes: []SqlType{"REAL"}, RetType: "REAL"},
	// {Name: "pi", Schema: "", ArgTypes: []SqlType{}, RetType: "REAL"},
	// {Name: "mod", Schema: "", ArgTypes: []SqlType{"REAL", "REAL"}, RetType: "REAL"},

	// ------------------ //
	// Datetime functions //
	// ------------------ //

	// NOTE HARRY : Disabled to make deterministic

	// {Name: "date", Schema: "", ArgTypes: []SqlType{}, RetType: "TEXT"},                                     // Current date
	// {Name: "date", Schema: "", ArgTypes: []SqlType{"TIMEVALUE", "MULTI", "TIMEMODIFIER"}, RetType: "TEXT"}, // With time value
	// {Name: "time", Schema: "", ArgTypes: []SqlType{}, RetType: "TEXT"},
	// {Name: "time", Schema: "", ArgTypes: []SqlType{"TIMEVALUE", "MULTI", "TIMEMODIFIER"}, RetType: "TEXT"},
	// {Name: "datetime", Schema: "", ArgTypes: []SqlType{}, RetType: "TEXT"},
	// {Name: "datetime", Schema: "", ArgTypes: []SqlType{"TIMEVALUE", "MULTI", "TIMEMODIFIER"}, RetType: "TEXT"},
	// {Name: "julianday", Schema: "", ArgTypes: []SqlType{}, RetType: "REAL"},
	// {Name: "julianday", Schema: "", ArgTypes: []SqlType{"TIMEVALUE", "MULTI", "TIMEMODIFIER"}, RetType: "REAL"},
	// // {Name: "unixepoch", Schema: "", ArgTypes: []SqlType{}, RetType: "INTEGER"},
	// // {Name: "unixepoch", Schema: "", ArgTypes: []SqlType{"TIMEVALUE", "MULTI", "TIMEMODIFIER"}, RetType: "INTEGER"},
	// // {Name: "strftime", Schema: "", ArgTypes: []SqlType{"TEXT"}, RetType: "TEXT"},                                       // Format string only
	// {Name: "strftime", Schema: "", ArgTypes: []SqlType{"TEXT", "TIMEVALUE"}, RetType: "TEXT"},                          // With time value
	// {Name: "strftime", Schema: "", ArgTypes: []SqlType{"TEXT", "TIMEVALUE", "MULTI", "TIMEMODIFIER"}, RetType: "TEXT"}, // Multiple modifiers
	// // {Name: "timediff", Schema: "", ArgTypes: []SqlType{"TIMEVALUE", "TIMEVALUE"}, RetType: "TEXT"},
}

var DatetimeTimeValues = []string{
	"'%d-%d-%d'",
	"'%d-%d-%d %d:%d'",
	"'%d-%d-%d %d:%d:%d'",
	"'%d-%d-%d %d:%d:%d.%03d'",
	"'%d-%d-%dT%d:%d'",
	"'%d-%d-%dT%02d:%02d:%02d'",
	"'%d-%d-%dT%02d:%02d:%02d.%03d'",
	"'%02d:%02d'",
	"'%02d:%02d:%02d'",
	"'%02d:%02d:%02d.%03d'",
	"'now'",
	"'DDDDDDDDDD'",
}

var DatetimeModifiers = []string{
	"'%d day'",
	"'%d hour'",
	"'%d minute'",
	"'%d second'",
	"'%d month'",
	"'%d year'",
	"'%d:%d'",
	"'%d:%d:%d'",
	"'%d:%d:%d.%d'",
	"'%d-%d-%d'",
	"'%d-%d-%d %d:%d'",
	"'%d-%d-%d %d:%d:%d'",
	"'%d-%d-%d %d:%d:%d.%d'",
	"'ceiling'",
	"'floor'",
	"'start of month'",
	"'start of year'",
	"'start of day'",
	"'weekday %d'",
	"'julianday'",
	"'auto'",
	"'localtime'",
	"'utc'",
	"'subsec'",
	"'subsecond'",
}
