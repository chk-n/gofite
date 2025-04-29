package sqlite_3_26_driver

import (
	"database/sql"

	sqlite3_3_26 "github.com/cnordg/ast-group-project/diff_test_engine/sqlite_3_26_driver/go-sqlite3"
)

func init() {
	sql.Register("sqlite_old", &sqlite3_3_26.SQLiteDriver{})
}

func Version() (string, int, string) {
	return sqlite3_3_26.Version()
}
