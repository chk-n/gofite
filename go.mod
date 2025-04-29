module github.com/cnordg/ast-group-project

go 1.24.2

require github.com/mattn/go-sqlite3 v1.14.28

// TODO: Not sure if this is the simplest way, could probably be removed
require github.com/cnordg/ast-group-project/diff_test_engine/sqlite_3_26_driver/go-sqlite3 v1.0.0
replace github.com/cnordg/ast-group-project/diff_test_engine/sqlite_3_26_driver/go-sqlite3 => ./src/diff_test_engine/sqlite_3_26_driver/go-sqlite3
