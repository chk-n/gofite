/* -----------Error-----------
Outputs differ.
--- V1 Output ---
19|81|text22|text20|1|0|text61|

--- V2 Output ---
49|18|text36|0|1|0|text64|
19|81|text22|text20|1|0|text61|
-----------/Error----------- */
CREATE TABLE t0 (
    c0 INTEGER,
    c1 INTEGER,
    c2 TEXT,
    c3 TEXT,
    c4 BOOLEAN,
    c5 BOOLEAN,
    c6 TEXT,
    c7 NULL
);
INSERT INTO t0 VALUES (36, CAST(abs( 'text31') AS INTEGER), 'text47', 'text11', CAST(35 AS BOOLEAN), TRUE, printf('text91',TRUE), NULL);
UPDATE t0 
SET c2 = t0.c3, c5 = t0.c4
WHERE EXISTS (
 SELECT subq0.c11 AS c19, 57 AS c20, 
   CASE WHEN subq0.c8 >= subq0.c8 THEN subq0.c9
        ELSE subq0.c9
   END AS c21, subq0.c10 AS c22, subq0.c9 AS c23
  FROM (SELECT t1.c1 AS c8, t1.c6 AS c9, t1.c0 AS c10, t1.c4 AS c11
     FROM t0 AS t1
     WHERE EXISTS (
      SELECT t2.c4 AS c8, t2.c1 AS c9, t2.c3 AS c10, NULL AS c11, NULL AS c12, t2.c2 AS c13, t2.c1 AS c14, t2.c2 AS c15, t2.c5 AS c16, t2.c0 AS c17, t2.c1 AS c18
       FROM t0 AS t2
       WHERE true
       ORDER BY t2.c2, t2.c6, t2.c5
      )
     ORDER BY t1.c6
     LIMIT 2100711825614822485 ) as subq0
  WHERE subq0.c9 <> subq0.c9
  ORDER BY subq0.c10
  LIMIT 5293480183854192689 
 ) OR t0.c1 = t0.c0 AND CAST(t0.c2 AS INTEGER) <> t0.c7;
UPDATE t0 
SET c0 = t0.c1, c2 = typeof( NULL)
WHERE t0.c6 <= t0.c6 AND t0.c6 IS NOT NULL;
UPDATE t0 
SET c1 = t0.c1, c3 = t0.c3, c7 = t0.c7
WHERE t0.c7 IS NULL;
DELETE FROM t0
WHERE t0.c6 IS NOT NULL;
INSERT INTO t0 VALUES (49, 18, 'text36', CAST('text14' AS BOOLEAN), TRUE, FALSE, 'text64', NULL);
INSERT INTO t0 VALUES (19, 81, 'text22', 'text20', TRUE, CAST('text16' AS INTEGER), 'text61', NULL);
UPDATE t0 
SET c1 = t0.c0, c4 = t0.c4
WHERE false;
DELETE FROM t0
WHERE 
 CASE t0.c6 WHEN t0.c2 = t0.c2 THEN t0.c3
      WHEN t0.c3 <> 
  CASE WHEN t0.c4 = t0.c5 THEN t0.c3
       ELSE t0.c6
  END THEN 
  CASE WHEN t0.c5 IS NOT NULL AND t0.c2 <> t0.c3 AND t0.c4 IS NOT NULL AND t0.c4 = t0.c4 THEN t0.c2
       ELSE t0.c6
  END
      WHEN t0.c2 < t0.c6 THEN t0.c2
      ELSE t0.c3
 END <= quote( FALSE);