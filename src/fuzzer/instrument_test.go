package fuzzer

import (
	"math/rand"
	"testing"
)

func BenchmarkCoverageCompare(b *testing.B) {
	new := &Coverage{}
	old := &Coverage{}

	// bitmap has 50% cov
	for i := range new.bitmap {
		if rand.Float32() < 0.5 {
			new.bitmap[i] = byte(rand.Intn(255) + 1)
		}
	}

	// global has 25% cov
	for i := range old.bitmap {
		if rand.Float32() < 0.25 {
			old.bitmap[i] = byte(rand.Intn(255) + 1)
		}
	}

	b.ResetTimer()

	for b.Loop() {
		_ = new.Compare(old)
	}
}

func BenchmarkCoverageCopy(b *testing.B) {
	new := &Coverage{}
	old := &Coverage{}

	// bitmap has 50% cov
	for i := range new.bitmap {
		if rand.Float32() < 0.5 {
			new.bitmap[i] = byte(rand.Intn(255) + 1)
		}
	}

	// global has 25% cov
	for i := range old.bitmap {
		if rand.Float32() < 0.25 {
			old.bitmap[i] = byte(rand.Intn(255) + 1)
		}
	}

	b.ResetTimer()

	for b.Loop() {
		_ = new.Copy(old)
	}
}
