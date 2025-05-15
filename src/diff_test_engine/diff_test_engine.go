package diff_test_engine

import (
	"bufio"
	"bytes"
	"errors"
	"fmt"
	"io"
	"log/slog"
	"os/exec"
	"strings"
	"sync"
	"time"

	"github.com/cnordg/ast-group-project/src/generator"
)

const OldSqliteBinaryPath = "/bin/sqlite3-3.26.0"
const NewSqliteBinaryPath = "/bin/sqlite3-3.39.4"

const uniqueDelimiter = "DTE_SQLITE3_DELIMITER_G71YE31GYEW891EU1290"

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
	instanceID  string
}

type DiffTestEngineInstance struct {
	old  *sqliteInstance
	new  *sqliteInstance
	l    *slog.Logger
	pool *sync.Pool
}

func startSQLiteProcess(id string, binaryPath string, dbPath string, l *slog.Logger) (*sqliteInstance, error) {
	l.Debug("Starting SQLite process in: " + binaryPath)
	var cmd *exec.Cmd
	if dbPath == "" || dbPath == ":memory:" {
		cmd = exec.Command(binaryPath) // In-memory if dbPath is empty
	} else {
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

	instance.stderrWg.Add(1)
	go func() {
		defer instance.stderrWg.Done()
		for {
			select {
			case <-instance.shutdownErr:
				// Drain remaining lines after shutdown signal if any, before scanner stops
				for instance.stderr.Scan() {
					instance.stderrChan <- instance.stderr.Text()
				}
				return
			default:
				if instance.stderr.Scan() {
					instance.stderrChan <- instance.stderr.Text()
				} else {
					l.Debug("[StderrReader] Pipe closed or error, exiting. Instance: " + instance.instanceID)
					return
				}
			}
		}
	}()

	// Initial setup for consistent output..
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
				break SetupLoop
			}
		default:
			if instance.stdout.Scan() {
				line := instance.stdout.Text()
				if line == uniqueDelimiter {
					initialDelimiterFound = true
					break SetupLoop
				}
				initOutput.WriteString(line + "\n")
			} else {
				if err := instance.stdout.Err(); err != nil {
					l.Debug("Error scanning stdout during setup: ID:", id, " Error:", err)
				} else {
					l.Debug("Stdout closed during setup. ID:" + id)
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
		l.Debug("[%s] Warning: Potential errors or stderr output during SQLite initialization: \n%s", id, initOutput.String())
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
DrainStderrLoop:
	for {
		select {
		case <-s.stderrChan:
			continue
		default:
			break DrainStderrLoop
		}
	}

	fullCommand := fmt.Sprintf("%s\nSELECT '%s';\n", strings.TrimSpace(query), uniqueDelimiter)
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

// Gracefully exit the SQLite binaries
func (s *sqliteInstance) Close() error {
	var firstErr error
	if s.stdin != nil {
		if _, err := io.WriteString(s.stdin, ".quit\n"); err != nil && firstErr == nil {
			firstErr = err
		}
		if err := s.stdin.Close(); err != nil && firstErr == nil {
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
	return firstErr
}

// Main Differential Testing Logic

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
	out := s.pool.Get().(*strings.Builder)

	defer func() {
		out.Reset()
		s.pool.Put(out)
	}()

	q := b.String(out) + "; SELECT * FROM t0; DROP TABLE t0;"
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
	// Comparison Logic
	res.Match = true
	if res.Error1 != nil && res.Error2 != nil {
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
	// Restart processes if one errors
	if res.Error1 != nil || res.Error2 != nil {
		s.replaceInstances()
	}

	return res.Match
}

func (s *DiffTestEngineInstance) replaceInstances() {
	s.old.Close()
	s.new.Close()

	oldInstance, err := startSQLiteProcess("Old", OldSqliteBinaryPath, ":memory:", s.l)
	if err != nil {
		s.l.Error("Failed to start SQLite instance 1 (%s): %v", OldSqliteBinaryPath, err)
		panic("failed to spawn SQLite process (old)")
	}

	newInstance, err := startSQLiteProcess("New", NewSqliteBinaryPath, ":memory:", s.l)
	if err != nil {
		s.l.Error("Failed to start SQLite instance 2 (%s): %v", NewSqliteBinaryPath, err)
		panic("failed to spawn SQLite process (new)")
	}

	s.old = oldInstance
	s.new = newInstance
}

func New(l *slog.Logger, pool *sync.Pool) *DiffTestEngineInstance {

	// Using in-memory databases for simplicity and isolation for each run.
	l.Debug("Starting SQLite instances for differential testing...")
	oldInstance, err := startSQLiteProcess("Old", OldSqliteBinaryPath, ":memory:", l)
	if err != nil {
		l.Error("Failed to start SQLite instance 1 (%s): %v", OldSqliteBinaryPath, err)
	}

	newInstance, err := startSQLiteProcess("New", NewSqliteBinaryPath, ":memory:", l)
	if err != nil {
		l.Error("Failed to start SQLite instance 2 (%s): %v", NewSqliteBinaryPath, err)
	}

	return &DiffTestEngineInstance{
		old:  oldInstance,
		new:  newInstance,
		l:    l,
		pool: pool,
	}
}

func (s *DiffTestEngineInstance) Close() {
	s.old.Close()
	s.new.Close()
}
