/* -----------Error-----------
mismatch output
old: CREATE TABLE t0 (
    c0 NULL,
    c1 BOOLEAN,
    c2 TEXT,
    c3 BLOB,
    c4 BOOLEAN,
    c5 TEXT,
    c6 BOOLEAN,
    c7 BLOB
)|
--
57|false|text46|[244 209 56 131]|false|text52|true|[244 209 56 131]|
<nil>|true|text29|[176 13 91 229]|true|text67|false|[186 148 21 61]|

new: CREATE TABLE t0 (
    c0 NULL,
    c1 BOOLEAN,
    c2 TEXT,
    c3 BLOB,
    c4 BOOLEAN,
    c5 TEXT,
    c6 BOOLEAN,
    c7 BLOB
)|
--
57|false|text52|[244 209 56 131]|false|text52|true|[244 209 56 131]|
<nil>|true|text29|[176 13 91 229]|true|text67|false|[186 148 21 61]|
-----------/Error----------- */
CREATE TABLE t0 (
    c0 NULL,
    c1 BOOLEAN,
    c2 TEXT,
    c3 BLOB,
    c4 BOOLEAN,
    c5 TEXT,
    c6 BOOLEAN,
    c7 BLOB
);
INSERT INTO t0 VALUES (COALESCE(57, NULL, NULL, NULL, FALSE, 38), TRUE, 'text46', X'bdaf0af6', TRUE, 'text52', FALSE, X'f4d13883');
UPDATE t0 
SET c2 = t0.c5, c4 = t0.c6, c5 = t0.c2
WHERE t0.c3 <= t0.c7;
UPDATE t0 
SET c0 = t0.c0, c1 = t0.c6, c2 = NULLIF(t0.c5, t0.c2), c3 = t0.c7, c4 = t0.c6, c5 = t0.c2, c6 = t0.c1
WHERE t0.c7 >= 
 CASE t0.c3 WHEN t0.c6 = t0.c6 THEN t0.c7
      WHEN t0.c3 <> t0.c3 OR t0.c5 < 
  CASE t0.c2 WHEN t0.c1 = t0.c6 THEN t0.c5
       WHEN t0.c3 IS NULL THEN t0.c2
       WHEN false THEN t0.c2
       WHEN t0.c3 < t0.c7 OR 
   CASE t0.c2 WHEN t0.c6 IS NOT NULL OR t0.c5 < t0.c5 THEN t0.c2
        WHEN t0.c6 IS NULL THEN t0.c5
        WHEN t0.c5 <= IFNULL(t0.c2, t0.c5) THEN t0.c5
        WHEN 
    CASE WHEN t0.c3 > t0.c7 THEN t0.c1
         ELSE t0.c1
    END = t0.c6 THEN t0.c5
        WHEN t0.c3 = t0.c7 THEN t0.c2
        WHEN false THEN t0.c5
        WHEN EXISTS (
    SELECT t1.c7 AS c8, t1.c0 AS c9, t2.c7 AS c10
     FROM t0 AS t1
       LEFT JOIN t0 AS t2       
        ON (t1.c7 <> t2.c3 AND t1.c6 = t1.c6)
     WHERE t2.c3 <= t1.c7
     ORDER BY t2.c3 ASC, t1.c6, t2.c1
    ) THEN t0.c2
        WHEN t0.c3 < 
    CASE t0.c7 WHEN 
     CASE WHEN max(28,X'87e66c97',TRUE) IS NOT NULL THEN t0.c1
          ELSE TRUE
     END <> t0.c1 THEN 
     CASE WHEN false THEN t0.c7
          ELSE t0.c7
     END
         WHEN t0.c6 = t0.c6 THEN t0.c7
         WHEN 
     CASE t0.c4 WHEN t0.c3 <= t0.c3 THEN t0.c6
          WHEN false THEN t0.c4
          WHEN t0.c0 IS NULL THEN t0.c6
          WHEN true THEN TRUE
          WHEN true THEN t0.c1
          WHEN true THEN t0.c1
          WHEN false THEN t0.c6
          WHEN EXISTS (
      SELECT t3.c0 AS c8, t3.c6 AS c9, t3.c1 AS c10, t3.c1 AS c11, t3.c3 AS c12, t3.c2 AS c13, t3.c2 AS c14, X'759e4bab' AS c15, t3.c3 AS c16
       FROM t0 AS t3
       WHERE t3.c4 <> t3.c1
       ORDER BY t3.c4 COLLATE NOCASE
       LIMIT 4475478679898790713 
      ) THEN 
      CASE t0.c6 WHEN t0.c1 <> TRUE AND t0.c7 >= t0.c3 AND false AND t0.c5 IS NULL AND t0.c1 = t0.c4 OR t0.c0 <> t0.c0 THEN t0.c4
           WHEN false THEN t0.c4
           WHEN t0.c6 <> TRUE THEN t0.c6
           WHEN t0.c7 >= t0.c3 AND t0.c3 <> X'3db31dfc' AND t0.c7 < t0.c7 THEN t0.c4
           WHEN EXISTS (
       SELECT t4.c2 AS c8, t4.c0 AS c9, t4.c5 AS c10, t4.c2 AS c11, t4.c1 AS c12, t4.c6 AS c13, t4.c7 AS c14, t4.c1 AS c15
        FROM t0 AS t4
        WHERE t4.c4 = t4.c1 OR X'faad097a' <> t4.c3
        ORDER BY t4.c3 ASC, t4.c0
        LIMIT 8775097146299194658 OFFSET 6707092386929740039
       ) THEN t0.c1
           WHEN true THEN t0.c1
           WHEN true THEN t0.c6
           WHEN t0.c7 <= t0.c3 THEN t0.c6
           WHEN false THEN t0.c4
           WHEN t0.c5 > t0.c5 THEN t0.c1
           ELSE t0.c4
      END
          ELSE t0.c6
     END = t0.c4 AND t0.c3 <= t0.c7 THEN t0.c3
         WHEN t0.c3 > t0.c3 THEN t0.c3
         WHEN 
     CASE t0.c4 WHEN t0.c2 = t0.c5 THEN t0.c1
          WHEN t0.c4 IS NOT NULL THEN t0.c6
          WHEN t0.c7 < t0.c3 THEN t0.c1
          WHEN t0.c1 <> t0.c1 THEN t0.c6
          WHEN t0.c4 IS NOT NULL THEN t0.c4
          WHEN t0.c4 <> t0.c6 THEN t0.c1
          WHEN t0.c0 <> CAST(t0.c0 AS INTEGER) THEN t0.c4
          WHEN t0.c3 = t0.c7 THEN t0.c1
          WHEN t0.c4 = t0.c4 THEN t0.c4
          WHEN t0.c5 > t0.c2 OR t0.c0 <> t0.c0 OR t0.c0 = t0.c0 AND false THEN t0.c6
          ELSE t0.c6
     END = FALSE AND EXISTS (
     SELECT t6.c1 AS c8
      FROM t0 AS t5
        INNER JOIN t0 AS t6        
         ON (t6.c5 = t5.c2)
      WHERE t6.c0 <> t6.c0 OR t6.c4 <> FALSE
      ORDER BY t5.c3 ASC, t5.c7 ASC
      LIMIT 5075942734473113641 OFFSET 1138039914837731726
     ) OR t0.c0 <> 
     CASE t0.c0 WHEN false THEN t0.c0
          WHEN EXISTS (
      SELECT t8.c7 AS c8, t7.c4 AS c9, t8.c4 AS c10
       FROM t0 AS t7
         INNER JOIN t0 AS t8         
          ON (t7.c2 = t8.c2)
       WHERE EXISTS (
        SELECT t9.c4 AS c8
         FROM t0 AS t9
         WHERE t9.c5 <> t9.c2
         ORDER BY t9.c2
         LIMIT 71917514848102967 
        ) OR t8.c6 = TRUE
       ORDER BY t7.c4
       LIMIT 3515623852554736233 OFFSET 3759663231756263690
      ) AND t0.c0 IS NOT NULL THEN t0.c0
          WHEN t0.c4 = t0.c1 THEN t0.c0
          WHEN true OR t0.c2 < t0.c2 OR true OR t0.c1 IS NOT NULL OR t0.c0 <> t0.c0 OR true THEN t0.c0
          WHEN t0.c7 IS NOT NULL THEN t0.c0
          WHEN EXISTS (
      SELECT t10.c0 AS c8, t10.c5 AS c9
       FROM t0 AS t10
       WHERE t10.c6 = t10.c1
       ORDER BY t10.c4, t10.c6 ASC
       LIMIT 2713490321110881231 OFFSET 6361388904384902405
      ) OR t0.c0 = t0.c0 THEN t0.c0
          WHEN t0.c2 = t0.c2 THEN t0.c0
          WHEN false THEN t0.c0
          WHEN t0.c1 <> t0.c6 AND t0.c0 = t0.c0 THEN t0.c0
          ELSE t0.c0
     END AND t0.c3 <> t0.c7 AND false THEN t0.c7
         WHEN t0.c5 < t0.c5 THEN t0.c3
         ELSE t0.c3
    END AND t0.c0 = t0.c0 THEN t0.c5
        WHEN COALESCE(t0.c1, t0.c0, t0.c4, t0.c3) = t0.c1 THEN typeof( TRUE)
        WHEN t0.c3 <= t0.c7 THEN t0.c2
        ELSE t0.c2
   END <> t0.c2 THEN t0.c5
       WHEN t0.c6 <> CAST(t0.c2 AS TEXT) OR t0.c2 >= t0.c5 THEN t0.c2
       WHEN t0.c5 < t0.c2 AND true THEN t0.c5
       WHEN EXISTS (
   SELECT t11.c4 AS c8, t11.c0 AS c9, TRUE AS c10, t11.c0 AS c11
    FROM t0 AS t11
    WHERE t11.c0 <> CAST(
      CASE WHEN false THEN t11.c6
           ELSE t11.c2
      END AS TEXT)
    ORDER BY t11.c1
    LIMIT 404108825629998081 
   ) AND t0.c4 = t0.c1 AND t0.c2 = t0.c5 THEN t0.c5
       WHEN t0.c1 = t0.c1 THEN substr(60,'text88')
       WHEN t0.c6 <> t0.c4 AND t0.c4 = t0.c6 THEN t0.c2
       ELSE t0.c2
  END OR CAST(t0.c4 AS BOOLEAN) <> t0.c2 OR t0.c4 = t0.c6 AND t0.c3 < t0.c7 THEN t0.c7
      WHEN 
  CASE WHEN NULLIF(t0.c4, t0.c2) IS NOT NULL THEN t0.c3
       ELSE t0.c3
  END <= t0.c7 THEN t0.c3
      WHEN 
  CASE t0.c1 WHEN t0.c1 <> 
   CASE WHEN t0.c5 <= 
    CASE t0.c2 WHEN t0.c7 > t0.c3 THEN t0.c5
         WHEN t0.c1 = t0.c4 THEN t0.c2
         WHEN EXISTS (
     SELECT t12.c7 AS c8, t12.c3 AS c9, t12.c4 AS c10, t12.c3 AS c11, t12.c5 AS c12, t12.c0 AS c13, 'text29' AS c14, t12.c0 AS c15, t12.c4 AS c16, t12.c4 AS c17, t12.c4 AS c18
      FROM t0 AS t12
      WHERE t12.c6 <> t12.c4
      ORDER BY t12.c2
     ) THEN t0.c2
         WHEN t0.c5 < t0.c2 THEN t0.c5
         WHEN true THEN t0.c2
         WHEN t0.c2 = t0.c2 THEN t0.c5
         WHEN t0.c1 <> t0.c4 THEN 'text28'
         WHEN t0.c3 <= t0.c3 AND t0.c6 = t0.c4 AND t0.c5 IS NULL AND t0.c1 = t0.c4 THEN t0.c5
         WHEN t0.c3 >= t0.c7 THEN t0.c2
         WHEN t0.c3 <> t0.c3 THEN t0.c5
         ELSE t0.c2
    END THEN TRUE
        ELSE t0.c4
   END THEN t0.c7
       WHEN t0.c4 = t0.c4 THEN t0.c2
       WHEN t0.c2 <> t0.c2 THEN 
   CASE WHEN t0.c3 <= t0.c3 THEN t0.c1
        ELSE t0.c0
   END
       WHEN false THEN 25
       WHEN t0.c3 <> t0.c3 THEN t0.c3
       WHEN EXISTS (
   SELECT t13.c0 AS c8, t13.c3 AS c9
    FROM t0 AS t13
    WHERE false
    ORDER BY t13.c2 DESC
   ) THEN X'82d90e3e'
       ELSE t0.c1
  END IS NULL THEN t0.c7
      WHEN t0.c4 = t0.c1 THEN t0.c7
      WHEN t0.c7 = CAST(t0.c5 AS BLOB) THEN t0.c3
      WHEN t0.c0 = t0.c0 OR t0.c5 = t0.c5 AND t0.c3 IS NOT NULL AND EXISTS (
  SELECT t14.c0 AS c8, t14.c6 AS c9, t14.c4 AS c10, t14.c0 AS c11, t14.c1 AS c12, t14.c5 AS c13, t14.c7 AS c14, t14.c1 AS c15, t14.c6 AS c16, FALSE AS c17, t14.c5 AS c18, t14.c6 AS c19, t14.c5 AS c20, t14.c4 AS c21, t14.c4 AS c22, t14.c1 AS c23, t14.c3 AS c24, 
    CASE WHEN t14.c6 <> t14.c4 THEN t14.c5
         ELSE t14.c5
    END AS c25, t14.c3 AS c26, X'465ffc15' AS c27, t14.c4 AS c28, t14.c6 AS c29, t14.c0 AS c30
   FROM t0 AS t14
   WHERE EXISTS (
    SELECT t15.c0 AS c8, t15.c1 AS c9, t15.c0 AS c10, t15.c7 AS c11, t15.c1 AS c12
     FROM t0 AS t15
     WHERE t15.c2 <= t15.c5
     ORDER BY t15.c4, t15.c5 ASC, t15.c7
    )
   ORDER BY t14.c2 DESC, t14.c0
   LIMIT 4491788627612361224 OFFSET 3852705317088799742
  ) THEN t0.c7
      WHEN t0.c5 = t0.c2 OR t0.c4 = t0.c6 THEN t0.c7
      ELSE t0.c3
 END;
UPDATE t0 
SET c0 = IFNULL(t0.c0, t0.c0), c2 = t0.c5, c3 = t0.c3, c5 = t0.c5
WHERE EXISTS (
 SELECT rtrim(X'c57941fd',NULL) AS c8, t5.c5 AS c9, t2.c0 AS c10, t4.c7 AS c11, t1.c0 AS c12, t3.c2 AS c13, t2.c6 AS c14
  FROM t0 AS t1
       INNER JOIN t0 AS t2       
        ON (t1.c3 <= t2.c3)
      LEFT JOIN t0 AS t3      
       ON (t1.c1 = t3.c1)
     LEFT JOIN t0 AS t4     
      ON (t3.c6 IS NULL)
    INNER JOIN t0 AS t5    
     ON (t4.c7 >= t1.c3)
  WHERE 
   CASE WHEN EXISTS (
    SELECT t6.c2 AS c8, t6.c4 AS c9
     FROM t0 AS t6
     WHERE false
     ORDER BY t6.c5, t6.c7, t6.c3 DESC
     LIMIT 1561278046049136008 OFFSET 1991250360518138716
    ) THEN 
    CASE WHEN t5.c1 = t5.c6 OR false THEN t4.c5
         ELSE t1.c7
    END
        ELSE zeroblob( 86)
   END IS NOT NULL AND t1.c3 >= zeroblob( 39) OR t4.c1 IS NOT NULL
  ORDER BY t2.c6 ASC, t2.c1, t4.c4
  LIMIT 8877122153073280907 
 );
INSERT INTO t0 VALUES (NULL, TRUE, 'text29', X'b00d5be5', TRUE, 'text67', FALSE, X'ba94153d');
