/* -----------Error-----------
mismatch output
old: CREATE TABLE t0 (
    c0 INTEGER,
    c1 INTEGER,
    c2 TEXT
)|
--
4|10|text13|
65533|8|text52|
72|45|<nil>|
26|78|text90|
47|12|text34|
60|53|text90|
28|78|text61|

new: CREATE TABLE t0 (
    c0 INTEGER,
    c1 INTEGER,
    c2 TEXT
)|
--
4|4|text13|
65533|65533|text52|
72|72|<nil>|
26|26|text90|
47|47|text34|
60|60|text90|
28|28|text61|
-----------/Error----------- */
CREATE TABLE t0 (
    c0 INTEGER,
    c1 INTEGER,
    c2 TEXT
);
INSERT INTO t0 VALUES (4, 10, 'text13');
INSERT INTO t0 VALUES (unicode( X'ee4963fe'), 8, 'text52');
UPDATE t0 
SET c0 = t0.c0
WHERE t0.c2 = t0.c2 AND t0.c2 IS NULL AND true;
INSERT INTO t0 VALUES (72, 45, trim( NULL));
INSERT INTO t0 VALUES (26, 78, 'text90');
INSERT INTO t0 VALUES (47, 12, 'text34');
UPDATE t0 
SET c0 = t0.c0
WHERE t0.c1 <= t0.c1 OR t0.c2 > t0.c2;
INSERT INTO t0 VALUES (60, 53, 'text90');
INSERT INTO t0 VALUES (28, 78, 'text61');
UPDATE t0 
SET c0 = t0.c0, c1 = t0.c0, c2 = t0.c2
WHERE EXISTS (
 SELECT t4.c1 AS c3
  FROM t0 AS t1
      LEFT JOIN t0 AS t2      
       ON (false)
     LEFT JOIN t0 AS t3     
      ON (t2.c1 = t3.c0)
    INNER JOIN t0 AS t4    
     ON (t3.c2 >= t1.c2 OR t3.c1 < t4.c1 AND t2.c2 > t3.c2)
  WHERE 
   CASE t4.c1 WHEN true THEN t2.c1
        WHEN t1.c1 <> t3.c1 THEN t4.c0
        WHEN t2.c1 > t2.c0 AND t3.c0 <= t3.c0 THEN 
    CASE t2.c0 WHEN t3.c0 <= t1.c1 THEN t2.c1
         WHEN EXISTS (
     SELECT t5.c0 AS c3
      FROM t0 AS t5
      WHERE t5.c0 <> t5.c0
      ORDER BY t5.c2, t5.c1 DESC, t5.c1 ASC
      LIMIT 8594716264655322671 
     ) THEN t1.c1
         WHEN t2.c1 < t3.c0 THEN t3.c1
         WHEN t2.c2 = t1.c2 THEN 
     CASE t2.c1 WHEN t3.c0 < t4.c0 THEN t4.c1
          WHEN t4.c0 <> t2.c0 THEN t2.c1
          WHEN t2.c2 <> t3.c2 THEN t2.c1
          WHEN t3.c2 >= t2.c2 THEN t4.c1
          WHEN t1.c0 IS NULL THEN t3.c1
          WHEN t1.c1 <= t3.c0 AND quote( X'fcbf91c9') IS NOT NULL THEN t3.c0
          WHEN t4.c1 < t1.c0 THEN t3.c1
          WHEN false THEN t4.c1
          WHEN t1.c2 = t4.c2 OR false AND false AND t1.c2 <> 
      CASE t2.c2 WHEN t4.c0 <= 9 THEN t2.c2
           ELSE t2.c2
      END OR true OR t2.c1 >= t2.c1 OR true OR t2.c1 <> t4.c1 OR t1.c0 IS NOT NULL AND t2.c1 >= t3.c1 AND t4.c2 IS NOT NULL AND t1.c0 = t2.c1 AND t1.c2 = t3.c2 OR t3.c2 = 'text20' OR COALESCE(t2.c2, t2.c0, t3.c0, t4.c0) = t4.c1 OR t3.c0 IS NULL AND t2.c1 <> t1.c0 THEN t1.c1
          WHEN t1.c0 >= t1.c0 THEN t2.c0
          WHEN false THEN t3.c0
          ELSE t3.c0
     END
         WHEN t2.c1 IS NULL THEN 4
         WHEN true THEN t4.c1
         WHEN EXISTS (
     SELECT t6.c1 AS c3, t6.c0 AS c4, t6.c0 AS c5, t6.c2 AS c6, t6.c2 AS c7, t6.c0 AS c8, t6.c1 AS c9, t6.c0 AS c10, t6.c0 AS c11
      FROM t0 AS t6
      WHERE t6.c2 > t6.c2
      ORDER BY t6.c0 ASC, t6.c1, t6.c1 COLLATE RTRIM
      LIMIT 427463193753885056 
     ) THEN t1.c1
         WHEN true AND false OR t4.c2 > t1.c2 AND t4.c1 IS NULL OR 56 = t2.c1 THEN t4.c1
         WHEN true THEN t4.c1
         ELSE t3.c0
    END
        WHEN t2.c0 <= t2.c0 THEN t3.c0
        WHEN true THEN 
    CASE WHEN t3.c2 < t4.c2 OR false AND CAST(t4.c2 AS INTEGER) <= 
     CASE t4.c1 WHEN t2.c0 > t2.c0 THEN t4.c0
          WHEN t1.c0 < t2.c1 THEN t1.c0
          WHEN t4.c0 IS NOT NULL AND t1.c0 >= t2.c0 AND 4 <> t3.c0 OR t4.c1 IS NOT NULL THEN t2.c0
          WHEN t2.c2 IS NULL THEN t2.c1
          WHEN t1.c2 > t1.c2 THEN t2.c1
          WHEN t1.c0 <> t3.c0 OR t3.c2 > t3.c2 THEN t2.c1
          WHEN t1.c1 < t1.c0 OR t1.c1 = t3.c1 OR t2.c2 <= t2.c2 OR t1.c0 <> t4.c1 AND EXISTS (
      SELECT t7.c1 AS c3, t7.c0 AS c4, t7.c0 AS c5, t7.c1 AS c6, t7.c0 AS c7, t7.c0 AS c8, t7.c2 AS c9, t7.c1 AS c10, t7.c0 AS c11, t7.c1 AS c12, t7.c2 AS c13, t7.c2 AS c14, t7.c2 AS c15, t7.c2 AS c16, t7.c1 AS c17, t7.c1 AS c18, t7.c1 AS c19
       FROM t0 AS t7
       WHERE false
       ORDER BY t7.c1
       LIMIT 5195298367128194231 OFFSET 2740711246629193753
      ) THEN t1.c1
          WHEN 3 < t3.c0 THEN t3.c0
          WHEN t3.c1 IS NULL OR EXISTS (
      SELECT t8.c2 AS c3, t8.c0 AS c4
       FROM t0 AS t8
       WHERE EXISTS (
        SELECT t9.c2 AS c3, t9.c1 AS c4, t9.c0 AS c5, t9.c0 AS c6, t9.c1 AS c7, t9.c2 AS c8, t9.c2 AS c9, t9.c1 AS c10, 39 AS c11, t9.c2 AS c12, t9.c2 AS c13, t9.c0 AS c14, 'text3' AS c15
         FROM t0 AS t9
         WHERE t9.c1 IS NOT NULL
         ORDER BY t9.c1, t9.c2 COLLATE BINARY
         LIMIT 6466557703216977596 OFFSET 7739473729671402514
        ) OR t8.c0 >= t8.c0
       ORDER BY t8.c1, t8.c0 COLLATE RTRIM
       LIMIT 2591598390222289518 OFFSET 1647229260386041221
      ) THEN 62
          WHEN t2.c2 = t2.c2 THEN t1.c1
          WHEN true THEN t2.c0
          ELSE t3.c0
     END OR 45 = t1.c0 OR t3.c0 > t1.c1 THEN t4.c1
         ELSE t4.c1
    END
        WHEN EXISTS (
    SELECT t10.c2 AS c3, t10.c2 AS c4
     FROM t0 AS t10
     WHERE EXISTS (
      SELECT t11.c0 AS c3
       FROM t0 AS t11
       WHERE t11.c2 < t11.c2
       ORDER BY t11.c2
      )
     ORDER BY t10.c2
     LIMIT 4256770834490396371 
    ) AND t2.c0 IS NOT NULL OR t4.c2 <= t1.c2 THEN COALESCE(t1.c0, t3.c1, t3.c0, t4.c2, t4.c1, 'text51')
        WHEN t2.c1 IS NOT NULL AND t2.c2 = t1.c2 THEN 
    CASE WHEN t2.c0 < t3.c0 THEN t1.c0
         ELSE t3.c1
    END
        ELSE 75
   END <= t4.c1
  ORDER BY t2.c0 COLLATE NOCASE
 );
