package fuzzer

/*
#cgo CFLAGS: -I${SRCDIR}/../../include
#cgo LDFLAGS: -L${SRCDIR}/../../lib -linstrument -ldl
#include "instrument.c"
*/
import "C"
import (
	"strings"
	"unsafe"
)

type Coverage struct {
	bitmap [65536]byte
}

func NewCoverage() *Coverage {
	return &Coverage{}
}

func (c *Coverage) Collect() {
	cMap := C.get_coverage_map()

	for i := range 65536 {
		ptr := (*byte)(unsafe.Pointer(uintptr(unsafe.Pointer(cMap)) + uintptr(i)))
		c.bitmap[i] = *ptr
	}
}

// compare looks to see if new coverage was discovered
func (new *Coverage) Compare(old *Coverage) bool {
	newPtr := (*[8192]uint64)(unsafe.Pointer(&new.bitmap[0]))
	oldPtr := (*[8192]uint64)(unsafe.Pointer(&old.bitmap[0]))

	// process 8 bytes at a time
	for i := range 8192 {
		if newPtr[i] & ^oldPtr[i] != 0 {
			return true
		}
	}

	return false
}

// returns the updated coverage bitmap using the old coverage
// as the base and assigning the new coverage to it
func (new *Coverage) Copy(old *Coverage) *Coverage {
	upd := &Coverage{}
	copy(upd.bitmap[:], old.bitmap[:])
	for i, v := range new.bitmap {
		if v > 0 && upd.bitmap[i] == 0 {
			upd.bitmap[i] = v
		}
	}
	return upd
}

func (c *Coverage) Reset() {
	C.reset_coverage()
}

func (c *Coverage) Visualize() string {
	var result strings.Builder

	for row := range 1024 {
		for col := range 64 {
			idx := row*64 + col
			if c.bitmap[idx] > 0 {
				result.WriteRune('+')
			} else {
				result.WriteRune('-')
			}
		}
		result.WriteRune('\n')
	}

	return result.String()
}
