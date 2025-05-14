# Makefile for building with Clang and SanitizerCoverage

BINARY_NAME=main
SQLITE_3_26_BIN=/bin/sqlite3-3.26.0
SQLITE_3_39_BIN=/bin/sqlite3-3.39.4

export CC=clang
export CGO_ENABLED=1

.PHONY: all build clean run sqlite3-3.26.0 sqlite3-3.39.4 

all: build

# Build the project
build: sqlite3-3.26.0 sqlite3-3.39.4
	@echo "Building with SanitizerCoverage instrumentation..."
	# mkdir -p lib
	# clang -c include/instrument.c -o instrument.o
	# ar rcs lib/libinstrument.a instrument.o
	# rm instrument.o
	go build -ldflags="-s -w" -o $(BINARY_NAME) cmd/main.go

test: sqlite3-3.26.0 sqlite3-3.39.4
	go test -v ./...

# Clean built binary
clean:
	@echo "Cleaning..."
	go clean
	rm -f $(BINARY_NAME)

# Helpers

sqlite3-3.26.0: 
	@if [ ! -f $(SQLITE_3_26_BIN) ]; then \
		echo "Building SQLite 3.26.0..."; \
		cd include/sqlite-3.26.0 && \
		./configure --enable-debug --enable-fts5 && \
		make && \
		sudo cp sqlite3 $(SQLITE_3_26_BIN) && \
		sudo chmod +x $(SQLITE_3_26_BIN); \
	else \
		echo "SQLite 3.26.0 already built."; \
	fi

sqlite3-3.39.4: 
	@if [ ! -f $(SQLITE_3_39_BIN) ]; then \
		echo "Building SQLite 3.39.4..."; \
		cd include/sqlite-3.39.4 && \
		./configure --enable-debug --enable-fts5 && \
		make && \
		sudo cp sqlite3 $(SQLITE_3_39_BIN) && \
		sudo chmod +x $(SQLITE_3_39_BIN); \
	else \
		echo "SQLite 3.39.4 already built."; \
	fi
