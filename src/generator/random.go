package generator

import (
	"math/rand"
)

func d6() int {
	return rand.Intn(6) + 1
}

func d9() int {
	return rand.Intn(9) + 1
}

func d12() int {
	return rand.Intn(12) + 1
}

func d20() int {
	return rand.Intn(20) + 1
}

func d42() int {
	return rand.Intn(42) + 1
}

func d100() int {
	return rand.Intn(100) + 1
}

func d1000() int {
	return rand.Intn(1000) + 1
}

func dN() int {
	return rand.Int() + 1
}

func randomPick[T any](items []T) T {
	if len(items) == 0 {
		panic("No items to pick from")
	}
	return items[rand.Intn(len(items))]
}
func randomPickIndex[T any](items []T) int {
	if len(items) == 0 {
		panic("No items to pick from")
	}
	return rand.Intn(len(items))
}

// number ranges [0, t]
func randomInt(t int) int {
	return rand.Intn(t + 1)
}
