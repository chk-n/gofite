/* -----------Error-----------
Old Errored, New Succeeded. Old_Err: [Old] stdout closed or error during query. Query: 'CREATE TABLE t0 (
    c0 BOOLEAN,
    c1 INTEGER,
    c2 INTEGER,
    c3 TEXT,
    c4 BOOLEAN
);
DELETE FROM t0
WHERE t0.c1 <> t0.c2
;INSERT INTO t0 VALUES (FALSE, 35, 95, 'text13', FALSE)
;UPDATE t0 
SET c0 = TRUE, c3 = t0.c3, c4 = t0.c0
WHERE t0.c0 <> t0.c0 AND true
;UPDATE t0 
SET c0 = t0.c0, c2 = t0.c1
WHERE true
;SELECT 
 CASE t1.c0 WHEN 
  CASE WHEN t1.c2 = t1.c1 THEN t1.c2
       ELSE 70
  END <> t1.c1 THEN t1.c4
      WHEN true THEN t1.c4
      WHEN NULLIF(
   CASE t1.c3 WHEN t1.c2 IS NULL THEN rtrim( 'text28')
        WHEN 'text35' >= CAST(t1.c4 AS BOOLEAN) THEN t1.c3
        WHEN t1.c3 >= t1.c3 THEN t1.c3
        WHEN t1.c4 <> t1.c4 THEN t1.c3
        WHEN t1.c3 < t1.c3 THEN NULLIF(t1.c3, t1.c3)
        WHEN t1.c0 = t1.c0 THEN t1.c3
        WHEN true THEN substr('text86',NULL)
        WHEN false THEN substr(54,91,FALSE)
        WHEN t1.c3 = 
    CASE t1.c3 WHEN t1.c3 <= t1.c3 AND t1.c2 <= t1.c2 THEN t1.c3
         WHEN false THEN CAST(t1.c3 AS TEXT)
         WHEN t1.c3 < t1.c3 THEN t1.c3
         ELSE t1.c3
    END THEN t1.c3
        WHEN t1.c2 <= t1.c2 THEN t1.c3
        WHEN t1.c2 <> t1.c1 THEN t1.c3
        ELSE t1.c3
   END, t1.c3) < t1.c3 OR EXISTS (
  SELECT t3.c3 AS c5, t2.c2 AS c6, t3.c3 AS c7, NULLIF(t3.c4, t2.c0) AS c8, t2.c2 AS c9, t3.c4 AS c10, COALESCE(NULLIF(t3.c2, t2.c2), t3.c0, t3.c1, t2.c0) AS c11, TRUE AS c12, t2.c0 AS c13, t3.c4 AS c14, t2.c3 AS c15, t3.c1 AS c16, t3.c1 AS c17, t3.c4 AS c18, t3.c3 AS c19, t2.c1 AS c20, t2.c2 AS c21, t3.c1 AS c22
   FROM t0 AS t2
     INNER JOIN t0 AS t3     
      ON (t3.c3 < t2.c3)
   WHERE unicode( NULL) <> t2.c1
   ORDER BY c22, c14
   LIMIT 6830707660825964952 
  ) THEN t1.c0
      WHEN t1.c4 <> t1.c0 AND t1.c0 <> t1.c4 AND t1.c1 = t1.c2 THEN t1.c0
      WHEN IFNULL(t1.c2, t1.c1) IS NULL THEN CAST('text9' AS INTEGER)
      WHEN EXISTS (
  SELECT subq0.c10 AS c12, likelihood(TRUE,0.067508) AS c13, subq0.c9 AS c14, subq0.c10 AS c15, subq0.c9 AS c16, subq0.c10 AS c17, subq0.c8 AS c18
   FROM (SELECT t4.c4 AS c5, t4.c1 AS c6, t4.c3 AS c7, t4.c2 AS c8, t4.c3 AS c9, t4.c2 AS c10, FALSE AS c11
      FROM t0 AS t4
      WHERE t4.c1 IS NOT NULL
      ORDER BY c6 COLLATE NOCASE, c10
      LIMIT 4713550371635276146 OFFSET 1314266144096204448) as subq0
   WHERE subq0.c5 <> subq0.c11
   ORDER BY c16
   LIMIT 2229707217354536474 
  ) THEN t1.c4
      WHEN t1.c2 = 84 THEN t1.c4
      WHEN t1.c4 <> t1.c4 OR t1.c0 = t1.c4 OR t1.c2 < t1.c1 AND t1.c0 <> 
  CASE WHEN false THEN t1.c0
       ELSE t1.c4
  END OR NULL IS NULL THEN t1.c0
      WHEN t1.c4 <> t1.c0 THEN t1.c0
      WHEN true AND t1.c3 < t1.c3 OR EXISTS (
  SELECT t8.c4 AS c5, TRUE AS c6, 
    CASE WHEN t7.c2 > t8.c2 THEN t8.c4
         ELSE t7.c4
    END AS c7, t7.c4 AS c8
   FROM t0 AS t5
       LEFT JOIN t0 AS t6       
        ON (t6.c4 IS NULL)
      LEFT JOIN t0 AS t7      
       ON (t6.c2 = t7.c1)
     LEFT JOIN t0 AS t8     
      ON (t7.c3 <> t5.c3 AND t8.c4 IS NULL)
   WHERE 
    CASE t7.c0 WHEN t7.c1 > t7.c1 THEN t5.c4
         WHEN true THEN t8.c2
         WHEN t6.c2 < t8.c1 OR t6.c2 IS NOT NULL OR true THEN t5.c2
         WHEN t8.c4 <> t5.c4 THEN TRUE
         WHEN t5.c1 <> t8.c2 THEN t8.c3
         WHEN true AND TRUE = t7.c4 AND t7.c2 <= t6.c1 THEN t6.c1
         ELSE t6.c4
    END IS NULL
   ORDER BY c5, c6 COLLATE RTRIM ASC, c8
   LIMIT 9219066027011304033 
  ) THEN 
  CASE t1.c0 WHEN false THEN 
   CASE WHEN t1.c1 <= t1.c1 THEN t1.c0
        ELSE t1.c0
   END
       WHEN t1.c3 <= 
   CASE WHEN t1.c1 >= t1.c2 THEN t1.c3
        ELSE t1.c3
   END THEN t1.c0
       WHEN t1.c3 <> t1.c3 THEN t1.c0
       WHEN t1.c1 >= t1.c1 OR t1.c2 <= t1.c2 AND t1.c3 > t1.c3 THEN t1.c4
       WHEN true AND t1.c1 <= t1.c1 THEN t1.c4
       WHEN 
   CASE WHEN t1.c2 IS NOT NULL THEN t1.c3
        ELSE t1.c3
   END >= 'text89' THEN t1.c0
       WHEN t1.c4 = t1.c4 THEN 
   CASE WHEN EXISTS (
    SELECT t9.c0 AS c5, t9.c3 AS c6, t9.c2 AS c7, t9.c1 AS c8, t9.c2 AS c9, t9.c0 AS c10, t9.c2 AS c11, t9.c0 AS c12, IFNULL(t9.c0, t9.c0) AS c13, t9.c1 AS c14, t9.c3 AS c15, t9.c0 AS c16, t9.c3 AS c17
     FROM t0 AS t9
     WHERE t9.c1 < t9.c2
     ORDER BY c15 COLLATE BINARY ASC
     LIMIT 7695634953389188142 OFFSET 8557648888422238036
    ) THEN t1.c0
        ELSE t1.c0
   END
       WHEN t1.c3 < 'text85' THEN FALSE
       WHEN t1.c0 <> 
   CASE t1.c4 WHEN true THEN t1.c4
        WHEN t1.c0 <> t1.c4 OR t1.c0 IS NULL THEN t1.c0
        WHEN rtrim( 23) <= t1.c3 THEN t1.c0
        WHEN t1.c1 <> t1.c2 OR false THEN t1.c4
        WHEN t1.c3 >= t1.c3 THEN t1.c0
        WHEN t1.c1 = t1.c1 AND true THEN CAST(t1.c3 AS BOOLEAN)
        WHEN substr(NULL,NULL) IS NULL OR t1.c3 IS NULL AND t1.c2 > t1.c2 AND COALESCE(t1.c0, t1.c0) <> t1.c4 OR t1.c3 >= t1.c3 THEN t1.c4
        WHEN t1.c2 = t1.c1 THEN t1.c4
        ELSE t1.c4
   END THEN t1.c0
       ELSE t1.c0
  END
      ELSE t1.c0
 END AS c18
FROM t0 AS t1
WHERE false
ORDER BY c18, c18, c18, c18 DESC
LIMIT 6898960153556581451 OFFSET 2239028234191805161
;SELECT subq0.c12 AS c7, subq1.c5 AS c8, subq0.c17 AS c9, subq1.c5 AS c10, subq0.c7 AS c11, subq0.c9 AS c12, subq0.c24 AS c13, subq0.c20 AS c14, 'text7' AS c15
FROM (SELECT t1.c4 AS c5, t2.c4 AS c6, t1.c3 AS c7, FALSE AS c8, t2.c2 AS c9, t1.c0 AS c10, t2.c2 AS c11, t1.c3 AS c12, t2.c1 AS c13, t1.c1 AS c14, 'text4' AS c15, t1.c2 AS c16, t2.c4 AS c17, t2.c2 AS c18, t2.c1 AS c19, t2.c2 AS c20, t1.c2 AS c21, t2.c4 AS c22, t1.c3 AS c23, t2.c0 AS c24, t2.c3 AS c25
     FROM t0 AS t1
       INNER JOIN t0 AS t2       
        ON (t1.c1 = t2.c1)
     WHERE CAST(t1.c1 AS INTEGER) < t1.c1
     ORDER BY c14, c15, c7 ASC
     LIMIT 6123338894999119245 ) as subq0
   INNER JOIN (
   (SELECT t3.c2 AS c5, t3.c4 AS c6, t3.c2 AS c7
      FROM t0 AS t3
      WHERE EXISTS (
       SELECT t4.c2 AS c5, t4.c2 AS c6, t4.c0 AS c7, t4.c4 AS c8, t4.c1 AS c9, t4.c1 AS c10, t4.c1 AS c11
        FROM t0 AS t4
        WHERE t4.c2 IS NOT NULL
        ORDER BY c5, c9 DESC, c7 ASC
        LIMIT 9158005747833316079 
       )
      ORDER BY c7 ASC, c7 ASC
      LIMIT 238645887638428405 ) as subq1
    LEFT JOIN t0 AS t5    
     ON (t5.c3 <> t5.c3)   )
    ON (subq0.c21 <= subq0.c21)
  CROSS JOIN t0 AS t6  
   ON (subq1.c5 > subq0.c16 AND subq0.c9 < subq0.c11 AND subq0.c11 < subq0.c11 OR subq0.c6 = subq0.c22 AND EXISTS (
    SELECT t7.c0 AS c5, t7.c0 AS c6, t7.c0 AS c7, t7.c1 AS c8, t7.c0 AS c9, t7.c1 AS c10, 10 AS c11, t7.c4 AS c12, t7.c2 AS c13, t7.c4 AS c14, t7.c1 AS c15, t7.c2 AS c16, t7.c3 AS c17, t7.c2 AS c18, t7.c0 AS c19, t7.c3 AS c20, t7.c0 AS c21, t7.c4 AS c22, t7.c2 AS c23, t7.c1 AS c24
     FROM t0 AS t7
     WHERE t7.c2 >= t7.c2 OR t7.c0 <> t7.c0
     ORDER BY c8 ASC, c17, c24
    ) AND subq0.c11 > NULLIF(subq0.c14, subq0.c21) AND subq0.c10 <> subq0.c17 AND subq0.c17 <> t5.c0 OR EXISTS (
    SELECT t9.c1 AS c5, t8.c1 AS c6
     FROM t0 AS t8
        LEFT JOIN t0 AS t9        
         ON (t9.c3 >= t8.c3)
       LEFT JOIN t0 AS t10       
        ON (t9.c2 = t10.c1)
     WHERE COALESCE(t9.c4, t9.c1, t10.c0) <> FALSE
     ORDER BY c5, c6 ASC, c6 DESC, c6
    ) AND hex( TRUE) IS NOT NULL AND t6.c0 <> subq0.c10 OR true)
WHERE t5.c4 = subq0.c10
ORDER BY c12, c11
;SELECT subq0.c15 AS c6, subq0.c15 AS c7, 
 CASE subq0.c16 WHEN subq0.c9 = subq0.c9 THEN subq0.c11
      WHEN subq0.c13 <> subq0.c13 THEN subq0.c13
      WHEN 
  CASE WHEN subq0.c13 <> subq0.c13 THEN subq0.c15
       ELSE subq0.c15
  END <> 
  CASE subq0.c15 WHEN subq0.c14 <> subq0.c12 OR false OR subq0.c9 >= subq0.c10 OR 
   CASE subq0.c14 WHEN subq0.c11 <> subq0.c14 THEN subq0.c14
        WHEN subq0.c13 = subq0.c12 THEN subq0.c14
        WHEN 
    CASE subq0.c10 WHEN 54 >= subq0.c10 THEN subq0.c10
         WHEN subq0.c15 > subq0.c15 OR subq0.c14 IS NOT NULL AND length( TRUE) IS NOT NULL AND EXISTS (
     SELECT t6.c3 AS c5, t6.c4 AS c6, t6.c4 AS c7, t6.c1 AS c8, t6.c0 AS c9, t6.c3 AS c10, t6.c3 AS c11, t6.c1 AS c12, t6.c0 AS c13, t6.c2 AS c14, t6.c1 AS c15, t6.c0 AS c16, t6.c0 AS c17, t6.c3 AS c18, t6.c1 AS c19, t6.c1 AS c20, t6.c0 AS c21
      FROM t0 AS t6
      WHERE t6.c2 <= t6.c2
      ORDER BY c9, c7 COLLATE BINARY
     ) THEN subq0.c10
         WHEN subq0.c12 <> 
     CASE WHEN subq0.c12 IS NULL THEN subq0.c12
          ELSE subq0.c12
     END THEN subq0.c10
         WHEN false THEN subq0.c9
         WHEN subq0.c15 > subq0.c15 OR EXISTS (
     SELECT t7.c4 AS c5, t7.c3 AS c6
      FROM t0 AS t7
      WHERE true
      ORDER BY c6
      LIMIT 5308888196971766958 OFFSET 8745585043651356546
     ) AND subq0.c9 = subq0.c10 OR subq0.c12 <> TRUE THEN subq0.c9
         ELSE subq0.c9
    END >= subq0.c10 THEN subq0.c14
        WHEN subq0.c12 = subq0.c13 THEN subq0.c12
        WHEN subq0.c14 <> subq0.c12 THEN subq0.c16
        ELSE 
    CASE WHEN TRUE = subq0.c12 THEN subq0.c13
         ELSE subq0.c11
    END
   END <> subq0.c12 OR subq0.c12 = subq0.c14 THEN subq0.c15
       WHEN EXISTS (
   SELECT t8.c3 AS c5, t8.c1 AS c6, t8.c1 AS c7, t8.c4 AS c8, t8.c2 AS c9, t8.c4 AS c10
    FROM t0 AS t8
    WHERE false
    ORDER BY c6
    LIMIT 2710355616417368279 
   ) THEN IFNULL(subq0.c15, subq0.c15)
       ELSE subq0.c15
  END THEN subq0.c13
      ELSE subq0.c14
 END AS c11, rtrim('text35',NULL) AS c12, subq0.c16 AS c13, 
 CASE subq0.c14 WHEN subq0.c9 > subq0.c10 THEN CAST(subq0.c14 AS INTEGER)
      WHEN subq0.c16 IS NOT NULL THEN subq0.c13
      WHEN true THEN subq0.c12
      WHEN subq0.c10 < subq0.c10 THEN subq0.c13
      WHEN subq0.c14 = 
  CASE subq0.c12 WHEN true THEN CAST(subq0.c12 AS BOOLEAN)
       ELSE subq0.c12
  END THEN subq0.c14
      WHEN EXISTS (
  SELECT subq1.c5 AS c9, subq1.c5 AS c10, subq1.c8 AS c11, subq1.c7 AS c12, subq1.c5 AS c13, subq1.c5 AS c14, subq1.c7 AS c15, subq1.c6 AS c16, subq1.c6 AS c17, subq1.c5 AS c18, last_insert_rowid() AS c19, subq1.c5 AS c20, subq1.c7 AS c21, 
    CASE subq1.c6 WHEN subq1.c6 > subq1.c7 OR subq1.c5 > subq1.c8 AND true OR false THEN subq1.c7
         WHEN subq1.c8 IS NOT NULL AND subq1.c7 = subq1.c6 OR subq1.c5 <> subq1.c8 THEN subq1.c6
         ELSE subq1.c6
    END AS c22, subq1.c5 AS c23
   FROM (SELECT 'text27' AS c5, t9.c1 AS c6, t9.c2 AS c7, t10.c3 AS c8
      FROM t0 AS t9
        LEFT JOIN t0 AS t10        
         ON (t10.c2 <= t9.c2)
      WHERE t10.c2 <> t10.c1
      ORDER BY c8
      LIMIT 4165562080146228847 OFFSET 4288446251074990330) as subq1
   WHERE subq1.c6 >= subq1.c6 OR substr('text99',43,TRUE) < subq1.c8 OR false
   ORDER BY c17 ASC, c16
   LIMIT 2388410803286480211 OFFSET 7308407920569088073
  ) THEN 
  CASE WHEN subq0.c12 <> subq0.c12 AND subq0.c14 = 
   CASE subq0.c16 WHEN true THEN subq0.c16
        WHEN subq0.c13 IS NULL THEN subq0.c13
        WHEN subq0.c14 = NULLIF(subq0.c11, subq0.c11) AND EXISTS (
    SELECT t11.c0 AS c5, t11.c1 AS c6, t11.c4 AS c7, t11.c2 AS c8, t11.c1 AS c9, TRUE AS c10, t11.c1 AS c11, t11.c3 AS c12, ltrim(32,TRUE) AS c13, last_insert_rowid() AS c14, t11.c4 AS c15
     FROM t0 AS t11
     WHERE t11.c3 < t11.c3
     ORDER BY c15, c11 ASC, c6
    ) THEN COALESCE(subq0.c11, subq0.c13)
        WHEN subq0.c13 = subq0.c14 THEN subq0.c14
        WHEN subq0.c16 <> CAST(FALSE AS TEXT) THEN subq0.c11
        ELSE subq0.c12
   END OR subq0.c13 = subq0.c13 THEN subq0.c12
       ELSE 
   CASE subq0.c14 WHEN false THEN subq0.c11
        WHEN subq0.c9 = subq0.c10 THEN IFNULL(subq0.c13, NULLIF(subq0.c13, subq0.c13))
        WHEN subq0.c9 IS NOT NULL AND subq0.c14 IS NULL THEN subq0.c16
        WHEN subq0.c9 < subq0.c10 THEN subq0.c13
        WHEN subq0.c13 = subq0.c12 AND false AND subq0.c9 > subq0.c10 OR EXISTS (
    SELECT t13.c2 AS c5, t13.c3 AS c6, t13.c4 AS c7, t12.c0 AS c8
     FROM t0 AS t12
       INNER JOIN t0 AS t13       
        ON (true)
     WHERE t13.c4 <> t13.c0
     ORDER BY c8 DESC, c7 ASC
    ) THEN subq0.c11
        WHEN subq0.c13 <> CAST(subq0.c13 AS INTEGER) THEN TRUE
        WHEN subq0.c14 = subq0.c12 THEN subq0.c13
        WHEN 
    CASE WHEN subq0.c11 <> subq0.c11 OR subq0.c14 = subq0.c13 THEN subq0.c10
         ELSE subq0.c9
    END <> subq0.c9 OR subq0.c12 IS NULL THEN subq0.c13
        ELSE subq0.c11
   END
  END
      WHEN subq0.c13 <> subq0.c16 OR subq0.c16 <> FALSE THEN 
  CASE WHEN 'text99' > subq0.c15 THEN subq0.c11
       ELSE subq0.c12
  END
      ELSE subq0.c11
 END AS c9, subq0.c9 AS c10
FROM (SELECT t2.c1 AS c9, t3.c1 AS c10, t1.c0 AS c11, t3.c0 AS c12, TRUE AS c13, t1.c4 AS c14, t2.c3 AS c15, t3.c4 AS c16
   FROM t0 AS t1
      LEFT JOIN t0 AS t2      
       ON (t1.c3 <= 'text5')
     INNER JOIN t0 AS t3     
      ON (FALSE = t2.c4 AND t2.c1 >= t1.c1 AND EXISTS (
       SELECT t4.c4 AS c5, t4.c0 AS c6, FALSE AS c7, t4.c1 AS c8
        FROM t0 AS t4
        WHERE false
        ORDER BY c6 ASC, c8, c8 ASC
        LIMIT 1829681157368513314 
       ) OR t3.c3 > t2.c3)
   WHERE t2.c0 = t1.c0 AND EXISTS (
    SELECT t5.c3 AS c5
     FROM t0 AS t5
     WHERE t5.c3 <= t5.c3 OR t5.c2 <> t5.c2
     ORDER BY c5, c5, c5 ASC, c5 ASC
     LIMIT 7264804808468538385 OFFSET 1815411706893595905
    )
   ORDER BY c11) as subq0
WHERE subq0.c12 <> subq0.c13
ORDER BY c11
LIMIT 4884119184923572125 
;SELECT TRUE AS c5, t2.c2 AS c6, subq0.c19 AS c7, subq0.c25 AS c8
FROM (SELECT t1.c1 AS c5, t1.c2 AS c6, t1.c4 AS c7, t1.c2 AS c8, t1.c2 AS c9, t1.c3 AS c10, t1.c1 AS c11, t1.c2 AS c12, t1.c0 AS c13, t1.c2 AS c14, t1.c3 AS c15, t1.c3 AS c16, t1.c0 AS c17, t1.c3 AS c18, t1.c3 AS c19, t1.c2 AS c20, t1.c0 AS c21, t1.c4 AS c22, FALSE AS c23, t1.c4 AS c24, t1.c1 AS c25
      FROM t0 AS t1
      WHERE t1.c0 = t1.c4
      ORDER BY c11 ASC, c24, c23 DESC
      LIMIT 39529110816652405 OFFSET 3742785489632993267) as subq0
    INNER JOIN t0 AS t2    
     ON (subq0.c19 = t2.c3)
   LEFT JOIN (
   t0 AS t3
     INNER JOIN t0 AS t4     
      ON (t4.c4 = t4.c4)
    LEFT JOIN (SELECT t5.c2 AS c5, t5.c2 AS c6
      FROM t0 AS t5
      WHERE t5.c0 <> t5.c4
      ORDER BY c5, c5, c6 ASC, c5 ASC
      LIMIT 935778554078776870 ) as subq1    
     ON (subq1.c5 IS NULL)   )
    ON (t4.c0 = t2.c0)
  LEFT JOIN t0 AS t6  
   ON (t4.c1 = 18 OR subq0.c18 > subq0.c16 OR subq0.c6 <> t4.c1)
WHERE subq0.c16 IS NOT NULL AND subq0.c11 <= t6.c1
ORDER BY c5 COLLATE NOCASE ASC
LIMIT 6772898061839459478 
;SELECT t1.c0 AS c5, t1.c0 AS c6, t1.c1 AS c7, t1.c4 AS c8
FROM t0 AS t1
WHERE false OR t1.c3 < 'text1' AND t1.c1 >= 1
ORDER BY c5 DESC, c8 COLLATE NOCASE
LIMIT 5198113381875850706 OFFSET 8671307432567125563
;SELECT t1.c0 AS c5
FROM t0 AS t1
WHERE t1.c2 IS NOT NULL
ORDER BY c5 ASC, c5 COLLATE BINARY, c5, c5
LIMIT 4109348550293527192 
;SELECT t1.c3 AS c7, t2.c2 AS c8, t2.c1 AS c9, t2.c0 AS c10, t2.c0 AS c11, 
 CASE t2.c2 WHEN 
  CASE WHEN t1.c3 IS NOT NULL THEN t1.c1
       ELSE 70
  END < t1.c1 THEN t2.c2
      WHEN true OR t1.c4 IS NULL OR t2.c1 <= t2.c2 THEN t1.c1
      WHEN 
  CASE t2.c1 WHEN EXISTS (
   SELECT DISTINCT t4.c1 AS c5
    FROM t0 AS t4
    WHERE t4.c1 IS NOT NULL
    ORDER BY c5
    LIMIT 6598955035277689797 
   ) OR t2.c1 >= t1.c1 THEN CAST(t2.c3 AS INTEGER)
       ELSE changes()
  END >= like('text70',TRUE) THEN t2.c2
      ELSE t1.c1
 END AS c6, t1.c2 AS c7
FROM t0 AS t1
  CROSS JOIN t0 AS t2  
   ON (t2.c3 >= t2.c3 OR EXISTS (
    SELECT t3.c3 AS c5, t3.c3 AS c6
     FROM t0 AS t3
     WHERE t3.c3 > t3.c3
     ORDER BY c5 DESC, c6
    ))
WHERE t2.c1 < COALESCE(t2.c1, 'text50', t2.c4)
ORDER BY c8 ASC
LIMIT 3220264780352290359 OFFSET 3247307363969759693
;SELECT subq0.c9 AS c14, substr(TRUE,79) AS c15, subq0.c5 AS c16, subq0.c6 AS c17, 
 CASE WHEN EXISTS (
  SELECT subq1.c6 AS c14, subq1.c13 AS c15, quote( 'text47') AS c16, FALSE AS c17, subq1.c9 AS c18, subq1.c11 AS c19, subq1.c10 AS c20, subq1.c13 AS c21, subq1.c5 AS c22, subq1.c8 AS c23, subq1.c10 AS c24, subq1.c13 AS c25
   FROM (SELECT t3.c2 AS c5, t3.c2 AS c6, t2.c3 AS c7, t3.c2 AS c8, t2.c2 AS c9, t3.c3 AS c10, t2.c0 AS c11, t3.c4 AS c12, t3.c4 AS c13
      FROM t0 AS t2
        LEFT JOIN t0 AS t3        
         ON (t3.c0 = t3.c0)
      WHERE t3.c1 >= t3.c1
      ORDER BY c8, c11) as subq1
   WHERE subq1.c8 < subq1.c8 AND EXISTS (
    SELECT t4.c4 AS c5, t4.c2 AS c6, t4.c2 AS c7, t4.c3 AS c8, t4.c4 AS c9, t4.c3 AS c10, t4.c0 AS c11, t4.c0 AS c12, t4.c3 AS c13
     FROM t0 AS t4
     WHERE EXISTS (
      SELECT t5.c0 AS c5, t5.c2 AS c6, t5.c4 AS c7, t5.c1 AS c8, t5.c1 AS c9
       FROM t0 AS t5
       WHERE EXISTS (
        SELECT t6.c4 AS c5, t6.c0 AS c6, t6.c4 AS c7, 40 AS c8, t6.c3 AS c9, t6.c1 AS c10, t6.c0 AS c11, t6.c3 AS c12, t6.c1 AS c13, t6.c4 AS c14, t6.c2 AS c15, t6.c3 AS c16
         FROM t0 AS t6
         WHERE t6.c4 = t6.c0
         ORDER BY c8, c10
         LIMIT 4092858920025581421 
        ) OR t5.c0 IS NOT NULL
       ORDER BY c8, c9 DESC, c8 DESC
      )
     ORDER BY c10, c7, c12
     LIMIT 3862113991783836977 OFFSET 8800125682079319285
    )
   ORDER BY c22
   LIMIT 8903006508530052410 OFFSET 3577448267171616631
  ) THEN 
  CASE subq0.c5 WHEN false THEN 
   CASE WHEN COALESCE(subq0.c13, subq0.c6, subq0.c7, FALSE) = subq0.c8 THEN subq0.c5
        ELSE subq0.c12
   END
       WHEN 
   CASE WHEN subq0.c5 <> subq0.c9 THEN subq0.c5
        ELSE subq0.c11
   END IS NULL AND 
   CASE WHEN subq0.c12 = subq0.c12 THEN subq0.c13
        ELSE subq0.c10
   END <> subq0.c13 THEN subq0.c5
       WHEN subq0.c13 <= subq0.c10 AND subq0.c10 > subq0.c10 THEN subq0.c9
       WHEN subq0.c5 <= subq0.c9 OR subq0.c12 >= 'text64' THEN subq0.c12
       WHEN subq0.c10 = CAST(subq0.c9 AS TEXT) AND false THEN ltrim(NULL,NULL)
       WHEN subq0.c8 = IFNULL(subq0.c6, subq0.c8) AND subq0.c8 = subq0.c11 THEN subq0.c7
       WHEN subq0.c7 > subq0.c9 THEN subq0.c9
       ELSE subq0.c9
  END
      ELSE ifnull('text97',TRUE)
 END AS c17, subq0.c6 AS c18
FROM (SELECT t1.c3 AS c5, t1.c0 AS c6, t1.c3 AS c7, 
    CASE WHEN false THEN 
     CASE WHEN false THEN t1.c4
          ELSE t1.c0
     END
         ELSE t1.c4
    END AS c8, t1.c3 AS c9, t1.c1 AS c10, t1.c4 AS c11, t1.c3 AS c12, t1.c1 AS c13
   FROM t0 AS t1
   WHERE t1.c2 < t1.c1
   ORDER BY c5 COLLATE BINARY ASC, c7 DESC) as subq0
WHERE subq0.c9 <= subq0.c12
ORDER BY c16, c16 DESC, c17
;SELECT t3.c2 AS c5, t1.c1 AS c6, subq0.c6 AS c7, t1.c0 AS c8, t1.c3 AS c9, t3.c3 AS c10
FROM t0 AS t1
  LEFT JOIN (
  (SELECT t2.c4 AS c5, t2.c1 AS c6
     FROM t0 AS t2
     WHERE t2.c3 <> t2.c3
     ORDER BY c5, c5 ASC
     LIMIT 7437664344220015197 OFFSET 5018414951885061210) as subq0
   LEFT JOIN t0 AS t3   
    ON (true)  )
   ON (false OR t1.c2 = t3.c1 AND true)
WHERE t1.c1 > t3.c2
ORDER BY c5
LIMIT 417240619852798031 
;SELECT subq1.c12 AS c13, 
 CASE WHEN subq1.c12 <> subq1.c12 OR false THEN subq1.c12
      ELSE subq1.c12
 END AS c14, CAST('text8' AS INTEGER) AS c15, subq1.c12 AS c16, subq1.c12 AS c17, subq1.c12 AS c18, subq1.c12 AS c19, subq1.c12 AS c20, TRUE AS c21, subq1.c12 AS c22, subq1.c12 AS c23
FROM (SELECT TRUE AS c12
   FROM (SELECT t1.c3 AS c5, TRUE AS c6, t1.c0 AS c7, t1.c4 AS c8, t1.c4 AS c9, t1.c4 AS c10, t1.c4 AS c11
      FROM t0 AS t1
      WHERE 91 < t1.c1
      ORDER BY c5 DESC, c5 DESC) as subq0
   WHERE EXISTS (
    SELECT t2.c1 AS c5, t2.c1 AS c6, t2.c0 AS c7, 11 AS c8, t2.c4 AS c9, t2.c2 AS c10, 42 AS c11, t2.c2 AS c12
     FROM t0 AS t2
     WHERE t2.c4 <> t2.c4
     ORDER BY c12 ASC, c5
     LIMIT 6361224576173857195 OFFSET 2197822195382956094
    )
   ORDER BY c12, c12 ASC, c12, c12 COLLATE BINARY ASC) as subq1
WHERE 
 CASE WHEN 
  CASE WHEN false THEN subq1.c12
       ELSE 'text57'
  END IS NULL THEN COALESCE(subq1.c12, subq1.c12, subq1.c12, subq1.c12, 
   CASE subq1.c12 WHEN subq1.c12 <> subq1.c12 THEN subq1.c12
        WHEN subq1.c12 <> subq1.c12 THEN subq1.c12
        WHEN subq1.c12 <> subq1.c12 AND subq1.c12 <> subq1.c12 OR false THEN subq1.c12
        ELSE subq1.c12
   END)
      ELSE subq1.c12
 END <> subq1.c12
ORDER BY c19 ASC
LIMIT 1852641743518077092 OFFSET 6338496586328126083
;SELECT subq1.c19 AS c17, subq1.c14 AS c18, subq1.c13 AS c19, 
 CASE subq1.c14 WHEN subq1.c17 <> 
  CASE WHEN hex( NULL) < 'text32' THEN subq1.c15
       ELSE subq1.c17
  END THEN subq1.c22
      WHEN subq1.c18 = CAST(subq1.c17 AS INTEGER) THEN IFNULL(CAST(unlikely( NULL) AS TEXT), subq1.c22)
      WHEN subq1.c21 IS NULL THEN subq1.c21
      WHEN subq1.c13 = subq1.c20 THEN subq1.c14
      WHEN 'text93' <= CAST(CAST(subq1.c14 AS BOOLEAN) AS INTEGER) THEN subq1.c22
      WHEN EXISTS (
  SELECT CAST(t4.c4 AS INTEGER) AS c5, CAST(t4.c4 AS TEXT) AS c6, t4.c2 AS c7
   FROM t0 AS t4
   WHERE 
    CASE t4.c4 WHEN t4.c0 IS NULL THEN 
     CASE t4.c0 WHEN t4.c1 <> t4.c2 THEN t4.c4
          WHEN EXISTS (
      SELECT t5.c0 AS c5
       FROM t0 AS t5
       WHERE t5.c3 <> t5.c3
       ORDER BY c5 ASC, c5 COLLATE RTRIM, c5 ASC, c5 COLLATE NOCASE
      ) THEN t4.c4
          WHEN 
      CASE WHEN t4.c2 >= t4.c2 THEN 50
           ELSE t4.c2
      END < t4.c1 THEN t4.c4
          WHEN t4.c2 <> t4.c1 OR t4.c3 IS NULL THEN t4.c4
          WHEN t4.c1 IS NULL OR t4.c2 <= t4.c2 THEN t4.c0
          WHEN t4.c4 <> t4.c4 OR t4.c4 = t4.c0 AND t4.c2 >= t4.c2 AND t4.c0 <> t4.c0 THEN t4.c4
          WHEN t4.c0 = t4.c4 AND t4.c0 <> t4.c4 OR t4.c0 <> t4.c4 THEN t4.c4
          WHEN ltrim(TRUE,FALSE) = t4.c3 THEN t4.c4
          WHEN t4.c3 > t4.c3 THEN t4.c4
          WHEN t4.c0 <> t4.c4 THEN t4.c4
          ELSE t4.c4
     END
         WHEN t4.c2 IS NULL THEN t4.c0
         WHEN t4.c0 <> t4.c4 THEN t4.c0
         WHEN t4.c4 <> TRUE THEN t4.c0
         WHEN t4.c3 <> t4.c3 THEN t4.c0
         WHEN t4.c1 < t4.c2 THEN t4.c0
         WHEN t4.c4 IS NOT NULL THEN t4.c4
         WHEN EXISTS (
     SELECT t6.c2 AS c5
      FROM t0 AS t6
      WHERE EXISTS (
       SELECT t7.c1 AS c5, t7.c4 AS c6
        FROM t0 AS t7
        WHERE t7.c2 <= t7.c1
        ORDER BY c5 DESC, c6 DESC, c5 COLLATE NOCASE DESC, c5
       )
      ORDER BY c5 COLLATE RTRIM
     ) THEN t4.c4
         WHEN EXISTS (
     SELECT t8.c1 AS c5, t8.c4 AS c6, t9.c2 AS c7, t8.c0 AS c8, t8.c4 AS c9, t8.c0 AS c10
      FROM t0 AS t8
        LEFT JOIN t0 AS t9        
         ON (false)
      WHERE t8.c0 <> t8.c4
      ORDER BY c8, c6, c8
      LIMIT 572288035243858270 OFFSET 8559719069470676075
     ) AND 
     CASE WHEN EXISTS (
      SELECT t10.c1 AS c5, t10.c4 AS c6, t10.c0 AS c7, t10.c1 AS c8, t10.c2 AS c9, t10.c0 AS c10, t10.c0 AS c11, t10.c0 AS c12, t10.c1 AS c13, t10.c0 AS c14, t10.c2 AS c15, t10.c2 AS c16, t10.c0 AS c17, t10.c0 AS c18, t10.c3 AS c19, t10.c1 AS c20, t10.c1 AS c21, t10.c4 AS c22, t10.c0 AS c23
       FROM t0 AS t10
       WHERE t10.c2 <> t10.c1
       ORDER BY c8 ASC, c14 DESC
       LIMIT 5781635041165347397 OFFSET 2991258961534332664
      ) THEN t4.c0
          ELSE t4.c4
     END <> t4.c4 THEN t4.c4
         WHEN t4.c4 IS NOT NULL AND t4.c1 IS NULL THEN TRUE
         WHEN t4.c1 IS NULL OR t4.c4 IS NULL OR t4.c0 = t4.c4 OR t4.c3 = t4.c3 THEN t4.c4
         WHEN t4.c2 > t4.c1 THEN t4.c0
         ELSE t4.c0
    END = t4.c0
   ORDER BY c7 ASC
   LIMIT 5627274569401676038 
  ) AND 
  CASE subq1.c21 WHEN subq1.c19 <> rtrim('text58',FALSE) THEN subq1.c21
       WHEN false THEN subq1.c18
       WHEN EXISTS (
   SELECT NULLIF(t11.c1, t11.c2) AS c5, t11.c0 AS c6
    FROM t0 AS t11
    WHERE true
    ORDER BY c6 ASC
    LIMIT 8174904924811769321 OFFSET 6892212152138895432
   ) THEN subq1.c14
       WHEN NULLIF(subq1.c19, subq1.c20) = subq1.c19 OR subq1.c21 = TRUE THEN subq1.c21
       WHEN subq1.c19 = subq1.c13 THEN CAST(subq1.c13 AS TEXT)
       WHEN subq1.c14 <> subq1.c22 THEN subq1.c14
       WHEN 'text9' >= subq1.c20 OR subq1.c18 IS NOT NULL AND subq1.c16 = subq1.c17 AND subq1.c15 < like('text99',NULL,'񂥌') AND subq1.c18 <> subq1.c22 THEN 
   CASE WHEN EXISTS (
    SELECT changes() AS c5
     FROM t0 AS t12
       INNER JOIN t0 AS t13       
        ON (t12.c2 < t12.c1)
     WHERE t12.c4 = t13.c4
     ORDER BY c5, c5, c5 ASC, c5 ASC
    ) THEN NULLIF(subq1.c21, subq1.c18)
        ELSE CAST(subq1.c17 AS TEXT)
   END
       WHEN subq1.c21 <> subq1.c14 THEN subq1.c14
       WHEN subq1.c21 IS NULL THEN subq1.c18
       WHEN 
   CASE WHEN EXISTS (
    SELECT t14.c0 AS c5, t14.c3 AS c6, t14.c0 AS c7
     FROM t0 AS t14
     WHERE t14.c4 IS NOT NULL
     ORDER BY c7
     LIMIT 3194330579294214604 
    ) OR 'text28' <= subq1.c19 THEN subq1.c17
        ELSE subq1.c17
   END < subq1.c15 THEN subq1.c22
       ELSE subq1.c22
  END = IFNULL(subq1.c22, 
   CASE subq1.c14 WHEN subq1.c19 IS NULL THEN subq1.c22
        ELSE subq1.c21
   END) THEN subq1.c21
      WHEN subq1.c21 = subq1.c14 AND subq1.c18 <> subq1.c14 OR 
  CASE WHEN subq1.c13 = subq1.c19 THEN subq1.c21
       ELSE 
   CASE WHEN EXISTS (
    SELECT t15.c0 AS c5, t15.c0 AS c6, t16.c3 AS c7
     FROM t0 AS t15
       INNER JOIN t0 AS t16       
        ON (t15.c0 = t16.c0)
     WHERE 'text94' < t15.c3
     ORDER BY c6 ASC
     LIMIT 6250535463015767392 OFFSET 8648259753631697014
    ) AND subq1.c17 < unicode( 'text95') THEN FALSE
        ELSE subq1.c18
   END
  END = subq1.c22 OR subq1.c13 IS NOT NULL OR subq1.c17 = subq1.c15 THEN subq1.c18
      WHEN 
  CASE subq1.c16 WHEN 'text22' = subq1.c13 THEN 
   CASE WHEN subq1.c19 > subq1.c13 OR true THEN subq1.c18
        ELSE CAST(subq1.c18 AS BOOLEAN)
   END
       WHEN subq1.c13 = subq1.c20 THEN subq1.c20
       WHEN EXISTS (
   SELECT 
     CASE WHEN t17.c1 > t18.c2 THEN t18.c0
          ELSE t19.c4
     END AS c5, t18.c3 AS c6
    FROM t0 AS t17
        LEFT OUTER JOIN t0 AS t18        
         ON (t17.c0 = t17.c0 OR t18.c3 >= t18.c3)
       LEFT JOIN t0 AS t19       
        ON (true)
      INNER JOIN t0 AS t20      
       ON ('text42' < t18.c3)
    WHERE t19.c4 = t19.c0
    ORDER BY c5 ASC, c5
    LIMIT 8607039400541728927 
   ) THEN subq1.c13
       WHEN subq1.c14 <> COALESCE(subq1.c21, IFNULL(subq1.c18, subq1.c22), subq1.c18, subq1.c13, subq1.c21) AND subq1.c19 < subq1.c19 AND 
   CASE subq1.c17 WHEN true AND false AND subq1.c18 = CAST(subq1.c16 AS TEXT) THEN subq1.c19
        ELSE subq1.c14
   END IS NULL THEN subq1.c16
       WHEN likely( 51) IS NULL THEN TRUE
       WHEN EXISTS (
   SELECT t21.c1 AS c5, t21.c4 AS c6, t21.c1 AS c7, t21.c3 AS c8, t21.c2 AS c9, t21.c3 AS c10, t21.c1 AS c11, 
     CASE t21.c4 WHEN t21.c2 > t21.c2 THEN t21.c0
          WHEN EXISTS (
      SELECT t23.c0 AS c5, t22.c2 AS c6
       FROM t0 AS t22
         LEFT JOIN t0 AS t23         
          ON (t23.c0 <> t23.c4 OR t22.c3 > t22.c3 OR t22.c4 IS NULL OR t23.c3 < t23.c3)
       WHERE 'text50' <> 'text38'
       ORDER BY c5 ASC, c6 DESC, c6 ASC, c5
      ) THEN t21.c4
          WHEN t21.c1 <= t21.c2 THEN t21.c4
          WHEN t21.c4 = t21.c0 THEN t21.c0
          WHEN true THEN t21.c4
          WHEN t21.c0 = t21.c4 THEN t21.c0
          WHEN t21.c2 IS NULL THEN t21.c0
          WHEN EXISTS (
      SELECT t24.c0 AS c5, t24.c4 AS c6, t24.c0 AS c7, t24.c2 AS c8, t24.c1 AS c9
       FROM t0 AS t24
       WHERE false
       ORDER BY c5 COLLATE NOCASE
      ) THEN t21.c4
          WHEN t21.c1 <= t21.c2 AND 80 <= t21.c1 THEN t21.c4
          ELSE t21.c4
     END AS c10, t21.c3 AS c11, t21.c0 AS c12, t21.c1 AS c13, t21.c4 AS c14, t21.c2 AS c15, t21.c2 AS c16, t21.c3 AS c17, t21.c4 AS c18
    FROM t0 AS t21
    WHERE CAST(t21.c3 AS BOOLEAN) > t21.c1
    ORDER BY c17, c15 ASC
   ) THEN 
   CASE WHEN subq1.c21 = subq1.c14 THEN subq1.c14
        ELSE subq1.c16
   END
       WHEN subq1.c21 IS NULL AND false OR subq1.c15 >= 41 THEN subq1.c22
       WHEN subq1.c16 <> subq1.c16 THEN subq1.c22
       WHEN subq1.c17 < subq1.c15 THEN subq1.c15
       WHEN subq1.c15 IS NOT NULL THEN nullif('text15','text67')
       WHEN COALESCE(subq1.c18, subq1.c21, upper( 14), subq1.c18, subq1.c22) IS NULL THEN subq1.c18
       WHEN subq1.c15 IS NOT NULL AND subq1.c18 <> subq1.c18 OR true AND subq1.c13 < subq1.c13 OR EXISTS (
   SELECT t25.c2 AS c5, t25.c3 AS c6, 
     CASE t25.c4 WHEN true THEN t25.c4
          WHEN false OR false OR t25.c1 <> t25.c2 AND t25.c3 <> t25.c3 THEN t25.c0
          WHEN t25.c0 <> t25.c4 THEN t25.c0
          WHEN t25.c3 IS NOT NULL THEN t25.c4
          WHEN false THEN t25.c0
          WHEN t25.c0 = t25.c4 THEN t25.c0
          WHEN t25.c4 <> t25.c0 THEN t25.c0
          WHEN TRUE = t25.c0 THEN t25.c4
          WHEN t25.c1 = t25.c2 AND t25.c1 IS NOT NULL THEN t25.c4
          WHEN t25.c1 <= t25.c1 THEN t25.c4
          ELSE t25.c4
     END AS c7, t25.c0 AS c8, t25.c4 AS c9, COALESCE(t25.c4, t25.c4, t25.c3) AS c10, t25.c1 AS c11, t25.c3 AS c12
    FROM t0 AS t25
    WHERE t25.c1 >= t25.c1
    ORDER BY c7 ASC, c7 DESC
    LIMIT 4738958350859894163 OFFSET 616394135108683563
   ) AND EXISTS (
   SELECT t26.c1 AS c5, CAST(t26.c0 AS BOOLEAN) AS c6, t26.c4 AS c7, t26.c3 AS c8, t26.c4 AS c9, t26.c2 AS c10, t26.c0 AS c11, t26.c3 AS c12, t26.c1 AS c13, t26.c3 AS c14, t26.c0 AS c15
    FROM t0 AS t26
    WHERE t26.c4 = t26.c0 OR true
    ORDER BY c12, c9 COLLATE NOCASE
   ) THEN COALESCE(subq1.c15, subq1.c22, subq1.c15)
       ELSE subq1.c17
  END IS NOT NULL OR subq1.c16 IS NULL AND false THEN subq1.c21
      WHEN subq1.c13 IS NULL THEN subq1.c18
      WHEN subq1.c18 <> subq1.c21 THEN subq1.c18
      ELSE subq1.c18
 END AS c16, subq1.c16 AS c17, subq1.c16 AS c18, 71 AS c19, 'text22' AS c20, subq1.c16 AS c21, 'text18' AS c22, subq1.c19 AS c23, subq1.c21 AS c24, subq1.c21 AS c25, subq1.c13 AS c26
FROM (SELECT ifnull(NULL,'text53') AS c13, t1.c4 AS c14, subq0.c6 AS c15, t1.c2 AS c16, subq0.c12 AS c17, subq0.c10 AS c18, t1.c3 AS c19, subq0.c9 AS c20, t1.c4 AS c21, subq0.c7 AS c22
   FROM t0 AS t1
     INNER JOIN (SELECT 37 AS c5, t2.c2 AS c6, FALSE AS c7, t2.c2 AS c8, t2.c3 AS c9, t2.c4 AS c10, t2.c3 AS c11, t2.c2 AS c12
       FROM t0 AS t2
       WHERE t2.c1 >= t2.c2 AND true AND t2.c2 IS NULL AND t2.c4 IS NULL OR t2.c0 = t2.c0
       ORDER BY c12, c11 DESC, c11) as subq0     
      ON (subq0.c7 = t1.c4)
   WHERE false AND EXISTS (
    SELECT t3.c2 AS c5, t3.c1 AS c6, t3.c0 AS c7, t3.c1 AS c8, t3.c2 AS c9, t3.c1 AS c10, t3.c0 AS c11, t3.c3 AS c12, t3.c1 AS c13, t3.c4 AS c14, t3.c4 AS c15, t3.c3 AS c16
     FROM t0 AS t3
     WHERE true
     ORDER BY c7 COLLATE NOCASE ASC, c6
     LIMIT 8676316609408863876 
    )
   ORDER BY c21 DESC, c21, c20 DESC) as subq1
WHERE likelihood('text19',0.690084) IS NOT NULL
ORDER BY c18, c18 DESC, c16 ASC
LIMIT 1497418782841345986 OFFSET 2310248691521807396
;; SELECT * FROM t0; DROP TABLE t0;' || New_Out: 0
0|35|35|text13|0
-----------/Error----------- */
CREATE TABLE t0 (
    c0 BOOLEAN,
    c1 INTEGER,
    c2 INTEGER,
    c3 TEXT,
    c4 BOOLEAN
);
DELETE FROM t0
WHERE t0.c1 <> t0.c2;
INSERT INTO t0 VALUES (FALSE, 35, 95, 'text13', FALSE);
UPDATE t0 
SET c0 = TRUE, c3 = t0.c3, c4 = t0.c0
WHERE t0.c0 <> t0.c0 AND true;
UPDATE t0 
SET c0 = t0.c0, c2 = t0.c1
WHERE true;
SELECT 
 CASE t1.c0 WHEN 
  CASE WHEN t1.c2 = t1.c1 THEN t1.c2
       ELSE 70
  END <> t1.c1 THEN t1.c4
      WHEN true THEN t1.c4
      WHEN NULLIF(
   CASE t1.c3 WHEN t1.c2 IS NULL THEN rtrim( 'text28')
        WHEN 'text35' >= CAST(t1.c4 AS BOOLEAN) THEN t1.c3
        WHEN t1.c3 >= t1.c3 THEN t1.c3
        WHEN t1.c4 <> t1.c4 THEN t1.c3
        WHEN t1.c3 < t1.c3 THEN NULLIF(t1.c3, t1.c3)
        WHEN t1.c0 = t1.c0 THEN t1.c3
        WHEN true THEN substr('text86',NULL)
        WHEN false THEN substr(54,91,FALSE)
        WHEN t1.c3 = 
    CASE t1.c3 WHEN t1.c3 <= t1.c3 AND t1.c2 <= t1.c2 THEN t1.c3
         WHEN false THEN CAST(t1.c3 AS TEXT)
         WHEN t1.c3 < t1.c3 THEN t1.c3
         ELSE t1.c3
    END THEN t1.c3
        WHEN t1.c2 <= t1.c2 THEN t1.c3
        WHEN t1.c2 <> t1.c1 THEN t1.c3
        ELSE t1.c3
   END, t1.c3) < t1.c3 OR EXISTS (
  SELECT t3.c3 AS c5, t2.c2 AS c6, t3.c3 AS c7, NULLIF(t3.c4, t2.c0) AS c8, t2.c2 AS c9, t3.c4 AS c10, COALESCE(NULLIF(t3.c2, t2.c2), t3.c0, t3.c1, t2.c0) AS c11, TRUE AS c12, t2.c0 AS c13, t3.c4 AS c14, t2.c3 AS c15, t3.c1 AS c16, t3.c1 AS c17, t3.c4 AS c18, t3.c3 AS c19, t2.c1 AS c20, t2.c2 AS c21, t3.c1 AS c22
   FROM t0 AS t2
     INNER JOIN t0 AS t3     
      ON (t3.c3 < t2.c3)
   WHERE unicode( NULL) <> t2.c1
   ORDER BY c22, c14
   LIMIT 6830707660825964952 
  ) THEN t1.c0
      WHEN t1.c4 <> t1.c0 AND t1.c0 <> t1.c4 AND t1.c1 = t1.c2 THEN t1.c0
      WHEN IFNULL(t1.c2, t1.c1) IS NULL THEN CAST('text9' AS INTEGER)
      WHEN EXISTS (
  SELECT subq0.c10 AS c12, likelihood(TRUE,0.067508) AS c13, subq0.c9 AS c14, subq0.c10 AS c15, subq0.c9 AS c16, subq0.c10 AS c17, subq0.c8 AS c18
   FROM (SELECT t4.c4 AS c5, t4.c1 AS c6, t4.c3 AS c7, t4.c2 AS c8, t4.c3 AS c9, t4.c2 AS c10, FALSE AS c11
      FROM t0 AS t4
      WHERE t4.c1 IS NOT NULL
      ORDER BY c6 COLLATE NOCASE, c10
      LIMIT 4713550371635276146 OFFSET 1314266144096204448) as subq0
   WHERE subq0.c5 <> subq0.c11
   ORDER BY c16
   LIMIT 2229707217354536474 
  ) THEN t1.c4
      WHEN t1.c2 = 84 THEN t1.c4
      WHEN t1.c4 <> t1.c4 OR t1.c0 = t1.c4 OR t1.c2 < t1.c1 AND t1.c0 <> 
  CASE WHEN false THEN t1.c0
       ELSE t1.c4
  END OR NULL IS NULL THEN t1.c0
      WHEN t1.c4 <> t1.c0 THEN t1.c0
      WHEN true AND t1.c3 < t1.c3 OR EXISTS (
  SELECT t8.c4 AS c5, TRUE AS c6, 
    CASE WHEN t7.c2 > t8.c2 THEN t8.c4
         ELSE t7.c4
    END AS c7, t7.c4 AS c8
   FROM t0 AS t5
       LEFT JOIN t0 AS t6       
        ON (t6.c4 IS NULL)
      LEFT JOIN t0 AS t7      
       ON (t6.c2 = t7.c1)
     LEFT JOIN t0 AS t8     
      ON (t7.c3 <> t5.c3 AND t8.c4 IS NULL)
   WHERE 
    CASE t7.c0 WHEN t7.c1 > t7.c1 THEN t5.c4
         WHEN true THEN t8.c2
         WHEN t6.c2 < t8.c1 OR t6.c2 IS NOT NULL OR true THEN t5.c2
         WHEN t8.c4 <> t5.c4 THEN TRUE
         WHEN t5.c1 <> t8.c2 THEN t8.c3
         WHEN true AND TRUE = t7.c4 AND t7.c2 <= t6.c1 THEN t6.c1
         ELSE t6.c4
    END IS NULL
   ORDER BY c5, c6 COLLATE RTRIM ASC, c8
   LIMIT 9219066027011304033 
  ) THEN 
  CASE t1.c0 WHEN false THEN 
   CASE WHEN t1.c1 <= t1.c1 THEN t1.c0
        ELSE t1.c0
   END
       WHEN t1.c3 <= 
   CASE WHEN t1.c1 >= t1.c2 THEN t1.c3
        ELSE t1.c3
   END THEN t1.c0
       WHEN t1.c3 <> t1.c3 THEN t1.c0
       WHEN t1.c1 >= t1.c1 OR t1.c2 <= t1.c2 AND t1.c3 > t1.c3 THEN t1.c4
       WHEN true AND t1.c1 <= t1.c1 THEN t1.c4
       WHEN 
   CASE WHEN t1.c2 IS NOT NULL THEN t1.c3
        ELSE t1.c3
   END >= 'text89' THEN t1.c0
       WHEN t1.c4 = t1.c4 THEN 
   CASE WHEN EXISTS (
    SELECT t9.c0 AS c5, t9.c3 AS c6, t9.c2 AS c7, t9.c1 AS c8, t9.c2 AS c9, t9.c0 AS c10, t9.c2 AS c11, t9.c0 AS c12, IFNULL(t9.c0, t9.c0) AS c13, t9.c1 AS c14, t9.c3 AS c15, t9.c0 AS c16, t9.c3 AS c17
     FROM t0 AS t9
     WHERE t9.c1 < t9.c2
     ORDER BY c15 COLLATE BINARY ASC
     LIMIT 7695634953389188142 OFFSET 8557648888422238036
    ) THEN t1.c0
        ELSE t1.c0
   END
       WHEN t1.c3 < 'text85' THEN FALSE
       WHEN t1.c0 <> 
   CASE t1.c4 WHEN true THEN t1.c4
        WHEN t1.c0 <> t1.c4 OR t1.c0 IS NULL THEN t1.c0
        WHEN rtrim( 23) <= t1.c3 THEN t1.c0
        WHEN t1.c1 <> t1.c2 OR false THEN t1.c4
        WHEN t1.c3 >= t1.c3 THEN t1.c0
        WHEN t1.c1 = t1.c1 AND true THEN CAST(t1.c3 AS BOOLEAN)
        WHEN substr(NULL,NULL) IS NULL OR t1.c3 IS NULL AND t1.c2 > t1.c2 AND COALESCE(t1.c0, t1.c0) <> t1.c4 OR t1.c3 >= t1.c3 THEN t1.c4
        WHEN t1.c2 = t1.c1 THEN t1.c4
        ELSE t1.c4
   END THEN t1.c0
       ELSE t1.c0
  END
      ELSE t1.c0
 END AS c18
FROM t0 AS t1
WHERE false
ORDER BY c18, c18, c18, c18 DESC
LIMIT 6898960153556581451 OFFSET 2239028234191805161;
SELECT subq0.c12 AS c7, subq1.c5 AS c8, subq0.c17 AS c9, subq1.c5 AS c10, subq0.c7 AS c11, subq0.c9 AS c12, subq0.c24 AS c13, subq0.c20 AS c14, 'text7' AS c15
FROM (SELECT t1.c4 AS c5, t2.c4 AS c6, t1.c3 AS c7, FALSE AS c8, t2.c2 AS c9, t1.c0 AS c10, t2.c2 AS c11, t1.c3 AS c12, t2.c1 AS c13, t1.c1 AS c14, 'text4' AS c15, t1.c2 AS c16, t2.c4 AS c17, t2.c2 AS c18, t2.c1 AS c19, t2.c2 AS c20, t1.c2 AS c21, t2.c4 AS c22, t1.c3 AS c23, t2.c0 AS c24, t2.c3 AS c25
     FROM t0 AS t1
       INNER JOIN t0 AS t2       
        ON (t1.c1 = t2.c1)
     WHERE CAST(t1.c1 AS INTEGER) < t1.c1
     ORDER BY c14, c15, c7 ASC
     LIMIT 6123338894999119245 ) as subq0
   INNER JOIN (
   (SELECT t3.c2 AS c5, t3.c4 AS c6, t3.c2 AS c7
      FROM t0 AS t3
      WHERE EXISTS (
       SELECT t4.c2 AS c5, t4.c2 AS c6, t4.c0 AS c7, t4.c4 AS c8, t4.c1 AS c9, t4.c1 AS c10, t4.c1 AS c11
        FROM t0 AS t4
        WHERE t4.c2 IS NOT NULL
        ORDER BY c5, c9 DESC, c7 ASC
        LIMIT 9158005747833316079 
       )
      ORDER BY c7 ASC, c7 ASC
      LIMIT 238645887638428405 ) as subq1
    LEFT JOIN t0 AS t5    
     ON (t5.c3 <> t5.c3)   )
    ON (subq0.c21 <= subq0.c21)
  CROSS JOIN t0 AS t6  
   ON (subq1.c5 > subq0.c16 AND subq0.c9 < subq0.c11 AND subq0.c11 < subq0.c11 OR subq0.c6 = subq0.c22 AND EXISTS (
    SELECT t7.c0 AS c5, t7.c0 AS c6, t7.c0 AS c7, t7.c1 AS c8, t7.c0 AS c9, t7.c1 AS c10, 10 AS c11, t7.c4 AS c12, t7.c2 AS c13, t7.c4 AS c14, t7.c1 AS c15, t7.c2 AS c16, t7.c3 AS c17, t7.c2 AS c18, t7.c0 AS c19, t7.c3 AS c20, t7.c0 AS c21, t7.c4 AS c22, t7.c2 AS c23, t7.c1 AS c24
     FROM t0 AS t7
     WHERE t7.c2 >= t7.c2 OR t7.c0 <> t7.c0
     ORDER BY c8 ASC, c17, c24
    ) AND subq0.c11 > NULLIF(subq0.c14, subq0.c21) AND subq0.c10 <> subq0.c17 AND subq0.c17 <> t5.c0 OR EXISTS (
    SELECT t9.c1 AS c5, t8.c1 AS c6
     FROM t0 AS t8
        LEFT JOIN t0 AS t9        
         ON (t9.c3 >= t8.c3)
       LEFT JOIN t0 AS t10       
        ON (t9.c2 = t10.c1)
     WHERE COALESCE(t9.c4, t9.c1, t10.c0) <> FALSE
     ORDER BY c5, c6 ASC, c6 DESC, c6
    ) AND hex( TRUE) IS NOT NULL AND t6.c0 <> subq0.c10 OR true)
WHERE t5.c4 = subq0.c10
ORDER BY c12, c11;
SELECT subq0.c15 AS c6, subq0.c15 AS c7, 
 CASE subq0.c16 WHEN subq0.c9 = subq0.c9 THEN subq0.c11
      WHEN subq0.c13 <> subq0.c13 THEN subq0.c13
      WHEN 
  CASE WHEN subq0.c13 <> subq0.c13 THEN subq0.c15
       ELSE subq0.c15
  END <> 
  CASE subq0.c15 WHEN subq0.c14 <> subq0.c12 OR false OR subq0.c9 >= subq0.c10 OR 
   CASE subq0.c14 WHEN subq0.c11 <> subq0.c14 THEN subq0.c14
        WHEN subq0.c13 = subq0.c12 THEN subq0.c14
        WHEN 
    CASE subq0.c10 WHEN 54 >= subq0.c10 THEN subq0.c10
         WHEN subq0.c15 > subq0.c15 OR subq0.c14 IS NOT NULL AND length( TRUE) IS NOT NULL AND EXISTS (
     SELECT t6.c3 AS c5, t6.c4 AS c6, t6.c4 AS c7, t6.c1 AS c8, t6.c0 AS c9, t6.c3 AS c10, t6.c3 AS c11, t6.c1 AS c12, t6.c0 AS c13, t6.c2 AS c14, t6.c1 AS c15, t6.c0 AS c16, t6.c0 AS c17, t6.c3 AS c18, t6.c1 AS c19, t6.c1 AS c20, t6.c0 AS c21
      FROM t0 AS t6
      WHERE t6.c2 <= t6.c2
      ORDER BY c9, c7 COLLATE BINARY
     ) THEN subq0.c10
         WHEN subq0.c12 <> 
     CASE WHEN subq0.c12 IS NULL THEN subq0.c12
          ELSE subq0.c12
     END THEN subq0.c10
         WHEN false THEN subq0.c9
         WHEN subq0.c15 > subq0.c15 OR EXISTS (
     SELECT t7.c4 AS c5, t7.c3 AS c6
      FROM t0 AS t7
      WHERE true
      ORDER BY c6
      LIMIT 5308888196971766958 OFFSET 8745585043651356546
     ) AND subq0.c9 = subq0.c10 OR subq0.c12 <> TRUE THEN subq0.c9
         ELSE subq0.c9
    END >= subq0.c10 THEN subq0.c14
        WHEN subq0.c12 = subq0.c13 THEN subq0.c12
        WHEN subq0.c14 <> subq0.c12 THEN subq0.c16
        ELSE 
    CASE WHEN TRUE = subq0.c12 THEN subq0.c13
         ELSE subq0.c11
    END
   END <> subq0.c12 OR subq0.c12 = subq0.c14 THEN subq0.c15
       WHEN EXISTS (
   SELECT t8.c3 AS c5, t8.c1 AS c6, t8.c1 AS c7, t8.c4 AS c8, t8.c2 AS c9, t8.c4 AS c10
    FROM t0 AS t8
    WHERE false
    ORDER BY c6
    LIMIT 2710355616417368279 
   ) THEN IFNULL(subq0.c15, subq0.c15)
       ELSE subq0.c15
  END THEN subq0.c13
      ELSE subq0.c14
 END AS c11, rtrim('text35',NULL) AS c12, subq0.c16 AS c13, 
 CASE subq0.c14 WHEN subq0.c9 > subq0.c10 THEN CAST(subq0.c14 AS INTEGER)
      WHEN subq0.c16 IS NOT NULL THEN subq0.c13
      WHEN true THEN subq0.c12
      WHEN subq0.c10 < subq0.c10 THEN subq0.c13
      WHEN subq0.c14 = 
  CASE subq0.c12 WHEN true THEN CAST(subq0.c12 AS BOOLEAN)
       ELSE subq0.c12
  END THEN subq0.c14
      WHEN EXISTS (
  SELECT subq1.c5 AS c9, subq1.c5 AS c10, subq1.c8 AS c11, subq1.c7 AS c12, subq1.c5 AS c13, subq1.c5 AS c14, subq1.c7 AS c15, subq1.c6 AS c16, subq1.c6 AS c17, subq1.c5 AS c18, last_insert_rowid() AS c19, subq1.c5 AS c20, subq1.c7 AS c21, 
    CASE subq1.c6 WHEN subq1.c6 > subq1.c7 OR subq1.c5 > subq1.c8 AND true OR false THEN subq1.c7
         WHEN subq1.c8 IS NOT NULL AND subq1.c7 = subq1.c6 OR subq1.c5 <> subq1.c8 THEN subq1.c6
         ELSE subq1.c6
    END AS c22, subq1.c5 AS c23
   FROM (SELECT 'text27' AS c5, t9.c1 AS c6, t9.c2 AS c7, t10.c3 AS c8
      FROM t0 AS t9
        LEFT JOIN t0 AS t10        
         ON (t10.c2 <= t9.c2)
      WHERE t10.c2 <> t10.c1
      ORDER BY c8
      LIMIT 4165562080146228847 OFFSET 4288446251074990330) as subq1
   WHERE subq1.c6 >= subq1.c6 OR substr('text99',43,TRUE) < subq1.c8 OR false
   ORDER BY c17 ASC, c16
   LIMIT 2388410803286480211 OFFSET 7308407920569088073
  ) THEN 
  CASE WHEN subq0.c12 <> subq0.c12 AND subq0.c14 = 
   CASE subq0.c16 WHEN true THEN subq0.c16
        WHEN subq0.c13 IS NULL THEN subq0.c13
        WHEN subq0.c14 = NULLIF(subq0.c11, subq0.c11) AND EXISTS (
    SELECT t11.c0 AS c5, t11.c1 AS c6, t11.c4 AS c7, t11.c2 AS c8, t11.c1 AS c9, TRUE AS c10, t11.c1 AS c11, t11.c3 AS c12, ltrim(32,TRUE) AS c13, last_insert_rowid() AS c14, t11.c4 AS c15
     FROM t0 AS t11
     WHERE t11.c3 < t11.c3
     ORDER BY c15, c11 ASC, c6
    ) THEN COALESCE(subq0.c11, subq0.c13)
        WHEN subq0.c13 = subq0.c14 THEN subq0.c14
        WHEN subq0.c16 <> CAST(FALSE AS TEXT) THEN subq0.c11
        ELSE subq0.c12
   END OR subq0.c13 = subq0.c13 THEN subq0.c12
       ELSE 
   CASE subq0.c14 WHEN false THEN subq0.c11
        WHEN subq0.c9 = subq0.c10 THEN IFNULL(subq0.c13, NULLIF(subq0.c13, subq0.c13))
        WHEN subq0.c9 IS NOT NULL AND subq0.c14 IS NULL THEN subq0.c16
        WHEN subq0.c9 < subq0.c10 THEN subq0.c13
        WHEN subq0.c13 = subq0.c12 AND false AND subq0.c9 > subq0.c10 OR EXISTS (
    SELECT t13.c2 AS c5, t13.c3 AS c6, t13.c4 AS c7, t12.c0 AS c8
     FROM t0 AS t12
       INNER JOIN t0 AS t13       
        ON (true)
     WHERE t13.c4 <> t13.c0
     ORDER BY c8 DESC, c7 ASC
    ) THEN subq0.c11
        WHEN subq0.c13 <> CAST(subq0.c13 AS INTEGER) THEN TRUE
        WHEN subq0.c14 = subq0.c12 THEN subq0.c13
        WHEN 
    CASE WHEN subq0.c11 <> subq0.c11 OR subq0.c14 = subq0.c13 THEN subq0.c10
         ELSE subq0.c9
    END <> subq0.c9 OR subq0.c12 IS NULL THEN subq0.c13
        ELSE subq0.c11
   END
  END
      WHEN subq0.c13 <> subq0.c16 OR subq0.c16 <> FALSE THEN 
  CASE WHEN 'text99' > subq0.c15 THEN subq0.c11
       ELSE subq0.c12
  END
      ELSE subq0.c11
 END AS c9, subq0.c9 AS c10
FROM (SELECT t2.c1 AS c9, t3.c1 AS c10, t1.c0 AS c11, t3.c0 AS c12, TRUE AS c13, t1.c4 AS c14, t2.c3 AS c15, t3.c4 AS c16
   FROM t0 AS t1
      LEFT JOIN t0 AS t2      
       ON (t1.c3 <= 'text5')
     INNER JOIN t0 AS t3     
      ON (FALSE = t2.c4 AND t2.c1 >= t1.c1 AND EXISTS (
       SELECT t4.c4 AS c5, t4.c0 AS c6, FALSE AS c7, t4.c1 AS c8
        FROM t0 AS t4
        WHERE false
        ORDER BY c6 ASC, c8, c8 ASC
        LIMIT 1829681157368513314 
       ) OR t3.c3 > t2.c3)
   WHERE t2.c0 = t1.c0 AND EXISTS (
    SELECT t5.c3 AS c5
     FROM t0 AS t5
     WHERE t5.c3 <= t5.c3 OR t5.c2 <> t5.c2
     ORDER BY c5, c5, c5 ASC, c5 ASC
     LIMIT 7264804808468538385 OFFSET 1815411706893595905
    )
   ORDER BY c11) as subq0
WHERE subq0.c12 <> subq0.c13
ORDER BY c11
LIMIT 4884119184923572125 ;
SELECT TRUE AS c5, t2.c2 AS c6, subq0.c19 AS c7, subq0.c25 AS c8
FROM (SELECT t1.c1 AS c5, t1.c2 AS c6, t1.c4 AS c7, t1.c2 AS c8, t1.c2 AS c9, t1.c3 AS c10, t1.c1 AS c11, t1.c2 AS c12, t1.c0 AS c13, t1.c2 AS c14, t1.c3 AS c15, t1.c3 AS c16, t1.c0 AS c17, t1.c3 AS c18, t1.c3 AS c19, t1.c2 AS c20, t1.c0 AS c21, t1.c4 AS c22, FALSE AS c23, t1.c4 AS c24, t1.c1 AS c25
      FROM t0 AS t1
      WHERE t1.c0 = t1.c4
      ORDER BY c11 ASC, c24, c23 DESC
      LIMIT 39529110816652405 OFFSET 3742785489632993267) as subq0
    INNER JOIN t0 AS t2    
     ON (subq0.c19 = t2.c3)
   LEFT JOIN (
   t0 AS t3
     INNER JOIN t0 AS t4     
      ON (t4.c4 = t4.c4)
    LEFT JOIN (SELECT t5.c2 AS c5, t5.c2 AS c6
      FROM t0 AS t5
      WHERE t5.c0 <> t5.c4
      ORDER BY c5, c5, c6 ASC, c5 ASC
      LIMIT 935778554078776870 ) as subq1    
     ON (subq1.c5 IS NULL)   )
    ON (t4.c0 = t2.c0)
  LEFT JOIN t0 AS t6  
   ON (t4.c1 = 18 OR subq0.c18 > subq0.c16 OR subq0.c6 <> t4.c1)
WHERE subq0.c16 IS NOT NULL AND subq0.c11 <= t6.c1
ORDER BY c5 COLLATE NOCASE ASC
LIMIT 6772898061839459478 ;
SELECT t1.c0 AS c5, t1.c0 AS c6, t1.c1 AS c7, t1.c4 AS c8
FROM t0 AS t1
WHERE false OR t1.c3 < 'text1' AND t1.c1 >= 1
ORDER BY c5 DESC, c8 COLLATE NOCASE
LIMIT 5198113381875850706 OFFSET 8671307432567125563;
SELECT t1.c0 AS c5
FROM t0 AS t1
WHERE t1.c2 IS NOT NULL
ORDER BY c5 ASC, c5 COLLATE BINARY, c5, c5
LIMIT 4109348550293527192 ;
SELECT t1.c3 AS c7, t2.c2 AS c8, t2.c1 AS c9, t2.c0 AS c10, t2.c0 AS c11, 
 CASE t2.c2 WHEN 
  CASE WHEN t1.c3 IS NOT NULL THEN t1.c1
       ELSE 70
  END < t1.c1 THEN t2.c2
      WHEN true OR t1.c4 IS NULL OR t2.c1 <= t2.c2 THEN t1.c1
      WHEN 
  CASE t2.c1 WHEN EXISTS (
   SELECT DISTINCT t4.c1 AS c5
    FROM t0 AS t4
    WHERE t4.c1 IS NOT NULL
    ORDER BY c5
    LIMIT 6598955035277689797 
   ) OR t2.c1 >= t1.c1 THEN CAST(t2.c3 AS INTEGER)
       ELSE changes()
  END >= like('text70',TRUE) THEN t2.c2
      ELSE t1.c1
 END AS c6, t1.c2 AS c7
FROM t0 AS t1
  CROSS JOIN t0 AS t2  
   ON (t2.c3 >= t2.c3 OR EXISTS (
    SELECT t3.c3 AS c5, t3.c3 AS c6
     FROM t0 AS t3
     WHERE t3.c3 > t3.c3
     ORDER BY c5 DESC, c6
    ))
WHERE t2.c1 < COALESCE(t2.c1, 'text50', t2.c4)
ORDER BY c8 ASC
LIMIT 3220264780352290359 OFFSET 3247307363969759693;
SELECT subq0.c9 AS c14, substr(TRUE,79) AS c15, subq0.c5 AS c16, subq0.c6 AS c17, 
 CASE WHEN EXISTS (
  SELECT subq1.c6 AS c14, subq1.c13 AS c15, quote( 'text47') AS c16, FALSE AS c17, subq1.c9 AS c18, subq1.c11 AS c19, subq1.c10 AS c20, subq1.c13 AS c21, subq1.c5 AS c22, subq1.c8 AS c23, subq1.c10 AS c24, subq1.c13 AS c25
   FROM (SELECT t3.c2 AS c5, t3.c2 AS c6, t2.c3 AS c7, t3.c2 AS c8, t2.c2 AS c9, t3.c3 AS c10, t2.c0 AS c11, t3.c4 AS c12, t3.c4 AS c13
      FROM t0 AS t2
        LEFT JOIN t0 AS t3        
         ON (t3.c0 = t3.c0)
      WHERE t3.c1 >= t3.c1
      ORDER BY c8, c11) as subq1
   WHERE subq1.c8 < subq1.c8 AND EXISTS (
    SELECT t4.c4 AS c5, t4.c2 AS c6, t4.c2 AS c7, t4.c3 AS c8, t4.c4 AS c9, t4.c3 AS c10, t4.c0 AS c11, t4.c0 AS c12, t4.c3 AS c13
     FROM t0 AS t4
     WHERE EXISTS (
      SELECT t5.c0 AS c5, t5.c2 AS c6, t5.c4 AS c7, t5.c1 AS c8, t5.c1 AS c9
       FROM t0 AS t5
       WHERE EXISTS (
        SELECT t6.c4 AS c5, t6.c0 AS c6, t6.c4 AS c7, 40 AS c8, t6.c3 AS c9, t6.c1 AS c10, t6.c0 AS c11, t6.c3 AS c12, t6.c1 AS c13, t6.c4 AS c14, t6.c2 AS c15, t6.c3 AS c16
         FROM t0 AS t6
         WHERE t6.c4 = t6.c0
         ORDER BY c8, c10
         LIMIT 4092858920025581421 
        ) OR t5.c0 IS NOT NULL
       ORDER BY c8, c9 DESC, c8 DESC
      )
     ORDER BY c10, c7, c12
     LIMIT 3862113991783836977 OFFSET 8800125682079319285
    )
   ORDER BY c22
   LIMIT 8903006508530052410 OFFSET 3577448267171616631
  ) THEN 
  CASE subq0.c5 WHEN false THEN 
   CASE WHEN COALESCE(subq0.c13, subq0.c6, subq0.c7, FALSE) = subq0.c8 THEN subq0.c5
        ELSE subq0.c12
   END
       WHEN 
   CASE WHEN subq0.c5 <> subq0.c9 THEN subq0.c5
        ELSE subq0.c11
   END IS NULL AND 
   CASE WHEN subq0.c12 = subq0.c12 THEN subq0.c13
        ELSE subq0.c10
   END <> subq0.c13 THEN subq0.c5
       WHEN subq0.c13 <= subq0.c10 AND subq0.c10 > subq0.c10 THEN subq0.c9
       WHEN subq0.c5 <= subq0.c9 OR subq0.c12 >= 'text64' THEN subq0.c12
       WHEN subq0.c10 = CAST(subq0.c9 AS TEXT) AND false THEN ltrim(NULL,NULL)
       WHEN subq0.c8 = IFNULL(subq0.c6, subq0.c8) AND subq0.c8 = subq0.c11 THEN subq0.c7
       WHEN subq0.c7 > subq0.c9 THEN subq0.c9
       ELSE subq0.c9
  END
      ELSE ifnull('text97',TRUE)
 END AS c17, subq0.c6 AS c18
FROM (SELECT t1.c3 AS c5, t1.c0 AS c6, t1.c3 AS c7, 
    CASE WHEN false THEN 
     CASE WHEN false THEN t1.c4
          ELSE t1.c0
     END
         ELSE t1.c4
    END AS c8, t1.c3 AS c9, t1.c1 AS c10, t1.c4 AS c11, t1.c3 AS c12, t1.c1 AS c13
   FROM t0 AS t1
   WHERE t1.c2 < t1.c1
   ORDER BY c5 COLLATE BINARY ASC, c7 DESC) as subq0
WHERE subq0.c9 <= subq0.c12
ORDER BY c16, c16 DESC, c17;
SELECT t3.c2 AS c5, t1.c1 AS c6, subq0.c6 AS c7, t1.c0 AS c8, t1.c3 AS c9, t3.c3 AS c10
FROM t0 AS t1
  LEFT JOIN (
  (SELECT t2.c4 AS c5, t2.c1 AS c6
     FROM t0 AS t2
     WHERE t2.c3 <> t2.c3
     ORDER BY c5, c5 ASC
     LIMIT 7437664344220015197 OFFSET 5018414951885061210) as subq0
   LEFT JOIN t0 AS t3   
    ON (true)  )
   ON (false OR t1.c2 = t3.c1 AND true)
WHERE t1.c1 > t3.c2
ORDER BY c5
LIMIT 417240619852798031 ;
SELECT subq1.c12 AS c13, 
 CASE WHEN subq1.c12 <> subq1.c12 OR false THEN subq1.c12
      ELSE subq1.c12
 END AS c14, CAST('text8' AS INTEGER) AS c15, subq1.c12 AS c16, subq1.c12 AS c17, subq1.c12 AS c18, subq1.c12 AS c19, subq1.c12 AS c20, TRUE AS c21, subq1.c12 AS c22, subq1.c12 AS c23
FROM (SELECT TRUE AS c12
   FROM (SELECT t1.c3 AS c5, TRUE AS c6, t1.c0 AS c7, t1.c4 AS c8, t1.c4 AS c9, t1.c4 AS c10, t1.c4 AS c11
      FROM t0 AS t1
      WHERE 91 < t1.c1
      ORDER BY c5 DESC, c5 DESC) as subq0
   WHERE EXISTS (
    SELECT t2.c1 AS c5, t2.c1 AS c6, t2.c0 AS c7, 11 AS c8, t2.c4 AS c9, t2.c2 AS c10, 42 AS c11, t2.c2 AS c12
     FROM t0 AS t2
     WHERE t2.c4 <> t2.c4
     ORDER BY c12 ASC, c5
     LIMIT 6361224576173857195 OFFSET 2197822195382956094
    )
   ORDER BY c12, c12 ASC, c12, c12 COLLATE BINARY ASC) as subq1
WHERE 
 CASE WHEN 
  CASE WHEN false THEN subq1.c12
       ELSE 'text57'
  END IS NULL THEN COALESCE(subq1.c12, subq1.c12, subq1.c12, subq1.c12, 
   CASE subq1.c12 WHEN subq1.c12 <> subq1.c12 THEN subq1.c12
        WHEN subq1.c12 <> subq1.c12 THEN subq1.c12
        WHEN subq1.c12 <> subq1.c12 AND subq1.c12 <> subq1.c12 OR false THEN subq1.c12
        ELSE subq1.c12
   END)
      ELSE subq1.c12
 END <> subq1.c12
ORDER BY c19 ASC
LIMIT 1852641743518077092 OFFSET 6338496586328126083;
SELECT subq1.c19 AS c17, subq1.c14 AS c18, subq1.c13 AS c19, 
 CASE subq1.c14 WHEN subq1.c17 <> 
  CASE WHEN hex( NULL) < 'text32' THEN subq1.c15
       ELSE subq1.c17
  END THEN subq1.c22
      WHEN subq1.c18 = CAST(subq1.c17 AS INTEGER) THEN IFNULL(CAST(unlikely( NULL) AS TEXT), subq1.c22)
      WHEN subq1.c21 IS NULL THEN subq1.c21
      WHEN subq1.c13 = subq1.c20 THEN subq1.c14
      WHEN 'text93' <= CAST(CAST(subq1.c14 AS BOOLEAN) AS INTEGER) THEN subq1.c22
      WHEN EXISTS (
  SELECT CAST(t4.c4 AS INTEGER) AS c5, CAST(t4.c4 AS TEXT) AS c6, t4.c2 AS c7
   FROM t0 AS t4
   WHERE 
    CASE t4.c4 WHEN t4.c0 IS NULL THEN 
     CASE t4.c0 WHEN t4.c1 <> t4.c2 THEN t4.c4
          WHEN EXISTS (
      SELECT t5.c0 AS c5
       FROM t0 AS t5
       WHERE t5.c3 <> t5.c3
       ORDER BY c5 ASC, c5 COLLATE RTRIM, c5 ASC, c5 COLLATE NOCASE
      ) THEN t4.c4
          WHEN 
      CASE WHEN t4.c2 >= t4.c2 THEN 50
           ELSE t4.c2
      END < t4.c1 THEN t4.c4
          WHEN t4.c2 <> t4.c1 OR t4.c3 IS NULL THEN t4.c4
          WHEN t4.c1 IS NULL OR t4.c2 <= t4.c2 THEN t4.c0
          WHEN t4.c4 <> t4.c4 OR t4.c4 = t4.c0 AND t4.c2 >= t4.c2 AND t4.c0 <> t4.c0 THEN t4.c4
          WHEN t4.c0 = t4.c4 AND t4.c0 <> t4.c4 OR t4.c0 <> t4.c4 THEN t4.c4
          WHEN ltrim(TRUE,FALSE) = t4.c3 THEN t4.c4
          WHEN t4.c3 > t4.c3 THEN t4.c4
          WHEN t4.c0 <> t4.c4 THEN t4.c4
          ELSE t4.c4
     END
         WHEN t4.c2 IS NULL THEN t4.c0
         WHEN t4.c0 <> t4.c4 THEN t4.c0
         WHEN t4.c4 <> TRUE THEN t4.c0
         WHEN t4.c3 <> t4.c3 THEN t4.c0
         WHEN t4.c1 < t4.c2 THEN t4.c0
         WHEN t4.c4 IS NOT NULL THEN t4.c4
         WHEN EXISTS (
     SELECT t6.c2 AS c5
      FROM t0 AS t6
      WHERE EXISTS (
       SELECT t7.c1 AS c5, t7.c4 AS c6
        FROM t0 AS t7
        WHERE t7.c2 <= t7.c1
        ORDER BY c5 DESC, c6 DESC, c5 COLLATE NOCASE DESC, c5
       )
      ORDER BY c5 COLLATE RTRIM
     ) THEN t4.c4
         WHEN EXISTS (
     SELECT t8.c1 AS c5, t8.c4 AS c6, t9.c2 AS c7, t8.c0 AS c8, t8.c4 AS c9, t8.c0 AS c10
      FROM t0 AS t8
        LEFT JOIN t0 AS t9        
         ON (false)
      WHERE t8.c0 <> t8.c4
      ORDER BY c8, c6, c8
      LIMIT 572288035243858270 OFFSET 8559719069470676075
     ) AND 
     CASE WHEN EXISTS (
      SELECT t10.c1 AS c5, t10.c4 AS c6, t10.c0 AS c7, t10.c1 AS c8, t10.c2 AS c9, t10.c0 AS c10, t10.c0 AS c11, t10.c0 AS c12, t10.c1 AS c13, t10.c0 AS c14, t10.c2 AS c15, t10.c2 AS c16, t10.c0 AS c17, t10.c0 AS c18, t10.c3 AS c19, t10.c1 AS c20, t10.c1 AS c21, t10.c4 AS c22, t10.c0 AS c23
       FROM t0 AS t10
       WHERE t10.c2 <> t10.c1
       ORDER BY c8 ASC, c14 DESC
       LIMIT 5781635041165347397 OFFSET 2991258961534332664
      ) THEN t4.c0
          ELSE t4.c4
     END <> t4.c4 THEN t4.c4
         WHEN t4.c4 IS NOT NULL AND t4.c1 IS NULL THEN TRUE
         WHEN t4.c1 IS NULL OR t4.c4 IS NULL OR t4.c0 = t4.c4 OR t4.c3 = t4.c3 THEN t4.c4
         WHEN t4.c2 > t4.c1 THEN t4.c0
         ELSE t4.c0
    END = t4.c0
   ORDER BY c7 ASC
   LIMIT 5627274569401676038 
  ) AND 
  CASE subq1.c21 WHEN subq1.c19 <> rtrim('text58',FALSE) THEN subq1.c21
       WHEN false THEN subq1.c18
       WHEN EXISTS (
   SELECT NULLIF(t11.c1, t11.c2) AS c5, t11.c0 AS c6
    FROM t0 AS t11
    WHERE true
    ORDER BY c6 ASC
    LIMIT 8174904924811769321 OFFSET 6892212152138895432
   ) THEN subq1.c14
       WHEN NULLIF(subq1.c19, subq1.c20) = subq1.c19 OR subq1.c21 = TRUE THEN subq1.c21
       WHEN subq1.c19 = subq1.c13 THEN CAST(subq1.c13 AS TEXT)
       WHEN subq1.c14 <> subq1.c22 THEN subq1.c14
       WHEN 'text9' >= subq1.c20 OR subq1.c18 IS NOT NULL AND subq1.c16 = subq1.c17 AND subq1.c15 < like('text99',NULL,'񂥌') AND subq1.c18 <> subq1.c22 THEN 
   CASE WHEN EXISTS (
    SELECT changes() AS c5
     FROM t0 AS t12
       INNER JOIN t0 AS t13       
        ON (t12.c2 < t12.c1)
     WHERE t12.c4 = t13.c4
     ORDER BY c5, c5, c5 ASC, c5 ASC
    ) THEN NULLIF(subq1.c21, subq1.c18)
        ELSE CAST(subq1.c17 AS TEXT)
   END
       WHEN subq1.c21 <> subq1.c14 THEN subq1.c14
       WHEN subq1.c21 IS NULL THEN subq1.c18
       WHEN 
   CASE WHEN EXISTS (
    SELECT t14.c0 AS c5, t14.c3 AS c6, t14.c0 AS c7
     FROM t0 AS t14
     WHERE t14.c4 IS NOT NULL
     ORDER BY c7
     LIMIT 3194330579294214604 
    ) OR 'text28' <= subq1.c19 THEN subq1.c17
        ELSE subq1.c17
   END < subq1.c15 THEN subq1.c22
       ELSE subq1.c22
  END = IFNULL(subq1.c22, 
   CASE subq1.c14 WHEN subq1.c19 IS NULL THEN subq1.c22
        ELSE subq1.c21
   END) THEN subq1.c21
      WHEN subq1.c21 = subq1.c14 AND subq1.c18 <> subq1.c14 OR 
  CASE WHEN subq1.c13 = subq1.c19 THEN subq1.c21
       ELSE 
   CASE WHEN EXISTS (
    SELECT t15.c0 AS c5, t15.c0 AS c6, t16.c3 AS c7
     FROM t0 AS t15
       INNER JOIN t0 AS t16       
        ON (t15.c0 = t16.c0)
     WHERE 'text94' < t15.c3
     ORDER BY c6 ASC
     LIMIT 6250535463015767392 OFFSET 8648259753631697014
    ) AND subq1.c17 < unicode( 'text95') THEN FALSE
        ELSE subq1.c18
   END
  END = subq1.c22 OR subq1.c13 IS NOT NULL OR subq1.c17 = subq1.c15 THEN subq1.c18
      WHEN 
  CASE subq1.c16 WHEN 'text22' = subq1.c13 THEN 
   CASE WHEN subq1.c19 > subq1.c13 OR true THEN subq1.c18
        ELSE CAST(subq1.c18 AS BOOLEAN)
   END
       WHEN subq1.c13 = subq1.c20 THEN subq1.c20
       WHEN EXISTS (
   SELECT 
     CASE WHEN t17.c1 > t18.c2 THEN t18.c0
          ELSE t19.c4
     END AS c5, t18.c3 AS c6
    FROM t0 AS t17
        LEFT OUTER JOIN t0 AS t18        
         ON (t17.c0 = t17.c0 OR t18.c3 >= t18.c3)
       LEFT JOIN t0 AS t19       
        ON (true)
      INNER JOIN t0 AS t20      
       ON ('text42' < t18.c3)
    WHERE t19.c4 = t19.c0
    ORDER BY c5 ASC, c5
    LIMIT 8607039400541728927 
   ) THEN subq1.c13
       WHEN subq1.c14 <> COALESCE(subq1.c21, IFNULL(subq1.c18, subq1.c22), subq1.c18, subq1.c13, subq1.c21) AND subq1.c19 < subq1.c19 AND 
   CASE subq1.c17 WHEN true AND false AND subq1.c18 = CAST(subq1.c16 AS TEXT) THEN subq1.c19
        ELSE subq1.c14
   END IS NULL THEN subq1.c16
       WHEN likely( 51) IS NULL THEN TRUE
       WHEN EXISTS (
   SELECT t21.c1 AS c5, t21.c4 AS c6, t21.c1 AS c7, t21.c3 AS c8, t21.c2 AS c9, t21.c3 AS c10, t21.c1 AS c11, 
     CASE t21.c4 WHEN t21.c2 > t21.c2 THEN t21.c0
          WHEN EXISTS (
      SELECT t23.c0 AS c5, t22.c2 AS c6
       FROM t0 AS t22
         LEFT JOIN t0 AS t23         
          ON (t23.c0 <> t23.c4 OR t22.c3 > t22.c3 OR t22.c4 IS NULL OR t23.c3 < t23.c3)
       WHERE 'text50' <> 'text38'
       ORDER BY c5 ASC, c6 DESC, c6 ASC, c5
      ) THEN t21.c4
          WHEN t21.c1 <= t21.c2 THEN t21.c4
          WHEN t21.c4 = t21.c0 THEN t21.c0
          WHEN true THEN t21.c4
          WHEN t21.c0 = t21.c4 THEN t21.c0
          WHEN t21.c2 IS NULL THEN t21.c0
          WHEN EXISTS (
      SELECT t24.c0 AS c5, t24.c4 AS c6, t24.c0 AS c7, t24.c2 AS c8, t24.c1 AS c9
       FROM t0 AS t24
       WHERE false
       ORDER BY c5 COLLATE NOCASE
      ) THEN t21.c4
          WHEN t21.c1 <= t21.c2 AND 80 <= t21.c1 THEN t21.c4
          ELSE t21.c4
     END AS c10, t21.c3 AS c11, t21.c0 AS c12, t21.c1 AS c13, t21.c4 AS c14, t21.c2 AS c15, t21.c2 AS c16, t21.c3 AS c17, t21.c4 AS c18
    FROM t0 AS t21
    WHERE CAST(t21.c3 AS BOOLEAN) > t21.c1
    ORDER BY c17, c15 ASC
   ) THEN 
   CASE WHEN subq1.c21 = subq1.c14 THEN subq1.c14
        ELSE subq1.c16
   END
       WHEN subq1.c21 IS NULL AND false OR subq1.c15 >= 41 THEN subq1.c22
       WHEN subq1.c16 <> subq1.c16 THEN subq1.c22
       WHEN subq1.c17 < subq1.c15 THEN subq1.c15
       WHEN subq1.c15 IS NOT NULL THEN nullif('text15','text67')
       WHEN COALESCE(subq1.c18, subq1.c21, upper( 14), subq1.c18, subq1.c22) IS NULL THEN subq1.c18
       WHEN subq1.c15 IS NOT NULL AND subq1.c18 <> subq1.c18 OR true AND subq1.c13 < subq1.c13 OR EXISTS (
   SELECT t25.c2 AS c5, t25.c3 AS c6, 
     CASE t25.c4 WHEN true THEN t25.c4
          WHEN false OR false OR t25.c1 <> t25.c2 AND t25.c3 <> t25.c3 THEN t25.c0
          WHEN t25.c0 <> t25.c4 THEN t25.c0
          WHEN t25.c3 IS NOT NULL THEN t25.c4
          WHEN false THEN t25.c0
          WHEN t25.c0 = t25.c4 THEN t25.c0
          WHEN t25.c4 <> t25.c0 THEN t25.c0
          WHEN TRUE = t25.c0 THEN t25.c4
          WHEN t25.c1 = t25.c2 AND t25.c1 IS NOT NULL THEN t25.c4
          WHEN t25.c1 <= t25.c1 THEN t25.c4
          ELSE t25.c4
     END AS c7, t25.c0 AS c8, t25.c4 AS c9, COALESCE(t25.c4, t25.c4, t25.c3) AS c10, t25.c1 AS c11, t25.c3 AS c12
    FROM t0 AS t25
    WHERE t25.c1 >= t25.c1
    ORDER BY c7 ASC, c7 DESC
    LIMIT 4738958350859894163 OFFSET 616394135108683563
   ) AND EXISTS (
   SELECT t26.c1 AS c5, CAST(t26.c0 AS BOOLEAN) AS c6, t26.c4 AS c7, t26.c3 AS c8, t26.c4 AS c9, t26.c2 AS c10, t26.c0 AS c11, t26.c3 AS c12, t26.c1 AS c13, t26.c3 AS c14, t26.c0 AS c15
    FROM t0 AS t26
    WHERE t26.c4 = t26.c0 OR true
    ORDER BY c12, c9 COLLATE NOCASE
   ) THEN COALESCE(subq1.c15, subq1.c22, subq1.c15)
       ELSE subq1.c17
  END IS NOT NULL OR subq1.c16 IS NULL AND false THEN subq1.c21
      WHEN subq1.c13 IS NULL THEN subq1.c18
      WHEN subq1.c18 <> subq1.c21 THEN subq1.c18
      ELSE subq1.c18
 END AS c16, subq1.c16 AS c17, subq1.c16 AS c18, 71 AS c19, 'text22' AS c20, subq1.c16 AS c21, 'text18' AS c22, subq1.c19 AS c23, subq1.c21 AS c24, subq1.c21 AS c25, subq1.c13 AS c26
FROM (SELECT ifnull(NULL,'text53') AS c13, t1.c4 AS c14, subq0.c6 AS c15, t1.c2 AS c16, subq0.c12 AS c17, subq0.c10 AS c18, t1.c3 AS c19, subq0.c9 AS c20, t1.c4 AS c21, subq0.c7 AS c22
   FROM t0 AS t1
     INNER JOIN (SELECT 37 AS c5, t2.c2 AS c6, FALSE AS c7, t2.c2 AS c8, t2.c3 AS c9, t2.c4 AS c10, t2.c3 AS c11, t2.c2 AS c12
       FROM t0 AS t2
       WHERE t2.c1 >= t2.c2 AND true AND t2.c2 IS NULL AND t2.c4 IS NULL OR t2.c0 = t2.c0
       ORDER BY c12, c11 DESC, c11) as subq0     
      ON (subq0.c7 = t1.c4)
   WHERE false AND EXISTS (
    SELECT t3.c2 AS c5, t3.c1 AS c6, t3.c0 AS c7, t3.c1 AS c8, t3.c2 AS c9, t3.c1 AS c10, t3.c0 AS c11, t3.c3 AS c12, t3.c1 AS c13, t3.c4 AS c14, t3.c4 AS c15, t3.c3 AS c16
     FROM t0 AS t3
     WHERE true
     ORDER BY c7 COLLATE NOCASE ASC, c6
     LIMIT 8676316609408863876 
    )
   ORDER BY c21 DESC, c21, c20 DESC) as subq1
WHERE likelihood('text19',0.690084) IS NOT NULL
ORDER BY c18, c18 DESC, c16 ASC
LIMIT 1497418782841345986 OFFSET 2310248691521807396;
