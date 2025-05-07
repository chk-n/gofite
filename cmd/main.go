package main

import (
	"flag"
	"fmt"
	"log/slog"
	"os"
	"runtime"

	"github.com/cnordg/ast-group-project/src/fuzzer"
)

const (
	defaultOutDir    = "./bugs"
	defaultBatchSize = 100
)

func main() {
	// parse cli arguments:
	debugMode := flag.Bool("debug", false, "Run in debug mode with verbose output")
	threads := flag.Int("t", runtime.NumCPU(), "Number of threads to use for fuzzing")
	batchSize := flag.Uint("b", defaultBatchSize, "Number of queries per batch")
	outputDir := flag.String("o", defaultOutDir, "Directory to save bug reports")
	help := flag.Bool("h", false, "Show help message")
	flag.Parse()

	if *help {
		printUsage()
		return
	}

	// init logger
	l := slog.New(slog.NewTextHandler(os.Stdout, nil))

	// create output dir
	if err := os.MkdirAll(*outputDir, 0755); err != nil {
		l.Error("Failed to create output directory", "error", err.Error(), "path", *outputDir)
		os.Exit(1)
	}

	// run fuzzer
	cfg := &fuzzer.Config{
		Debug:     *debugMode,
		Threads:   *threads,
		BatchSize: *batchSize,
		OutDir:    *outputDir,
	}
	f := fuzzer.New(cfg)

	l.Info("Starting SQLite fuzzer",
		"debug", *debugMode,
		"threads", *threads,
		"batchSize", *batchSize,
		"outputDir", *outputDir)

	l.Info("Fuzzer running... press Ctrl+C to stop.")
	f.Fuzz()
}

func printUsage() {
	fmt.Println("gofite - A go sqlite fuzzer")
	fmt.Println("\nUsage:")
	fmt.Println("  gofite [options]")
	fmt.Println("\nOptions:")
	fmt.Println("  -debug            Run in debug mode with verbose output")
	fmt.Println("  -t <num>          Number of threads to use (default: number of CPU cores)")
	fmt.Println("  -b <num>          Number of queries per batch (default: 100)")
	fmt.Println("  -o <directory>    Directory to save bug reports (default: ./bugs)")
	fmt.Println("  -h                Show this help message")
	fmt.Println("\nExamples:")
	fmt.Println("  gofite -t 4 -b 200 -debug")
	fmt.Println("  gofite -o /tmp/bugs")
}
