/* -----------Error-----------
mismatch output
old: CREATE TABLE t0 (
    c0 INTEGER,
    c1 INTEGER,
    c2 TEXT,
    c3 NULL,
    c4 TEXT,
    c5 INTEGER,
    c6 BOOLEAN,
    c7 TEXT,
    c8 TEXT
)|
--
36|59||<nil>|<nil>|36|true|91|91|
54|59||<nil>|<nil>|54|false|91|91|
44|59||<nil>|<nil>|44|false|91|91|
65|59||<nil>|<nil>|65|true|91|91|
86|59||<nil>|<nil>|86|false|91|91|
72|59||<nil>|<nil>|72|true|91|91|
3|59||text81|<nil>|3|false|91|91|
5|59||<nil>|<nil>|5|false|91|91|

new: CREATE TABLE t0 (
    c0 INTEGER,
    c1 INTEGER,
    c2 TEXT,
    c3 NULL,
    c4 TEXT,
    c5 INTEGER,
    c6 BOOLEAN,
    c7 TEXT,
    c8 TEXT
)|
--
75|59||<nil>|<nil>|75|true|91|91|
53|59||<nil>|<nil>|53|false|91|91|
32|59||<nil>|<nil>|32|false|91|91|
65|59||<nil>|<nil>|65|true|91|91|
16|59||<nil>|<nil>|16|false|91|91|
71|59||<nil>|<nil>|71|true|91|91|
3|59||text81|<nil>|3|false|91|91|
5|59||<nil>|<nil>|5|false|91|91|
-----------/Error----------- */
CREATE TABLE t0 (
    c0 INTEGER,
    c1 INTEGER,
    c2 TEXT,
    c3 NULL,
    c4 TEXT,
    c5 INTEGER,
    c6 BOOLEAN,
    c7 TEXT,
    c8 TEXT
);
INSERT INTO t0 VALUES (75, 72, 'text72', NULL, 'text58', 36, TRUE, 'text20', 'text10')
;INSERT INTO t0 VALUES (53, 30, 'text38', NULL, 'text70', 54, FALSE, IFNULL('text97', 'text60'), trim(
84,
FALSE))
;UPDATE t0 
SET c0 = t0.c0, c4 = t0.c7, c5 = t0.c1, c6 = t0.c6, c7 = t0.c7
WHERE 
 CASE t0.c2 WHEN 72 > t0.c5 THEN t0.c2

      WHEN t0.c8 <= 'text72' THEN t0.c7

      WHEN t0.c0 <> 58 AND t0.c3 = t0.c3 OR t0.c1 <= t0.c5 AND t0.c8 IS NOT NULL THEN t0.c7

      WHEN t0.c5 >= t0.c0 THEN 
  CASE t0.c8 WHEN t0.c0 < t0.c0 OR 
   CASE t0.c5 WHEN COALESCE(t0.c3, COALESCE(t0.c3, 27, t0.c0, t0.c5, t0.c3), t0.c8, t0.c1, t0.c0) = t0.c0 THEN t0.c5

        WHEN EXISTS (
    SELECT t1.c6 AS c9, t1.c7 AS c10, t1.c0 AS c11
     FROM t0 AS t1
     WHERE t1.c1 = t1.c1
LIMIT 98) THEN t0.c5

        WHEN t0.c8 IS NULL THEN t0.c0

        WHEN t0.c8 <> t0.c8 AND t0.c0 <= t0.c1 THEN t0.c5

        WHEN EXISTS (
    SELECT t3.c4 AS c9, t3.c5 AS c10, 
      CASE t3.c6 WHEN t3.c0 >= t2.c0 THEN TRUE

           WHEN true THEN t3.c6

           WHEN t3.c3 = t3.c3 THEN t3.c6

           WHEN t3.c0 <= 38 THEN t3.c6

           WHEN t2.c7 >= t2.c4 THEN t3.c6

           WHEN t3.c7 IS NOT NULL THEN TRUE

           WHEN t2.c4 > t2.c2 THEN t2.c6

           WHEN t2.c3 = t2.c3 THEN t3.c6

           WHEN t2.c5 <= t3.c0 THEN t2.c6

           WHEN true AND t3.c6 IS NOT NULL THEN t2.c6

           WHEN t3.c1 = t3.c5 THEN t3.c6

           WHEN t2.c2 <= t2.c2 THEN t2.c6

           ELSE t3.c6

      END AS c11, t3.c5 AS c12
     FROM t0 AS t2
       INNER JOIN t0 AS t3
        ON (t2.c8 <= t3.c8)
     WHERE 'text12' = t2.c4 AND t2.c0 <= t2.c5
LIMIT 141) THEN t0.c1

        WHEN char( '󎄋') IS NULL OR X'73fa7328' IS NOT NULL OR EXISTS (
    SELECT t5.c5 AS c9
     FROM t0 AS t4
       LEFT JOIN (
       t0 AS t5
        INNER JOIN t0 AS t6
         ON (t6.c6 <> t5.c6 OR t6.c6 IS NULL OR t5.c1 > t5.c0)
       ) ON (t5.c8 IS NOT NULL)
     WHERE t4.c4 IS NULL) OR substr(
   NULL,
   X'bd6816ba') = t0.c4 OR t0.c7 < COALESCE(t0.c2, t0.c3) OR t0.c2 >= t0.c7 OR t0.c5 <= t0.c0 OR t0.c4 >= t0.c4 AND t0.c2 <= 'text34' THEN IFNULL(t0.c0, t0.c1)

        WHEN t0.c0 >= t0.c5 THEN t0.c1

        WHEN 
    CASE WHEN t0.c3 = t0.c3 THEN t0.c5

         ELSE 84

    END >= t0.c1 THEN t0.c1

        WHEN 
    CASE WHEN t0.c6 <> t0.c6 THEN t0.c1

         ELSE t0.c1

    END < t0.c1 THEN t0.c0

        ELSE t0.c1

   END = t0.c0 THEN COALESCE(rtrim(
   'text35',
   73), TRUE, 'text26', replace(
   NULL,
   'text100',
   X'a6d6fa6f'), t0.c4)

       WHEN EXISTS (
   SELECT t8.c0 AS c9, t8.c4 AS c10, t8.c8 AS c11, t8.c4 AS c12, t8.c6 AS c13, 'text56' AS c14
    FROM t0 AS t7
      INNER JOIN t0 AS t8
       ON (t7.c2 IS NULL OR t8.c6 = t7.c6)
    WHERE true OR 
     CASE t8.c3 WHEN t7.c4 >= t8.c2 THEN t8.c3

          WHEN t7.c6 <> t8.c6 THEN t7.c3

          WHEN true THEN t8.c3

          WHEN t7.c0 > t8.c5 THEN t7.c3

          WHEN t8.c1 < t8.c5 THEN NULL

          ELSE t7.c3

     END = t8.c3) THEN t0.c8

       WHEN t0.c8 < t0.c8 THEN rtrim( NULL)

       WHEN EXISTS (
   SELECT t9.c8 AS c9
    FROM t0 AS t9
    WHERE t9.c4 < t9.c7) THEN t0.c2

       WHEN 
   CASE WHEN IFNULL(t0.c0, t0.c1) = t0.c5 THEN t0.c8

        ELSE t0.c8

   END <> t0.c7 THEN t0.c7

       WHEN t0.c8 = t0.c7 THEN t0.c8

       ELSE t0.c4

  END

      WHEN 'text59' = t0.c2 THEN t0.c2

      ELSE t0.c2

 END < t0.c8
;INSERT INTO t0 VALUES (32, 49, 'text97', NULL, 'text95', 44, FALSE, 'text28', 'text92')
;INSERT INTO t0 VALUES (65, 38, 'text82', NULL, substr(
FALSE,
NULL), 75, TRUE, CAST(max(
 NULL,
 22,
 X'2de33e3b') AS BLOB), 'text76')
;UPDATE t0 
SET c2 = t0.c2, c4 = t0.c7
WHERE t0.c7 > nullif(
34,
79)
;UPDATE t0 
SET c1 = t0.c0, c3 = 
  CASE t0.c3 WHEN t0.c5 < 
   CASE t0.c0 WHEN t0.c6 <> COALESCE(t0.c6, t0.c6, t0.c6, t0.c5, t0.c3) OR t0.c6 = t0.c6 THEN t0.c5

        WHEN unlikely( 'text85') > t0.c5 THEN t0.c1

        WHEN true AND t0.c8 < substr(
   18,
   FALSE,
   'text27') AND t0.c6 = t0.c6 THEN t0.c5

        ELSE t0.c0

   END THEN t0.c3

       WHEN COALESCE(t0.c2, t0.c3) <> t0.c3 OR t0.c6 <> t0.c6 THEN t0.c3

       WHEN t0.c3 <> CAST(ltrim(
   X'e66ef39b',
   'text4') AS BOOLEAN) THEN t0.c3

       WHEN true THEN 
   CASE WHEN t0.c4 <> t0.c2 THEN 
    CASE t0.c3 WHEN false THEN t0.c3

         WHEN t0.c8 IS NOT NULL THEN t0.c3

         WHEN CAST(t0.c4 AS TEXT) > t0.c4 OR t0.c7 IS NULL THEN t0.c3

         WHEN true OR t0.c2 IS NOT NULL THEN t0.c3

         WHEN t0.c7 > t0.c4 THEN t0.c3

         WHEN t0.c3 <> t0.c3 THEN t0.c3

         WHEN quote( NULL) >= t0.c7 THEN t0.c3

         WHEN t0.c1 > t0.c5 THEN t0.c3

         WHEN t0.c5 IS NULL THEN t0.c3

         WHEN false THEN t0.c3

         WHEN EXISTS (
     SELECT t2.c2 AS c9, t2.c1 AS c10
      FROM t0 AS t1
        LEFT JOIN t0 AS t2
         ON (t2.c2 > t2.c4)
      WHERE t1.c7 < t1.c7
LIMIT 140) THEN COALESCE(t0.c3, t0.c3, t0.c0, t0.c3, t0.c3)

         ELSE t0.c3

    END

        ELSE CAST(t0.c6 AS BOOLEAN)

   END

       WHEN t0.c1 < t0.c5 AND EXISTS (
   SELECT t3.c4 AS c9, t3.c3 AS c10, t3.c7 AS c11, t3.c3 AS c12
    FROM t0 AS t3
    WHERE EXISTS (
     SELECT t4.c3 AS c9, t4.c3 AS c10
      FROM t0 AS t4
      WHERE EXISTS (
       SELECT t5.c2 AS c9
        FROM t0 AS t5
        WHERE t5.c3 IS NOT NULL
LIMIT 142)
LIMIT 146)
LIMIT 73) OR EXISTS (
   SELECT t6.c7 AS c9
    FROM t0 AS t6
    WHERE t6.c1 < t6.c5 OR t6.c5 = t6.c1
LIMIT 73) OR t0.c4 < t0.c8 THEN t0.c3

       ELSE NULLIF(t0.c3, COALESCE(t0.c3, NULL, t0.c1, t0.c3, 
     CASE WHEN t0.c6 IS NULL THEN t0.c3

          ELSE t0.c3

     END, t0.c3))

  END, c4 = coalesce(
 X'75667e4d',
 'text21',
 X'd29df58e'), c6 = t0.c6, c7 = t0.c7
WHERE t0.c6 <> t0.c6
;INSERT INTO t0 VALUES (16, 3, 'text8', NULL, 'text35', 86, FALSE, 'text34', CAST('text11' AS TEXT))
;INSERT INTO t0 VALUES (71, likelihood(
NULL,
0.842935), 'text91', NULL, 'text90', 72, TRUE, 'text27', 'text28')
;UPDATE t0 
SET c0 = 
  CASE WHEN NULLIF(t0.c7, t0.c8) IS NULL THEN t0.c0

       ELSE t0.c5

  END, c5 = t0.c5, c7 = 
  CASE WHEN char( '򎼈') IS NULL THEN t0.c8

       ELSE t0.c4

  END, c8 = t0.c7
WHERE t0.c3 <> t0.c3 AND t0.c6 = t0.c6 OR quote( 66) < hex( FALSE)
;INSERT INTO t0 VALUES (3, last_insert_rowid(), CAST(CAST(TRUE AS INTEGER) AS INTEGER), COALESCE('text81', max(
 NULL,
 NULL,
 X'b7115e3f')), COALESCE(NULL, NULL), 11, FALSE, 'text44', ifnull(
34,
51))
;INSERT INTO t0 VALUES (5, 3, 'text56', NULL, 'text75', 49, FALSE, CAST('text20' AS BLOB), 'text89')
;UPDATE t0 
SET c3 = t0.c3, c5 = t0.c1, c7 = t0.c7
WHERE t0.c5 IS NULL
;UPDATE t0 
SET c5 = 
  CASE t0.c5 WHEN t0.c8 >= t0.c4 THEN 19

       WHEN t0.c1 <> t0.c0 THEN t0.c1

       WHEN t0.c1 IS NOT NULL THEN t0.c1

       WHEN EXISTS (
   SELECT t1.c0 AS c9, t1.c3 AS c10
    FROM t0 AS t1
    WHERE t1.c5 > t1.c0
LIMIT 107) THEN NULLIF(t0.c5, t0.c0)

       WHEN t0.c6 = t0.c6 THEN t0.c1

       ELSE t0.c5

  END
WHERE t0.c2 = t0.c2
;INSERT INTO t0 VALUES (97, 18, trim(
TRUE,
NULL), NULL, 'text92', 7, TRUE, 'text14', 'text77')
;UPDATE t0 
SET c0 = 
  CASE WHEN t0.c8 >= t0.c4 THEN t0.c0

       ELSE t0.c1

  END, c1 = 59, c3 = t0.c3, c4 = t0.c2, c5 = t0.c0, c7 = t0.c7, c8 = nullif(
 91,
 34)
WHERE t0.c6 = t0.c6
;UPDATE t0 
SET c4 = t0.c2, c6 = t0.c6, c7 = t0.c8
WHERE t0.c6 = t0.c6
;UPDATE t0 
SET c0 = t0.c5, c2 = substr(
 'text29',
 X'9796f823',
 TRUE), c4 = ltrim(
 72,
 NULL), c8 = t0.c7
WHERE t0.c5 >= t0.c5
;INSERT INTO t0 VALUES (CAST(91 AS BLOB), 67, 'text35', NULL, NULLIF('text72', NULLIF(COALESCE(NULL, 'text84', 81, X'eed63bf5', NULL, 'text58'), 'text36')), 12, FALSE, 'text49', 'text55')
;DELETE FROM t0
WHERE t0.c5 >= CAST(t0.c7 AS BOOLEAN)
;