-----------Error-----------
mismatch output
old: CREATE TABLE t0 (
    c0 INTEGER,
    c1 BOOLEAN,
    c2 DATETIME
)|
--
41|13.33333299999999|5008-07-04 00:17:47 +0000 UTC|
35|true|0878-02-14 21:37:05 +0000 UTC|
24|false|8666-01-10 04:55:58 +0000 UTC|
KzÎ|true|4957-08-10 19:00:43 +0000 UTC|
48|false|0466-10-19 08:24:04 +0000 UTC|
44|false|5707-06-26 21:41:18 +0000 UTC|
16|true|5446-07-10 19:40:54 +0000 UTC|
77|true|3792-07-15 03:26:52 +0000 UTC|
79|true|2690-07-11 13:14:55 +0000 UTC|
36|true|9809-06-25 01:34:15 +0000 UTC|
0|true|9867-08-09 18:24:26 +0000 UTC|

new: CREATE TABLE t0 (
    c0 INTEGER,
    c1 BOOLEAN,
    c2 DATETIME
)|
--
41|13.333333|5008-07-04 00:17:47 +0000 UTC|
35|true|0878-02-14 21:37:05 +0000 UTC|
24|false|8666-01-10 04:55:58 +0000 UTC|
KzÎ|true|4957-08-10 19:00:43 +0000 UTC|
48|false|0466-10-19 08:24:04 +0000 UTC|
44|false|5707-06-26 21:41:18 +0000 UTC|
16|true|5446-07-10 19:40:54 +0000 UTC|
77|true|3792-07-15 03:26:52 +0000 UTC|
79|true|2690-07-11 13:14:55 +0000 UTC|
36|true|9809-06-25 01:34:15 +0000 UTC|
0|true|9867-08-09 18:24:26 +0000 UTC|
-----------/Error-----------
CREATE TABLE t0 (
    c0 INTEGER,
    c1 BOOLEAN,
    c2 DATETIME
);
INSERT INTO t0 VALUES (41, FALSE, '5008-07-04 00:17:47')
;UPDATE t0 
SET c0 = t0.c0, c1 = COALESCE(round(
  13.333333,
  '22:13:33'), t0.c1, t0.c1, t0.c1), c2 = t0.c2
WHERE t0.c1 <> t0.c1 OR t0.c1 IS NOT NULL
;INSERT INTO t0 VALUES (35, TRUE, '0878-02-14 21:37:05')
;INSERT INTO t0 VALUES (24, FALSE, '8666-01-10 04:55:58')
;UPDATE t0 
SET c1 = t0.c1, c2 = t0.c2
WHERE t0.c2 = 
 CASE t0.c2 WHEN t0.c2 <= t0.c2 THEN t0.c2

      WHEN unlikely( '18:58:05') IS NULL THEN t0.c2

      WHEN CAST(t0.c2 AS DATETIME) <> t0.c1 THEN t0.c2

      WHEN substr(
 '2004-02-23',
 'text72',
 10.250000) IS NULL OR 
  CASE WHEN t0.c1 = t0.c1 THEN t0.c1

       ELSE t0.c1

  END = t0.c1 AND t0.c1 = 
  CASE WHEN t0.c0 >= t0.c0 THEN t0.c1

       ELSE t0.c1

  END AND t0.c0 < t0.c0 OR 
  CASE t0.c1 WHEN t0.c1 = FALSE OR t0.c0 > t0.c0 AND t0.c2 = t0.c2 AND true THEN t0.c1

       WHEN likely( X'050033cb') = COALESCE(t0.c1, t0.c1, ifnull(
   'text94',
   CURRENT_DATE), COALESCE(t0.c0, t0.c0, t0.c0, t0.c2, t0.c0, t0.c0), t0.c0, t0.c0) THEN t0.c1

       WHEN t0.c1 = t0.c1 THEN FALSE

       WHEN t0.c1 <> t0.c1 THEN t0.c1

       WHEN t0.c0 IS NOT NULL AND t0.c0 = t0.c0 OR t0.c1 <> t0.c1 OR t0.c2 IS NULL AND 
   CASE WHEN t0.c2 >= t0.c2 THEN 
    CASE WHEN t0.c2 >= t0.c2 THEN t0.c1

         ELSE t0.c1

    END

        ELSE t0.c1

   END <> t0.c1 THEN t0.c1

       WHEN t0.c0 IS NOT NULL THEN t0.c1

       WHEN 
   CASE WHEN t0.c1 <> t0.c1 AND t0.c1 <> t0.c1 THEN t0.c0

        ELSE CAST(t0.c2 AS BLOB)

   END <> t0.c0 THEN t0.c1

       WHEN t0.c0 <= t0.c0 THEN t0.c1

       ELSE FALSE

  END = t0.c1 THEN t0.c2

      ELSE t0.c2

 END
;UPDATE t0 
SET c1 = t0.c1, c2 = t0.c2
WHERE t0.c1 = t0.c1
;INSERT INTO t0 VALUES (CAST(X'4b7a18ce' AS TEXT), TRUE, '4957-08-10 19:00:43')
;INSERT INTO t0 VALUES (48, FALSE, '0466-10-19 08:24:04')
;INSERT INTO t0 VALUES (44, FALSE, '5707-06-26 21:41:18')
;INSERT INTO t0 VALUES (16, TRUE, '5446-07-10 19:40:54')
;UPDATE t0 
SET c0 = 
  CASE WHEN t0.c2 >= t0.c2 THEN t0.c0

       ELSE t0.c0

  END, c1 = t0.c1, c2 = t0.c2
WHERE COALESCE(NULL, t0.c0) IS NOT NULL
;UPDATE t0 
SET c1 = IFNULL(t0.c1, TRUE)
WHERE t0.c2 > t0.c2
;INSERT INTO t0 VALUES (77, TRUE, '3792-07-15 03:26:52')
;UPDATE t0 
SET c2 = t0.c2
WHERE EXISTS (
 SELECT subq0.c3 AS c11, subq0.c9 AS c12, subq0.c4 AS c13, subq0.c8 AS c14, subq0.c7 AS c15, '2394-03-24 17:01:56' AS c16, subq0.c7 AS c17
  FROM (SELECT t1.c2 AS c3, t1.c2 AS c4, t1.c2 AS c5, t1.c0 AS c6, t1.c0 AS c7, t1.c2 AS c8, t1.c2 AS c9, t1.c2 AS c10
     FROM t0 AS t1
     WHERE t1.c1 IS NULL) as subq0
    
  WHERE subq0.c3 > subq0.c10
LIMIT 88) AND t0.c0 < t0.c0
;UPDATE t0 
SET c0 = t0.c0, c1 = IFNULL(FALSE, t0.c1), c2 = t0.c2
WHERE EXISTS (
 SELECT t1.c0 AS c3, t1.c2 AS c4, t1.c2 AS c5, 
   CASE WHEN t1.c0 IS NULL OR t1.c2 <> t1.c2 AND false THEN 
    CASE WHEN true THEN t1.c0

         ELSE t1.c0

    END

        ELSE t1.c0

   END AS c6, t1.c1 AS c7, t1.c0 AS c8, t1.c0 AS c9, t1.c0 AS c10, t1.c0 AS c11, FALSE AS c12, t1.c1 AS c13, t1.c1 AS c14, t1.c2 AS c15, t1.c0 AS c16, 
   CASE t1.c2 WHEN COALESCE(t1.c2, substr(
    TRUE,
    15), min(
    X'ec20b547',
    'text90',
    'text2'), t1.c2, t1.c2) <> t1.c2 THEN t1.c2

        WHEN t1.c1 <> t1.c1 THEN t1.c2

        WHEN t1.c0 IS NULL THEN t1.c2

        WHEN t1.c1 <> t1.c1 THEN t1.c2

        WHEN t1.c2 > t1.c2 THEN t1.c2

        WHEN t1.c1 IS NOT NULL THEN t1.c2

        WHEN t1.c0 >= t1.c0 THEN t1.c2

        ELSE t1.c2

   END AS c17, t1.c2 AS c18, t1.c2 AS c19, t1.c0 AS c20, t1.c0 AS c21, t1.c2 AS c22, 
   CASE t1.c0 WHEN t1.c0 <> t1.c0 THEN t1.c0

        WHEN t1.c1 = t1.c1 AND t1.c2 >= t1.c2 THEN t1.c0

        WHEN t1.c0 = t1.c0 OR t1.c1 = t1.c1 THEN t1.c0

        WHEN t1.c0 > t1.c0 THEN t1.c0

        WHEN '1858-11-06 23:51:22' > t1.c2 THEN t1.c0

        WHEN t1.c2 = t1.c2 THEN t1.c0

        WHEN EXISTS (
    SELECT t2.c1 AS c3, t3.c0 AS c4, t3.c1 AS c5, t2.c2 AS c6, t2.c0 AS c7, t3.c1 AS c8, t3.c2 AS c9, t3.c1 AS c10, t3.c0 AS c11, t2.c1 AS c12
     FROM t0 AS t2
       INNER JOIN t0 AS t3
        ON (t2.c0 = t3.c0)
     WHERE t3.c1 = t3.c1
LIMIT 77) AND t1.c1 <> t1.c1 THEN t1.c0

        ELSE t1.c0

   END AS c13, t1.c1 AS c14, t1.c0 AS c15, t1.c0 AS c16, t1.c2 AS c17
  FROM t0 AS t1
  WHERE t1.c2 <> t1.c2
LIMIT 32)
;INSERT INTO t0 VALUES (79, TRUE, '2690-07-11 13:14:55')
;INSERT INTO t0 VALUES (36, TRUE, '9809-06-25 01:34:15')
;UPDATE t0 
SET c0 = t0.c0
WHERE CAST(t0.c2 AS NUMERIC) >= t0.c0
;INSERT INTO t0 VALUES (CAST(X'e8320917' AS INTEGER), TRUE, '9867-08-09 18:24:26')
;UPDATE t0 
SET c0 = t0.c0, c2 = t0.c2
WHERE t0.c0 IS NOT NULL AND t0.c0 >= t0.c0
;