/* -----------Error-----------
mismatch output
old: CREATE TABLE t0 (
    c0 TEXT,
    c1 INTEGER,
    c2 INTEGER,
    c3 NULL,
    c4 TEXT,
    c5 INTEGER,
    c6 NULL,
    c7 BLOB
)|
--
text26|30|30|<nil>|text83|46|<nil>|[223 164 176 129]|
text46|57|48|<nil>|<nil>|81|<nil>|[223 164 176 129]|
text10|76|25|<nil>|text75|69|<nil>|[223 164 176 129]|
text41|42|90|<nil>|integer|43|<nil>|[63 241 41 189]|
text89|27|28|<nil>|text71|88|<nil>|[132 59 111 147]|

new: CREATE TABLE t0 (
    c0 TEXT,
    c1 INTEGER,
    c2 INTEGER,
    c3 NULL,
    c4 TEXT,
    c5 INTEGER,
    c6 NULL,
    c7 BLOB
)|
--
text83|30|30|<nil>|text83|46|<nil>|[223 164 176 129]|
<nil>|57|48|<nil>|<nil>|81|<nil>|[7 34 221 50]|
text75|76|25|<nil>|text75|69|<nil>|[223 164 176 129]|
text41|42|90|<nil>|integer|43|<nil>|[63 241 41 189]|
text89|27|28|<nil>|text71|88|<nil>|[132 59 111 147]|
-----------/Error----------- */
CREATE TABLE t0 (
    c0 TEXT,
    c1 INTEGER,
    c2 INTEGER,
    c3 NULL,
    c4 TEXT,
    c5 INTEGER,
    c6 NULL,
    c7 BLOB
);
INSERT INTO t0 VALUES ('text26', 30, NULLIF(64, 25), NULL, 'text29', 46, NULL, X'ec6f85ee');
INSERT INTO t0 VALUES ('text46', 57, 48, NULL, trim(NULL,NULL), 81, NULL, X'0722dd32');
UPDATE t0 
SET c0 = t0.c0, c2 = t0.c1, c3 = t0.c3, c4 = 'text83'
WHERE t0.c5 <= 
 CASE t0.c1 WHEN t0.c0 < t0.c0 THEN t0.c2
      ELSE t0.c2
 END;
INSERT INTO t0 VALUES ('text10', 76, 25, NULL, 'text75', 69, NULL, X'de3d9a38');
UPDATE t0 
SET c0 = t0.c4, c1 = t0.c1, c3 = t0.c3, c4 = t0.c4, c7 = t0.c7
WHERE EXISTS (
 SELECT t1.c7 AS c8, t3.c2 AS c9, t5.c0 AS c10, t2.c2 AS c11, t1.c4 AS c12, t3.c1 AS c13, t4.c3 AS c14, t5.c1 AS c15, 
   CASE t5.c2 WHEN t4.c3 = NULL OR EXISTS (
    SELECT t6.c3 AS c8, t6.c1 AS c9, t6.c4 AS c10, t6.c3 AS c11, t6.c0 AS c12, t6.c3 AS c13, t6.c4 AS c14, t6.c2 AS c15, t6.c7 AS c16, t6.c4 AS c17, t6.c6 AS c18, t6.c2 AS c19
     FROM t0 AS t6
     WHERE false
     ORDER BY t6.c2 ASC, t6.c2 DESC, t6.c6 DESC
     LIMIT 3922917846414351459 OFFSET 135167772608703711
    ) AND t4.c5 < t2.c1 OR t2.c1 > t5.c5 THEN t5.c2
        WHEN t2.c6 IS NULL AND t2.c1 < t1.c2 THEN t4.c1
        WHEN 
    CASE t1.c7 WHEN false THEN t5.c7
         WHEN t2.c6 IS NOT NULL THEN t1.c7
         WHEN t3.c3 IS NULL THEN t2.c7
         WHEN t4.c7 IS NULL THEN t5.c7
         WHEN true THEN 
     CASE t2.c7 WHEN t1.c0 < t2.c4 THEN t4.c7
          ELSE t2.c7
     END
         ELSE t4.c7
    END <= IFNULL(COALESCE(t3.c6, t3.c6, t1.c3, t5.c3, t5.c7, t3.c7), t5.c7) THEN t2.c1
        WHEN length( TRUE) <= t5.c1 THEN t5.c5
        WHEN like(28,'text39','𝔔') IS NOT NULL THEN t3.c1
        WHEN true THEN t4.c5
        WHEN EXISTS (
    SELECT t7.c5 AS c8, t7.c3 AS c9, t7.c5 AS c10, t7.c0 AS c11, t7.c6 AS c12, t7.c2 AS c13, t7.c5 AS c14, t7.c7 AS c15, t7.c7 AS c16
     FROM t0 AS t7
     WHERE t7.c3 <> t7.c6 OR unlikely( NULL) IS NOT NULL OR t7.c2 IS NOT NULL
     ORDER BY t7.c4 ASC, t7.c5 COLLATE BINARY
     LIMIT 872017867756924221 OFFSET 7252614554836162527
    ) THEN t4.c1
        WHEN false THEN t4.c5
        ELSE IFNULL(t3.c5, likely( NULL))
   END AS c17, t1.c6 AS c18, t2.c6 AS c19, t5.c0 AS c20, t1.c4 AS c21, t5.c7 AS c22, t3.c4 AS c23, t2.c4 AS c24, t1.c3 AS c25, t5.c2 AS c26, 'text52' AS c27, t4.c1 AS c28, t2.c3 AS c29, t2.c5 AS c30
  FROM t0 AS t1
    LEFT JOIN (
    t0 AS t2
      LEFT JOIN t0 AS t3      
       ON (t2.c6 = t3.c3)
     INNER JOIN (
     t0 AS t4
      LEFT JOIN t0 AS t5      
       ON (true)     )
      ON (t3.c4 IS NOT NULL)    )
     ON (t1.c2 < t2.c2)
  WHERE t1.c1 <> t5.c2
  ORDER BY t1.c2, t5.c5
  LIMIT 6041846405643985729 
 );
UPDATE t0 
SET c0 = t0.c4, c1 = t0.c1, c2 = t0.c1, c3 = t0.c3, c4 = t0.c0, c5 = 11, c7 = X'd0862276'
WHERE false AND EXISTS (
 SELECT CAST(t1.c2 AS BLOB) AS c8, t1.c4 AS c9, t1.c6 AS c10, t1.c5 AS c11
  FROM t0 AS t1
  WHERE true
  ORDER BY t1.c4 ASC
  LIMIT 5555255079617838515 OFFSET 267081270072716081
 );
UPDATE t0 
SET c0 = t0.c4, c1 = t0.c5, c4 = t0.c4, c5 = t0.c2, c7 = t0.c7
WHERE 
 CASE t0.c0 WHEN t0.c5 >= t0.c2 THEN t0.c0
      WHEN t0.c4 < t0.c4 THEN t0.c0
      WHEN t0.c5 = t0.c5 THEN t0.c4
      WHEN t0.c5 < IFNULL(t0.c2, t0.c1) THEN 
  CASE WHEN t0.c6 = t0.c6 THEN t0.c0
       ELSE t0.c0
  END
      WHEN true THEN t0.c0
      WHEN t0.c0 = t0.c0 THEN t0.c0
      WHEN 
  CASE WHEN t0.c4 >= t0.c0 THEN t0.c0
       ELSE 
   CASE WHEN t0.c0 IS NULL THEN t0.c4
        ELSE t0.c0
   END
  END >= NULLIF(t0.c4, t0.c0) AND 22 <= 
  CASE t0.c2 WHEN t0.c4 IS NOT NULL THEN t0.c5
       ELSE 
   CASE WHEN t0.c0 IS NULL THEN t0.c1
        ELSE t0.c2
   END
  END AND t0.c4 < 
  CASE t0.c4 WHEN EXISTS (
   SELECT t1.c1 AS c8, t2.c4 AS c9, t2.c3 AS c10
    FROM t0 AS t1
      LEFT JOIN t0 AS t2      
       ON (t1.c3 = t2.c3)
    WHERE t1.c6 IS NULL OR t2.c6 = t2.c6 OR t2.c7 = t2.c7
    ORDER BY t2.c1 COLLATE RTRIM ASC, t1.c6, t1.c5 DESC
    LIMIT 1082273712949975617 OFFSET 308073300496635115
   ) THEN typeof( NULL)
       WHEN t0.c4 >= t0.c4 OR EXISTS (
   SELECT t3.c7 AS c8, t3.c5 AS c9, t3.c7 AS c10, t3.c3 AS c11, t3.c0 AS c12, t3.c0 AS c13, t3.c3 AS c14
    FROM t0 AS t3
    WHERE t3.c5 = t3.c2
    ORDER BY t3.c6 ASC, t3.c3 COLLATE RTRIM, t3.c4 COLLATE BINARY ASC
   ) AND false THEN t0.c0
       WHEN t0.c6 IS NULL THEN t0.c4
       WHEN CAST(t0.c4 AS BLOB) <> t0.c6 THEN t0.c4
       ELSE t0.c0
  END OR X'f1f3f5ac' < X'439b1695' THEN t0.c0
      WHEN t0.c0 IS NOT NULL OR t0.c5 >= t0.c2 THEN t0.c4
      WHEN true AND t0.c7 <> t0.c7 OR EXISTS (
  SELECT DISTINCT subq0.c9 AS c10, subq0.c9 AS c11
   FROM (SELECT t4.c3 AS c8, t4.c6 AS c9
      FROM t0 AS t4
      WHERE true
      ORDER BY t4.c2, t4.c5 COLLATE RTRIM ASC, t4.c6 COLLATE BINARY
      LIMIT 2006009829198414544 OFFSET 7680002371575683260) as subq0
   WHERE subq0.c9 IS NOT NULL
   ORDER BY subq0.c8, subq0.c9 DESC
  ) OR t0.c2 IS NULL OR t0.c7 > t0.c7 AND t0.c4 <> t0.c4 AND COALESCE(t0.c5, t0.c2, COALESCE(t0.c0, t0.c3, t0.c6, t0.c3, t0.c6), t0.c2) IS NULL AND NULL <> 
  CASE t0.c3 WHEN 31 <= 
   CASE WHEN t0.c4 < 'text24' THEN t0.c5
        ELSE t0.c5
   END THEN t0.c3
       WHEN t0.c7 <> t0.c7 THEN t0.c6
       WHEN t0.c1 >= t0.c1 THEN t0.c6
       WHEN t0.c2 <> t0.c2 AND t0.c5 >= 
   CASE WHEN t0.c5 = CAST(replace(FALSE,78,X'71b72342') AS TEXT) THEN t0.c2
        ELSE t0.c1
   END THEN t0.c3
       WHEN 
   CASE WHEN t0.c3 <> t0.c3 THEN t0.c0
        ELSE t0.c4
   END >= t0.c0 OR t0.c6 = t0.c3 THEN t0.c3
       WHEN t0.c3 IS NULL THEN t0.c6
       WHEN rtrim(TRUE,X'07aa8f1d') IS NULL THEN t0.c3
       ELSE t0.c3
  END OR t0.c2 IS NOT NULL THEN substr('text86',NULL,TRUE)
      WHEN false THEN 
  CASE t0.c4 WHEN t0.c2 < t0.c1 OR t0.c1 > t0.c1 AND true THEN t0.c0
       WHEN t0.c2 <= t0.c5 THEN t0.c4
       WHEN t0.c4 <= t0.c0 THEN t0.c0
       WHEN t0.c2 > t0.c5 THEN t0.c4
       WHEN t0.c1 > CAST(t0.c3 AS INTEGER) OR NULL <> t0.c3 OR true THEN 
   CASE t0.c4 WHEN t0.c6 = t0.c6 THEN CAST(t0.c2 AS TEXT)
        WHEN t0.c5 = t0.c5 THEN 
    CASE WHEN t0.c0 = t0.c4 THEN t0.c0
         ELSE t0.c0
    END
        WHEN t0.c2 IS NULL THEN 
    CASE t0.c0 WHEN t0.c2 = t0.c5 THEN t0.c0
         WHEN NULL = t0.c3 THEN t0.c0
         WHEN t0.c1 IS NOT NULL THEN t0.c0
         WHEN t0.c3 = t0.c6 THEN t0.c0
         WHEN EXISTS (
     SELECT t5.c1 AS c8, t5.c7 AS c9, t5.c5 AS c10, t5.c0 AS c11, t5.c2 AS c12, t5.c4 AS c13, t5.c4 AS c14, t5.c7 AS c15, t5.c2 AS c16
      FROM t0 AS t5
      WHERE t5.c7 IS NOT NULL
      ORDER BY t5.c1 DESC
      LIMIT 1822728747148620201 
     ) THEN t0.c4
         WHEN EXISTS (
     SELECT 73 AS c8, t6.c7 AS c9, t6.c7 AS c10, 'text80' AS c11, t6.c6 AS c12, t6.c4 AS c13, t6.c6 AS c14, t6.c0 AS c15, t6.c7 AS c16, t6.c1 AS c17, t6.c1 AS c18, t6.c3 AS c19, t6.c1 AS c20, t6.c5 AS c21, t6.c2 AS c22, t6.c0 AS c23, t6.c5 AS c24, t6.c4 AS c25, t6.c7 AS c26, t6.c3 AS c27, t6.c3 AS c28, NULL AS c29, t6.c7 AS c30, t6.c1 AS c31, t6.c2 AS c32, t6.c6 AS c33, t6.c4 AS c34, t6.c5 AS c35
      FROM t0 AS t6
      WHERE t6.c7 IS NULL
      ORDER BY t6.c3
      LIMIT 7261787149395189796 
     ) THEN t0.c0
         ELSE t0.c4
    END
        WHEN EXISTS (
    SELECT t7.c0 AS c8, t7.c5 AS c9, t7.c0 AS c10, t7.c3 AS c11, t7.c6 AS c12, t7.c3 AS c13
     FROM t0 AS t7
     WHERE t7.c3 = t7.c3
     ORDER BY t7.c5 COLLATE BINARY
     LIMIT 2258973309165080624 
    ) THEN t0.c4
        WHEN t0.c6 <> t0.c3 THEN ltrim(FALSE,93)
        ELSE t0.c4
   END
       ELSE t0.c4
  END
      ELSE t0.c0
 END = t0.c0 AND t0.c0 <> CAST(t0.c3 AS TEXT);
UPDATE t0 
SET c6 = t0.c6, c7 = X'dfa4b081'
WHERE t0.c0 <= t0.c0;