/* -----------Error-----------
mismatch output
old: CREATE TABLE t0 (
    c0 BOOLEAN,
    c1 BOOLEAN,
    c2 BOOLEAN,
    c3 TEXT,
    c4 INTEGER,
    c5 BLOB,
    c6 BOOLEAN
)|
--
false|false|false|0|12|[125 229 226 238]|false|
false|false|false|0|12|[197 222 253 27]|false|
true|true|true|7|12|[55 27 109 72]|true|
true|true|true|text73|12|[167 134 18 88]|true|
true|false|true|text10|12|[38 104 141 6]|false|
false|false|false|text14|12|[251 86 134 196]|true|
true|false|true|text86|12|[103 84 194 44]|false|
false|true|false|text23|12|[176 55 145 93]|true|
true|false|true|[66 179 175 186]|12|[236 109 40 74]|true|
true|false|true|text2|12|text90|true|
true|false|true|text24|12|[179 83 168 111]|true|
true|true|true|text81|12|[54 167 124 212]|true|

new: CREATE TABLE t0 (
    c0 BOOLEAN,
    c1 BOOLEAN,
    c2 BOOLEAN,
    c3 TEXT,
    c4 INTEGER,
    c5 BLOB,
    c6 BOOLEAN
)|
--
true|true|true|7|10|[55 27 109 72]|true|
true|true|true|text73|10|[167 134 18 88]|true|
true|false|true|text10|10|[38 104 141 6]|false|
false|false|false|text14|10|[251 86 134 196]|true|
true|false|true|text86|10|[103 84 194 44]|false|
false|true|false|text23|10|[176 55 145 93]|true|
true|false|true|[66 179 175 186]|10|[236 109 40 74]|true|
true|false|true|text2|10|text90|true|
true|false|true|text24|10|[179 83 168 111]|true|
true|true|true|text81|10|[54 167 124 212]|true|
-----------/Error----------- */
CREATE TABLE t0 (
    c0 BOOLEAN,
    c1 BOOLEAN,
    c2 BOOLEAN,
    c3 TEXT,
    c4 INTEGER,
    c5 BLOB,
    c6 BOOLEAN
);
UPDATE t0 
SET c0 = t0.c2, c1 = t0.c6, c3 = t0.c3, c4 = t0.c4, c6 = t0.c0
WHERE t0.c3 > 'text45'
;INSERT INTO t0 VALUES (TRUE, TRUE, FALSE, 'text65', 96, X'be809b72', TRUE)
;INSERT INTO t0 VALUES (FALSE, FALSE, TRUE, 'text92', 99, X'929274b0', FALSE)
;UPDATE t0 
SET c0 = 
  CASE t0.c0 WHEN t0.c4 > t0.c4 THEN t0.c6

       WHEN t0.c4 < t0.c4 THEN t0.c6

       ELSE FALSE

  END, c1 = t0.c1, c2 = t0.c0, c3 = ltrim( FALSE), c6 = t0.c2
WHERE t0.c2 = t0.c0 OR t0.c4 > t0.c4
;UPDATE t0 
SET c0 = t0.c6, c1 = t0.c2, c2 = 
  CASE t0.c1 WHEN COALESCE(t0.c5, COALESCE(NULL, t0.c1, t0.c3)) = t0.c5 THEN t0.c6

       WHEN t0.c3 = ltrim( NULL) AND t0.c1 <> t0.c2 AND t0.c1 = t0.c0 THEN COALESCE(t0.c2, t0.c6, t0.c6)

       ELSE t0.c0

  END, c6 = t0.c2
WHERE t0.c3 IS NOT NULL
;INSERT INTO t0 VALUES (CAST(TRUE AS BOOLEAN), FALSE, TRUE, 'text89', 18, X'e82b560e', FALSE)
;DELETE FROM t0
WHERE t0.c2 = 
 CASE WHEN t0.c1 <> t0.c0 THEN t0.c6

      ELSE t0.c6

 END AND 
 CASE t0.c0 WHEN t0.c1 <> t0.c1 THEN t0.c0

      WHEN EXISTS (
  SELECT DISTINCT t1.c2 AS c7
   FROM t0 AS t1
   WHERE round( TRUE) IS NULL
LIMIT 114) AND t0.c0 <> t0.c0 THEN t0.c3

      WHEN t0.c2 <> t0.c1 THEN t0.c1

      WHEN EXISTS (
  SELECT t2.c1 AS c7
   FROM t0 AS t2
   WHERE t2.c3 > t2.c3 AND t2.c1 <> t2.c1) THEN X'3762c1c3'

      WHEN t0.c6 = CAST(t0.c3 AS INTEGER) THEN t0.c1

      ELSE t0.c2

 END IS NOT NULL AND COALESCE(COALESCE(t0.c1, t0.c0, t0.c0), NULL, t0.c5, t0.c6, t0.c2) <> t0.c2 AND EXISTS (
 SELECT CAST(subq0.c25 AS BOOLEAN) AS c28, subq0.c25 AS c29, subq0.c25 AS c30, 
   CASE WHEN subq0.c26 <= X'a901a7a0' AND subq0.c27 <> subq0.c25 THEN NULLIF(subq0.c26, subq0.c26)

        ELSE subq0.c26

   END AS c31, subq0.c26 AS c32
  FROM (SELECT 
      CASE WHEN t3.c0 = t3.c6 THEN t6.c0

           ELSE t6.c0

      END AS c25, t4.c5 AS c26, t6.c0 AS c27
     FROM t0 AS t3
         LEFT JOIN t0 AS t4
          ON (t4.c2 IS NULL OR t3.c1 <> t4.c2)
        LEFT JOIN t0 AS t5
         ON (t4.c4 <> t3.c4)
       INNER JOIN t0 AS t6
        ON (EXISTS (
         SELECT t7.c5 AS c7, t7.c6 AS c8, TRUE AS c9, t7.c0 AS c10, t7.c5 AS c11, t7.c6 AS c12, t7.c2 AS c13, t7.c0 AS c14, TRUE AS c15, t7.c5 AS c16, t7.c6 AS c17, t7.c1 AS c18, t7.c5 AS c19, t7.c1 AS c20, t7.c0 AS c21, t7.c1 AS c22, t7.c2 AS c23, t7.c2 AS c24
          FROM t0 AS t7
          WHERE false
LIMIT 26))
     WHERE false) as subq0
    
  WHERE subq0.c26 > subq0.c26) OR t0.c5 > t0.c5
;INSERT INTO t0 VALUES (FALSE, CAST(72 AS BOOLEAN), TRUE, char( '𘡨'), 75, COALESCE(NULL, NULL, NULL, X'18b00141', NULL), COALESCE(TRUE, NULL, 'text67'))
;INSERT INTO t0 VALUES (FALSE, TRUE, FALSE, nullif(
80,
'text75'), 80, X'b40c2ad6', FALSE)
;UPDATE t0 
SET c1 = t0.c2, c3 = t0.c3, c4 = t0.c4
WHERE false OR X'd2434163' >= t0.c5 OR t0.c6 <> IFNULL(t0.c1, 
  CASE WHEN t0.c4 <= t0.c4 OR t0.c1 IS NULL AND t0.c0 = t0.c6 THEN t0.c6

       ELSE t0.c0

  END) AND t0.c5 IS NULL OR true AND glob(
X'4327a619',
FALSE) > t0.c4
;UPDATE t0 
SET c1 = t0.c2, c2 = CAST(t0.c4 AS BOOLEAN), c3 = t0.c3, c4 = t0.c4
WHERE t0.c3 <> trim( 'text12')
;INSERT INTO t0 VALUES (FALSE, FALSE, FALSE, trim( TRUE), 35, CAST(TRUE AS INTEGER), FALSE)
;UPDATE t0 
SET c0 = t0.c1, c1 = t0.c0, c3 = t0.c3, c5 = CAST(t0.c4 AS INTEGER)
WHERE false
;INSERT INTO t0 VALUES (FALSE, FALSE, TRUE, 'text99', 89, X'bcd67d1a', FALSE)
;DELETE FROM t0
WHERE t0.c6 = t0.c6
;INSERT INTO t0 VALUES (FALSE, FALSE, FALSE, 'text13', 55, X'7de5e2ee', TRUE)
;UPDATE t0 
SET c0 = t0.c0, c1 = t0.c2, c2 = t0.c1, c3 = t0.c3
WHERE IFNULL(t0.c4, t0.c1) IS NOT NULL
;INSERT INTO t0 VALUES (FALSE, FALSE, TRUE, 'text21', 13, X'c5defd1b', TRUE)
;UPDATE t0 
SET c0 = t0.c2, c2 = t0.c0, c3 = t0.c3, c5 = t0.c5, c6 = FALSE
WHERE t0.c5 <= t0.c5
;UPDATE t0 
SET c2 = t0.c0, c5 = t0.c5, c6 = t0.c1
WHERE COALESCE(t0.c5, t0.c5, t0.c0) < 
 CASE t0.c5 WHEN t0.c4 = NULLIF(t0.c4, t0.c4) THEN t0.c5

      WHEN TRUE <> FALSE THEN t0.c5

      WHEN t0.c3 = nullif(
 'text98',
 FALSE) THEN t0.c5

      WHEN t0.c3 < t0.c3 OR X'c15cd1d9' > t0.c5 AND 
  CASE WHEN t0.c3 >= 
   CASE WHEN false THEN t0.c3

        ELSE t0.c3

   END THEN t0.c4

       ELSE 30

  END < t0.c4 OR EXISTS (
  SELECT t1.c1 AS c7, t1.c1 AS c8, t1.c0 AS c9, X'cfcad9a6' AS c10
   FROM t0 AS t1
   WHERE EXISTS (
    SELECT t2.c1 AS c7, t2.c6 AS c8
     FROM t0 AS t2
     WHERE t2.c1 = t2.c0
LIMIT 42)
LIMIT 44) THEN t0.c5

      ELSE t0.c5

 END
;DELETE FROM t0
WHERE lower( 19) < quote( 51)
;INSERT INTO t0 VALUES (TRUE, TRUE, TRUE, 'text83', 8, X'371b6d48', TRUE)
;UPDATE t0 
SET c2 = t0.c1, c3 = CAST(COALESCE(t0.c5, t0.c0, max(
   X'24005c4e',
   NULL,
   NULL), t0.c0, t0.c2) AS BOOLEAN)
WHERE 
 CASE WHEN t0.c4 >= t0.c4 THEN t0.c1

      ELSE t0.c1

 END = t0.c2
;DELETE FROM t0
WHERE t0.c3 <> t0.c3 AND t0.c0 IS NULL OR t0.c6 <> 
 CASE t0.c0 WHEN t0.c4 > t0.c4 THEN t0.c0

      WHEN t0.c4 <= t0.c4 THEN t0.c6

      ELSE t0.c1

 END OR t0.c5 <= t0.c5 AND t0.c2 <> t0.c6
;UPDATE t0 
SET c2 = t0.c2, c3 = t0.c3
WHERE 
 CASE WHEN t0.c0 <> t0.c6 AND EXISTS (
  SELECT t1.c6 AS c7, t2.c2 AS c8, t2.c2 AS c9
   FROM t0 AS t1
     LEFT JOIN t0 AS t2
      ON (t1.c3 = t2.c3)
   WHERE false
LIMIT 108) THEN t0.c2

      ELSE t0.c1

 END = t0.c0
;UPDATE t0 
SET c0 = t0.c0, c1 = t0.c0
WHERE false
;INSERT INTO t0 VALUES (FALSE, TRUE, TRUE, 'text73', 71, X'a7861258', TRUE)
;UPDATE t0 
SET c1 = t0.c2, c2 = FALSE, c3 = t0.c3, c4 = t0.c4, c6 = t0.c1
WHERE CAST(t0.c3 AS TEXT) = t0.c5
;INSERT INTO t0 VALUES (FALSE, TRUE, FALSE, 'text10', 92, X'26688d06', FALSE)
;INSERT INTO t0 VALUES (FALSE, FALSE, FALSE, 'text14', 43, X'fb5686c4', TRUE)
;INSERT INTO t0 VALUES (FALSE, TRUE, FALSE, 'text86', 1, NULLIF(X'6754c22c', X'38f180a9'), FALSE)
;UPDATE t0 
SET c2 = t0.c1, c4 = t0.c4, c5 = CAST(t0.c4 AS BOOLEAN), c6 = t0.c1
WHERE CAST(NULL AS BLOB) <> t0.c0
;INSERT INTO t0 VALUES (FALSE, FALSE, TRUE, NULLIF('text23', 'text98'), 88, X'b037915d', TRUE)
;INSERT INTO t0 VALUES (COALESCE(NULL, COALESCE('text61', NULL, FALSE, TRUE, FALSE)), TRUE, FALSE, coalesce(
X'42b3afba',
70,
'text64'), 96, X'ec6d284a', TRUE)
;UPDATE t0 
SET c1 = t0.c0, c2 = t0.c6, c4 = instr(
 FALSE,
 FALSE), c5 = t0.c5
WHERE EXISTS (
 SELECT t1.c6 AS c7, IFNULL(t1.c0, t1.c1) AS c8, t1.c1 AS c9, t1.c4 AS c10, t1.c6 AS c11, NULLIF(t1.c4, t1.c4) AS c12, t1.c5 AS c13
  FROM t0 AS t1
  WHERE t1.c3 > t1.c3
LIMIT 106)
;INSERT INTO t0 VALUES (TRUE, TRUE, FALSE, 'text2', 24, CAST('text90' AS TEXT), TRUE)
;INSERT INTO t0 VALUES (FALSE, TRUE, FALSE, 'text24', COALESCE(CAST(NULL AS INTEGER), COALESCE('text14', NULL, 'text28', changes(), NULL, zeroblob( 24)), 88, trim(
 100,
 NULL), IFNULL(20, 92)), X'b353a86f', TRUE)
;INSERT INTO t0 VALUES (FALSE, TRUE, TRUE, 'text81', 15, X'36a77cd4', TRUE)
;UPDATE t0 
SET c1 = 
  CASE WHEN t0.c4 IS NULL OR t0.c0 = t0.c6 AND t0.c4 IS NULL OR t0.c5 = X'2887a1d9' OR 
   CASE WHEN EXISTS (
    SELECT t1.c1 AS c7, t1.c6 AS c8, t1.c4 AS c9, t1.c6 AS c10, t1.c6 AS c11, t1.c1 AS c12, t1.c5 AS c13, t1.c3 AS c14
     FROM t0 AS t1
     WHERE t1.c0 = t1.c6 AND t1.c0 = t1.c6
LIMIT 126) OR t0.c4 > t0.c4 OR t0.c0 = t0.c0 AND t0.c0 = t0.c0 OR EXISTS (
    SELECT t2.c1 AS c7, t2.c0 AS c8, t2.c6 AS c9, t2.c2 AS c10, t2.c3 AS c11, t2.c5 AS c12, t2.c4 AS c13, t2.c4 AS c14, t2.c2 AS c15, t2.c2 AS c16, t2.c3 AS c17, t2.c1 AS c18, t2.c1 AS c19, t2.c2 AS c20, t2.c6 AS c21
     FROM t0 AS t2
     WHERE X'3dffcd4e' <> t2.c5) THEN t0.c0

        ELSE t0.c0

   END <> t0.c2 THEN t0.c2

       ELSE t0.c2

  END, c2 = t0.c1, c3 = t0.c3, c4 = 80, c5 = t0.c5
WHERE t0.c5 <= t0.c5
;UPDATE t0 
SET c0 = t0.c2, c4 = changes()
WHERE t0.c5 >= t0.c5
;