package generator

type Config struct{}

type generator struct{}

func New(cfg *Config) *generator {
	return &generator{}
}

// generates the next random sql query
func (g *generator) Next() string {
	panic("implement me")
}

// generates a batch of random sql queries
func (g *generator) NextBatch() []string {
	panic("implement me")
}
