/* -----------Error-----------
mismatch output
old: CREATE TABLE t0 (
    c0 TEXT,
    c1 BOOLEAN
)|
--
text96|true|
text96|false|

new: CREATE TABLE t0 (
    c0 TEXT,
    c1 BOOLEAN
)|
--
text96|false|
text96|false|
text96|true|
text96|true|
text96|false|
-----------/Error----------- */
CREATE TABLE t0 (
    c0 TEXT,
    c1 BOOLEAN
);
INSERT INTO t0 VALUES ('text21', TRUE)
;DELETE FROM t0
WHERE t0.c1 = t0.c1
;UPDATE t0 
SET c0 = t0.c0, c1 = t0.c1
WHERE t0.c1 IS NULL OR false
;UPDATE t0 
SET c0 = t0.c0
WHERE t0.c0 > t0.c0
;INSERT INTO t0 VALUES ('text37', FALSE)
;DELETE FROM t0
WHERE t0.c1 = CAST(t0.c0 AS INTEGER)
;UPDATE t0 
SET c1 = t0.c1
WHERE EXISTS (
 SELECT t1.c1 AS c2, t1.c1 AS c3, t1.c0 AS c4, t1.c0 AS c5, t1.c0 AS c6, rtrim(
  24,
  TRUE) AS c7, 
   CASE WHEN t1.c1 <> t1.c1 THEN t1.c1

        ELSE t1.c1

   END AS c8, t1.c1 AS c9
  FROM t0 AS t1
  WHERE t1.c1 IS NULL AND t1.c1 <> t1.c1 OR t1.c0 < t1.c0) OR t0.c0 <> t0.c0
;UPDATE t0 
SET c0 = t0.c0, c1 = FALSE
WHERE EXISTS (
 SELECT 
   CASE WHEN 
    CASE WHEN TRUE <> t1.c1 THEN t1.c0

         ELSE t1.c0

    END IS NULL THEN t1.c1

        ELSE 
    CASE t1.c1 WHEN false THEN t1.c1

         WHEN true OR t1.c0 <= t1.c0 THEN t1.c1

         ELSE t1.c1

    END

   END AS c2, t1.c1 AS c3, t1.c1 AS c4, IFNULL(t1.c1, t1.c1) AS c5, 
   CASE WHEN t1.c1 <> t1.c1 THEN t1.c0

        ELSE t1.c0

   END AS c6, t1.c0 AS c7, t1.c0 AS c8, t1.c0 AS c9, t1.c0 AS c10, t1.c0 AS c11
  FROM t0 AS t1
  WHERE quote( X'85ffdb28') > t1.c0)
;DELETE FROM t0
WHERE 'text2' < t0.c0
;UPDATE t0 
SET c1 = t0.c1
WHERE t0.c1 = IFNULL(t0.c1, IFNULL(t0.c1, t0.c1))
;INSERT INTO t0 VALUES ('text6', FALSE)
;INSERT INTO t0 VALUES ('text51', FALSE)
;UPDATE t0 
SET c0 = t0.c0, c1 = t0.c1
WHERE t0.c0 > t0.c0
;INSERT INTO t0 VALUES (upper( 9), TRUE)
;UPDATE t0 
SET c0 = 
  CASE WHEN t0.c0 IS NULL THEN t0.c0

       ELSE nullif(
  22,
  FALSE)

  END
WHERE t0.c1 = 
 CASE t0.c1 WHEN t0.c0 >= CAST(t0.c0 AS BOOLEAN) THEN t0.c1

      WHEN t0.c0 IS NULL THEN 
  CASE t0.c1 WHEN t0.c0 <> t0.c0 THEN t0.c1

       WHEN true AND false OR t0.c0 < 
   CASE WHEN t0.c1 = t0.c1 THEN t0.c0

        ELSE t0.c0

   END THEN t0.c1

       WHEN EXISTS (
   SELECT t1.c0 AS c2, t1.c1 AS c3, t1.c1 AS c4
    FROM t0 AS t1
    WHERE t1.c0 > t1.c0 OR t1.c1 <> t1.c1) THEN t0.c1

       WHEN t0.c1 IS NOT NULL AND trim( X'defa9b3c') IS NULL THEN t0.c1

       WHEN t0.c1 <> COALESCE(t0.c1, t0.c1) THEN t0.c1

       ELSE t0.c1

  END

      WHEN t0.c0 < t0.c0 THEN t0.c1

      WHEN 
  CASE t0.c1 WHEN t0.c1 <> t0.c1 THEN t0.c1

       WHEN t0.c0 = t0.c0 THEN t0.c1

       WHEN unlikely( NULL) IS NULL THEN t0.c1

       ELSE t0.c1

  END <> t0.c1 THEN t0.c1

      WHEN EXISTS (
  SELECT subq0.c2 AS c2
   FROM (SELECT t2.c0 AS c2, t2.c0 AS c3, t2.c0 AS c4, 'text96' AS c5, t2.c1 AS c6, t2.c0 AS c7, t2.c1 AS c8, t2.c0 AS c9, t2.c0 AS c10, t2.c0 AS c11, t2.c0 AS c12
       FROM t0 AS t2
       WHERE t2.c0 = t2.c0
LIMIT 118) as subq0
      
     LEFT JOIN (
     t0 AS t3
      LEFT JOIN t0 AS t4
       ON (false OR false)
     ) ON (false AND t3.c1 IS NULL)
   WHERE t4.c0 >= 
    CASE WHEN subq0.c10 >= subq0.c9 THEN subq0.c5

         ELSE 'text89'

    END
LIMIT 124) AND 
  CASE WHEN true THEN t0.c1

       ELSE t0.c1

  END IS NOT NULL THEN t0.c1

      WHEN t0.c0 IS NOT NULL AND EXISTS (
  SELECT t7.c0 AS c2, t7.c1 AS c3, t7.c0 AS c4, t8.c1 AS c5, t8.c1 AS c6, t7.c1 AS c7, t6.c1 AS c8, t8.c0 AS c9, t8.c1 AS c10, t9.c1 AS c11, t5.c1 AS c12, t8.c1 AS c13, COALESCE(COALESCE(t6.c1, t9.c1, t7.c0, t5.c0, t7.c0, t9.c0), t8.c1) AS c14, IFNULL(t9.c1, t8.c1) AS c15
   FROM t0 AS t5
     LEFT JOIN (
     t0 AS t6
        INNER JOIN t0 AS t7
         ON (t6.c1 = t7.c1)
       CROSS JOIN t0 AS t8
        ON (t7.c1 <> t6.c1)
      INNER JOIN t0 AS t9
       ON (t9.c1 <> t7.c1 AND false AND t9.c0 IS NOT NULL OR t8.c1 <> t9.c1 OR false OR true OR t7.c1 <> t6.c1)
     ) ON (t9.c1 IS NOT NULL AND t7.c1 <> t7.c1)
   WHERE t9.c1 = t5.c1) AND t0.c0 < t0.c0 THEN t0.c1

      WHEN ltrim(
 X'8fc8e626',
 X'3015ce0e') = t0.c0 THEN CAST(t0.c1 AS INTEGER)

      WHEN t0.c0 >= substr(
 85,
 FALSE,
 NULL) THEN t0.c1

      ELSE t0.c1

 END
;DELETE FROM t0
WHERE substr(
FALSE,
X'bb529480') > quote( FALSE) AND IFNULL(t0.c0, t0.c1) IS NOT NULL AND EXISTS (
 SELECT t1.c1 AS c2
  FROM t0 AS t1
  WHERE t1.c1 = t1.c1) AND replace(
X'a38970f0',
FALSE,
X'cff37795') IS NOT NULL
;UPDATE t0 
SET c0 = t0.c0
WHERE t0.c1 <> t0.c1
;INSERT INTO t0 VALUES ('text53', TRUE)
;INSERT INTO t0 VALUES ('text73', FALSE)
;UPDATE t0 
SET c0 = 'text96'
WHERE 
 CASE t0.c1 WHEN EXISTS (
  SELECT t1.c1 AS c2, t1.c0 AS c3, t1.c0 AS c4
   FROM t0 AS t1
   WHERE t1.c0 >= t1.c0
LIMIT 127) AND t0.c1 <> t0.c1 THEN t0.c1

      WHEN t0.c0 > t0.c0 THEN t0.c1

      WHEN t0.c0 = t0.c0 THEN t0.c1

      WHEN t0.c0 < t0.c0 THEN t0.c1

      WHEN t0.c0 <= t0.c0 THEN t0.c1

      WHEN NULLIF(t0.c1, CAST(t0.c1 AS BOOLEAN)) IS NULL AND t0.c0 <> t0.c0 OR false AND 
  CASE t0.c1 WHEN EXISTS (
   SELECT t2.c1 AS c2, t2.c1 AS c3, t2.c1 AS c4, t2.c1 AS c5, t2.c1 AS c6, t2.c0 AS c7, t2.c0 AS c8, t2.c0 AS c9, t2.c1 AS c10, t2.c0 AS c11, t2.c0 AS c12
    FROM t0 AS t2
    WHERE true
LIMIT 55) THEN t0.c1

       WHEN trim(
  'text47',
  'text25') <= t0.c0 OR substr(
  NULL,
  TRUE,
  NULL) IS NULL THEN 
   CASE t0.c1 WHEN t0.c1 = t0.c1 OR t0.c1 <> t0.c1 OR t0.c0 >= t0.c0 OR t0.c0 = t0.c0 THEN t0.c1

        WHEN t0.c1 = 
    CASE WHEN true THEN t0.c1

         ELSE t0.c1

    END OR false AND t0.c1 = t0.c1 THEN t0.c1

        WHEN false THEN t0.c1

        WHEN t0.c1 <> t0.c1 THEN t0.c1

        WHEN t0.c0 < t0.c0 THEN t0.c1

        WHEN t0.c1 <> t0.c1 THEN t0.c1

        WHEN 'text49' < t0.c0 THEN t0.c1

        ELSE t0.c1

   END

       WHEN t0.c1 IS NOT NULL THEN t0.c1

       WHEN t0.c1 IS NOT NULL THEN t0.c1

       WHEN EXISTS (
   SELECT t3.c1 AS c2, t4.c1 AS c3, t3.c1 AS c4, t3.c1 AS c5
    FROM t0 AS t3
      INNER JOIN t0 AS t4
       ON (t4.c0 >= t3.c0)
    WHERE t4.c0 < t4.c0
LIMIT 82) OR t0.c1 = t0.c1 OR EXISTS (
   SELECT t7.c0 AS c2, CAST(t5.c0 AS INTEGER) AS c3
    FROM t0 AS t5
      LEFT JOIN (
      t0 AS t6
       INNER JOIN t0 AS t7
        ON (t7.c1 IS NULL)
      ) ON (t7.c1 = FALSE AND t7.c0 <= t7.c0)
    WHERE t6.c1 = t5.c1
LIMIT 84) OR false OR 
   CASE WHEN t0.c1 IS NULL THEN t0.c0

        ELSE t0.c0

   END < t0.c0 THEN t0.c1

       WHEN t0.c1 IS NULL OR EXISTS (
   SELECT t8.c0 AS c2, t8.c0 AS c3, t8.c0 AS c4
    FROM t0 AS t8
    WHERE true OR t8.c0 = t8.c0 OR t8.c1 <> t8.c1 AND changes() IS NULL
LIMIT 78) AND t0.c1 <> t0.c1 AND EXISTS (
   SELECT t10.c0 AS c2, t10.c0 AS c3, t9.c1 AS c4, t9.c1 AS c5, t9.c1 AS c6
    FROM t0 AS t9
      CROSS JOIN t0 AS t10
       ON (t9.c0 <= t10.c0)
    WHERE NULLIF(t10.c0, t9.c0) < t9.c0) OR t0.c1 <> t0.c1 THEN t0.c1

       ELSE 
   CASE t0.c1 WHEN EXISTS (
    SELECT t11.c0 AS c2, t11.c0 AS c3, t11.c1 AS c4
     FROM t0 AS t11
     WHERE false) THEN t0.c1

        WHEN coalesce(
   'text79',
   26,
   NULL) >= t0.c0 THEN t0.c1

        WHEN CAST(X'3233eaef' AS BLOB) <= t0.c0 THEN t0.c1

        WHEN t0.c1 <> t0.c1 THEN t0.c1

        WHEN t0.c0 IS NULL OR FALSE <> t0.c1 AND NULL IS NULL AND 'text37' > t0.c0 AND EXISTS (
    SELECT t14.c1 AS c2, t14.c0 AS c3, t13.c0 AS c4, t14.c0 AS c5, t14.c0 AS c6, t13.c0 AS c7, t13.c1 AS c8, t12.c0 AS c9, t14.c0 AS c10, t14.c1 AS c11, t12.c1 AS c12, t13.c0 AS c13, t14.c1 AS c14, t13.c1 AS c15, t14.c1 AS c16, t12.c0 AS c17
     FROM t0 AS t12
       INNER JOIN (
       t0 AS t13
        LEFT JOIN t0 AS t14
         ON (t13.c1 = t14.c1)
       ) ON (t12.c0 < t14.c0)
     WHERE EXISTS (
      SELECT t15.c1 AS c2, TRUE AS c3, t15.c0 AS c4
       FROM t0 AS t15
       WHERE EXISTS (
        SELECT t16.c1 AS c2, t16.c0 AS c3, t16.c1 AS c4, t16.c0 AS c5, t16.c0 AS c6, t16.c0 AS c7, t16.c1 AS c8, t16.c0 AS c9
         FROM t0 AS t16
         WHERE t16.c0 = t16.c0))
LIMIT 86) THEN t0.c1

        WHEN t0.c0 = t0.c0 THEN t0.c1

        WHEN instr(
   TRUE,
   'text58') IS NOT NULL THEN t0.c1

        WHEN EXISTS (
    SELECT t17.c1 AS c2
     FROM t0 AS t17
     WHERE t17.c0 >= t17.c0
LIMIT 183) THEN TRUE

        WHEN EXISTS (
    SELECT t18.c1 AS c2
     FROM t0 AS t18
     WHERE t18.c1 = t18.c1) THEN t0.c1

        WHEN t0.c0 <= t0.c0 THEN t0.c1

        ELSE t0.c1

   END

  END = t0.c1 THEN t0.c1

      WHEN EXISTS (
  SELECT subq0.c16 AS c23, subq0.c19 AS c24
   FROM (SELECT t19.c1 AS c2, t19.c0 AS c3, t19.c1 AS c4, t19.c1 AS c5, t19.c1 AS c6, t19.c1 AS c7, t19.c1 AS c8, t19.c0 AS c9, t19.c1 AS c10, t19.c1 AS c11, t19.c1 AS c12, t19.c0 AS c13, t19.c0 AS c14, t19.c0 AS c15, t19.c1 AS c16, t19.c1 AS c17, t19.c0 AS c18, t19.c1 AS c19, t19.c1 AS c20, t19.c0 AS c21, t19.c0 AS c22
      FROM t0 AS t19
      WHERE t19.c1 IS NULL OR t19.c0 IS NULL AND t19.c0 > t19.c0) as subq0
     
   WHERE EXISTS (
    SELECT t20.c0 AS c2, t20.c0 AS c3, t20.c0 AS c4, t20.c0 AS c5
     FROM t0 AS t20
     WHERE t20.c1 = t20.c1)) THEN t0.c1

      WHEN true THEN t0.c1

      WHEN t0.c0 >= t0.c0 THEN t0.c1

      WHEN t0.c0 > t0.c0 THEN t0.c1

      WHEN EXISTS (
  SELECT t21.c1 AS c2, CAST(trim(
    NULL,
    NULL) AS BLOB) AS c3
   FROM t0 AS t21
   WHERE t21.c0 <= t21.c0
LIMIT 34) THEN 
  CASE WHEN trim(
  20,
  TRUE) <> t0.c0 THEN t0.c1

       ELSE CAST(t0.c0 AS INTEGER)

  END

      ELSE t0.c1

 END = t0.c1
;