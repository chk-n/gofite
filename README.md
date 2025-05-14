# sqlite3 generation-based fuzzer

The goal of this project is to automatically test
the sqlite3 database engine through various techniques
and reduce the test cases that trigger logic errors or
crashes.

## Architecture

1. Random query generation
2. Differential testing 
3. Test case reduction 

## Organisation

* `/cmd`: contains cli
* `/src`: contains all source code related to query generation and fuzzing
* `/include`: contains sqlite source code v3.26 and v3.39.4
* `/project`: contains project description

## Dependencies

## Build fuzzer

```
make build
```
Note: it stores sqlite binaries in `/bin` directory of your system

## Run cli fuzzer

```go
./main -d 30s
```

## Run tests

```go
make test
```
