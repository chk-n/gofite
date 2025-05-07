package sqlite_3_39_4_driver

import (
	"database/sql"

	sqlite3_3_39 "github.com/cnordg/ast-group-project/diff_test_engine/sqlite_3_39_4_driver/go-sqlite3"
)

func init() {
	sql.Register("sqlite_new", &sqlite3_3_39.SQLiteDriver{})
}

func Version() (string, int, string) {
	return sqlite3_3_39.Version()
}
