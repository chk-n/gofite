module github.com/cnordg/ast-group-project

go 1.24.2

// TODO: Not sure if this is the simplest way, could probably be removed
require github.com/cnordg/ast-group-project/diff_test_engine/sqlite_3_26_driver/go-sqlite3 v1.0.0

replace github.com/cnordg/ast-group-project/diff_test_engine/sqlite_3_26_driver/go-sqlite3 => ./src/diff_test_engine/sqlite_3_26_driver/go-sqlite3

require github.com/cnordg/ast-group-project/diff_test_engine/sqlite_3_39_4_driver/go-sqlite3 v1.0.0

replace github.com/cnordg/ast-group-project/diff_test_engine/sqlite_3_39_4_driver/go-sqlite3 => ./src/diff_test_engine/sqlite_3_39_4_driver/go-sqlite3
