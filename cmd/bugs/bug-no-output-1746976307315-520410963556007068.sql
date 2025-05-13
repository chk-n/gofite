/* -----------Error-----------
mismatch output
old: CREATE TABLE t0 (
    c0 TIME,
    c1 TEXT,
    c2 TIME,
    c3 BLOB,
    c4 INTEGER,
    c5 TEXT,
    c6 NULL
)|
--

new: CREATE TABLE t0 (
    c0 TIME,
    c1 TEXT,
    c2 TIME,
    c3 BLOB,
    c4 INTEGER,
    c5 TEXT,
    c6 NULL
)|
--
04:16:06|text84|05:16:30|[47 110 18 7]|99|0|2007|
-----------/Error----------- */
CREATE TABLE t0 (
    c0 TIME,
    c1 TEXT,
    c2 TIME,
    c3 BLOB,
    c4 INTEGER,
    c5 TEXT,
    c6 NULL
);
UPDATE t0 
SET c0 = t0.c0, c1 = t0.c5, c4 = t0.c4, c5 = t0.c1, c6 = CAST(t0.c2 AS TEXT)
WHERE t0.c3 > X'1ff45c06'
;UPDATE t0 
SET c2 = t0.c0, c3 = t0.c3, c5 = t0.c1, c6 = t0.c6
WHERE true
;INSERT INTO t0 VALUES ('04:16:06', 'text84', '05:16:30', X'2f6e1207', 99, CAST(substr(
 'text23',
 '2000-07-13') AS BOOLEAN), CAST('2007-04-18' AS TIME))
;DELETE FROM t0
WHERE false
;DELETE FROM t0
WHERE COALESCE(quote( 3), t0.c2, t0.c0, t0.c6) < 
 CASE t0.c2 WHEN t0.c1 > 
  CASE t0.c1 WHEN t0.c6 = t0.c6 OR true THEN 
   CASE WHEN t0.c2 = t0.c0 THEN t0.c1

        ELSE t0.c5

   END

       WHEN t0.c5 IS NOT NULL THEN t0.c1

       WHEN t0.c4 > t0.c4 THEN t0.c1

       ELSE 'text78'

  END THEN t0.c2

      WHEN 
  CASE t0.c0 WHEN true THEN t0.c2

       WHEN EXISTS (
   SELECT t1.c5 AS c7, t2.c2 AS c8, t1.c0 AS c9, t2.c5 AS c10, X'895513ed' AS c11
    FROM t0 AS t1
      INNER JOIN t0 AS t2
       ON (t2.c6 <> t1.c6)
    WHERE t1.c2 > t2.c2
LIMIT 87) OR t0.c5 = t0.c5 THEN t0.c4

       WHEN false THEN t0.c4

       WHEN 'text41' < t0.c1 THEN t0.c1

       WHEN t0.c1 >= COALESCE(t0.c0, t0.c5, t0.c1, t0.c5, t0.c6, 
    CASE t0.c5 WHEN t0.c4 < t0.c4 AND true THEN t0.c1

         ELSE t0.c5

    END) THEN printf(
  'text90',
  30.500000)

       WHEN t0.c6 = t0.c6 THEN CAST(t0.c1 AS DATETIME)

       WHEN t0.c5 >= t0.c1 THEN t0.c5

       WHEN t0.c1 > rtrim( CURRENT_DATE) THEN t0.c2

       WHEN t0.c4 IS NOT NULL AND true OR t0.c3 <= t0.c3 AND t0.c3 >= t0.c3 THEN t0.c4

       ELSE t0.c5

  END IS NOT NULL OR NULLIF(t0.c4, t0.c4) > t0.c4 THEN t0.c2

      WHEN EXISTS (
  SELECT t3.c6 AS c7, trim(
   'text15',
   X'744c266e') AS c8, t3.c6 AS c9, t3.c5 AS c10, t3.c4 AS c11, t3.c2 AS c12, t3.c4 AS c13
   FROM t0 AS t3
   WHERE EXISTS (
    SELECT t4.c0 AS c7, t4.c6 AS c8, t5.c1 AS c9, t5.c6 AS c10, t6.c5 AS c11, t5.c2 AS c12
     FROM t0 AS t4
        CROSS JOIN t0 AS t5
         ON (t5.c5 = t4.c1)
       INNER JOIN t0 AS t6
        ON (t6.c3 <= t4.c3 OR t5.c1 IS NOT NULL AND t4.c1 < t5.c5)
     WHERE t5.c3 <= t4.c3
LIMIT 41)) THEN t0.c2

      WHEN EXISTS (
  SELECT COALESCE(t7.c0, NULL, IFNULL(t8.c6, t8.c6), t8.c6) AS c7, t7.c0 AS c8, t8.c2 AS c9, t7.c0 AS c10, 'text14' AS c11, t7.c0 AS c12
   FROM t0 AS t7
     LEFT OUTER JOIN t0 AS t8
      ON (t7.c6 = t8.c6)
   WHERE t7.c6 = t7.c6
LIMIT 100) THEN t0.c2

      WHEN t0.c5 < t0.c5 THEN t0.c2

      WHEN t0.c0 = COALESCE(t0.c1, t0.c6, t0.c6, t0.c0) THEN t0.c2

      WHEN t0.c2 >= t0.c2 OR typeof( '2008-03-28') IS NOT NULL THEN t0.c2

      WHEN false THEN t0.c0

      ELSE t0.c0

 END
;UPDATE t0 
SET c2 = t0.c2, c3 = t0.c3
WHERE t0.c4 <> t0.c4
;