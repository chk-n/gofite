package fuzzer

import "C"

// import "unsafe"

type Coverage struct {
	bitmap [65536]byte
}

func NewCoverage() *Coverage {
	return &Coverage{}
}

func (c *Coverage) Collect() {
	// cMap := C.get_coverage_map()

	// for i := range 65536 {
	// 	ptr := (*byte)(unsafe.Pointer(uintptr(unsafe.Pointer(cMap)) + uintptr(i)))
	// 	c.bitmap[i] = *ptr
	// }
	panic("uncomment me")
}

// compare looks to see if new coverage was discovered
func (new *Coverage) Compare(old *Coverage) bool {
	for i, v := range new.bitmap {
		if v > 0 && old.bitmap[i] == 0 {
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
	// C.reset_coverage()
	panic("uncomment me")
}
