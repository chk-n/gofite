# Makefile for building with Clang and SanitizerCoverage

# Binary name
BINARY_NAME=main

# Environment variables for build
CC=clang
export CC
export CGO_ENABLED=1
export CGO_CFLAGS=-fsanitize-coverage=trace-pc-guard

.PHONY: all build clean run

# Default target
all: build

# Build the project
build:
	@echo "Building with SanitizerCoverage instrumentation..."
	mkdir -p lib
	clang -c include/instrument.c -o instrument.o
	ar rcs lib/libinstrument.a instrument.o
	rm instrument.o
	go build -o $(BINARY_NAME) cmd/main.go

# Clean built binary
clean:
	@echo "Cleaning..."
	go clean
	rm -f $(BINARY_NAME)
