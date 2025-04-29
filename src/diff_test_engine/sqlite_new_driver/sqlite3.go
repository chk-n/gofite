package sqlite_new_driver

import (
	"database/sql"

	"github.com/mattn/go-sqlite3"
)

func init() {
	sql.Register("sqlite_new", &sqlite3.SQLiteDriver{})
}

func Version() (string, int, string) {
	return sqlite3.Version()
}
