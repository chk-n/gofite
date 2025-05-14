package diff_test_engine

import (
	"bufio"
	"bytes"
	"errors"
	"fmt"
	"io"
	"log"
	"log/slog"
	"os/exec"
	"strings"
	"sync"
	"time"

	"github.com/cnordg/ast-group-project/src/generator"
)

const OldSqliteBinaryPath = "/bin/sqlite3-3.26.0"
const NewSqliteBinaryPath = "/bin/sqlite3-3.39.4"
const uniqueDelimiter = "DIFFERENTIAL_TEST_DELIMITER_DBCOMPARE_XYZ789"

type sqliteInstance struct {
	binaryPath  string
	dbPath      string
	cmd         *exec.Cmd
	stdin       io.WriteCloser
	stdout      *bufio.Scanner
	stderr      *bufio.Scanner
	stderrChan  chan string
	stderrWg    sync.WaitGroup
	shutdownErr chan struct{}
	instanceID  string // For logging
}

type DiffTestEngineInstance struct {
	old *sqliteInstance
	new *sqliteInstance
	l   *slog.Logger
}

func startSQLiteProcess(id string, binaryPath string, dbPath string) (*sqliteInstance, error) {
	log.Printf("[%s] Starting SQLite process: %s with DB: %s", id, binaryPath, dbPath)
	var cmd *exec.Cmd
	if dbPath == "" || dbPath == ":memory:" {
		cmd = exec.Command(binaryPath) // In-memory if dbPath is empty
	} else {
		// Ensure a clean state for file-based DBs if they exist from previous runs
		// For a more robust setup, you might copy from a template or ensure deletion
		// os.Remove(dbPath) // Optional: delete DB file before starting for a clean slate
		cmd = exec.Command(binaryPath, dbPath)
	}

	stdin, err := cmd.StdinPipe()
	if err != nil {
		return nil, fmt.Errorf("[%s] failed to get stdin pipe: %w", id, err)
	}

	stdoutPipe, err := cmd.StdoutPipe()
	if err != nil {
		stdin.Close()
		return nil, fmt.Errorf("[%s] failed to get stdout pipe: %w", id, err)
	}
	stdout := bufio.NewScanner(stdoutPipe)

	stderrPipe, err := cmd.StderrPipe()
	if err != nil {
		stdin.Close()
		stdoutPipe.Close()
		return nil, fmt.Errorf("[%s] failed to get stderr pipe: %w", id, err)
	}
	stderr := bufio.NewScanner(stderrPipe)

	instance := &sqliteInstance{
		instanceID:  id,
		binaryPath:  binaryPath,
		dbPath:      dbPath,
		cmd:         cmd,
		stdin:       stdin,
		stdout:      stdout,
		stderr:      stderr,
		stderrChan:  make(chan string, 20),
		shutdownErr: make(chan struct{}),
	}

	if err := cmd.Start(); err != nil {
		instance.cleanupPipes()
		return nil, fmt.Errorf("[%s] failed to start sqlite3 (%s): %w", id, binaryPath, err)
	}
	log.Printf("[%s] SQLite process started (PID: %d)", id, cmd.Process.Pid)

	instance.stderrWg.Add(1)
	go func() {
		defer instance.stderrWg.Done()
		// defer close(instance.stderrChan) // Closed in Close() method after WaitGroup
		log.Printf("[%s StderrReader] Starting", instance.instanceID)
		for {
			select {
			case <-instance.shutdownErr:
				log.Printf("[%s StderrReader] Shutdown signal received.", instance.instanceID)
				// Drain remaining lines after shutdown signal if any, before scanner stops
				for instance.stderr.Scan() {
					instance.stderrChan <- instance.stderr.Text()
				}
				return
			default:
				if instance.stderr.Scan() {
					instance.stderrChan <- instance.stderr.Text()
				} else {
					if err := instance.stderr.Err(); err != nil {
						log.Printf("[%s StderrReader] Error: %v", instance.instanceID, err)
					}
					log.Printf("[%s StderrReader] Pipe closed or error, exiting.", instance.instanceID)
					return
				}
			}
		}
	}()

	// Initial setup for consistent output. CRITICAL for diffing.
	// Both instances MUST use the same setup.
	initialSetup := fmt.Sprintf(".echo off\n.bail on\n.mode list\n.separator |\nSELECT '%s';\n", uniqueDelimiter)
	if _, err := io.WriteString(instance.stdin, initialSetup); err != nil {
		instance.Close()
		return nil, fmt.Errorf("[%s] failed to write initial setup to sqlite3: %w", id, err)
	}

	var initOutput bytes.Buffer
	setupTimeout := time.After(5 * time.Second) // Timeout for initial setup
	initialDelimiterFound := false
SetupLoop:
	for {
		select {
		case <-setupTimeout:
			instance.Close()
			return nil, fmt.Errorf("[%s] timeout waiting for initial delimiter. Collected output:\n%s", id, initOutput.String())
		case errLine, ok := <-instance.stderrChan:
			if ok {
				initOutput.WriteString(fmt.Sprintf("STDERR during setup: %s\n", errLine))
			} else {
				// Stderr closed unexpectedly
				log.Printf("[%s] Stderr channel closed during setup.", id)
				break SetupLoop
			}
		default:
			if instance.stdout.Scan() {
				line := instance.stdout.Text()
				if line == uniqueDelimiter {
					log.Printf("[%s] Initial setup complete.", id)
					initialDelimiterFound = true
					break SetupLoop
				}
				initOutput.WriteString(line + "\n")
			} else {
				if err := instance.stdout.Err(); err != nil {
					log.Printf("[%s] Error scanning stdout during setup: %v", id, err)
				} else {
					log.Printf("[%s] Stdout closed during setup.", id)
				}
				break SetupLoop // Exit if stdout closes or errors
			}
		}
	}

	if !initialDelimiterFound {
		instance.Close()
		return nil, fmt.Errorf("[%s] failed to receive initial delimiter. Collected output:\n%s", id, initOutput.String())
	}
	if strings.Contains(initOutput.String(), "Error:") || strings.Contains(initOutput.String(), "STDERR during setup:") {
		log.Printf("[%s] Warning: Potential errors or stderr output during SQLite initialization: \n%s", id, initOutput.String())
	}

	return instance, nil
}

func (s *sqliteInstance) cleanupPipes() {
	if s.stdin != nil {
		s.stdin.Close()
	}
	// Stdout and Stderr pipes are closed by the system when the process exits
	// or by their respective readers when they encounter EOF.
}

func (s *sqliteInstance) ExecuteQuery(query string) ([]byte, error) {
	var preExistingErrors []string
DrainStderrLoop:
	for {
		select {
		case errLine := <-s.stderrChan:
			preExistingErrors = append(preExistingErrors, errLine)
		default:
			break DrainStderrLoop
		}
	}
	if len(preExistingErrors) > 0 {
		log.Printf("[%s] Drained %d pre-existing stderr lines. First: '%s'", s.instanceID, len(preExistingErrors), preExistingErrors[0])
	}

	fullCommand := fmt.Sprintf("%s\nSELECT '%s';\n", strings.TrimSpace(query), uniqueDelimiter)
	// log.Printf("[%s] Sending command: %s", s.instanceID, strings.ReplaceAll(fullCommand, "\n", "\\n")) // Verbose
	if _, err := io.WriteString(s.stdin, fullCommand); err != nil {
		return nil, fmt.Errorf("[%s] failed to write query: %w", s.instanceID, err)
	}

	var outputBuffer bytes.Buffer
	var querySpecificErrors []string
	timeout := time.After(45 * time.Second) // Query timeout

	for {
		select {
		case <-timeout:
			errMsg := fmt.Sprintf("[%s] timeout waiting for output delimiter. Query: '%s'. Output: '%s'. Errors: '%s'", s.instanceID, query, outputBuffer.String(), strings.Join(querySpecificErrors, "\n"))
			return outputBuffer.Bytes(), fmt.Errorf("%s", errMsg)
		case errLine, ok := <-s.stderrChan:
			if ok {
				log.Printf("[%s] STDERR: %s", s.instanceID, errLine)
				querySpecificErrors = append(querySpecificErrors, errLine)
			} else {
				return outputBuffer.Bytes(), fmt.Errorf("[%s] stderr channel closed during query execution. Query: '%s'", s.instanceID, query)
			}
		default:
			if !s.stdout.Scan() {
				scanErr := s.stdout.Err()
				errMsg := fmt.Sprintf("[%s] stdout closed or error during query. Query: '%s'", s.instanceID, query)
				if scanErr != nil {
					errMsg += fmt.Sprintf(". Scan error: %v", scanErr)
				}
				if len(querySpecificErrors) > 0 {
					errMsg += fmt.Sprintf(". Collected Stderr: %s", strings.Join(querySpecificErrors, "\n"))
				}
				return outputBuffer.Bytes(), fmt.Errorf("%s", errMsg)
			}
			line := s.stdout.Text()
			if line == uniqueDelimiter {
				if len(querySpecificErrors) > 0 {
					return outputBuffer.Bytes(), fmt.Errorf("[%s] query executed with errors: %s. Query: '%s'", s.instanceID, strings.Join(querySpecificErrors, "\n"), query)
				}
				return outputBuffer.Bytes(), nil
			}
			outputBuffer.WriteString(line + "\n")
		}
	}
}

func (s *sqliteInstance) Close() error {
	log.Printf("[%s] Closing instance...", s.instanceID)
	var firstErr error
	if s.stdin != nil {
		// log.Printf("[%s] Sending .quit", s.instanceID) // Debug
		if _, err := io.WriteString(s.stdin, ".quit\n"); err != nil && firstErr == nil {
			log.Printf("[%s] Warning: Failed to write .quit command: %v", s.instanceID, err)
			firstErr = err
		}
		if err := s.stdin.Close(); err != nil && firstErr == nil {
			log.Printf("[%s] Warning: Failed to close stdin: %v", s.instanceID, err)
			firstErr = err
		}
		s.stdin = nil
	}

	// Signal and wait for stderr reader
	select {
	case <-s.shutdownErr: // Already closed
	default:
		close(s.shutdownErr)
	}
	s.stderrWg.Wait()
	close(s.stderrChan) // Now safe to close after reader goroutine has exited

	// Drain any final messages
	for errLine := range s.stderrChan {
		log.Printf("[%s] Final STDERR: %s", s.instanceID, errLine)
	}

	if s.cmd != nil && s.cmd.Process != nil {
		if err := s.cmd.Wait(); err != nil && firstErr == nil {
			// Don't log as fatal if we already have an error from stdin, etc.
			if exitErr, ok := err.(*exec.ExitError); ok {
				// This is common if .bail on is set and an error occurs.
				log.Printf("[%s] Process exited with error: %v. Stderr from process: %s", s.instanceID, err, string(exitErr.Stderr))
			} else {
				log.Printf("[%s] Error waiting for process: %v", s.instanceID, err)
			}
			firstErr = err
		} else if err == nil {
			// log.Printf("[%s] Process exited successfully.", s.instanceID) // Debug
		}
	}
	// log.Printf("[%s] Instance closed.", s.instanceID) // Debug
	return firstErr
}

// --- Main Differential Testing Logic ---

type QueryResult struct {
	Output1     []byte
	Error1      error
	Output2     []byte
	Error2      error
	Match       bool
	ErrorMatch  bool
	DiffDetails string
}

func (s *DiffTestEngineInstance) RunBatch(b *generator.Batch, onlyCheckErrors bool) (ok bool) {
	q := b.String(&strings.Builder{}) + "; SELECT * FROM t0; DROP TABLE t0;"
	var wgExec sync.WaitGroup
	wgExec.Add(2)

	var res QueryResult

	go func() {
		defer wgExec.Done()
		res.Output1, res.Error1 = s.old.ExecuteQuery(q)
	}()

	go func() {
		defer wgExec.Done()
		res.Output2, res.Error2 = s.new.ExecuteQuery(q)
	}()

	wgExec.Wait()
	// --- Comparison Logic ---
	res.Match = true
	if res.Error1 != nil && res.Error2 != nil {
		// res.ErrorMatch = true // Both errored, could compare error messages if desired
		// For simplicity, we'll call it an "error match"
		// More detailed: strings.Contains(res.Error1.Error(), somePattern) == strings.Contains(res.Error2.Error(), somePattern)
		res.DiffDetails = fmt.Sprintf("Both errored. Old_Err: %v || New_Err: %v", res.Error1, res.Error2)
		res.Match = false // Technically outputs (errors) are not identical byte-wise
	} else if res.Error1 != nil {
		res.DiffDetails = fmt.Sprintf("Old Errored, New Succeeded. Old_Err: %v || New_Out: %s", res.Error1, string(res.Output2))
		res.Match = false
	} else if res.Error2 != nil {
		res.DiffDetails = fmt.Sprintf("Old Succeeded, New Errored, Old Out: %s || New: %v", string(res.Output1), res.Error2)
		res.Match = false
	} else if !onlyCheckErrors {
		// Both succeeded, compare outputs
		if bytes.Equal(res.Output1, res.Output2) {
			res.Match = true
			res.DiffDetails = "Outputs match."
		} else {
			res.Match = false
			res.DiffDetails = fmt.Sprintf("Outputs differ.\n--- Old Output ---\n%s\n--- New Output ---\n%s", string(res.Output1), string(res.Output2))
		}
	}
	if !res.Match {
		b.Err = errors.New(res.DiffDetails)
	}

	if res.Error1 != nil || res.Error2 != nil {
		s.replaceInstances()
	}

	return res.Match
}

func (s *DiffTestEngineInstance) replaceInstances() {
	s.Close()

	instance1, err := startSQLiteProcess("Old", OldSqliteBinaryPath, ":memory:")
	if err != nil {
		log.Fatalf("Failed to start SQLite instance 1 (%s): %v", OldSqliteBinaryPath, err)
		panic("failed to spawn SQLite process (old)")
	}

	instance2, err := startSQLiteProcess("New", NewSqliteBinaryPath, ":memory:")
	if err != nil {
		log.Fatalf("Failed to start SQLite instance 2 (%s): %v", NewSqliteBinaryPath, err)
		panic("failed to spawn SQLite process (new)")
	}

	s.old = instance1
	s.new = instance2
}

func New(l *slog.Logger) *DiffTestEngineInstance {

	// Using in-memory databases for simplicity and isolation for each run.
	// For file-based, ensure distinct paths and consider cleanup.
	dbPath1 := ":memory:" // e.g., "./test_v1.db"
	dbPath2 := ":memory:" // e.g., "./test_v2.db"

	// If using file-based dbs and you want them clean each run:
	// os.Remove("./test_v1.db")
	// os.Remove("./test_v2.db")

	log.Println("Starting SQLite instances for differential testing...")
	instance1, err := startSQLiteProcess("Old", OldSqliteBinaryPath, dbPath1)
	if err != nil {
		log.Fatalf("Failed to start SQLite instance 1 (%s): %v", OldSqliteBinaryPath, err)
	}
	// defer instance1.Close()

	instance2, err := startSQLiteProcess("New", NewSqliteBinaryPath, dbPath2)
	if err != nil {
		log.Fatalf("Failed to start SQLite instance 2 (%s): %v", NewSqliteBinaryPath, err)
	}

	return &DiffTestEngineInstance{
		old: instance1,
		new: instance2,
		l:   l,
	}
	// defer instance2.Close()
}

func (s *DiffTestEngineInstance) Close() {
	s.old.Close()
	s.new.Close()
}
