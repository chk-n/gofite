package diff_test_engine

/*
Differential Testing engine
----------------------------
sqlite_new_driver -> verifying driver
sqlite_old_driver -> driver under test

Exports:
- New(l *slog.Logger) *DiffTestEngine
- (*DiffTestEngine) Close()
- (*DiffTestEngine) ExecAndCompareQuery(query string)
- (*DiffTestEngine) ExecAndCompareSQLErrors(sql string)
- (*DiffTestEngine) CompareDBStates(db_old *sql.DB)

Algorithm:
1. Initialize the database with a known state.
2. Run the same query on both drivers.
3. Compare the results.
4. If there is a mismatch, log the query and the results.
5. If there is a crash in one driver and not the other, log the query and the error message.
6. If there is a crash in both drivers but with a different error message, log the query and the error message.
    -- Don't log crashes with the same error message, as they are likely to be the same issue.
*/

import (
	"database/sql"
	"errors"
	"fmt"
	"log/slog"
)

var mismatchErrorErr = errors.New("mismatch error")
var mismatchOutputErr = errors.New("mismatch output")

type DiffTestEngine struct {
	old *sql.DB
	new *sql.DB
	l   *slog.Logger
}

func New(l *slog.Logger) *DiffTestEngine {
	dbNew, err := sql.Open("sqlite_new", ":memory:")
	if err != nil {
		panic("unable to open sqlite_new: " + err.Error())
	}
	dbOld, err := sql.Open("sqlite_old", ":memory:")
	if err != nil {
		panic("unable to open sqlite_old: " + err.Error())
	}

	return &DiffTestEngine{
		new: dbNew,
		old: dbOld,
		l:   l,
	}
}

func (d *DiffTestEngine) Close() {
	d.old.Close()
	d.new.Close()
}

// ExecAndCompareSQLErrors executes the SQL command on both databases and compares the errors.
// If one errors but the other doesnt, the error of the db is returned.
// Meant to be used with SQL statements that do not return results (e.g., INSERT, UPDATE, DELETE).
func (d *DiffTestEngine) ExecAndCompareSQLErrors(sql string) error {
	// Run the SQL on both databases
	err_old := execSQLNoResult(d.old, sql)
	err_new := execSQLNoResult(d.new, sql)

	// Check for errors
	return checkErr(err_old, err_new)
}

// CompareDBStates compares the states of the two databases by dumping and comparing their contents, writing to the log file on mismatch.
// Meant to be used to verify the effect of SQL statements that do not return results (e.g., INSERT, UPDATE, DELETE).
func (d *DiffTestEngine) CompareDBStates() error {
	// Dump the databases
	dump_old, err_old := dumpDB(d.old)
	dump_new, err_new := dumpDB(d.new)

	// Check for errors
	if err := checkErr(err_old, err_new); err != nil {
		return err
	}

	// Check results
	if dump_old != dump_new {
		err := fmt.Errorf("old: %s\nnew: %s", dump_old, dump_new)
		return errors.Join(mismatchOutputErr, err)
	}

	return nil
}

// ExecAndCompareQuery executes the SQL query on both databases and compares the results, writing to the log file on mismatch.
// Meant to be used with SQL queries that return results (e.g., SELECT).
func (d *DiffTestEngine) ExecAndCompareQuery(query string) error {
	// Run the query on both databases
	result_old, err_old := execQueryWithResult(d.old, query)
	result_new, err_new := execQueryWithResult(d.new, query)

	// Check for errors
	if err := checkErr(err_old, err_new); err != nil {
		return err
	}

	// Check results
	if result_old != result_new {
		err := fmt.Errorf("old: %s\nnew: %s", result_old, result_new)
		return errors.Join(mismatchOutputErr, err)
	}

	return nil
}

func execSQLNoResult(db *sql.DB, sql string) error {
	_, err := db.Exec(sql)
	if err != nil {
		return err
	}
	return nil
}

func extractResultToString(rows *sql.Rows) string {
	result := ""
	cols, _ := rows.Columns()
	for rows.Next() {
		vals := make([]interface{}, len(cols))
		for i := range vals {
			vals[i] = new(interface{})
		}
		rows.Scan(vals...)
		for _, val := range vals {
			result += fmt.Sprintf("%v|", *(val.(*interface{})))
		}
		result += "\n"
	}
	return result
}

// Only used for testing purposes
func ExecQueryWithResult(db *sql.DB, query string) (string, error) {
	return execQueryWithResult(db, query)
}

func execQueryWithResult(db *sql.DB, query string) (string, error) {
	rows, err := db.Query(query)
	if err != nil {
		return "", err
	}
	defer rows.Close()

	result := extractResultToString(rows)
	return result, nil
}

// dumpDB dumps the contents of the database to a string.
// It retrieves the schema of the database and the contents of each table.
// Exported for debugging purposes.
func dumpDB(db *sql.DB) (string, error) {
	// Get the schema of the database
	result, err := execQueryWithResult(db, "SELECT sql FROM sqlite_master WHERE type='table';")
	if err != nil {
		return "", err
	}
	result += "--\n"
	rows, err := db.Query("SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%';")
	if err != nil {
		return "", err
	}

	// Collect all table names first
	var tableNames []string
	for rows.Next() {
		var name string
		if err := rows.Scan(&name); err != nil {
			rows.Close()
			return "", err
		}
		tableNames = append(tableNames, name)
	}
	if err := rows.Err(); err != nil {
		rows.Close()
		return "", err
	}
	rows.Close()

	// Dump each table separately
	for _, name := range tableNames {
		res, err := dumpTable(db, name)
		if err != nil {
			return "", err
		}
		result += res
	}

	return result, nil
}

func dumpTable(db *sql.DB, tableName string) (string, error) {
	rows, err := db.Query(fmt.Sprintf("SELECT * FROM \"%s\";", tableName))
	if err != nil {
		return "", err
	}
	defer rows.Close()

	result := ""
	cols, _ := rows.Columns()
	for rows.Next() {
		vals := make([]interface{}, len(cols))
		for i := range vals {
			vals[i] = new(interface{})
		}
		rows.Scan(vals...)
		for _, val := range vals {
			result += fmt.Sprintf("%v|", *(val.(*interface{})))
		}
		result += "\n"
	}
	return result, nil
}

func checkErr(err1, err2 error) error {
	// Check if one crashed and the other didn't
	if (err1 != nil) != (err2 != nil) {
		if err1 != nil {
			return err1
		}
		return err2
	}

	// Check if both crashed
	if err1 != nil && err2 != nil {
		if err2.Error() != err1.Error() {
			// TODO: we might need a separator betwee old and new error
			// if we want to do something specific if such an error occurs
			return errors.Join(mismatchErrorErr, err1, err2)
		}
		return err2
	}
	return nil
}
