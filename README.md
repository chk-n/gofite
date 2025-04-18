# sqlite3 generation-based fuzzer

The goal of this project is to automatically test
the sqlite3 database engine through various techniques
and reduce the test cases that trigger logic errors or
crashes.

## Architecture

1. Random query generation
2. Mutation engine (guided by code coverage)
3. Differential testing (or EET)
4. Test case reduction (delta debugging?)

## Organisation

`/cmd`: contains cli
`/src`: contains all source code related to query generation and fuzzing
`/project`: contains project description

## Run fuzzer

```go
// todo
```

## Run tests

```go
go test ./..
```
