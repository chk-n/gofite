package fuzzer

import (
	"strings"

	"github.com/cnordg/ast-group-project/src/ast"
)

type Batch struct {
	schema string
	stmts  []ast.Prod
	err    error
}

func NewBatch(sch string, stmts []ast.Prod) *Batch {
	return &Batch{
		schema: sch,
		stmts:  stmts,
		err:    nil,
	}
}

func (b *Batch) Slice(s, e int) *Batch {
	return &Batch{
		schema: b.schema,
		stmts:  b.stmts[s:e],
	}
}

func (b *Batch) Len() int {
	return len(b.stmts)
}

func (b *Batch) String(out strings.Builder) string {
	sch := b.schema
	out.WriteString(sch + "\n")
	for _, s := range b.stmts {
		out.WriteString(s.Out() + "\n;")
	}
	return out.String()
}

func (b *Batch) CrashString(out strings.Builder) string {
	sch := b.schema
	out.WriteString("/* -----------Error-----------\n" + b.err.Error() + "-----------/Error----------- */\n")
	out.WriteString(sch + "\n")
	for _, s := range b.stmts {
		out.WriteString(s.Out() + ";\n")
	}
	return out.String()
}
