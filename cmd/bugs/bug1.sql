/* -----------Error-----------
mismatch output
old: CREATE TABLE t0 (
    c0 TEXT,
    c1 NULL,
    c2 TEXT,
    c3 NULL,
    c4 NULL,
    c5 TEXT,
    c6 TEXT
)|
--
text73|<nil>|text32|<nil>|<nil>|text73|text73|
text93|<nil>|text32|<nil>|<nil>|text93|text93|
text6|<nil>|text32|<nil>|<nil>|text6|text88|
text60|<nil>|text32|<nil>|<nil>|text60|text60|
text23|<nil>|text32|<nil>|<nil>|text23|text3|
text10|<nil>|text62|<nil>|<nil>|text10|3|
text39|<nil>|text32|<nil>|<nil>|text39|text39|
text76|<nil>|text32|<nil>|<nil>|text76|5|
text84|<nil>|text32|<nil>|<nil>|text84|text52|
0|<nil>|text32|<nil>|<nil>|0|text77|
text28|<nil>|text100|<nil>|<nil>|text28|text80|

new: CREATE TABLE t0 (
    c0 TEXT,
    c1 NULL,
    c2 TEXT,
    c3 NULL,
    c4 NULL,
    c5 TEXT,
    c6 TEXT
)|
--
text73|<nil>|text32|<nil>|<nil>|text73|text73|
text93|<nil>|text32|<nil>|<nil>|text93|text93|
text6|<nil>|text32|<nil>|<nil>|text6|text88|
text60|<nil>|text32|<nil>|<nil>|text60|text60|
text23|<nil>|text32|<nil>|<nil>|text23|text3|
text10|<nil>|text62|<nil>|<nil>|text10|3|
text39|<nil>|text32|<nil>|<nil>|text39|text39|
text76|<nil>|text32|<nil>|<nil>|text76|5|
text84|<nil>|text32|<nil>|<nil>|text84|text52|
text32|<nil>|text77|<nil>|<nil>|text32|<nil>|
text28|<nil>|text100|<nil>|<nil>|text28|text80|
-----------/Error----------- */
CREATE TABLE t0 (
    c0 TEXT,
    c1 NULL,
    c2 TEXT,
    c3 NULL,
    c4 NULL,
    c5 TEXT,
    c6 TEXT
);
INSERT INTO t0 VALUES ('text73', NULL, 'text86', NULL, NULL, 'text37', 'text48')
;UPDATE t0 
SET c0 = t0.c5, c4 = t0.c3
WHERE t0.c4 = NULL
;INSERT INTO t0 VALUES ('text93', NULL, 'text16', NULL, NULL, 'text55', 'text94')
;INSERT INTO t0 VALUES ('text6', NULL, 'text38', NULL, NULL, 'text88', 'text22')
;UPDATE t0 
SET c3 = t0.c4, c4 = t0.c4
WHERE 
 CASE t0.c1 WHEN lower( 27) < trim(
 X'bfc7142a',
 TRUE) OR t0.c6 IS NOT NULL OR t0.c3 <> 
  CASE t0.c3 WHEN min(
  NULL,
  'text90',
  NULL) IS NOT NULL OR t0.c0 <> COALESCE(t0.c6, CAST(t0.c2 AS TEXT), t0.c6, t0.c1, t0.c0) OR t0.c6 IS NOT NULL THEN t0.c1

       WHEN true THEN t0.c4

       WHEN true OR 
   CASE t0.c4 WHEN true THEN t0.c4

        WHEN true AND t0.c3 <> t0.c1 AND printf(
   'text46',
   NULL) >= t0.c0 OR t0.c3 = t0.c4 AND 
    CASE t0.c1 WHEN false THEN 
     CASE t0.c4 WHEN t0.c3 <> t0.c1 OR EXISTS (
      SELECT t1.c0 AS c7, t1.c1 AS c8, t1.c5 AS c9, t1.c1 AS c10, t1.c5 AS c11, t1.c5 AS c12, t1.c3 AS c13, t1.c5 AS c14, t1.c0 AS c15
       FROM t0 AS t1
       WHERE false OR t1.c6 > t1.c0
LIMIT 36) THEN t0.c4

          WHEN t0.c0 IS NULL THEN t0.c1

          WHEN t0.c4 <> t0.c4 THEN COALESCE(t0.c3, t0.c6, t0.c1, t0.c4)

          WHEN t0.c1 = CAST(t0.c5 AS TEXT) AND t0.c6 >= t0.c2 THEN t0.c3

          WHEN false THEN t0.c4

          WHEN t0.c6 = t0.c5 THEN t0.c3

          WHEN 42 IS NULL THEN t0.c3

          WHEN t0.c5 > t0.c2 AND t0.c4 <> t0.c3 THEN NULL

          WHEN t0.c0 > 'text16' AND t0.c0 IS NOT NULL THEN t0.c1

          WHEN t0.c4 = t0.c4 THEN t0.c1

          WHEN false THEN t0.c4

          WHEN t0.c6 = t0.c6 THEN t0.c4

          ELSE t0.c4

     END

         WHEN t0.c0 < t0.c5 THEN t0.c3

         WHEN t0.c1 <> t0.c4 OR t0.c3 = t0.c4 THEN NULL

         WHEN t0.c1 IS NOT NULL AND t0.c4 = t0.c3 OR t0.c3 <> t0.c1 OR t0.c5 >= 
     CASE t0.c2 WHEN t0.c6 < t0.c5 THEN t0.c6

          WHEN t0.c1 <> t0.c3 THEN t0.c2

          WHEN true THEN t0.c0

          WHEN t0.c6 < t0.c5 THEN t0.c6

          WHEN t0.c6 > t0.c2 THEN t0.c2

          WHEN t0.c4 <> t0.c3 THEN t0.c0

          WHEN t0.c6 IS NULL THEN t0.c6

          ELSE t0.c2

     END AND t0.c0 = t0.c6 THEN t0.c1

         ELSE t0.c1

    END <> t0.c4 AND t0.c4 = t0.c4 THEN NULL

        WHEN t0.c2 IS NULL THEN t0.c1

        WHEN t0.c5 <= t0.c5 THEN t0.c4

        WHEN FALSE IS NULL AND t0.c0 = t0.c5 AND t0.c3 = t0.c1 THEN t0.c3

        WHEN EXISTS (
    SELECT t3.c2 AS c7
     FROM t0 AS t2
       LEFT JOIN t0 AS t3
        ON (X'f4d7d903' IS NULL)
     WHERE t2.c5 <= t3.c2
LIMIT 17) THEN t0.c4

        WHEN t0.c1 <> t0.c1 THEN t0.c4

        WHEN t0.c3 = 
    CASE t0.c3 WHEN t0.c5 <= t0.c2 THEN t0.c1

         WHEN 
     CASE t0.c6 WHEN t0.c1 <> NULL THEN t0.c2

          WHEN t0.c6 <= t0.c0 THEN t0.c2

          WHEN true THEN t0.c0

          WHEN EXISTS (
      SELECT t4.c6 AS c7, t4.c2 AS c8, t4.c3 AS c9, t4.c3 AS c10, t4.c3 AS c11, t4.c0 AS c12, t4.c0 AS c13, t4.c6 AS c14, t4.c6 AS c15
       FROM t0 AS t4
       WHERE t4.c1 <> t4.c3
LIMIT 113) THEN t0.c6

          WHEN t0.c6 < t0.c0 THEN t0.c2

          WHEN t0.c1 <> t0.c1 OR 'text77' >= t0.c6 THEN 'text88'

          WHEN t0.c1 <> t0.c3 THEN t0.c2

          WHEN t0.c1 = t0.c1 THEN t0.c5

          WHEN t0.c0 <= t0.c2 THEN t0.c2

          ELSE t0.c6

     END = t0.c2 THEN t0.c1

         ELSE t0.c4

    END THEN t0.c4

        WHEN 'text6' = t0.c0 THEN t0.c4

        WHEN t0.c5 <= t0.c6 THEN t0.c1

        ELSE t0.c3

   END = t0.c1 THEN t0.c4

       WHEN max(
  X'61631aee',
  6,
  X'4b613be0') IS NOT NULL THEN NULL

       WHEN t0.c4 = t0.c4 OR t0.c0 IS NULL THEN t0.c4

       WHEN t0.c1 = 
   CASE WHEN true THEN t0.c3

        ELSE t0.c4

   END THEN t0.c3

       WHEN EXISTS (
   SELECT t6.c5 AS c7, t5.c2 AS c8, t7.c4 AS c9
    FROM t0 AS t5
      CROSS JOIN (
      t0 AS t6
       INNER JOIN t0 AS t7
        ON (t6.c0 IS NOT NULL)
      ) ON (false)
    WHERE t6.c4 = CAST(t5.c0 AS INTEGER)) AND t0.c0 <> t0.c6 THEN t0.c1

       ELSE t0.c1

  END AND t0.c5 > t0.c0 AND t0.c1 = t0.c3 THEN t0.c3

      WHEN t0.c4 <> t0.c3 THEN t0.c3

      WHEN t0.c4 = t0.c4 OR t0.c3 IS NULL THEN t0.c1

      WHEN t0.c6 = 
  CASE WHEN EXISTS (
   SELECT t8.c2 AS c7, t8.c3 AS c8, t8.c0 AS c9
    FROM t0 AS t8
    WHERE t8.c0 = t8.c6) THEN replace(
  'text50',
  X'e1edb073',
  89)

       ELSE t0.c6

  END THEN t0.c4

      WHEN t0.c3 IS NULL THEN t0.c3

      WHEN EXISTS (
  SELECT t9.c1 AS c7, t9.c6 AS c8
   FROM t0 AS t9
   WHERE EXISTS (
    SELECT t10.c1 AS c7, t10.c5 AS c8, t10.c5 AS c9, t10.c1 AS c10, t10.c2 AS c11, t10.c3 AS c12, t10.c2 AS c13, t10.c1 AS c14, t10.c1 AS c15, t10.c5 AS c16, t10.c5 AS c17
     FROM t0 AS t10
     WHERE t10.c2 > t10.c6
LIMIT 154)
LIMIT 103) THEN t0.c4

      WHEN t0.c1 <> t0.c3 THEN t0.c1

      WHEN t0.c5 = t0.c0 THEN COALESCE(t0.c3, t0.c3, t0.c3, ifnull(
  TRUE,
  'text21'))

      WHEN t0.c2 < t0.c2 THEN t0.c3

      WHEN NULL = t0.c4 THEN t0.c4

      ELSE t0.c3

 END <> t0.c4
;UPDATE t0 
SET c3 = 
  CASE t0.c3 WHEN t0.c6 >= t0.c0 THEN t0.c1

       ELSE t0.c3

  END
WHERE t0.c3 <> 
 CASE WHEN t0.c1 <> t0.c4 THEN t0.c4

      ELSE t0.c1

 END
;UPDATE t0 
SET c5 = t0.c6, c6 = printf(
 'text47',
 54)
WHERE lower( NULL) = t0.c5
;UPDATE t0 
SET c1 = t0.c4, c2 = t0.c2, c4 = t0.c4, c6 = t0.c5
WHERE true
;INSERT INTO t0 VALUES ('text60', COALESCE(NULL, NULL, NULL, NULL, NULL, NULL), NULLIF('text95', 'text89'), NULL, NULL, IFNULL('text36', 'text68'), 'text28')
;INSERT INTO t0 VALUES ('text23', NULL, 'text3', COALESCE(X'fb1d8caf', NULL, NULL, NULL, NULL), NULL, 'text68', 'text10')
;UPDATE t0 
SET c0 = t0.c0, c1 = t0.c4, c2 = t0.c2
WHERE true
;INSERT INTO t0 VALUES (CAST(NULL AS BOOLEAN), NULL, CAST(CAST('text10' AS BLOB) AS TEXT), CAST(NULL AS TEXT), NULL, 'text62', upper( 3))
;INSERT INTO t0 VALUES ('text39', NULL, 'text40', NULL, NULL, 'text25', 'text91')
;UPDATE t0 
SET c1 = 
  CASE WHEN t0.c5 > t0.c5 THEN NULL

       ELSE t0.c3

  END, c3 = t0.c4, c6 = t0.c0
WHERE t0.c5 < t0.c0 AND t0.c6 = t0.c6
;INSERT INTO t0 VALUES ('text76', NULL, 'text75', NULL, NULL, 'text96', quote( 5))
;INSERT INTO t0 VALUES ('text84', NULL, 'text72', NULL, NULL, replace(
77,
'text45',
X'b26cedba'), replace(
'text52',
X'63b1e612',
FALSE))
;UPDATE t0 
SET c1 = t0.c4, c4 = t0.c1
WHERE t0.c5 >= t0.c0
;INSERT INTO t0 VALUES (ifnull(
FALSE,
X'6f91b577'), NULL, 'text76', NULL, NULL, 'text96', 'text77')
;UPDATE t0 
SET c1 = 
  CASE t0.c3 WHEN t0.c6 = t0.c5 AND typeof( 'text1') <= ltrim(
  FALSE,
  'text32') OR IFNULL(t0.c2, t0.c2) > t0.c6 THEN t0.c3

       WHEN true THEN t0.c3

       WHEN t0.c4 = COALESCE(t0.c4, t0.c1, t0.c5) THEN 
   CASE WHEN t0.c0 IS NOT NULL THEN t0.c3

        ELSE t0.c1

   END

       WHEN t0.c4 = CAST(t0.c1 AS BOOLEAN) THEN t0.c1

       WHEN t0.c1 <> t0.c3 THEN t0.c4

       WHEN 
   CASE t0.c2 WHEN COALESCE(zeroblob( 50), t0.c3, t0.c0) > char( '򜇞') THEN 
    CASE t0.c2 WHEN t0.c3 = t0.c3 THEN t0.c6

         WHEN t0.c5 IS NULL THEN t0.c0

         WHEN t0.c3 <> t0.c1 THEN t0.c5

         WHEN t0.c4 IS NOT NULL AND t0.c3 = t0.c1 THEN t0.c0

         ELSE 
     CASE WHEN t0.c4 = t0.c3 THEN t0.c0

          ELSE t0.c6

     END

    END

        WHEN t0.c3 IS NOT NULL THEN 'text81'

        WHEN t0.c2 <= t0.c6 THEN t0.c0

        WHEN t0.c4 = COALESCE(t0.c1, t0.c3, 
     CASE WHEN EXISTS (
      SELECT t1.c1 AS c7, t1.c0 AS c8, t1.c3 AS c9
       FROM t0 AS t1
       WHERE t1.c2 > t1.c2) THEN t0.c4

          ELSE t0.c3

     END, t0.c4, t0.c5, t0.c0) OR t0.c0 IS NOT NULL THEN t0.c0

        WHEN t0.c3 <> t0.c4 THEN t0.c6

        WHEN t0.c6 > t0.c5 THEN NULLIF(t0.c6, t0.c2)

        WHEN t0.c3 = 
    CASE t0.c4 WHEN IFNULL(COALESCE(t0.c4, t0.c1, t0.c1, t0.c4), t0.c4) = t0.c3 THEN t0.c4

         WHEN t0.c2 IS NULL THEN t0.c1

         WHEN t0.c0 = t0.c0 THEN t0.c4

         WHEN false THEN t0.c4

         WHEN t0.c5 >= t0.c2 THEN t0.c1

         WHEN true THEN t0.c1

         WHEN t0.c0 < t0.c5 THEN t0.c1

         ELSE 
     CASE t0.c3 WHEN t0.c4 IS NOT NULL THEN t0.c1

          WHEN t0.c6 <= t0.c2 OR EXISTS (
      SELECT t2.c4 AS c7, t2.c4 AS c8, t2.c2 AS c9, t2.c0 AS c10, t2.c4 AS c11, t2.c2 AS c12, t2.c0 AS c13, t2.c6 AS c14, t2.c3 AS c15, t2.c5 AS c16, t2.c6 AS c17
       FROM t0 AS t2
       WHERE t2.c0 >= t2.c6 OR t2.c3 <> t2.c3
LIMIT 121) AND t0.c3 <> t0.c3 THEN t0.c1

          WHEN t0.c0 = t0.c2 THEN t0.c3

          WHEN true THEN t0.c1

          WHEN t0.c4 <> t0.c1 THEN t0.c3

          WHEN t0.c2 IS NOT NULL OR t0.c2 > t0.c5 THEN t0.c1

          WHEN t0.c2 IS NOT NULL THEN t0.c1

          ELSE t0.c3

     END

    END THEN 'text93'

        ELSE t0.c5

   END <> 'text12' THEN t0.c1

       WHEN ltrim(
  NULL,
  'text56') IS NOT NULL OR t0.c4 = t0.c4 THEN 
   CASE WHEN t0.c0 > t0.c0 THEN NULL

        ELSE t0.c1

   END

       WHEN false THEN t0.c4

       WHEN t0.c6 >= t0.c5 THEN t0.c1

       WHEN t0.c5 = t0.c0 OR t0.c1 <> t0.c4 THEN NULL

       WHEN t0.c4 <> t0.c1 THEN t0.c3

       ELSE t0.c3

  END, c2 = t0.c5, c4 = t0.c1, c5 = t0.c0, c6 = 
  CASE t0.c6 WHEN false THEN t0.c5

       WHEN t0.c2 < IFNULL(trim(
   NULL,
   100), t0.c5) THEN 
   CASE t0.c0 WHEN t0.c4 = t0.c4 OR t0.c6 > 'text10' OR t0.c3 <> t0.c4 AND t0.c4 IS NOT NULL OR t0.c5 >= t0.c5 THEN t0.c2

        WHEN t0.c2 > t0.c5 AND upper( FALSE) < t0.c5 THEN t0.c0

        WHEN true THEN t0.c2

        WHEN false THEN t0.c6

        WHEN t0.c1 IS NOT NULL THEN t0.c6

        WHEN t0.c0 = t0.c6 THEN t0.c5

        WHEN char( '񧄵') >= t0.c6 OR t0.c4 <> t0.c1 OR true OR t0.c4 = t0.c4 THEN trim( X'b6def83f')

        WHEN true AND t0.c3 = t0.c3 THEN 
    CASE t0.c5 WHEN EXISTS (
     SELECT t3.c5 AS c7, t3.c5 AS c8, t3.c6 AS c9
      FROM t0 AS t3
      WHERE t3.c3 <> t3.c1 AND false) OR true THEN t0.c0

         WHEN t0.c2 = t0.c0 THEN t0.c6

         WHEN t0.c6 < t0.c5 THEN t0.c0

         WHEN t0.c1 = t0.c4 AND 
     CASE t0.c3 WHEN t0.c6 <> t0.c0 THEN t0.c1

          WHEN t0.c3 = NULL THEN t0.c1

          WHEN t0.c0 <= t0.c6 THEN t0.c4

          WHEN t0.c2 <= t0.c0 THEN t0.c1

          WHEN t0.c1 = t0.c1 THEN t0.c1

          WHEN true THEN t0.c4

          WHEN t0.c4 <> t0.c1 THEN t0.c1

          WHEN t0.c1 = t0.c4 AND t0.c1 <> t0.c4 THEN t0.c4

          WHEN t0.c4 IS NULL THEN t0.c4

          WHEN t0.c6 >= t0.c2 THEN t0.c1

          ELSE t0.c4

     END = t0.c4 AND t0.c4 IS NULL AND t0.c3 <> NULL OR t0.c2 = t0.c5 AND t0.c4 <> t0.c3 OR t0.c3 <> t0.c1 THEN t0.c2

         WHEN t0.c2 <> t0.c0 THEN 'text3'

         WHEN TRUE IS NULL OR t0.c6 <= t0.c2 OR t0.c5 IS NOT NULL AND t0.c5 >= t0.c6 AND t0.c3 = t0.c4 OR t0.c3 = t0.c1 AND t0.c4 <> t0.c3 THEN t0.c0

         ELSE t0.c6

    END

        WHEN 
    CASE WHEN t0.c6 > t0.c0 AND t0.c5 = t0.c0 OR t0.c2 < t0.c0 AND t0.c1 = t0.c4 OR t0.c4 <> t0.c1 THEN t0.c5

         ELSE t0.c6

    END <= t0.c2 THEN t0.c5

        WHEN t0.c2 < t0.c2 THEN t0.c6

        ELSE t0.c2

   END

       WHEN COALESCE(t0.c1, t0.c4, t0.c3, 
    CASE WHEN EXISTS (
     SELECT t4.c2 AS c7
      FROM t0 AS t4
      WHERE t4.c0 > t4.c6
LIMIT 73) THEN t0.c1

         ELSE t0.c3

    END, t0.c4, t0.c3) <> t0.c3 AND 'text38' IS NOT NULL AND t0.c0 >= t0.c2 OR t0.c0 >= 
   CASE WHEN 
    CASE t0.c1 WHEN t0.c3 = t0.c4 THEN t0.c3

         WHEN t0.c0 >= t0.c5 THEN t0.c1

         WHEN t0.c3 <> NULL THEN t0.c4

         WHEN t0.c6 >= t0.c5 THEN t0.c4

         ELSE t0.c3

    END = t0.c4 THEN char( '􊓦')

        ELSE t0.c6

   END OR t0.c1 = IFNULL(t0.c3, t0.c3) AND t0.c6 IS NOT NULL OR EXISTS (
   SELECT t5.c0 AS c7, t6.c3 AS c8, t5.c6 AS c9
    FROM t0 AS t5
      LEFT JOIN t0 AS t6
       ON (t6.c5 > t6.c2)
    WHERE t5.c2 = t6.c6 OR t5.c6 <> t5.c6) AND t0.c3 = t0.c4 THEN t0.c5

       WHEN t0.c0 IS NOT NULL THEN 'text36'

       WHEN t0.c4 <> t0.c3 AND EXISTS (
   SELECT t8.c1 AS c7, t7.c1 AS c8, t7.c4 AS c9, t7.c6 AS c10
    FROM t0 AS t7
      INNER JOIN t0 AS t8
       ON (t8.c3 <> t7.c1)
    WHERE t7.c1 <> t8.c3
LIMIT 65) OR t0.c3 <> t0.c3 AND t0.c1 <> t0.c3 OR EXISTS (
   SELECT t10.c5 AS c7, t9.c4 AS c8, 
     CASE WHEN t10.c6 <= t10.c0 THEN t10.c3

          ELSE t10.c4

     END AS c9, typeof( 77) AS c10, t10.c3 AS c11, t9.c1 AS c12, t9.c6 AS c13, t10.c2 AS c14, t10.c6 AS c15, t9.c1 AS c16
    FROM t0 AS t9
      INNER JOIN t0 AS t10
       ON (true OR true OR t9.c3 IS NULL AND true AND t9.c3 IS NULL OR t10.c1 <> t10.c4)
    WHERE t10.c1 = t10.c4
LIMIT 65) AND COALESCE(t0.c0, t0.c4) = t0.c0 AND ltrim( 93) <> t0.c0 AND t0.c1 <> t0.c3 AND EXISTS (
   SELECT t11.c5 AS c7, t11.c2 AS c8, t11.c1 AS c9, t11.c4 AS c10, t11.c2 AS c11, t11.c2 AS c12, t11.c3 AS c13, t11.c1 AS c14, t11.c3 AS c15, 'text77' AS c16, t11.c4 AS c17, t11.c1 AS c18, t11.c4 AS c19
    FROM t0 AS t11
    WHERE t11.c3 = t11.c4
LIMIT 152) AND t0.c5 = t0.c2 AND true OR t0.c1 IS NOT NULL AND like(
  'text87',
  X'7e3f4e55',
  '婓') IS NULL AND true THEN t0.c2

       WHEN t0.c4 = t0.c1 THEN t0.c0

       WHEN t0.c4 = t0.c4 AND t0.c0 <> 
   CASE t0.c2 WHEN CAST(t0.c2 AS INTEGER) = t0.c5 THEN t0.c0

        WHEN t0.c6 > t0.c6 OR EXISTS (
    SELECT t12.c2 AS c7, t13.c1 AS c8, t13.c5 AS c9, t12.c5 AS c10, t12.c2 AS c11, t13.c5 AS c12, CAST(t13.c1 AS BLOB) AS c13, t12.c5 AS c14, t12.c5 AS c15, t12.c4 AS c16
     FROM t0 AS t12
       INNER JOIN t0 AS t13
        ON (t12.c4 IS NOT NULL)
     WHERE t12.c5 > t13.c2) AND EXISTS (
    SELECT t14.c1 AS c7, t14.c4 AS c8, t14.c5 AS c9, t14.c6 AS c10, t14.c1 AS c11
     FROM t0 AS t14
     WHERE t14.c0 >= t14.c2
LIMIT 55) OR t0.c3 = t0.c3 THEN t0.c2

        WHEN t0.c1 = t0.c4 THEN t0.c6

        WHEN true AND t0.c6 > t0.c0 OR t0.c1 <> NULL THEN IFNULL(t0.c5, t0.c5)

        ELSE t0.c2

   END THEN t0.c6

       ELSE t0.c5

  END
WHERE t0.c4 = t0.c3
;UPDATE t0 
SET c3 = 
  CASE WHEN unicode( X'b798ee76') IS NOT NULL THEN t0.c3

       ELSE t0.c3

  END, c4 = t0.c1, c5 = t0.c5, c6 = t0.c2
WHERE CAST(t0.c3 AS BOOLEAN) <= COALESCE(t0.c4, t0.c2, likelihood(
 FALSE,
 0.975313), t0.c4)
;UPDATE t0 
SET c2 = t0.c0, c3 = t0.c4, c5 = 'text32'
WHERE t0.c2 <> t0.c0 OR t0.c3 <> IFNULL(t0.c4, t0.c3)
;INSERT INTO t0 VALUES (COALESCE(NULL, 'text100'), NULL, 'text28', NULL, NULL, 'text100', 'text80')
;DELETE FROM t0
WHERE t0.c1 <> t0.c1 AND false
;INSERT INTO t0 VALUES ('text79', NULL, 'text30', COALESCE(rtrim( TRUE), NULL), NULL, 'text41', 'text45')
;UPDATE t0 
SET c0 = CAST(t0.c3 AS INTEGER), c1 = 
  CASE t0.c3 WHEN t0.c5 <> t0.c2 OR t0.c2 IS NULL OR t0.c4 = t0.c1 THEN t0.c1

       WHEN t0.c4 = COALESCE(t0.c4, 
    CASE t0.c4 WHEN t0.c4 <> 
     CASE WHEN t0.c0 <= t0.c5 AND t0.c6 <= t0.c2 THEN t0.c4

          ELSE t0.c4

     END THEN t0.c3

         ELSE t0.c3

    END, t0.c2, t0.c0, t0.c2, t0.c3) THEN t0.c3

       WHEN t0.c2 < t0.c5 THEN t0.c1

       WHEN t0.c3 IS NOT NULL AND CAST(t0.c3 AS BOOLEAN) <> 
   CASE t0.c4 WHEN t0.c3 <> t0.c4 THEN t0.c1

        WHEN EXISTS (
    SELECT t2.c2 AS c7
     FROM t0 AS t1
       CROSS JOIN t0 AS t2
        ON (true)
     WHERE NULLIF(t2.c6, t2.c5) < t1.c0) THEN t0.c1

        WHEN t0.c4 = t0.c4 THEN t0.c4

        WHEN coalesce(
   X'cce7ad78',
   NULL,
   X'41a10941') = t0.c2 AND t0.c2 IS NULL AND t0.c2 <= 'text89' THEN t0.c3

        WHEN t0.c2 > t0.c6 THEN t0.c1

        WHEN t0.c1 IS NOT NULL THEN t0.c1

        WHEN false THEN t0.c4

        ELSE t0.c3

   END THEN t0.c1

       WHEN t0.c3 = t0.c4 THEN t0.c4

       WHEN false THEN t0.c1

       ELSE t0.c1

  END, c2 = t0.c5, c3 = t0.c1, c5 = t0.c2, c6 = t0.c6
WHERE t0.c5 <> t0.c6
;INSERT INTO t0 VALUES (substr(
X'c97928aa',
5), NULL, 'text11', NULL, NULL, 'text25', 'text45')
;INSERT INTO t0 VALUES ('text90', NULL, 'text6', NULL, NULL, 'text32', substr(
82,
NULL,
'text61'))
;INSERT INTO t0 VALUES (replace(
X'424929bf',
X'8cb306e7',
83), NULL, 'text47', NULL, NULL, 'text14', 'text32')
;INSERT INTO t0 VALUES (CAST(FALSE AS BLOB), NULL, substr(
X'61fa2bbf',
TRUE), NULL, NULL, 'text48', 'text48')
;INSERT INTO t0 VALUES ('text69', NULL, nullif(
'text92',
23), NULL, NULL, 'text79', COALESCE(57, NULL, 'text54'))
;UPDATE t0 
SET c2 = t0.c6, c3 = t0.c1, c5 = t0.c2, c6 = t0.c0
WHERE t0.c5 IS NULL OR 
 CASE t0.c5 WHEN 
  CASE t0.c2 WHEN t0.c2 < t0.c6 THEN t0.c5

       WHEN t0.c0 <> t0.c0 OR t0.c5 IS NULL THEN t0.c5

       WHEN t0.c4 <> 
   CASE WHEN ltrim(
   FALSE,
   31) IS NULL THEN t0.c1

        ELSE t0.c3

   END OR t0.c1 <> t0.c3 THEN rtrim( X'7e151e31')

       WHEN false THEN t0.c2

       WHEN t0.c4 <> t0.c4 AND 'text65' < t0.c0 AND t0.c4 <> t0.c3 THEN t0.c0

       WHEN t0.c0 IS NULL THEN COALESCE(t0.c5, t0.c5, t0.c5)

       WHEN t0.c4 IS NOT NULL THEN t0.c0

       WHEN t0.c5 IS NULL THEN t0.c6

       WHEN true THEN t0.c0

       WHEN true THEN t0.c5

       WHEN true AND t0.c0 < NULLIF(t0.c5, t0.c0) THEN t0.c2

       ELSE t0.c0

  END < t0.c0 THEN t0.c2

      WHEN coalesce(
 TRUE,
 29,
 83) >= IFNULL(t0.c5, t0.c2) OR t0.c1 <> t0.c4 THEN t0.c0

      WHEN t0.c6 <= t0.c0 OR t0.c5 <> t0.c6 THEN t0.c2

      WHEN t0.c5 <= t0.c0 THEN replace(
 X'240915c6',
 NULL,
 X'b4639468')

      WHEN t0.c6 > t0.c5 OR t0.c4 = CAST(t0.c6 AS INTEGER) THEN ltrim( 71)

      WHEN EXISTS (
  SELECT subq0.c7 AS c8, subq0.c7 AS c9, subq0.c7 AS c10, subq0.c7 AS c11, subq0.c7 AS c12, subq0.c7 AS c13, subq0.c7 AS c14, subq0.c7 AS c15, subq0.c7 AS c16, subq0.c7 AS c17, subq0.c7 AS c18, IFNULL(subq0.c7, subq0.c7) AS c19, subq0.c7 AS c20, 
    CASE subq0.c7 WHEN subq0.c7 <> subq0.c7 THEN subq0.c7

         WHEN true AND true THEN subq0.c7

         WHEN EXISTS (
     SELECT t2.c3 AS c7
      FROM t0 AS t2
        INNER JOIN t0 AS t3
         ON (t3.c6 > t2.c5)
      WHERE t2.c6 <> t2.c5) OR subq0.c7 = 'text7' THEN subq0.c7

         WHEN subq0.c7 IS NULL THEN subq0.c7

         WHEN subq0.c7 >= CAST(subq0.c7 AS BLOB) THEN subq0.c7

         WHEN subq0.c7 > subq0.c7 THEN subq0.c7

         ELSE subq0.c7

    END AS c8
   FROM (SELECT t1.c5 AS c7
      FROM t0 AS t1
      WHERE t1.c6 > t1.c5) as subq0
     
   WHERE true OR subq0.c7 < COALESCE(subq0.c7, subq0.c7, subq0.c7, subq0.c7)
LIMIT 168) THEN typeof( 'text93')

      WHEN hex( 'text52') <> t0.c2 AND true THEN 'text70'

      WHEN t0.c0 IS NULL THEN t0.c2

      WHEN t0.c1 <> NULL OR ifnull(
 'text6',
 FALSE) IS NULL OR t0.c4 <> t0.c4 THEN 
  CASE t0.c0 WHEN EXISTS (
   SELECT t5.c3 AS c7, t5.c0 AS c8, 
     CASE t5.c5 WHEN t5.c5 >= t5.c6 THEN t5.c6

          WHEN t4.c0 = t4.c6 THEN t5.c6

          WHEN t5.c0 < t5.c6 THEN t5.c0

          WHEN t5.c3 <> t5.c4 THEN 
      CASE WHEN t5.c1 IS NULL THEN t5.c6

           ELSE t5.c2

      END

          ELSE t5.c6

     END AS c9, t4.c1 AS c10, CAST(t4.c1 AS BLOB) AS c11, t5.c0 AS c12, t4.c4 AS c13, t5.c3 AS c14
    FROM t0 AS t4
      INNER JOIN t0 AS t5
       ON (t4.c2 <= t5.c6)
    WHERE true
LIMIT 95) THEN CAST(t0.c4 AS INTEGER)

       WHEN t0.c6 < typeof( NULL) THEN t0.c0

       WHEN t0.c3 = t0.c1 THEN t0.c6

       WHEN false THEN t0.c5

       WHEN t0.c5 IS NULL THEN t0.c6

       WHEN t0.c6 >= t0.c2 OR t0.c1 IS NULL THEN t0.c6

       WHEN t0.c3 <> t0.c3 THEN t0.c0

       WHEN t0.c3 IS NULL AND t0.c5 > t0.c6 THEN t0.c6

       WHEN true THEN t0.c0

       WHEN EXISTS (
   SELECT subq1.c8 AS c18, subq1.c7 AS c19, subq1.c12 AS c20
    FROM (SELECT t6.c4 AS c7, t6.c2 AS c8, t6.c4 AS c9, t6.c4 AS c10, t6.c1 AS c11, t6.c0 AS c12, t6.c5 AS c13, t6.c3 AS c14, t6.c6 AS c15, 'text60' AS c16, t6.c4 AS c17
       FROM t0 AS t6
       WHERE t6.c5 IS NULL) as subq1
      
    WHERE subq1.c9 = subq1.c17
LIMIT 101) THEN t0.c6

       ELSE t0.c2

  END

      ELSE t0.c5

 END <= quote( FALSE)
;INSERT INTO t0 VALUES ('text71', NULL, 'text29', NULL, CAST(57 AS TEXT), 'text95', 'text98')
;INSERT INTO t0 VALUES (COALESCE(NULL, 'text66', NULL, NULL, TRUE), NULL, 'text34', NULL, NULL, 'text86', 'text95')
;UPDATE t0 
SET c0 = t0.c5, c3 = t0.c4, c4 = COALESCE(t0.c4, t0.c4, t0.c2, 
   CASE t0.c2 WHEN t0.c1 <> t0.c4 AND t0.c2 >= 
    CASE WHEN t0.c5 = t0.c6 AND EXISTS (
     SELECT t1.c2 AS c7, t1.c4 AS c8, t1.c5 AS c9, t1.c5 AS c10, t1.c2 AS c11, t1.c3 AS c12, t1.c1 AS c13, t1.c6 AS c14, 'text91' AS c15
      FROM t0 AS t1
      WHERE t1.c5 < t1.c5) OR t0.c4 = t0.c1 THEN t0.c5

         ELSE t0.c5

    END AND t0.c0 < t0.c0 THEN t0.c2

        ELSE t0.c1

   END, t0.c4, t0.c6)
WHERE t0.c2 = t0.c6
;INSERT INTO t0 VALUES ('text37', NULL, 'text41', NULL, NULL, 'text78', CAST(CAST(X'9faff047' AS BOOLEAN) AS BLOB))
;UPDATE t0 
SET c3 = t0.c3, c4 = t0.c4, c5 = t0.c5
WHERE false
;DELETE FROM t0
WHERE t0.c0 <> t0.c5
;UPDATE t0 
SET c0 = t0.c5, c1 = t0.c3, c3 = t0.c3
WHERE total_changes() IS NOT NULL
;UPDATE t0 
SET c1 = NULL, c5 = t0.c2, c6 = 'text73'
WHERE t0.c5 > t0.c2 AND t0.c3 = t0.c4
;UPDATE t0 
SET c0 = t0.c0, c2 = 
  CASE WHEN t0.c3 = t0.c4 AND t0.c4 IS NULL THEN t0.c5

       ELSE t0.c0

  END, c4 = t0.c3
WHERE t0.c5 IS NULL
;