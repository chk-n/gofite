/* -----------Error-----------
mismatch output
old: CREATE TABLE t0 (
    c0 BOOLEAN,
    c1 TEXT,
    c2 BOOLEAN,
    c3 INTEGER,
    c4 INTEGER,
    c5 BOOLEAN
)|
--
true|text38|true|23|9|false|
true|1|true|61|38|true|
false|text79|false|46|9|false|
true|[43 99 234 16]|false|55|21|false|
false|text49|true|66|13|true|

new: CREATE TABLE t0 (
    c0 BOOLEAN,
    c1 TEXT,
    c2 BOOLEAN,
    c3 INTEGER,
    c4 INTEGER,
    c5 BOOLEAN
)|
--
true|text38|true|23|11|false|
true|1|true|61|38|true|
false|text79|false|46|11|false|
true|[43 99 234 16]|false|55|21|false|
false|text49|true|66|13|true|
-----------/Error----------- */
CREATE TABLE t0 (
    c0 BOOLEAN,
    c1 TEXT,
    c2 BOOLEAN,
    c3 INTEGER,
    c4 INTEGER,
    c5 BOOLEAN
);
INSERT INTO t0 VALUES (TRUE, NULLIF(COALESCE(NULL, 'text73', NULL, 'text50', X'b9be296a'), 'text95'), TRUE, 100, 31, FALSE)
;DELETE FROM t0
WHERE 
 CASE t0.c2 WHEN t0.c5 = t0.c0 OR t0.c4 IS NOT NULL THEN t0.c5

      WHEN t0.c3 = t0.c3 THEN t0.c0

      WHEN t0.c4 <= COALESCE(t0.c3, t0.c3, t0.c0) THEN t0.c2

      WHEN t0.c4 = t0.c4 OR CAST(t0.c3 AS BOOLEAN) < t0.c4 THEN t0.c2

      ELSE t0.c0

 END = t0.c5
;INSERT INTO t0 VALUES (TRUE, 'text10', TRUE, 18, NULLIF(87, 35), TRUE)
;DELETE FROM t0
WHERE t0.c2 IS NOT NULL
;UPDATE t0 
SET c0 = t0.c5, c1 = t0.c1, c3 = likely( X'c468af21'), c5 = t0.c0
WHERE t0.c0 = t0.c2
;INSERT INTO t0 VALUES (COALESCE(TRUE, NULLIF(NULL, NULL)), 'text38', TRUE, 23, 41, TRUE)
;DELETE FROM t0
WHERE 
 CASE WHEN t0.c4 > length( 'text1') AND 
  CASE WHEN true THEN t0.c4

       ELSE t0.c4

  END >= t0.c4 THEN t0.c0

      ELSE t0.c5

 END = FALSE
;INSERT INTO t0 VALUES (TRUE, 'text74', TRUE, last_insert_rowid(), 55, TRUE)
;UPDATE t0 
SET c0 = t0.c2, c1 = lower( 'text11'), c2 = t0.c2, c3 = t0.c3, c5 = t0.c0
WHERE CAST(rtrim( X'8dc2e3af') AS TEXT) = t0.c5 OR CAST(t0.c0 AS BOOLEAN) > t0.c1
;UPDATE t0 
SET c1 = t0.c1, c2 = t0.c0, c3 = t0.c3, c5 = t0.c5
WHERE quote( 64) >= hex( 100)
;UPDATE t0 
SET c3 = t0.c3, c5 = t0.c5
WHERE false
;INSERT INTO t0 VALUES (TRUE, upper( TRUE), TRUE, 61, IFNULL(38, 90), TRUE)
;INSERT INTO t0 VALUES (FALSE, 'text79', FALSE, 46, 52, FALSE)
;INSERT INTO t0 VALUES (TRUE, CAST(X'2b63ea10' AS BLOB), FALSE, 55, 21, FALSE)
;UPDATE t0 
SET c1 = t0.c1, c2 = t0.c5, c4 = total_changes(), c5 = FALSE
WHERE t0.c4 > 
 CASE t0.c4 WHEN EXISTS (
  SELECT t1.c3 AS c6, t1.c0 AS c7, t1.c3 AS c8, t1.c5 AS c9, t1.c2 AS c10, t1.c4 AS c11
   FROM t0 AS t1
   WHERE t1.c5 = t1.c5
LIMIT 100) THEN COALESCE(CAST(t0.c1 AS TEXT), t0.c3, 
   CASE WHEN true AND t0.c2 = t0.c5 THEN t0.c4

        ELSE t0.c4

   END)

      WHEN FALSE = t0.c2 THEN t0.c3

      WHEN t0.c5 <> 
  CASE t0.c2 WHEN t0.c5 <> t0.c2 THEN t0.c0

       ELSE CAST(t0.c3 AS BLOB)

  END AND t0.c1 > hex( NULL) OR 
  CASE WHEN t0.c4 <> 
   CASE WHEN t0.c1 <> CAST(t0.c3 AS INTEGER) THEN t0.c4

        ELSE t0.c3

   END AND t0.c2 <> t0.c5 THEN t0.c5

       ELSE t0.c2

  END <> t0.c5 THEN COALESCE(t0.c0, t0.c1, instr(
  69,
  NULL), IFNULL(t0.c5, t0.c1), t0.c3)

      WHEN NULLIF(t0.c5, t0.c5) IS NOT NULL THEN 12

      WHEN t0.c4 IS NOT NULL THEN t0.c3

      WHEN t0.c5 IS NOT NULL OR EXISTS (
  SELECT t3.c5 AS c7, t3.c1 AS c8, COALESCE(t2.c3, t3.c5) AS c9
   FROM t0 AS t2
     LEFT JOIN t0 AS t3
      ON (EXISTS (
       SELECT t4.c0 AS c6
        FROM t0 AS t4
        WHERE t4.c4 IS NOT NULL
LIMIT 121) OR t2.c1 > t3.c1)
   WHERE EXISTS (
    SELECT t5.c3 AS c6, t5.c2 AS c7
     FROM t0 AS t5
     WHERE t5.c4 IS NOT NULL OR t5.c4 < t5.c3 AND t5.c5 <> t5.c2 OR t5.c0 <> t5.c5 OR t5.c2 = t5.c2 OR t5.c5 IS NOT NULL OR false
LIMIT 50)
LIMIT 130) OR 'text27' < nullif(
 5,
 NULL) OR EXISTS (
  SELECT t6.c4 AS c6, t6.c2 AS c7, t6.c1 AS c8, t6.c3 AS c9, t6.c4 AS c10, t6.c4 AS c11, t6.c1 AS c12, t6.c0 AS c13, t6.c5 AS c14, t6.c1 AS c15, t6.c5 AS c16, 2 AS c17, 
    CASE t6.c3 WHEN t6.c5 = t6.c0 THEN t6.c4

         WHEN TRUE = t6.c2 THEN t6.c4

         WHEN t6.c4 > 
     CASE t6.c4 WHEN false THEN t6.c4

          WHEN true THEN t6.c4

          WHEN t6.c1 = t6.c1 THEN t6.c4

          WHEN t6.c0 <> t6.c5 AND t6.c3 IS NOT NULL OR t6.c5 <> FALSE AND t6.c1 < t6.c1 THEN t6.c4

          WHEN t6.c3 > t6.c4 THEN t6.c4

          WHEN t6.c4 >= t6.c3 THEN t6.c3

          WHEN t6.c3 <= t6.c4 THEN NULLIF(t6.c4, t6.c4)

          WHEN t6.c5 <> t6.c2 THEN 72

          WHEN t6.c0 <> t6.c0 THEN t6.c3

          ELSE t6.c3

     END THEN t6.c3

         WHEN t6.c4 = t6.c4 THEN 93

         WHEN t6.c4 <> t6.c4 THEN t6.c3

         WHEN last_insert_rowid() >= t6.c4 THEN t6.c3

         WHEN t6.c2 IS NULL THEN t6.c3

         WHEN t6.c1 IS NOT NULL OR t6.c0 = t6.c2 AND t6.c4 > t6.c3 OR t6.c0 <> t6.c2 THEN t6.c3

         WHEN t6.c1 <= t6.c1 OR COALESCE(t6.c1, t6.c4, t6.c4, t6.c0) >= t6.c3 THEN t6.c3

         ELSE t6.c3

    END AS c18, t6.c5 AS c19, t6.c2 AS c20, 'text3' AS c21, 
    CASE t6.c2 WHEN changes() = t6.c4 THEN FALSE

         WHEN t6.c2 <> t6.c5 THEN t6.c2

         WHEN t6.c4 <= t6.c4 AND false THEN t6.c5

         WHEN 
     CASE t6.c4 WHEN EXISTS (
      SELECT t7.c2 AS c6, t7.c4 AS c7
       FROM t0 AS t7
       WHERE true
LIMIT 33) THEN t6.c3

          WHEN t6.c2 = t6.c5 AND t6.c3 <= t6.c4 THEN t6.c3

          WHEN t6.c3 > t6.c3 THEN t6.c4

          WHEN t6.c5 = t6.c0 THEN t6.c4

          WHEN t6.c0 IS NOT NULL OR t6.c0 <> t6.c5 OR t6.c4 > t6.c4 AND t6.c1 >= t6.c1 THEN t6.c3

          WHEN false THEN t6.c3

          WHEN t6.c3 IS NULL THEN t6.c4

          WHEN t6.c1 >= t6.c1 THEN t6.c4

          WHEN t6.c2 IS NOT NULL OR t6.c3 < t6.c3 AND t6.c0 = t6.c2 THEN t6.c3

          WHEN EXISTS (
      SELECT t8.c0 AS c6, t8.c1 AS c7, FALSE AS c8, t8.c1 AS c9, t8.c2 AS c10
       FROM t0 AS t8
       WHERE t8.c2 <> t8.c0
LIMIT 104) THEN t6.c4

          WHEN t6.c5 <> t6.c2 THEN t6.c3

          WHEN t6.c5 <> t6.c2 THEN t6.c3

          ELSE t6.c4

     END = t6.c4 OR 'text42' <> t6.c1 OR t6.c1 <> t6.c1 THEN t6.c5

         WHEN t6.c0 = t6.c0 THEN t6.c0

         WHEN t6.c0 IS NULL THEN t6.c0

         WHEN EXISTS (
     SELECT t9.c5 AS c6
      FROM t0 AS t9
      WHERE t9.c0 = t9.c2
LIMIT 61) THEN t6.c2

         ELSE t6.c0

    END AS c7
   FROM t0 AS t6
   WHERE 24 = t6.c3
LIMIT 119) AND t0.c5 <> t0.c0 AND t0.c5 <> t0.c2 AND t0.c5 = t0.c0 AND t0.c0 = t0.c0 AND changes() <> t0.c4 THEN t0.c4

      WHEN t0.c5 <> t0.c2 OR t0.c4 < t0.c3 OR 
  CASE t0.c4 WHEN 
   CASE t0.c1 WHEN 
    CASE WHEN t0.c5 <> t0.c5 THEN t0.c0

         ELSE t0.c0

    END = t0.c0 THEN t0.c1

        WHEN EXISTS (
    SELECT t10.c3 AS c6, t10.c5 AS c7, t10.c2 AS c8, t10.c2 AS c9, t10.c5 AS c10, t10.c0 AS c11, IFNULL(t10.c0, t10.c0) AS c12, t10.c1 AS c13, t10.c3 AS c14
     FROM t0 AS t10
     WHERE t10.c0 <> t10.c5) THEN t0.c1

        WHEN t0.c2 IS NOT NULL OR t0.c0 <> t0.c5 AND IFNULL(t0.c1, t0.c1) <> t0.c1 THEN t0.c1

        WHEN t0.c4 >= 
    CASE t0.c3 WHEN t0.c4 = t0.c4 THEN t0.c4

         ELSE t0.c3

    END AND t0.c2 = t0.c5 THEN t0.c1

        WHEN t0.c4 < t0.c4 AND TRUE = t0.c5 OR t0.c4 <= t0.c4 AND t0.c3 <= t0.c4 THEN 
    CASE WHEN true THEN t0.c1

         ELSE t0.c1

    END

        WHEN 
    CASE WHEN 'text69' >= t0.c1 THEN t0.c2

         ELSE t0.c5

    END = t0.c2 THEN t0.c1

        WHEN EXISTS (
    SELECT t11.c3 AS c6, t12.c0 AS c7, t11.c4 AS c8, t12.c3 AS c9
     FROM t0 AS t11
       INNER JOIN t0 AS t12
        ON (t11.c3 <= t11.c4)
     WHERE t12.c1 <> t12.c1
LIMIT 156) THEN t0.c1

        WHEN 
    CASE WHEN quote( 'text50') < t0.c1 OR round(
    'text10',
    NULL) IS NULL THEN t0.c4

         ELSE t0.c1

    END IS NOT NULL THEN t0.c1

        WHEN false AND t0.c3 <> t0.c4 OR t0.c1 = 'text3' THEN 
    CASE t0.c1 WHEN true AND EXISTS (
     SELECT t13.c3 AS c6
      FROM t0 AS t13
      WHERE t13.c1 > t13.c1) OR EXISTS (
     SELECT t14.c5 AS c6, t14.c0 AS c7, t14.c2 AS c8, t14.c1 AS c9, t14.c3 AS c10, t14.c4 AS c11, t14.c1 AS c12, t14.c5 AS c13, t14.c5 AS c14, t14.c4 AS c15, t14.c5 AS c16, t14.c3 AS c17, t14.c1 AS c18, t14.c0 AS c19
      FROM t0 AS t14
      WHERE t14.c4 IS NULL) THEN 
     CASE t0.c1 WHEN t0.c5 <> t0.c0 THEN t0.c1

          WHEN true THEN t0.c1

          WHEN t0.c0 = t0.c0 THEN t0.c1

          WHEN t0.c1 <= t0.c1 THEN t0.c1

          WHEN t0.c5 = t0.c5 THEN t0.c1

          WHEN EXISTS (
      SELECT t15.c2 AS c6, t15.c2 AS c7
       FROM t0 AS t15
       WHERE t15.c5 = t15.c5
LIMIT 53) AND TRUE <> t0.c0 AND t0.c2 <> t0.c2 OR t0.c0 = t0.c0 OR t0.c4 < t0.c3 THEN t0.c1

          ELSE 'text38'

     END

         WHEN t0.c3 >= t0.c3 THEN t0.c1

         WHEN 
     CASE WHEN t0.c3 <= t0.c3 THEN t0.c0

          ELSE t0.c5

     END = t0.c0 THEN t0.c1

         WHEN NULLIF(total_changes(), t0.c3) IS NULL THEN 'text24'

         WHEN true THEN t0.c1

         WHEN t0.c2 <> t0.c0 THEN t0.c1

         WHEN t0.c1 <= t0.c1 THEN t0.c1

         WHEN true THEN t0.c1

         WHEN t0.c2 IS NULL THEN substr(
    X'674953f9',
    X'db5060c2',
    FALSE)

         WHEN t0.c3 >= t0.c3 AND t0.c2 = t0.c5 OR t0.c3 <= t0.c3 THEN 
     CASE t0.c1 WHEN t0.c5 = t0.c2 AND EXISTS (
      SELECT 37 AS c6, t16.c2 AS c7, t16.c5 AS c8, t16.c0 AS c9, t16.c1 AS c10, t16.c2 AS c11, t16.c0 AS c12, t16.c4 AS c13, t16.c2 AS c14, t16.c2 AS c15, t16.c3 AS c16, t16.c1 AS c17, t16.c0 AS c18, t16.c3 AS c19
       FROM t0 AS t16
       WHERE t16.c1 > t16.c1
LIMIT 123) THEN t0.c1

          WHEN t0.c5 IS NULL THEN t0.c1

          ELSE 'text69'

     END

         WHEN CAST('text33' AS BLOB) <> t0.c0 THEN t0.c1

         WHEN t0.c2 IS NULL THEN t0.c1

         ELSE t0.c1

    END

        ELSE 
    CASE t0.c1 WHEN true THEN t0.c1

         WHEN 
     CASE t0.c4 WHEN EXISTS (
      SELECT t17.c1 AS c6, t17.c4 AS c7, t17.c3 AS c8, t17.c4 AS c9, t17.c4 AS c10, t17.c4 AS c11, t17.c3 AS c12, t17.c4 AS c13, t17.c4 AS c14, t17.c1 AS c15, t17.c0 AS c16, t17.c5 AS c17, t17.c2 AS c18, t17.c5 AS c19, t17.c1 AS c20, t17.c0 AS c21
       FROM t0 AS t17
       WHERE t17.c4 <= t17.c3) THEN t0.c0

          WHEN t0.c5 = t0.c5 THEN t0.c0

          WHEN t0.c3 <= t0.c4 THEN t0.c3

          WHEN t0.c0 = t0.c5 THEN t0.c0

          ELSE t0.c3

     END IS NOT NULL THEN t0.c1

         WHEN false THEN t0.c1

         WHEN t0.c2 <> t0.c2 THEN ltrim( 16)

         WHEN t0.c1 < t0.c1 THEN t0.c1

         WHEN t0.c0 IS NOT NULL THEN COALESCE(t0.c1, t0.c5, t0.c2, t0.c1, t0.c1, t0.c1)

         WHEN t0.c0 IS NULL THEN t0.c1

         ELSE t0.c1

    END

   END <> t0.c1 OR t0.c4 >= t0.c3 OR instr(
  'text76',
  X'aa4785be') >= t0.c4 AND false AND t0.c5 = t0.c5 AND true AND unicode( X'05838237') IS NOT NULL THEN t0.c3

       WHEN true OR substr(
  35,
  X'b35368df',
  86) < t0.c1 OR 86 >= 
   CASE WHEN t0.c1 < t0.c1 THEN 
    CASE WHEN t0.c2 <> t0.c2 THEN t0.c3

         ELSE t0.c4

    END

        ELSE t0.c3

   END OR t0.c4 <= instr(
  FALSE,
  7) OR t0.c5 = t0.c5 OR t0.c0 IS NULL THEN t0.c4

       ELSE t0.c3

  END <> t0.c3 THEN t0.c3

      WHEN EXISTS (
  SELECT t18.c5 AS c6, t18.c3 AS c7, t18.c0 AS c8, COALESCE(t18.c3, t18.c1) AS c9, 
    CASE WHEN EXISTS (
     SELECT DISTINCT t19.c2 AS c6, t19.c5 AS c7, t19.c3 AS c8, t19.c0 AS c9, t19.c0 AS c10, t19.c5 AS c11, t19.c3 AS c12
      FROM t0 AS t19
      WHERE t19.c0 IS NOT NULL
LIMIT 167) THEN 
     CASE WHEN t18.c4 >= t18.c4 THEN t18.c4

          ELSE t18.c3

     END

         ELSE t18.c4

    END AS c13, t18.c3 AS c14, COALESCE(t18.c4, t18.c4, NULLIF(t18.c4, t18.c4), t18.c4, TRUE, t18.c5) AS c15
   FROM t0 AS t18
   WHERE EXISTS (
    SELECT t20.c0 AS c6, t20.c4 AS c7
     FROM t0 AS t20
     WHERE false AND t20.c0 IS NOT NULL
LIMIT 87)) THEN t0.c3

      ELSE t0.c3

 END
;DELETE FROM t0
WHERE t0.c2 <> t0.c0 AND IFNULL(TRUE, t0.c1) IS NOT NULL AND NULLIF(t0.c3, t0.c4) > 
 CASE WHEN 
  CASE WHEN t0.c5 = FALSE THEN t0.c2

       ELSE t0.c0

  END = t0.c0 THEN 
  CASE t0.c4 WHEN t0.c3 > t0.c4 AND t0.c2 IS NOT NULL THEN t0.c4

       WHEN t0.c4 >= t0.c4 THEN t0.c3

       WHEN t0.c5 <> t0.c5 THEN t0.c4

       WHEN t0.c3 > t0.c3 THEN 
   CASE WHEN t0.c1 >= t0.c1 AND t0.c3 <> 
    CASE t0.c3 WHEN t0.c3 < t0.c3 THEN t0.c3

         WHEN t0.c1 IS NULL THEN t0.c4

         WHEN CAST(t0.c1 AS BOOLEAN) <= 77 THEN t0.c3

         WHEN TRUE IS NULL THEN 78

         WHEN t0.c3 >= NULLIF(t0.c3, 88) THEN t0.c3

         WHEN false THEN t0.c3

         ELSE t0.c3

    END OR t0.c0 IS NULL THEN t0.c4

        ELSE CAST(t0.c1 AS BLOB)

   END

       WHEN t0.c3 = t0.c3 OR true AND t0.c3 > 
   CASE t0.c4 WHEN t0.c3 = t0.c4 THEN t0.c4

        WHEN t0.c1 = t0.c1 THEN t0.c3

        WHEN t0.c2 = 
    CASE t0.c5 WHEN t0.c1 >= t0.c1 THEN 
     CASE t0.c2 WHEN t0.c1 >= t0.c1 THEN t0.c5

          WHEN t0.c4 > t0.c4 THEN t0.c5

          WHEN true THEN t0.c2

          WHEN t0.c3 <= t0.c3 OR t0.c5 <> t0.c5 THEN t0.c2

          WHEN t0.c1 = t0.c1 THEN t0.c5

          WHEN true THEN t0.c2

          WHEN EXISTS (
      SELECT t1.c1 AS c6
       FROM t0 AS t1
       WHERE false
LIMIT 175) THEN t0.c0

          WHEN t0.c2 = t0.c0 THEN t0.c2

          WHEN t0.c2 <> FALSE OR true AND t0.c4 = t0.c4 OR t0.c2 = t0.c2 OR t0.c2 <> t0.c0 AND t0.c0 = t0.c5 AND t0.c1 > t0.c1 AND t0.c0 = t0.c5 THEN t0.c0

          WHEN t0.c1 <= t0.c1 THEN t0.c5

          WHEN t0.c1 <> t0.c1 THEN t0.c0

          WHEN EXISTS (
      SELECT t3.c0 AS c29, t2.c5 AS c30, t2.c5 AS c31, t2.c0 AS c32, t3.c1 AS c33, t3.c5 AS c34, t3.c4 AS c35, t3.c3 AS c36, t2.c0 AS c37, t3.c5 AS c38, t2.c3 AS c39, t2.c2 AS c40
       FROM t0 AS t2
         LEFT OUTER JOIN t0 AS t3
          ON (false AND EXISTS (
           SELECT t4.c3 AS c6, t4.c2 AS c7, t4.c1 AS c8, t4.c5 AS c9, t4.c3 AS c10, t4.c2 AS c11, t4.c0 AS c12, t4.c2 AS c13, t4.c3 AS c14, t4.c3 AS c15, t4.c2 AS c16, t4.c4 AS c17, t4.c1 AS c18, t4.c0 AS c19, t4.c3 AS c20, t4.c4 AS c21, t4.c2 AS c22, t4.c4 AS c23, t4.c4 AS c24, t4.c2 AS c25, t4.c1 AS c26, t4.c5 AS c27, t4.c5 AS c28
            FROM t0 AS t4
            WHERE t4.c2 = t4.c2
LIMIT 144))
       WHERE t2.c4 IS NOT NULL
LIMIT 109) THEN t0.c2

          ELSE t0.c5

     END

         WHEN t0.c0 = t0.c5 THEN TRUE

         WHEN true THEN TRUE

         WHEN true THEN t0.c2

         WHEN t0.c4 >= t0.c3 THEN t0.c0

         WHEN t0.c2 <> t0.c0 THEN t0.c0

         WHEN t0.c5 <> IFNULL(t0.c0, t0.c0) AND EXISTS (
     SELECT t5.c5 AS c6, t5.c0 AS c7, t5.c3 AS c8
      FROM t0 AS t5
      WHERE t5.c5 IS NOT NULL) THEN t0.c0

         WHEN t0.c4 < 75 AND t0.c4 IS NOT NULL OR 'text80' > t0.c1 OR t0.c5 <> t0.c0 THEN t0.c2

         ELSE t0.c5

    END OR t0.c0 <> COALESCE(t0.c2, t0.c5, t0.c0) AND t0.c1 < t0.c1 THEN t0.c4

        WHEN t0.c3 >= t0.c4 THEN t0.c4

        WHEN EXISTS (
    SELECT t6.c4 AS c6, t6.c5 AS c7, t6.c1 AS c8, NULLIF(t6.c2, t6.c0) AS c9, t6.c0 AS c10, t6.c3 AS c11, t6.c1 AS c12, t6.c0 AS c13, t6.c5 AS c14, t6.c0 AS c15, t6.c2 AS c16, t6.c0 AS c17, t6.c3 AS c18, t6.c3 AS c19, t6.c1 AS c20
     FROM t0 AS t6
     WHERE EXISTS (
      SELECT t7.c3 AS c6, t7.c2 AS c7, t7.c1 AS c8, t7.c2 AS c9, t7.c2 AS c10, t7.c1 AS c11, t7.c0 AS c12, t7.c5 AS c13, t7.c5 AS c14, t7.c5 AS c15, t7.c1 AS c16, t7.c3 AS c17, t7.c1 AS c18, t7.c4 AS c19, t7.c1 AS c20, t7.c4 AS c21
       FROM t0 AS t7
       WHERE 49 >= t7.c3
LIMIT 97) AND t6.c5 IS NULL OR 'text15' < t6.c1
LIMIT 98) AND false THEN 
    CASE WHEN FALSE = t0.c5 THEN 90

         ELSE t0.c4

    END

        WHEN t0.c3 <> t0.c3 THEN t0.c3

        WHEN false THEN t0.c4

        WHEN false THEN t0.c3

        WHEN true THEN t0.c4

        WHEN t0.c4 > t0.c4 THEN t0.c4

        WHEN t0.c0 IS NOT NULL OR t0.c4 IS NULL AND t0.c0 <> 
    CASE WHEN t0.c5 = t0.c2 OR t0.c0 = t0.c2 THEN t0.c5

         ELSE t0.c0

    END THEN t0.c3

        WHEN EXISTS (
    SELECT t8.c4 AS c15, t8.c4 AS c16, t8.c5 AS c17, t10.c2 AS c18, t8.c5 AS c19, t8.c1 AS c20, 
      CASE WHEN t8.c4 >= t10.c3 THEN t8.c3

           ELSE t8.c4

      END AS c21, t10.c1 AS c22, t10.c4 AS c23, t8.c0 AS c24, t9.c0 AS c25, t10.c5 AS c26, t8.c3 AS c27, t9.c3 AS c28, t9.c0 AS c29
     FROM t0 AS t8
       CROSS JOIN (
       t0 AS t9
        INNER JOIN t0 AS t10
         ON (EXISTS (
          SELECT t11.c5 AS c6, t11.c5 AS c7, t11.c0 AS c8, t11.c0 AS c9, t11.c4 AS c10, t11.c4 AS c11, t11.c1 AS c12, t11.c0 AS c13, t11.c5 AS c14
           FROM t0 AS t11
           WHERE t11.c1 = t11.c1
LIMIT 113))
       ) ON (t8.c1 < t10.c1)
     WHERE CAST(t10.c3 AS BOOLEAN) <> t10.c0) THEN t0.c3

        ELSE unlikely( 68)

   END THEN instr(
  'text22',
  33)

       WHEN CAST(t0.c5 AS BOOLEAN) <> t0.c4 THEN 
   CASE WHEN t0.c4 >= t0.c3 THEN t0.c4

        ELSE t0.c4

   END

       WHEN t0.c1 = t0.c1 THEN t0.c4

       WHEN t0.c3 >= t0.c3 THEN t0.c3

       WHEN t0.c3 = t0.c4 THEN t0.c3

       WHEN t0.c4 IS NULL THEN t0.c3

       WHEN EXISTS (
   SELECT t13.c4 AS c6, t12.c1 AS c7, t13.c2 AS c8
    FROM t0 AS t12
      INNER JOIN t0 AS t13
       ON (t13.c2 IS NULL)
    WHERE t12.c0 IS NULL
LIMIT 148) THEN t0.c3

       WHEN t0.c0 IS NOT NULL THEN CAST(t0.c3 AS BOOLEAN)

       ELSE t0.c4

  END

      ELSE t0.c3

 END AND t0.c1 = 'text4'
;UPDATE t0 
SET c0 = t0.c2, c1 = t0.c1, c2 = t0.c0
WHERE t0.c0 <> t0.c0
;UPDATE t0 
SET c0 = t0.c2, c1 = t0.c1, c2 = t0.c5, c3 = t0.c3
WHERE t0.c3 <> t0.c3
;INSERT INTO t0 VALUES (FALSE, 'text49', TRUE, 66, 13, TRUE)
;DELETE FROM t0
WHERE t0.c3 <= COALESCE(t0.c4, t0.c3, t0.c4)
;