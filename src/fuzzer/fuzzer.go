package fuzzer

// The general algorithm:
//
// Initial phase:
// 1. Generate random SQL queries
// 2. Execute those queries and gather
// coverage metrics
// 3. Build initial seed corpus with
// queries that had highest coverage
//
// Mutation based fuzzing
// 4. Get seed from corpus using a
// weighted selection algorithm
// 5. Mutate query using some strategy
// 6. Execute and gather coverage
// 7. If new coverage add to corpus
// 8. Maybe we randomly add fresh
// queries to corpus
// 9. Maybe we prune redundant seeds
// after some time.
// 10. Maybe we minimise complex queries?

type Config struct{}

type Fuzzer struct{}

func New(cfg *Config) *Fuzzer {
	return &Fuzzer{}
}

func (f *Fuzzer) Run() {}
