package diff_test_engine

/*
Differential Testing engine
----------------------------
sqlite_new_driver -> verifying driver
sqlite_old_driver -> driver under test

Exports:
- CreateLogFile(fname string) (*os.File, error)
- InitializeDB(driver string, initSQL string, debugMessage bool) (*sql.DB, error)
- ExecAndCompareQuery(query string, db_old *sql.DB, db_new *sql.DB, logfile *os.File)
- ExecAndCompareSQLErrors(sql string, db_old *sql.DB, db_new *sql.DB, logfile *os.File)
- CompareDBStates(db_old *sql.DB, db_new *sql.DB, logfile *os.File)
- DumpDB(db *sql.DB) (string, error)

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
	"fmt"
	"os"
	"time"

	sqlite_old_driver "github.com/cnordg/ast-group-project/src/diff_test_engine/sqlite_3_26_driver"   // To be tested version
	sqlite_new_driver "github.com/cnordg/ast-group-project/src/diff_test_engine/sqlite_3_39_4_driver" // Verifying version
)

// init	initializes old and new SQLite drivers, outputs versions
func init() {
	fmt.Println("[*] Initializing SQLite Differential Testing Engine")
	res0, res1, res2 := sqlite_old_driver.Version()
	fmt.Println("[**] Old SQLite Version:", res0, res1, res2)
	res0, res1, res2 = sqlite_new_driver.Version()
	fmt.Println("[**] New SQLite Version:", res0, res1, res2)
}

// CreateLogFile creates a log file in the logs directory with the current timestamp, if empty file name given.
func CreateLogFile(fname string) (*os.File, error) {
	// Check if the logs directory exists, if not create it
	_ = os.Mkdir("./logs", 0755)
	// Create a logfile
	if fname == "" {
		fname = time.Now().Format(time.RFC3339)
	}
	logfile, err := os.OpenFile("logs/"+fname+".txt", os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		fmt.Println("Error creating logfile:", err)
		return nil, err
	}
	return logfile, nil
}

func writeLogMismatch(f *os.File, reason string, query string, outOld string, outNew string) {
	f.WriteString("=== " + time.Now().Format(time.RFC3339) + " ===\n")
	f.WriteString(fmt.Sprintf("Reason: %s\nQuery: %s\n[Old] %s\n[New] %s\n\n", reason, query, outOld, outNew))
}

// ExecAndCompareSQLErrors executes the SQL command on both databases and compares the errors, writing to the log file on mismatch.
// Meant to be used with SQL statements that do not return results (e.g., INSERT, UPDATE, DELETE).
func ExecAndCompareSQLErrors(sql string, db_old *sql.DB, db_new *sql.DB, logfile *os.File) {
	// Run the SQL on both databases
	err_old := execSQLNoResult(db_old, sql)
	err_new := execSQLNoResult(db_new, sql)

	// Check if one crashed and the other didn't or crashed with a different error
	if (err_old != nil) != (err_new != nil) {
		writeLogMismatch(logfile, "crash_old_vs_new", sql, fmt.Sprint(err_old), fmt.Sprint(err_new))
		fmt.Printf("Crash mismatch!\nSQL: %s\nOld: %s\nNew: %s\n", sql, fmt.Sprint(err_old), fmt.Sprint(err_new))
		return
	}
}

// CompareDBStates compares the states of the two databases by dumping and comparing their contents, writing to the log file on mismatch.
// Meant to be used to verify the effect of SQL statements that do not return results (e.g., INSERT, UPDATE, DELETE).
func CompareDBStates(db_old *sql.DB, db_new *sql.DB, logfile *os.File) {
	// Dump the databases
	dump_old, err_old := DumpDB(db_old)
	dump_new, err_new := DumpDB(db_new)

	// Check if one crashed and the other didn't
	if (err_old != nil) != (err_new != nil) {
		writeLogMismatch(logfile, "crash_old_vs_new", "DUMP", fmt.Sprint(err_old), fmt.Sprint(err_new))
		fmt.Printf("Crash detected!\nDump: %s\nOld: %s\nNew: %s\n", "DUMP", fmt.Sprint(err_old), fmt.Sprint(err_new))
		return
	}

	// Check if both crashed but with different errors
	if err_old != nil && err_new != nil && err_old.Error() != err_new.Error() {
		writeLogMismatch(logfile, "crash_old_vs_new", "DUMP", fmt.Sprint(err_old), fmt.Sprint(err_new))
		fmt.Printf("Crash mismatch!\nQuery: %s\nOld: %s\nNew: %s\n", "DUMP", fmt.Sprint(err_old), fmt.Sprint(err_new))
		return
	}

	// Check results
	if dump_old != dump_new {
		writeLogMismatch(logfile, "mismatch_output", "DUMP", dump_old, dump_new)
		fmt.Printf("Result mismatch!\nDump: %s\nOld: %s\nNew: %s\n", "DUMP", dump_old, dump_new)
		return
	}
}

// ExecAndCompareQuery executes the SQL query on both databases and compares the results, writing to the log file on mismatch.
// Meant to be used with SQL queries that return results (e.g., SELECT).
func ExecAndCompareQuery(query string, db_old *sql.DB, db_new *sql.DB, logfile *os.File) {
	// Run the query on both databases
	result_old, err_old := execQueryWithResult(db_old, query)
	result_new, err_new := execQueryWithResult(db_new, query)

	// Check if one crashed and the other didn't
	if (err_old != nil) != (err_new != nil) {
		writeLogMismatch(logfile, "crash_old_vs_new", query, fmt.Sprint(err_old), fmt.Sprint(err_new))
		fmt.Printf("Crash detected!\nQuery: %s\nOld: %s\nNew: %s\n", query, fmt.Sprint(err_old), fmt.Sprint(err_new))
		return
	}

	// Check if both crashed but with different errors
	if err_old != nil && err_new != nil && err_old.Error() != err_new.Error() {
		writeLogMismatch(logfile, "crash_old_vs_new", query, fmt.Sprint(err_old), fmt.Sprint(err_new))
		fmt.Printf("Crash mismatch!\nQuery: %s\nOld: %s\nNew: %s\n", query, fmt.Sprint(err_old), fmt.Sprint(err_new))
		return
	}

	// Check results
	if result_old != result_new {
		writeLogMismatch(logfile, "mismatch_output", query, result_old, result_new)
		fmt.Printf("Result mismatch!\nQuery: %s\nOld: %s\nNew: %s\n", query, result_old, result_new)
		return
	}
}

// Only used for testing purposes
func ExecSQLNoResult(db *sql.DB, sql string) error {
	return execSQLNoResult(db, sql)
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

// DumpDB dumps the contents of the database to a string.
// It retrieves the schema of the database and the contents of each table.
// Exported for debugging purposes.
func DumpDB(db *sql.DB) (string, error) {
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

// InitializeDB initializes a new SQLite database in memory and executes the provided SQL commands.
// "driver" parameter can only be "sqlite_old" or "sqlite_new".
// If initSQL is empty, it creates an empty database.
func InitializeDB(driver string, initSQL string, debugMessage bool) (*sql.DB, error) {
	if debugMessage {
		var res0, res2 string
		var res1 int
		if driver == "sqlite_old" {
			res0, res1, res2 = sqlite_old_driver.Version()
		} else {
			res0, res1, res2 = sqlite_new_driver.Version()
		}
		fmt.Println("[*] Initializing SQLite database with driver:", driver, "and SQL Version:",
			res0, res1, res2)
	}
	db, err := sql.Open(driver, ":memory:")
	if err != nil {
		return nil, err
	}
	// NOTE it does NOT close the database connection
	// defer db.Close()
	if initSQL != "" {
		_, err = db.Exec(initSQL)
		if err != nil {
			return nil, err
		}
	}
	return db, nil
}
