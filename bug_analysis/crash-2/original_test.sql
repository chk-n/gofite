/* -----------Error-----------
Old Errored, New Succeeded. Old_Err: [Old] stdout closed or error during query. Query: 'CREATE TABLE t0 (
    c0 BOOLEAN,
    c1 BOOLEAN,
    c2 BOOLEAN,
    c3 NULL,
    c4 BOOLEAN
);
UPDATE t0 
SET c0 = t0.c0, c1 = t0.c1, c2 = 
  CASE WHEN t0.c0 = t0.c4 THEN t0.c0
       ELSE 
   CASE WHEN t0.c3 = t0.c3 THEN t0.c4
        ELSE t0.c1
   END
  END
WHERE t0.c1 = t0.c0
;INSERT INTO t0 VALUES (TRUE, TRUE, TRUE, NULL, FALSE)
;UPDATE t0 
SET c1 = FALSE, c2 = t0.c4, c4 = t0.c1
WHERE false
;DELETE FROM t0
WHERE t0.c2 <> t0.c2
;SELECT t2.c2 AS c5, t2.c3 AS c6
FROM t0 AS t1
  INNER JOIN t0 AS t2  
   ON (FALSE <> FALSE)
WHERE t1.c2 <> t2.c1
ORDER BY c5 DESC
LIMIT 3489068177354952166 
;SELECT t1.c0 AS c5, t1.c0 AS c6, t1.c3 AS c7, t1.c0 AS c8, 
 CASE WHEN NULL = t1.c3 OR t1.c3 = t1.c3 THEN t1.c2
      ELSE t1.c2
 END AS c9
FROM t0 AS t1
WHERE t1.c4 = t1.c0
ORDER BY c6 COLLATE BINARY, c9, c8 COLLATE BINARY ASC
LIMIT 1872518644991716210 
;SELECT 
 CASE t11.c0 WHEN t9.c3 = t11.c3 THEN t11.c0
      ELSE t10.c2
 END AS c5, t9.c4 AS c6, t10.c1 AS c7, COALESCE(subq0.c8, t11.c2, t9.c4, subq0.c10, 'text95') AS c8, NULL AS c9, t10.c1 AS c10, t9.c3 AS c11, t1.c0 AS c12
FROM t0 AS t1
  LEFT JOIN (
  (SELECT FALSE AS c6, t2.c3 AS c7, t3.c3 AS c8, t2.c1 AS c9, 
      CASE t3.c3 WHEN EXISTS (
       SELECT t5.c0 AS c5, t5.c1 AS c6, t5.c2 AS c7, NULL AS c8, TRUE AS c9, t5.c4 AS c10, t5.c1 AS c11, t5.c3 AS c12, t5.c4 AS c13, TRUE AS c14, t5.c4 AS c15, t5.c1 AS c16, t5.c2 AS c17, t5.c3 AS c18
        FROM t0 AS t5
        WHERE t5.c0 = t5.c4
        ORDER BY c12
        LIMIT 4168631915696415283 
       ) THEN t3.c3
           WHEN t3.c4 <> t2.c4 OR t3.c1 = TRUE THEN NULL
           WHEN t2.c4 <> t3.c1 THEN t2.c3
           WHEN t2.c4 IS NULL THEN t3.c3
           WHEN t2.c2 IS NULL THEN t2.c3
           WHEN EXISTS (
       SELECT t6.c1 AS c5, t6.c3 AS c6, t6.c1 AS c7, t6.c4 AS c8, t6.c3 AS c9
        FROM t0 AS t6
        WHERE t6.c0 <> t6.c1
        ORDER BY c6 DESC
        LIMIT 3315104814579592944 
       ) THEN t3.c3
           WHEN t2.c4 = t3.c1 THEN t3.c3
           WHEN t3.c2 = t2.c0 THEN t2.c3
           WHEN false THEN t2.c3
           WHEN t2.c2 = t3.c1 THEN t3.c3
           WHEN true OR t2.c1 = t3.c1 THEN t3.c3
           WHEN t2.c4 = t2.c4 THEN t3.c3
           ELSE t3.c3
      END AS c10, t2.c0 AS c11, t2.c3 AS c12, t3.c4 AS c13, t2.c4 AS c14, t3.c4 AS c15, t2.c2 AS c16, t2.c2 AS c17
     FROM t0 AS t2
       CROSS JOIN t0 AS t3       
        ON (t2.c3 <> t3.c3 OR EXISTS (
         SELECT NULL AS c5
          FROM t0 AS t4
          WHERE t4.c3 = t4.c3 AND t4.c1 IS NULL
          ORDER BY c5 COLLATE NOCASE
         ))
     WHERE t2.c4 IS NULL AND t2.c2 = t3.c4 AND t3.c2 = t2.c0 OR EXISTS (
      SELECT TRUE AS c5, t7.c4 AS c6, t7.c2 AS c7, t7.c2 AS c8, t7.c0 AS c9
       FROM t0 AS t7
       WHERE t7.c2 <> t7.c0
       ORDER BY c5 ASC, c6, c6
      )
     ORDER BY c10) as subq0
   INNER JOIN (
   t0 AS t8
    LEFT JOIN (
    t0 AS t9
      CROSS JOIN t0 AS t10      
       ON (t9.c2 = t10.c0)
     LEFT JOIN t0 AS t11     
      ON (t10.c0 <> t9.c0 OR t10.c0 = t9.c4 AND t10.c4 <> t11.c2)    )
     ON (t8.c1 IS NOT NULL)   )
    ON (t11.c1 = subq0.c15)  )
   ON (t9.c0 = t10.c2)
WHERE EXISTS (
 SELECT subq1.c5 AS c6, subq1.c5 AS c7, subq1.c5 AS c8, subq1.c5 AS c9, subq1.c5 AS c10, subq1.c5 AS c11, subq1.c5 AS c12, subq1.c5 AS c13, subq1.c5 AS c14, subq1.c5 AS c15, subq1.c5 AS c16, subq1.c5 AS c17, subq1.c5 AS c18, subq1.c5 AS c19, subq1.c5 AS c20, subq1.c5 AS c21
  FROM (SELECT t13.c3 AS c5
     FROM t0 AS t12
       INNER JOIN t0 AS t13       
        ON (true)
     WHERE t12.c0 <> t13.c1
     ORDER BY c5 COLLATE RTRIM DESC
     LIMIT 5491843566662984611 OFFSET 6030566075870591871) as subq1
  WHERE subq1.c5 = subq1.c5 OR subq1.c5 <> subq1.c5
  ORDER BY c21 COLLATE BINARY
  LIMIT 7881353086329425355 OFFSET 8416483466822435079
 )
ORDER BY c10
;SELECT subq0.c7 AS c16, t1.c0 AS c17, 
 CASE WHEN subq0.c7 <> NULLIF(
   CASE subq0.c15 WHEN true THEN subq0.c15
        WHEN t1.c4 = subq0.c10 THEN 
    CASE subq0.c15 WHEN subq0.c5 <> subq0.c6 OR true THEN t1.c0
         WHEN subq0.c11 = t1.c3 THEN t1.c1
         WHEN t1.c2 = t1.c0 THEN FALSE
         WHEN t1.c4 IS NULL THEN subq0.c6
         WHEN subq0.c14 = subq0.c7 AND t1.c4 IS NULL THEN subq0.c10
         WHEN t1.c3 IS NOT NULL AND subq0.c15 = subq0.c15 AND false AND false THEN subq0.c7
         WHEN EXISTS (
     SELECT t3.c2 AS c5
      FROM t0 AS t3
      WHERE t3.c2 <> t3.c1 AND t3.c0 <> t3.c2 AND t3.c3 = t3.c3 OR FALSE <> FALSE AND t3.c3 <> t3.c3 OR t3.c4 = t3.c0
      ORDER BY c5, c5 ASC, c5 DESC, c5
      LIMIT 6338914668196768434 OFFSET 2259381121951445808
     ) THEN subq0.c14
         WHEN subq0.c12 = subq0.c14 THEN subq0.c14
         WHEN subq0.c12 = subq0.c14 THEN subq0.c6
         WHEN t1.c0 <> subq0.c9 AND subq0.c14 <> CAST(subq0.c5 AS INTEGER) THEN subq0.c13
         WHEN false AND false THEN 
     CASE WHEN false THEN subq0.c6
          ELSE t1.c0
     END
         ELSE subq0.c7
    END
        WHEN subq0.c12 <> CAST(subq0.c12 AS BOOLEAN) THEN t1.c0
        WHEN subq0.c12 <> subq0.c9 THEN subq0.c10
        WHEN t1.c0 <> subq0.c12 THEN t1.c4
        WHEN t1.c4 = t1.c2 THEN t1.c1
        WHEN FALSE <> t1.c4 THEN t1.c0
        ELSE subq0.c15
   END, subq0.c15) THEN t1.c4
      ELSE subq0.c13
 END AS c6, subq0.c14 AS c7
FROM t0 AS t1
  INNER JOIN (SELECT t2.c2 AS c5, t2.c1 AS c6, t2.c4 AS c7, t2.c2 AS c8, t2.c1 AS c9, t2.c1 AS c10, t2.c3 AS c11, t2.c2 AS c12, t2.c1 AS c13, t2.c0 AS c14, t2.c1 AS c15
    FROM t0 AS t2
    WHERE false OR t2.c0 IS NULL OR t2.c0 <> t2.c1 OR t2.c1 IS NULL
    ORDER BY c15 COLLATE RTRIM, c10 ASC, c15) as subq0  
   ON (subq0.c10 IS NULL OR subq0.c9 = FALSE)
WHERE COALESCE(t1.c3, subq0.c11, 
  CASE WHEN subq0.c7 = 
   CASE WHEN EXISTS (
    SELECT t4.c3 AS c5, t4.c0 AS c6, t4.c4 AS c7, t4.c1 AS c8, t4.c1 AS c9, t4.c3 AS c10, t4.c1 AS c11, t4.c2 AS c12, t4.c2 AS c13, t4.c2 AS c14, t4.c1 AS c15, t4.c1 AS c16
     FROM t0 AS t4
     WHERE true
     ORDER BY c5
     LIMIT 9592695690041534 
    ) THEN subq0.c13
        ELSE COALESCE(subq0.c9, subq0.c9, subq0.c9, NULL, subq0.c11, 90)
   END THEN subq0.c11
       ELSE subq0.c11
  END) = NULL
ORDER BY c17
;SELECT t1.c4 AS c5, t1.c2 AS c6, t1.c1 AS c7, COALESCE(t1.c1, t1.c0, t1.c4, t1.c2) AS c8, t1.c0 AS c9
FROM t0 AS t1
WHERE t1.c4 <> t1.c0
ORDER BY c5 DESC, c5, c9
LIMIT 913274745945213034 
;SELECT t1.c3 AS c5, t1.c1 AS c6, t1.c3 AS c7, t1.c0 AS c8, t1.c2 AS c9, t1.c0 AS c10, t1.c0 AS c11, t1.c4 AS c12
FROM t0 AS t1
WHERE t1.c0 <> t1.c2
ORDER BY c10 DESC, c5, c5
LIMIT 4985006124125536569 OFFSET 3494965248147406215
;SELECT subq1.c8 AS c10, CAST(subq1.c8 AS BOOLEAN) AS c11, COALESCE(subq1.c9, subq1.c9, subq1.c9) AS c12, subq1.c8 AS c13, COALESCE(subq1.c9, subq1.c9, subq1.c8, subq1.c9, 
  CASE subq1.c9 WHEN subq1.c9 = subq1.c9 THEN subq1.c9
       WHEN true THEN subq1.c9
       WHEN EXISTS (
   SELECT 
     CASE WHEN t5.c3 IS NULL THEN t4.c2
          ELSE t6.c0
     END AS c5, t6.c4 AS c6
    FROM t0 AS t4
       LEFT JOIN t0 AS t5       
        ON (TRUE = t4.c2)
      INNER JOIN t0 AS t6      
       ON (t4.c1 = t6.c0)
    WHERE t4.c2 = t4.c0
    ORDER BY c6 DESC, c6
   ) THEN subq1.c9
       WHEN FALSE <> subq1.c8 THEN subq1.c9
       WHEN subq1.c9 = subq1.c9 THEN COALESCE(subq1.c8, NULL, subq1.c9, subq1.c9, NULL, subq1.c9)
       WHEN subq1.c9 = subq1.c9 THEN subq1.c9
       WHEN EXISTS (
   SELECT DISTINCT t7.c0 AS c5, t7.c0 AS c6, t7.c1 AS c7, t7.c1 AS c8, t7.c2 AS c9, t7.c4 AS c10
    FROM t0 AS t7
    WHERE TRUE = t7.c0 AND t7.c3 = t7.c3 AND EXISTS (
     SELECT t8.c1 AS c5, TRUE AS c6, t8.c0 AS c7
      FROM t0 AS t8
      WHERE t8.c2 <> t8.c2
      ORDER BY c7 DESC
      LIMIT 4864159336937569980 
     )
    ORDER BY c10 ASC, c10 DESC
   ) THEN subq1.c9
       WHEN subq1.c8 <> 
   CASE WHEN false AND subq1.c9 <> subq1.c9 OR subq1.c8 <> subq1.c8 AND subq1.c8 <> subq1.c8 OR 
    CASE subq1.c9 WHEN subq1.c8 = subq1.c8 THEN subq1.c9
         WHEN subq1.c8 <> subq1.c8 THEN subq1.c9
         WHEN subq1.c8 <> subq1.c8 THEN subq1.c9
         WHEN EXISTS (
     SELECT t9.c0 AS c5, t9.c1 AS c6, t9.c4 AS c7
      FROM t0 AS t9
      WHERE t9.c0 = t9.c0
      ORDER BY c5 DESC, c5 COLLATE BINARY, c7
     ) THEN 
     CASE WHEN EXISTS (
      SELECT t10.c0 AS c5, t10.c4 AS c6, t10.c3 AS c7, t10.c1 AS c8, t10.c0 AS c9
       FROM t0 AS t10
       WHERE t10.c1 <> t10.c0
       ORDER BY c5 ASC
      ) THEN subq1.c9
          ELSE subq1.c9
     END
         WHEN subq1.c8 <> subq1.c8 AND subq1.c9 <> subq1.c9 AND subq1.c8 = subq1.c8 AND subq1.c9 = NULL OR subq1.c9 = 
     CASE subq1.c9 WHEN subq1.c9 <> subq1.c9 THEN subq1.c9
          WHEN false THEN subq1.c9
          WHEN subq1.c8 <> 
      CASE WHEN subq1.c9 <> subq1.c9 THEN subq1.c8
           ELSE subq1.c8
      END AND subq1.c8 <> subq1.c8 THEN NULL
          WHEN subq1.c9 = subq1.c9 THEN subq1.c9
          WHEN true AND EXISTS (
      SELECT TRUE AS c5, t11.c4 AS c6, t11.c3 AS c7, t11.c0 AS c8, t11.c2 AS c9, t11.c4 AS c10
       FROM t0 AS t11
       WHERE t11.c2 IS NULL AND t11.c0 IS NULL
       ORDER BY c5
      ) THEN subq1.c9
          WHEN subq1.c8 <> subq1.c8 OR subq1.c8 IS NULL THEN subq1.c9
          WHEN true THEN subq1.c9
          WHEN subq1.c8 = subq1.c8 OR subq1.c9 <> subq1.c9 THEN subq1.c9
          WHEN subq1.c8 = subq1.c8 THEN 
      CASE WHEN subq1.c8 <> subq1.c8 OR false AND subq1.c9 = subq1.c9 THEN subq1.c9
           ELSE subq1.c9
      END
          WHEN subq1.c8 = subq1.c8 THEN subq1.c9
          ELSE subq1.c9
     END OR subq1.c8 = 
     CASE WHEN subq1.c8 IS NOT NULL AND subq1.c9 <> subq1.c9 THEN subq1.c8
          ELSE subq1.c8
     END THEN subq1.c9
         WHEN subq1.c8 <> TRUE AND subq1.c9 <> subq1.c9 THEN subq1.c9
         WHEN subq1.c8 = subq1.c8 AND subq1.c9 <> subq1.c9 THEN NULL
         ELSE subq1.c9
    END = subq1.c9 THEN subq1.c8
        ELSE subq1.c8
   END THEN subq1.c9
       WHEN subq1.c9 IS NULL THEN COALESCE(subq1.c9, subq1.c9, subq1.c9)
       ELSE subq1.c9
  END) AS c11, subq1.c9 AS c12, 
 CASE WHEN subq1.c9 <> subq1.c9 AND COALESCE(subq1.c8, subq1.c8, subq1.c8, subq1.c8, subq1.c9, 81) = subq1.c8 OR subq1.c8 <> CAST(subq1.c8 AS BOOLEAN) AND subq1.c8 = subq1.c8 THEN NULLIF(
   CASE subq1.c8 WHEN subq1.c8 = subq1.c8 THEN subq1.c8
        WHEN subq1.c9 = subq1.c9 THEN subq1.c8
        WHEN subq1.c9 <> subq1.c9 THEN subq1.c8
        WHEN subq1.c8 <> subq1.c8 THEN subq1.c8
        ELSE subq1.c8
   END, 
   CASE subq1.c8 WHEN EXISTS (
    SELECT t12.c4 AS c5, 
      CASE t13.c3 WHEN EXISTS (
       SELECT t14.c3 AS c5, t14.c2 AS c6, NULL AS c7, t14.c1 AS c8, t14.c3 AS c9, t14.c1 AS c10, TRUE AS c11, t14.c2 AS c12, t14.c3 AS c13, t14.c3 AS c14, TRUE AS c15, t14.c1 AS c16
        FROM t0 AS t14
        WHERE t14.c3 <> t14.c3 OR EXISTS (
         SELECT t15.c2 AS c5, t15.c0 AS c6, t15.c2 AS c7, t15.c3 AS c8, t15.c0 AS c9, t15.c2 AS c10, t15.c2 AS c11
          FROM t0 AS t15
          WHERE false
          ORDER BY c11 ASC, c9 COLLATE NOCASE ASC, c6
          LIMIT 8387930341120390604 OFFSET 225361810415418816
         )
        ORDER BY c6 ASC
        LIMIT 4863298919854118628 
       ) THEN t12.c3
           WHEN t13.c3 <> t13.c3 THEN t12.c3
           WHEN EXISTS (
       SELECT t16.c4 AS c5, t16.c2 AS c6, t16.c0 AS c7, t16.c3 AS c8, t16.c2 AS c9, t16.c4 AS c10, t16.c1 AS c11, t16.c4 AS c12
        FROM t0 AS t16
        WHERE FALSE <> t16.c2
        ORDER BY c8 DESC
        LIMIT 2036435071021223265 OFFSET 8379564570455881838
       ) THEN t13.c3
           WHEN t12.c4 = t12.c4 THEN t13.c3
           WHEN false THEN t12.c3
           WHEN t12.c2 <> t13.c4 THEN t13.c3
           ELSE t12.c3
      END AS c13
     FROM t0 AS t12
       INNER JOIN t0 AS t13       
        ON (t13.c1 IS NOT NULL)
     WHERE t13.c0 IS NOT NULL
     ORDER BY c13 ASC, c13 DESC, c5, c13 DESC
     LIMIT 1077542675674414091 
    ) THEN FALSE
        WHEN subq1.c9 <> subq1.c9 THEN subq1.c8
        WHEN subq1.c8 = subq1.c8 THEN subq1.c8
        WHEN subq1.c8 = subq1.c8 THEN subq1.c8
        WHEN subq1.c8 = subq1.c8 THEN subq1.c8
        WHEN subq1.c9 = subq1.c9 THEN subq1.c8
        WHEN subq1.c9 IS NOT NULL THEN subq1.c8
        WHEN subq1.c9 = subq1.c9 THEN 
    CASE WHEN subq1.c8 <> subq1.c8 THEN subq1.c8
         ELSE subq1.c8
    END
        WHEN subq1.c8 = subq1.c8 OR subq1.c8 <> subq1.c8 OR subq1.c8 = subq1.c8 THEN subq1.c8
        WHEN subq1.c8 <> subq1.c8 OR COALESCE(NULL, subq1.c8) IS NULL THEN subq1.c8
        WHEN subq1.c8 = COALESCE(subq1.c8, subq1.c8, subq1.c9) THEN subq1.c8
        ELSE subq1.c8
   END)
      ELSE subq1.c8
 END AS c14, FALSE AS c15, subq1.c9 AS c16, subq1.c9 AS c17, subq1.c8 AS c18, subq1.c9 AS c19, CAST(subq1.c9 AS INTEGER) AS c20, subq1.c8 AS c21, subq1.c9 AS c22, 
 CASE WHEN subq1.c9 IS NULL THEN subq1.c8
      ELSE COALESCE(subq1.c8, 
   CASE subq1.c8 WHEN false THEN subq1.c9
        WHEN subq1.c8 = subq1.c8 THEN CAST(subq1.c8 AS TEXT)
        WHEN subq1.c9 <> subq1.c9 THEN subq1.c9
        WHEN subq1.c9 = subq1.c9 THEN subq1.c9
        WHEN subq1.c8 = subq1.c8 THEN subq1.c8
        WHEN subq1.c9 <> subq1.c9 THEN subq1.c8
        WHEN 
    CASE subq1.c8 WHEN EXISTS (
     SELECT t17.c1 AS c5, t17.c2 AS c6
      FROM t0 AS t17
      WHERE NULL IS NOT NULL
      ORDER BY c6 COLLATE BINARY
     ) THEN subq1.c8
         WHEN EXISTS (
     SELECT t18.c1 AS c5, t18.c0 AS c6, t18.c1 AS c7
      FROM t0 AS t18
      WHERE t18.c1 = t18.c4
      ORDER BY c6 DESC
      LIMIT 2608151202018388094 
     ) THEN subq1.c8
         WHEN EXISTS (
     SELECT t19.c1 AS c5, t19.c3 AS c6, t19.c1 AS c7
      FROM t0 AS t19
      WHERE t19.c1 IS NOT NULL AND t19.c2 IS NULL AND t19.c0 <> t19.c0
      ORDER BY c5 DESC
     ) THEN subq1.c8
         WHEN true THEN subq1.c8
         WHEN EXISTS (
     SELECT t20.c3 AS c5, t20.c3 AS c6, t20.c3 AS c7, t20.c3 AS c8
      FROM t0 AS t20
      WHERE true
      ORDER BY c6, c6
      LIMIT 8812446435144642713 OFFSET 4704648149624058217
     ) AND false THEN subq1.c8
         WHEN subq1.c9 IS NULL THEN subq1.c8
         WHEN false THEN TRUE
         WHEN subq1.c8 <> subq1.c8 OR EXISTS (
     SELECT t21.c3 AS c5
      FROM t0 AS t21
      WHERE t21.c1 = t21.c0
      ORDER BY c5 ASC, c5, c5, c5
      LIMIT 4217312003361260894 OFFSET 7842039654277319056
     ) AND subq1.c8 = subq1.c8 OR subq1.c8 IS NOT NULL THEN subq1.c8
         WHEN subq1.c9 <> subq1.c9 THEN subq1.c8
         ELSE TRUE
    END <> subq1.c8 THEN subq1.c8
        WHEN false THEN subq1.c9
        WHEN subq1.c9 = NULL THEN subq1.c8
        WHEN subq1.c9 = subq1.c9 THEN subq1.c8
        WHEN subq1.c9 = 
    CASE WHEN subq1.c8 = subq1.c8 THEN subq1.c9
         ELSE subq1.c9
    END THEN subq1.c9
        ELSE subq1.c9
   END, COALESCE(subq1.c9, subq1.c9, subq1.c9, subq1.c9, subq1.c9, subq1.c9))
 END AS c6
FROM (SELECT t1.c4 AS c8, t1.c3 AS c9
   FROM t0 AS t1
     LEFT JOIN (SELECT t3.c1 AS c5, t2.c3 AS c6, t2.c3 AS c7
       FROM t0 AS t2
         INNER JOIN t0 AS t3         
          ON (t2.c3 = t3.c3)
       WHERE false
       ORDER BY c5, c5, c6) as subq0     
      ON (subq0.c7 = t1.c3)
   WHERE t1.c1 = subq0.c5
   ORDER BY c8
   LIMIT 1666052079669969208 OFFSET 1003276629925830650) as subq1
WHERE EXISTS (
 SELECT t22.c2 AS c5, t22.c4 AS c6, t22.c0 AS c7, FALSE AS c8
  FROM t0 AS t22
  WHERE t22.c0 = t22.c2
  ORDER BY c6, c6 COLLATE BINARY ASC
  LIMIT 7742528962879775918 
 )
ORDER BY c13
LIMIT 6263915710455464103 OFFSET 2527186621035486187
;SELECT subq0.c9 AS c18, subq0.c6 AS c19, subq0.c11 AS c20, subq0.c5 AS c21, subq0.c10 AS c22
FROM (SELECT t2.c4 AS c5, t2.c4 AS c6, t2.c3 AS c7, t1.c0 AS c8, t2.c3 AS c9, t2.c1 AS c10, t1.c1 AS c11
   FROM t0 AS t1
     LEFT JOIN t0 AS t2     
      ON (t2.c0 IS NULL)
   WHERE EXISTS (
    SELECT t3.c2 AS c5, t4.c0 AS c6, t3.c2 AS c7, t4.c0 AS c8, t3.c2 AS c9, t3.c4 AS c10
     FROM t0 AS t3
       LEFT JOIN t0 AS t4       
        ON (false)
     WHERE t3.c1 <> 
      CASE t3.c0 WHEN t3.c4 <> t3.c2 THEN t3.c1
           WHEN true THEN t3.c2
           WHEN true THEN t3.c4
           WHEN false THEN t3.c1
           WHEN t3.c3 <> t4.c3 THEN t3.c1
           WHEN t3.c4 <> t4.c0 THEN t3.c4
           WHEN false THEN t3.c0
           WHEN t4.c4 <> t3.c0 THEN t3.c0
           WHEN t4.c4 IS NOT NULL THEN t3.c4
           WHEN false THEN t4.c4
           WHEN EXISTS (
       SELECT ALL t5.c1 AS c5, t5.c0 AS c6, t5.c4 AS c7, t5.c3 AS c8, t5.c0 AS c9
        FROM t0 AS t5
        WHERE EXISTS (
         SELECT t6.c4 AS c5, t6.c4 AS c6, t6.c4 AS c7, t6.c0 AS c8, t6.c0 AS c9, t6.c0 AS c10, t6.c3 AS c11, t6.c1 AS c12, t6.c4 AS c13, t6.c4 AS c14, t6.c2 AS c15, t6.c1 AS c16, t6.c0 AS c17, t6.c1 AS c18, t6.c4 AS c19, t6.c4 AS c20, t6.c0 AS c21, t6.c4 AS c22, t6.c3 AS c23, t6.c2 AS c24, t6.c0 AS c25, t6.c2 AS c26, t6.c2 AS c27, t6.c1 AS c28, t6.c1 AS c29, t6.c4 AS c30, t6.c1 AS c31, t6.c4 AS c32, t6.c3 AS c33, t6.c2 AS c34, t6.c1 AS c35, t6.c0 AS c36, t6.c1 AS c37, t6.c1 AS c38, t6.c4 AS c39, t6.c3 AS c40, t6.c1 AS c41, t6.c4 AS c42, t6.c1 AS c43, t6.c2 AS c44, t6.c0 AS c45, t6.c4 AS c46, t6.c0 AS c47, t6.c1 AS c48, t6.c3 AS c49, t6.c2 AS c50, t6.c0 AS c51, t6.c0 AS c52, t6.c1 AS c53, t6.c1 AS c54, t6.c1 AS c55, t6.c1 AS c56, t6.c3 AS c57, t6.c4 AS c58, TRUE AS c59, t6.c3 AS c60, t6.c4 AS c61, t6.c2 AS c62, t6.c3 AS c63, t6.c0 AS c64, t6.c0 AS c65, t6.c0 AS c66, t6.c4 AS c67, t6.c3 AS c68
          FROM t0 AS t6
          WHERE t6.c0 = t6.c4
          ORDER BY c51, c16, c17
          LIMIT 3561390515118351305 OFFSET 15136132549819939
         )
        ORDER BY c7 DESC, c9, c7
        LIMIT 6615394238511073363 OFFSET 8426490578867041509
       ) AND EXISTS (
       SELECT t7.c4 AS c5, t7.c3 AS c6, FALSE AS c7, t7.c3 AS c8, TRUE AS c9, t7.c1 AS c10, t7.c4 AS c11, t7.c4 AS c12, t7.c1 AS c13, t7.c3 AS c14, t7.c0 AS c15, t7.c0 AS c16, t7.c2 AS c17
        FROM t0 AS t7
        WHERE false
        ORDER BY c8 COLLATE NOCASE ASC
        LIMIT 287886085010888344 
       ) OR t3.c1 = t4.c4 THEN t4.c0
           WHEN true THEN TRUE
           ELSE t4.c4
      END
     ORDER BY c8 ASC, c7 DESC, c8 COLLATE BINARY
    )
   ORDER BY c10) as subq0
WHERE subq0.c10 <> subq0.c5 OR subq0.c10 <> subq0.c8
ORDER BY c20 COLLATE RTRIM ASC, c22 DESC
LIMIT 8442250381574657271 OFFSET 8000018593546913125
;SELECT t4.c1 AS c18, t4.c0 AS c19, t2.c4 AS c20, t4.c3 AS c21, subq0.c5 AS c22, t1.c2 AS c23, subq0.c7 AS c24, subq0.c9 AS c25, t4.c3 AS c26, subq0.c9 AS c27, t4.c3 AS c28, t1.c4 AS c29
FROM t0 AS t1
    LEFT OUTER JOIN t0 AS t2    
     ON (t1.c1 = t2.c0)
   INNER JOIN (
   t0 AS t3
    INNER JOIN t0 AS t4    
     ON (false OR t4.c1 = t4.c2)   )
    ON (
     CASE WHEN t1.c4 <> t3.c0 THEN t1.c1
          ELSE 
      CASE WHEN t4.c4 <> t3.c2 THEN t2.c2
           ELSE t1.c4
      END
     END = t3.c2 AND EXISTS (
     SELECT t5.c2 AS c5, t5.c2 AS c6, t6.c3 AS c7, t5.c4 AS c8, t5.c3 AS c9, TRUE AS c10
      FROM t0 AS t5
        INNER JOIN t0 AS t6        
         ON (t5.c0 <> t6.c0)
      WHERE t5.c1 IS NULL
      ORDER BY c9 ASC, c8
      LIMIT 92577673082669428 OFFSET 1497295336788356833
     ))
  LEFT JOIN (SELECT t9.c3 AS c5, t7.c3 AS c6, t7.c1 AS c7, t8.c4 AS c8, t7.c3 AS c9, t7.c2 AS c10, t9.c3 AS c11, t9.c4 AS c12, FALSE AS c13, t8.c0 AS c14, t8.c3 AS c15, t9.c3 AS c16, TRUE AS c17
    FROM t0 AS t7
      INNER JOIN (
      t0 AS t8
       INNER JOIN t0 AS t9       
        ON (t8.c2 <> t9.c2)      )
       ON (t9.c3 <> t8.c3 AND t8.c2 IS NOT NULL AND t8.c4 = t9.c0)
    WHERE t7.c4 <> FALSE
    ORDER BY c14 ASC
    LIMIT 2175441593555478779 OFFSET 211165141889724639) as subq0  
   ON (t1.c4 <> t2.c0)
WHERE 
 CASE subq0.c14 WHEN TRUE <> t3.c4 THEN subq0.c12
      WHEN t1.c0 = 
  CASE t2.c2 WHEN subq0.c12 <> t4.c1 THEN t4.c2
       WHEN NULLIF(t3.c3, t4.c2) IS NULL THEN t3.c1
       WHEN t3.c4 <> t4.c2 OR subq0.c7 <> subq0.c7 THEN t2.c0
       ELSE t4.c2
  END THEN FALSE
      WHEN t4.c2 = subq0.c8 THEN 
  CASE subq0.c7 WHEN COALESCE(subq0.c5, t3.c3) <> t4.c4 THEN t1.c4
       WHEN EXISTS (
   SELECT t10.c3 AS c5, t10.c2 AS c6, t10.c0 AS c7, t10.c3 AS c8, t10.c2 AS c9, t10.c2 AS c10, t10.c3 AS c11, t10.c3 AS c12, t10.c0 AS c13
    FROM t0 AS t10
    WHERE t10.c4 = t10.c4
    ORDER BY c12 ASC, c12
    LIMIT 6484267646180432263 
   ) OR t4.c2 <> t1.c4 OR CAST(subq0.c17 AS INTEGER) <> 
   CASE t1.c3 WHEN t3.c1 = t1.c1 THEN t1.c3
        WHEN true THEN subq0.c6
        WHEN t4.c2 <> CAST(t3.c3 AS BOOLEAN) THEN CAST(t2.c3 AS BOOLEAN)
        WHEN EXISTS (
    SELECT t11.c0 AS c5, t11.c0 AS c6, t11.c0 AS c7, t11.c2 AS c8, t11.c0 AS c9, t11.c0 AS c10
     FROM t0 AS t11
     WHERE t11.c1 = t11.c0
     ORDER BY c10 ASC, c7 DESC, c10 ASC
     LIMIT 4027208194025033502 OFFSET 6740202987673016447
    ) THEN NULL
        ELSE subq0.c16
   END OR subq0.c8 = t4.c4 OR t2.c4 = t4.c0 THEN subq0.c14
       WHEN EXISTS (
   SELECT t12.c0 AS c5, t12.c4 AS c6
    FROM t0 AS t12
    WHERE EXISTS (
     SELECT t14.c3 AS c5, t14.c1 AS c6, t14.c1 AS c7, t14.c3 AS c8, t13.c2 AS c9, t13.c4 AS c10, t13.c1 AS c11, t14.c1 AS c12, FALSE AS c13, t14.c0 AS c14, t14.c1 AS c15, t14.c2 AS c16
      FROM t0 AS t13
        LEFT JOIN t0 AS t14        
         ON (false)
      WHERE t14.c4 <> t14.c4
      ORDER BY c15 COLLATE RTRIM, c12
      LIMIT 5663307843387231157 
     )
    ORDER BY c6 COLLATE RTRIM
    LIMIT 3694560089365636797 OFFSET 2374999895180265882
   ) OR subq0.c13 = t3.c0 THEN t2.c4
       WHEN t2.c3 = subq0.c5 THEN t1.c4
       ELSE t3.c1
  END
      WHEN subq0.c17 <> t1.c1 THEN subq0.c10
      WHEN t3.c2 <> subq0.c13 THEN t1.c4
      WHEN t3.c3 IS NULL AND subq0.c11 = t1.c3 THEN FALSE
      WHEN t2.c1 IS NULL THEN t2.c2
      ELSE t4.c2
 END = t3.c2
ORDER BY c29, c25 COLLATE NOCASE, c23 COLLATE NOCASE DESC
LIMIT 4394810966481756117 
;SELECT subq0.c6 AS c9, subq0.c6 AS c10, subq0.c5 AS c11, subq0.c5 AS c12, subq0.c8 AS c13
FROM (SELECT t1.c4 AS c5, t1.c3 AS c6, t1.c0 AS c7, t1.c2 AS c8
   FROM t0 AS t1
   WHERE t1.c2 <> t1.c4
   ORDER BY c5 ASC
   LIMIT 1745297682895268448 OFFSET 5005322683249696503) as subq0
WHERE subq0.c6 = subq0.c6
ORDER BY c11, c11
LIMIT 1990061791171353819 
;SELECT NULLIF(t1.c2, t1.c4) AS c5, t1.c0 AS c6, t1.c1 AS c7, t1.c1 AS c8, t1.c0 AS c9, t1.c0 AS c10, IFNULL(t1.c2, t1.c0) AS c11, t1.c1 AS c12, t1.c1 AS c13, t1.c0 AS c14
FROM t0 AS t1
WHERE t1.c3 = t1.c3
ORDER BY c7, c9 DESC, c6 ASC
LIMIT 3502026258478761959 OFFSET 8025695000768855868
;SELECT subq0.c10 AS c6, CAST(
  CASE subq0.c8 WHEN COALESCE(subq0.c9, NULL) = subq0.c9 AND IFNULL(subq0.c5, subq0.c6) = subq0.c10 AND subq0.c9 <> subq0.c9 THEN subq0.c7
       WHEN subq0.c7 <> subq0.c10 THEN subq1.c5
       WHEN TRUE = subq0.c7 THEN 
   CASE WHEN subq0.c8 IS NULL THEN subq0.c5
        ELSE subq1.c5
   END
       WHEN 
   CASE WHEN subq0.c8 = 
    CASE subq0.c8 WHEN 
     CASE subq0.c9 WHEN subq0.c10 = FALSE AND subq0.c10 = subq0.c8 THEN subq0.c10
          WHEN subq0.c10 = subq1.c5 THEN subq0.c5
          WHEN subq0.c10 <> subq0.c10 THEN subq0.c9
          WHEN subq0.c8 <> subq0.c5 THEN subq1.c5
          WHEN subq0.c8 IS NULL THEN subq0.c5
          WHEN true OR subq0.c6 <> subq0.c5 THEN subq1.c5
          WHEN subq0.c6 = subq0.c6 THEN subq0.c6
          WHEN subq0.c9 IS NOT NULL THEN subq0.c5
          WHEN subq0.c8 <> subq0.c6 THEN subq0.c6
          WHEN subq0.c10 IS NOT NULL THEN subq0.c10
          ELSE subq1.c5
     END IS NULL THEN FALSE
         WHEN subq0.c10 = subq0.c5 THEN subq0.c8
         ELSE subq0.c7
    END THEN subq0.c10
        ELSE FALSE
   END <> NULLIF(
    CASE WHEN 
     CASE WHEN subq0.c7 = subq0.c5 THEN subq0.c8
          ELSE subq1.c5
     END = subq0.c5 THEN subq0.c8
         ELSE subq0.c10
    END, subq0.c8) THEN like(77,'text42')
       WHEN 
   CASE subq0.c10 WHEN subq0.c6 = subq0.c6 THEN subq0.c8
        ELSE TRUE
   END <> subq0.c10 OR subq1.c5 = subq0.c5 THEN subq0.c8
       ELSE 
   CASE WHEN subq0.c7 = 
    CASE WHEN subq0.c10 <> subq0.c6 THEN subq1.c5
         ELSE subq0.c8
    END AND subq0.c5 <> subq0.c5 AND subq0.c6 = subq0.c7 AND false THEN subq0.c9
        ELSE subq1.c5
   END
  END AS TEXT) AS c7, CAST(typeof( 33) AS BOOLEAN) AS c8, subq0.c8 AS c9, subq0.c9 AS c10, subq0.c10 AS c11, subq0.c8 AS c12, CAST(subq0.c10 AS BOOLEAN) AS c13, subq0.c6 AS c14, FALSE AS c15, subq0.c6 AS c16, subq0.c10 AS c17, subq1.c5 AS c18, subq0.c10 AS c19, subq1.c5 AS c20, 
 CASE WHEN subq0.c5 = subq0.c5 AND subq0.c10 = subq0.c7 THEN subq1.c5
      ELSE subq0.c8
 END AS c21, subq0.c8 AS c22, subq0.c9 AS c23, subq0.c7 AS c24
FROM (SELECT CAST(t2.c3 AS BOOLEAN) AS c5, t4.c0 AS c6, t1.c2 AS c7, CAST('text12' AS TEXT) AS c8, t2.c3 AS c9, FALSE AS c10
    FROM t0 AS t1
      LEFT JOIN (
      t0 AS t2
        INNER JOIN t0 AS t3        
         ON (TRUE <> t3.c4)
       INNER JOIN t0 AS t4       
        ON (t3.c2 = t4.c4)      )
       ON (t2.c0 <> t3.c1)
    WHERE false
    ORDER BY c6) as subq0
  LEFT JOIN (SELECT t5.c4 AS c5
    FROM t0 AS t5
    WHERE t5.c4 <> t5.c0
    ORDER BY c5
    LIMIT 6811456231352677695 OFFSET 4855463149379903292) as subq1  
   ON (subq0.c8 <> subq1.c5)
WHERE FALSE <> subq0.c7
ORDER BY c17 COLLATE BINARY, c21 ASC, c23 DESC
LIMIT 4282044708981676001 OFFSET 769262671411545049
;SELECT subq0.c5 AS c10
FROM (SELECT t1.c0 AS c5, t1.c1 AS c6, t1.c0 AS c7, t1.c1 AS c8, t1.c3 AS c9
   FROM t0 AS t1
   WHERE t1.c2 <> t1.c2
   ORDER BY c8
   LIMIT 8729806147205844901 OFFSET 5928218051544710455) as subq0
WHERE 
 CASE subq0.c9 WHEN subq0.c8 <> subq0.c8 THEN subq0.c9
      WHEN subq0.c9 IS NULL OR subq0.c6 = COALESCE(subq0.c9, subq0.c9, subq0.c9) AND 
  CASE WHEN subq0.c9 IS NOT NULL THEN subq0.c7
       ELSE IFNULL(TRUE, COALESCE(subq0.c9, subq0.c9, subq0.c9, rtrim( NULL)))
  END = subq0.c8 OR subq0.c6 = subq0.c6 OR 
  CASE subq0.c8 WHEN subq0.c7 = subq0.c7 THEN subq0.c8
       WHEN true OR false THEN subq0.c5
       WHEN subq0.c9 IS NOT NULL THEN subq0.c6
       WHEN 
   CASE subq0.c7 WHEN subq0.c9 = subq0.c9 THEN subq0.c6
        WHEN subq0.c6 <> subq0.c7 THEN subq0.c9
        WHEN false OR subq0.c7 <> subq0.c5 THEN subq0.c5
        WHEN subq0.c6 <> subq0.c8 THEN subq0.c5
        WHEN subq0.c7 = subq0.c5 THEN subq0.c5
        WHEN subq0.c6 <> subq0.c6 THEN subq0.c8
        WHEN subq0.c6 <> subq0.c5 THEN subq0.c5
        WHEN false THEN subq0.c7
        ELSE subq0.c8
   END IS NULL THEN subq0.c7
       ELSE subq0.c7
  END <> subq0.c8 THEN subq0.c7
      WHEN subq0.c9 = 
  CASE subq0.c9 WHEN subq0.c8 = subq0.c5 AND subq0.c6 IS NULL OR subq0.c6 IS NOT NULL THEN subq0.c9
       WHEN subq0.c8 <> subq0.c7 THEN subq0.c9
       WHEN subq0.c9 = subq0.c9 THEN subq0.c9
       WHEN subq0.c8 <> subq0.c6 OR 
   CASE subq0.c5 WHEN subq0.c7 <> subq0.c8 THEN subq0.c8
        WHEN subq0.c7 <> subq0.c8 THEN subq0.c9
        ELSE subq0.c9
   END IS NULL THEN subq0.c9
       ELSE subq0.c9
  END THEN substr(35,NULL,NULL)
      WHEN EXISTS (
  SELECT TRUE AS c5, t3.c1 AS c6
   FROM t0 AS t2
     LEFT JOIN t0 AS t3     
      ON (t2.c2 <> t3.c1 AND t2.c1 <> t2.c2)
   WHERE t2.c2 = COALESCE(t3.c2, TRUE)
   ORDER BY c5 DESC, c5 COLLATE BINARY, c5 COLLATE RTRIM, c5 ASC
   LIMIT 1247364859216158096 OFFSET 1073276695676670390
  ) THEN subq0.c8
      WHEN EXISTS (
  SELECT t4.c0 AS c5, t4.c2 AS c6, CAST(t4.c3 AS BOOLEAN) AS c7, t4.c4 AS c8, t4.c0 AS c9, 
    CASE WHEN trim( 34) IS NULL OR t4.c4 <> t4.c0 THEN t4.c0
         ELSE t4.c2
    END AS c10
   FROM t0 AS t4
   WHERE t4.c0 = t4.c2 OR t4.c2 <> t4.c0
   ORDER BY c8 DESC
  ) THEN subq0.c7
      WHEN subq0.c5 <> subq0.c8 THEN subq0.c6
      WHEN subq0.c9 IS NOT NULL THEN max(21,TRUE,100)
      WHEN false THEN subq0.c6
      WHEN subq0.c5 <> subq0.c8 OR false AND subq0.c6 IS NULL THEN subq0.c7
      WHEN 
  CASE subq0.c8 WHEN subq0.c5 = subq0.c8 THEN subq0.c5
       WHEN subq0.c5 = subq0.c5 THEN subq0.c7
       WHEN subq0.c8 = subq0.c8 THEN subq0.c5
       WHEN subq0.c6 = subq0.c6 THEN subq0.c7
       WHEN subq0.c5 IS NOT NULL THEN 
   CASE subq0.c7 WHEN EXISTS (
    SELECT t5.c1 AS c5, t5.c3 AS c6
     FROM t0 AS t5
     WHERE false
     ORDER BY c5 DESC
     LIMIT 3070194652881600981 OFFSET 4741050355799803806
    ) AND subq0.c7 <> subq0.c5 THEN subq0.c5
        WHEN subq0.c8 = subq0.c5 THEN subq0.c5
        WHEN subq0.c9 = subq0.c9 OR subq0.c5 <> subq0.c8 AND subq0.c7 IS NULL THEN subq0.c5
        WHEN true THEN subq0.c8
        WHEN false THEN subq0.c7
        WHEN true THEN subq0.c6
        ELSE subq0.c6
   END
       WHEN subq0.c6 <> subq0.c7 THEN IFNULL(subq0.c7, subq0.c8)
       WHEN subq0.c9 = subq0.c9 THEN subq0.c8
       WHEN subq0.c8 <> subq0.c6 THEN CAST(subq0.c7 AS INTEGER)
       WHEN subq0.c5 = subq0.c7 THEN subq0.c6
       ELSE CAST(
    CASE subq0.c7 WHEN EXISTS (
     SELECT t6.c0 AS c5, t6.c1 AS c6, t7.c1 AS c7, t6.c4 AS c8, t6.c3 AS c9
      FROM t0 AS t6
        INNER JOIN t0 AS t7        
         ON (t6.c0 = t7.c0)
      WHERE t7.c2 <> t7.c1
      ORDER BY c6 COLLATE NOCASE, c9, c8
      LIMIT 2764196109523022477 OFFSET 9194055099295359420
     ) AND subq0.c6 <> subq0.c7 THEN 
     CASE WHEN subq0.c5 = subq0.c7 OR subq0.c6 = subq0.c8 THEN subq0.c8
          ELSE subq0.c5
     END
         WHEN subq0.c6 = subq0.c6 THEN subq0.c8
         WHEN subq0.c7 <> subq0.c7 THEN subq0.c6
         WHEN subq0.c7 <> subq0.c6 THEN subq0.c9
         WHEN subq0.c7 = subq0.c7 OR subq0.c9 <> subq0.c9 THEN subq0.c8
         WHEN subq0.c9 = subq0.c9 THEN subq0.c9
         WHEN subq0.c9 <> NULL THEN subq0.c5
         WHEN subq0.c8 IS NOT NULL THEN subq0.c7
         WHEN true AND subq0.c9 IS NOT NULL THEN unlikely( FALSE)
         WHEN 
     CASE WHEN subq0.c5 <> subq0.c7 THEN subq0.c7
          ELSE TRUE
     END <> subq0.c6 THEN subq0.c7
         WHEN subq0.c9 IS NULL OR EXISTS (
     SELECT t8.c3 AS c5, t8.c3 AS c6, t8.c0 AS c7, t8.c2 AS c8, t8.c4 AS c9, t8.c1 AS c10, t8.c4 AS c11, t8.c1 AS c12, t8.c0 AS c13, t8.c3 AS c14, t8.c2 AS c15, t8.c0 AS c16, t8.c3 AS c17, t8.c1 AS c18, t8.c4 AS c19
      FROM t0 AS t8
      WHERE NULL = t8.c3
      ORDER BY c10
      LIMIT 3122744795586829020 
     ) OR 
     CASE subq0.c9 WHEN subq0.c9 <> subq0.c9 OR subq0.c6 = subq0.c7 OR subq0.c9 IS NULL AND subq0.c6 IS NULL THEN subq0.c9
          WHEN subq0.c7 = subq0.c7 THEN subq0.c9
          WHEN subq0.c6 IS NULL THEN subq0.c9
          WHEN subq0.c6 = subq0.c7 THEN subq0.c9
          WHEN subq0.c7 = subq0.c8 THEN subq0.c9
          WHEN subq0.c5 <> subq0.c8 AND subq0.c6 = subq0.c8 THEN subq0.c9
          WHEN false THEN subq0.c9
          WHEN subq0.c7 <> subq0.c8 THEN subq0.c9
          WHEN subq0.c7 IS NULL THEN subq0.c9
          WHEN subq0.c5 <> subq0.c8 THEN subq0.c9
          WHEN subq0.c6 IS NOT NULL THEN subq0.c9
          ELSE subq0.c9
     END = subq0.c9 THEN subq0.c8
         ELSE subq0.c7
    END AS TEXT)
  END <> subq0.c5 THEN char( '󼵮')
      WHEN subq0.c6 = subq0.c7 THEN subq0.c6
      WHEN subq0.c8 IS NOT NULL THEN 
  CASE WHEN EXISTS (
   SELECT subq1.c5 AS c12, subq1.c10 AS c13, subq1.c8 AS c14, subq1.c10 AS c15, subq1.c7 AS c16, subq1.c11 AS c17, subq1.c10 AS c18, subq1.c5 AS c19, subq1.c9 AS c20
    FROM (SELECT t9.c0 AS c5, t9.c0 AS c6, t9.c2 AS c7, t9.c2 AS c8, t9.c3 AS c9, t9.c1 AS c10, t9.c3 AS c11
       FROM t0 AS t9
       WHERE true AND t9.c0 <> t9.c0
       ORDER BY c7, c5 ASC
       LIMIT 2778362885039830866 OFFSET 5811718617283633353) as subq1
    WHERE subq1.c8 <> subq1.c8
    ORDER BY c17 DESC, c12
    LIMIT 9109567191522946396 OFFSET 3500177592994566692
   ) AND trim( TRUE) IS NULL OR 
   CASE WHEN subq0.c7 IS NULL AND true AND subq0.c9 = subq0.c9 AND subq0.c9 <> subq0.c9 THEN subq0.c5
        ELSE subq0.c7
   END = subq0.c6 OR subq0.c7 <> subq0.c7 AND subq0.c6 <> subq0.c5 OR subq0.c9 IS NOT NULL THEN subq0.c6
       ELSE subq0.c7
  END
      ELSE subq0.c5
 END IS NOT NULL
ORDER BY c10 DESC, c10, c10, c10
LIMIT 1622685772403696748 OFFSET 4249764861911309633
;SELECT subq0.c9 AS c12, subq0.c6 AS c13, subq0.c9 AS c14, subq0.c10 AS c15, subq0.c8 AS c16
FROM (SELECT t1.c0 AS c5, t1.c3 AS c6, t1.c1 AS c7, t1.c0 AS c8, t1.c0 AS c9, t1.c3 AS c10, t1.c0 AS c11
   FROM t0 AS t1
   WHERE t1.c1 = t1.c2
   ORDER BY c7
   LIMIT 902719237873040448 OFFSET 4652970233758824993) as subq0
WHERE subq0.c5 = 
 CASE subq0.c8 WHEN subq0.c6 <> subq0.c10 THEN subq0.c7
      WHEN false THEN subq0.c9
      WHEN TRUE <> subq0.c7 AND subq0.c11 IS NULL AND subq0.c7 <> subq0.c8 AND subq0.c7 = subq0.c8 THEN subq0.c8
      WHEN subq0.c6 = subq0.c10 THEN subq0.c11
      WHEN subq0.c8 = subq0.c9 THEN subq0.c9
      WHEN subq0.c5 = COALESCE(subq0.c10, subq0.c8) AND false THEN subq0.c5
      ELSE 
  CASE subq0.c8 WHEN subq0.c9 <> subq0.c11 THEN subq0.c7
       WHEN subq0.c6 IS NULL THEN subq0.c11
       WHEN true AND CAST(subq0.c8 AS INTEGER) = subq0.c9 THEN subq0.c5
       WHEN subq0.c9 = TRUE AND subq0.c7 <> subq0.c11 THEN CAST('text94' AS BOOLEAN)
       WHEN false OR true THEN subq0.c5
       WHEN subq0.c7 <> FALSE THEN subq0.c7
       WHEN subq0.c6 = 
   CASE WHEN false THEN subq0.c10
        ELSE 
    CASE subq0.c6 WHEN subq0.c5 <> subq0.c5 AND EXISTS (
     SELECT t2.c1 AS c5, t2.c1 AS c6, t2.c1 AS c7
      FROM t0 AS t2
      WHERE true
      ORDER BY c5 COLLATE NOCASE ASC
      LIMIT 3209544238373600707 OFFSET 3717375196467995736
     ) THEN subq0.c10
         WHEN subq0.c5 <> subq0.c11 OR subq0.c9 <> subq0.c8 OR subq0.c8 IS NULL OR subq0.c8 IS NOT NULL THEN subq0.c6
         WHEN subq0.c5 IS NULL THEN subq0.c6
         WHEN subq0.c11 <> subq0.c7 AND subq0.c11 IS NOT NULL AND false THEN subq0.c10
         WHEN subq0.c6 <> subq0.c6 THEN subq0.c10
         ELSE subq0.c6
    END
   END THEN subq0.c5
       WHEN EXISTS (
   SELECT t3.c4 AS c5, t3.c3 AS c6
    FROM t0 AS t3
    WHERE t3.c4 = t3.c0
    ORDER BY c5 ASC
   ) THEN subq0.c11
       WHEN true THEN subq0.c7
       ELSE subq0.c11
  END
 END
ORDER BY c13 DESC, c15 COLLATE NOCASE
;SELECT subq0.c8 AS c11, subq0.c6 AS c12, 
 CASE WHEN subq0.c8 = subq0.c10 THEN subq0.c7
      ELSE subq0.c7
 END AS c13, subq0.c9 AS c14, subq0.c10 AS c15, subq0.c6 AS c16, subq0.c9 AS c17, subq0.c7 AS c18, COALESCE(subq0.c6, subq0.c8, subq0.c8, subq0.c5, subq0.c7) AS c19
FROM (SELECT t2.c1 AS c5, t1.c2 AS c6, t3.c3 AS c7, t3.c4 AS c8, t3.c4 AS c9, t2.c1 AS c10
   FROM t0 AS t1
      LEFT OUTER JOIN t0 AS t2      
       ON (t1.c0 = t2.c0)
     LEFT JOIN t0 AS t3     
      ON (t3.c0 <> t2.c4 OR false)
   WHERE t2.c3 = t3.c3
   ORDER BY c8 DESC
   LIMIT 2692075423974895261 OFFSET 5445991424498385090) as subq0
WHERE subq0.c6 <> subq0.c5 AND subq0.c10 = subq0.c6 OR subq0.c7 = NULLIF(subq0.c7, NULL) AND 
 CASE WHEN EXISTS (
  SELECT 
    CASE WHEN NULL IS NOT NULL THEN t4.c0
         ELSE t4.c2
    END AS c5, t4.c3 AS c6, t4.c1 AS c7, t4.c2 AS c8, t4.c2 AS c9, t4.c0 AS c10, t4.c3 AS c11, t4.c3 AS c12, t4.c3 AS c13, t4.c4 AS c14
   FROM t0 AS t4
   WHERE t4.c4 IS NULL OR t4.c2 IS NULL AND true
   ORDER BY c12, c9
   LIMIT 6078854612527124504 OFFSET 1711488418446664467
  ) THEN subq0.c8
      ELSE COALESCE(subq0.c5, subq0.c10, COALESCE(subq0.c9, subq0.c7, subq0.c7, subq0.c6, 
    CASE subq0.c6 WHEN EXISTS (
     SELECT t5.c3 AS c5
      FROM t0 AS t5
      WHERE true AND t5.c1 = t5.c0
      ORDER BY c5, c5 ASC, c5, c5
      LIMIT 7452966359713307945 OFFSET 5953572179060453113
     ) AND subq0.c8 = subq0.c5 THEN subq0.c10
         ELSE subq0.c8
    END, subq0.c8))
 END = COALESCE(subq0.c10, subq0.c5, subq0.c7, subq0.c8)
ORDER BY c14 DESC, c15
LIMIT 1772850260710518710 OFFSET 2873757911005537959
;SELECT 
 CASE WHEN false AND t1.c3 <> 
  CASE t1.c3 WHEN t1.c2 = TRUE THEN t1.c3
       WHEN t1.c2 = t1.c2 THEN 
   CASE t1.c3 WHEN t1.c2 <> t1.c2 THEN t1.c3
        WHEN t1.c3 IS NULL OR t1.c2 = t1.c0 AND t1.c3 = t1.c3 THEN t1.c3
        WHEN t1.c1 IS NULL THEN t1.c3
        ELSE NULL
   END
       WHEN t1.c1 <> t1.c1 AND t1.c1 <> t1.c0 THEN t1.c3
       WHEN EXISTS (
   SELECT t2.c3 AS c5, t2.c3 AS c6, t2.c3 AS c7, t2.c3 AS c8, t2.c1 AS c9, t2.c0 AS c10, t2.c0 AS c11, t2.c3 AS c12, t2.c1 AS c13, t2.c4 AS c14, t2.c2 AS c15, t2.c4 AS c16, t2.c1 AS c17
    FROM t0 AS t2
    WHERE t2.c3 = t2.c3
    ORDER BY c12, c17 ASC
    LIMIT 8067746387408932234 OFFSET 2062687125216495165
   ) AND t1.c4 = t1.c1 THEN t1.c3
       WHEN COALESCE(t1.c4, t1.c3, NULL, t1.c0) = t1.c0 THEN t1.c3
       WHEN t1.c3 IS NULL AND t1.c3 <> t1.c3 THEN t1.c3
       WHEN t1.c2 <> CAST(t1.c3 AS TEXT) THEN t1.c3
       WHEN EXISTS (
   SELECT t3.c3 AS c5, t3.c1 AS c6, t3.c0 AS c7, t3.c1 AS c8, t3.c2 AS c9, t3.c3 AS c10, t3.c2 AS c11, t3.c0 AS c12
    FROM t0 AS t3
    WHERE t3.c4 = t3.c0
    ORDER BY c6 DESC, c8, c9
   ) OR t1.c2 <> t1.c4 THEN 
   CASE WHEN t1.c2 = t1.c1 THEN t1.c3
        ELSE t1.c3
   END
       WHEN t1.c1 = t1.c2 THEN t1.c3
       ELSE t1.c3
  END THEN t1.c3
      ELSE t1.c3
 END AS c13, t1.c3 AS c14, t1.c2 AS c15, t1.c4 AS c16, t1.c0 AS c17, t1.c0 AS c18, t1.c2 AS c19, t1.c0 AS c20
FROM t0 AS t1
WHERE t1.c0 = 
 CASE t1.c4 WHEN t1.c0 IS NOT NULL THEN t1.c4
      WHEN t1.c1 = FALSE THEN t1.c2
      WHEN t1.c2 <> t1.c4 THEN t1.c1
      WHEN t1.c4 <> t1.c0 THEN t1.c2
      WHEN true THEN t1.c4
      WHEN t1.c3 <> 
  CASE WHEN t1.c1 IS NOT NULL THEN t1.c3
       ELSE t1.c3
  END THEN t1.c0
      WHEN COALESCE(t1.c3, IFNULL(t1.c4, t1.c4), 
   CASE t1.c4 WHEN t1.c0 <> t1.c1 THEN t1.c1
        WHEN NULL <> t1.c3 OR t1.c1 <> t1.c0 OR NULL = t1.c3 THEN t1.c0
        WHEN t1.c3 = t1.c3 THEN t1.c1
        WHEN t1.c3 <> t1.c3 THEN t1.c2
        WHEN t1.c3 = t1.c3 THEN t1.c1
        WHEN t1.c3 = COALESCE(t1.c3, t1.c0, t1.c3, t1.c4, t1.c3) OR t1.c1 <> t1.c4 THEN t1.c0
        WHEN t1.c3 = 
    CASE WHEN true THEN t1.c3
         ELSE NULL
    END AND t1.c1 = t1.c1 AND false AND t1.c1 <> t1.c0 THEN t1.c4
        WHEN t1.c2 = t1.c0 THEN t1.c0
        WHEN t1.c1 IS NULL THEN t1.c1
        WHEN t1.c3 <> t1.c3 THEN t1.c0
        WHEN t1.c2 IS NOT NULL THEN t1.c4
        ELSE t1.c4
   END, t1.c3) <> t1.c1 THEN t1.c2
      WHEN t1.c4 = t1.c1 THEN t1.c1
      WHEN t1.c0 = t1.c4 THEN t1.c2
      WHEN t1.c1 <> COALESCE(FALSE, t1.c3, t1.c2, t1.c2, t1.c4, t1.c3) THEN t1.c1
      WHEN t1.c3 <> NULL THEN t1.c2
      ELSE t1.c0
 END
ORDER BY c19 ASC
LIMIT 517991967470516283 
;SELECT CAST(
  CASE subq0.c9 WHEN subq0.c7 = subq0.c9 THEN like(NULL,TRUE)
       WHEN EXISTS (
   SELECT t4.c2 AS c5, t4.c4 AS c6, IFNULL(COALESCE(t4.c1, t4.c2, t4.c1, t4.c2, t5.c3), t5.c2) AS c7, t4.c3 AS c8, t4.c4 AS c9, t4.c2 AS c10, t5.c0 AS c11, t4.c3 AS c12, COALESCE(t4.c4, t4.c3) AS c13, t4.c4 AS c14, t5.c4 AS c15
    FROM t0 AS t4
      LEFT JOIN t0 AS t5      
       ON (t4.c0 = t5.c0)
    WHERE true
    ORDER BY c10 ASC, c11 COLLATE BINARY, c13 ASC
   ) OR EXISTS (
   SELECT t6.c4 AS c5, t6.c1 AS c6, t6.c3 AS c7
    FROM t0 AS t6
    WHERE t6.c1 <> t6.c0 OR false
    ORDER BY c6 ASC, c5
    LIMIT 6345119400205409753 
   ) AND true AND subq0.c6 <> subq0.c8 AND subq0.c8 = subq0.c8 THEN subq0.c7
       WHEN subq0.c6 = subq0.c6 THEN subq0.c9
       WHEN subq0.c5 IS NULL OR subq0.c9 <> subq0.c8 THEN subq0.c7
       WHEN COALESCE(NULL, subq0.c5) = subq0.c8 THEN subq0.c9
       WHEN subq0.c5 IS NOT NULL THEN round( 9)
       WHEN subq0.c5 <> subq0.c5 THEN subq0.c7
       WHEN subq0.c6 = subq0.c8 THEN subq0.c5
       WHEN subq0.c5 <> subq0.c5 THEN 'text23'
       WHEN subq0.c8 IS NOT NULL THEN subq0.c5
       ELSE subq0.c7
  END AS BOOLEAN) AS c8, IFNULL(subq0.c8, subq0.c6) AS c9
FROM (SELECT NULL AS c5, TRUE AS c6, t1.c4 AS c7, t1.c0 AS c8, t1.c1 AS c9
   FROM t0 AS t1
   WHERE EXISTS (
    SELECT t2.c4 AS c5
     FROM t0 AS t2
       INNER JOIN t0 AS t3       
        ON (t3.c2 <> t2.c0)
     WHERE t3.c3 <> t3.c3
     ORDER BY c5, c5, c5, c5 ASC
    )
   ORDER BY c8 ASC, c8 ASC
   LIMIT 6250857752555542615 OFFSET 8224861665079070160) as subq0
WHERE true
ORDER BY c8
LIMIT 2957529158935375139 OFFSET 3000947446062230456
;SELECT t1.c0 AS c5, t1.c1 AS c6, t1.c2 AS c7, t1.c4 AS c8
FROM t0 AS t1
WHERE t1.c4 = t1.c0
ORDER BY c6 ASC, c6 COLLATE NOCASE
LIMIT 7380133253529618337 OFFSET 4132230358966642340
;SELECT TRUE AS c5, t5.c3 AS c6, t5.c0 AS c7, t5.c4 AS c8, t4.c3 AS c9, 
 CASE t5.c3 WHEN subq0.c6 <> t4.c0 THEN t5.c3
      WHEN t5.c3 <> t4.c3 THEN t4.c3
      WHEN subq0.c6 <> COALESCE(t4.c2, t4.c1, NULL) THEN t4.c3
      WHEN t4.c2 <> t4.c0 THEN t4.c3
      WHEN t4.c0 = t4.c0 OR t4.c0 = subq0.c5 AND subq0.c5 = subq0.c7 OR IFNULL(COALESCE(t5.c3, 
    CASE t4.c3 WHEN t5.c0 = IFNULL(
      CASE t5.c2 WHEN t4.c1 IS NOT NULL THEN t4.c2
           WHEN t5.c0 IS NULL THEN t5.c2
           WHEN t4.c4 = t5.c1 THEN subq0.c7
           WHEN t5.c0 IS NULL THEN t5.c2
           WHEN t5.c2 <> t4.c1 THEN t5.c4
           WHEN t4.c1 = t5.c2 THEN t4.c4
           WHEN EXISTS (
       SELECT t6.c2 AS c5, t6.c4 AS c6
        FROM t0 AS t6
        WHERE t6.c2 IS NULL
        ORDER BY c5 ASC, c5 COLLATE RTRIM DESC, c6 ASC, c6
        LIMIT 1457593903525327723 OFFSET 1292579544105021596
       ) THEN t5.c0
           ELSE t5.c0
      END, subq0.c7) THEN t4.c3
         WHEN EXISTS (
     SELECT t7.c0 AS c5, t7.c2 AS c6, t7.c4 AS c7, TRUE AS c8, t7.c0 AS c9, t7.c2 AS c10
      FROM t0 AS t7
      WHERE t7.c4 = t7.c1
      ORDER BY c10
      LIMIT 8595510609548272317 
     ) OR t5.c0 <> subq0.c6 AND replace(NULL,93,NULL) IS NOT NULL THEN CAST(subq0.c6 AS BOOLEAN)
         WHEN subq0.c7 <> t5.c2 THEN t5.c3
         WHEN t4.c0 <> t5.c0 THEN t5.c3
         WHEN t5.c4 <> subq0.c7 THEN 
     CASE WHEN t4.c4 <> t5.c4 THEN t5.c3
          ELSE t5.c3
     END
         WHEN t5.c1 = t5.c4 THEN t5.c3
         WHEN t4.c1 = t5.c1 THEN t4.c3
         WHEN t4.c3 <> t5.c3 THEN t5.c3
         WHEN t4.c4 <> t5.c4 THEN t5.c3
         WHEN t4.c0 = t5.c4 THEN t5.c3
         WHEN false THEN t4.c3
         ELSE t5.c3
    END, NULL, COALESCE(t4.c3, NULL, t5.c3, t4.c3, quote( 'text50'), t4.c1), t5.c3, t5.c1), t4.c3) = t5.c3 THEN t4.c3
      WHEN t4.c2 <> t5.c0 THEN NULL
      WHEN t4.c4 IS NOT NULL THEN t4.c3
      WHEN t5.c2 = 
  CASE WHEN subq0.c6 <> t5.c2 OR 
   CASE WHEN EXISTS (
    SELECT t8.c4 AS c5, t8.c3 AS c6, FALSE AS c7
     FROM t0 AS t8
     WHERE t8.c2 <> t8.c4
     ORDER BY c6
    ) AND false OR t5.c1 = t4.c4 OR t4.c0 = subq0.c5 AND TRUE <> t5.c2 THEN t5.c4
        ELSE t4.c4
   END <> t4.c1 THEN t5.c4
       ELSE t5.c4
  END THEN t5.c3
      WHEN EXISTS (
  SELECT t9.c3 AS c5, t9.c3 AS c6, t9.c1 AS c7, t9.c1 AS c8, t9.c0 AS c9
   FROM t0 AS t9
   WHERE TRUE = FALSE AND t9.c4 = t9.c0 AND t9.c3 = t9.c3 AND t9.c2 = t9.c0
   ORDER BY c6 ASC, c8, c8 COLLATE NOCASE DESC
   LIMIT 4317673371097146092 OFFSET 9069877977619361287
  ) THEN t5.c3
      ELSE t4.c3
 END AS c10
FROM (SELECT t1.c0 AS c5, CAST(t1.c1 AS INTEGER) AS c6, t1.c0 AS c7
     FROM t0 AS t1
     WHERE EXISTS (
      SELECT t2.c3 AS c5
       FROM t0 AS t2
       WHERE EXISTS (
        SELECT ALL t3.c4 AS c5, t3.c1 AS c6
         FROM t0 AS t3
         WHERE true
         ORDER BY c5, c6
         LIMIT 7882291863581626889 
        )
       ORDER BY c5, c5 DESC, c5, c5 DESC
       LIMIT 4166197038051909141 OFFSET 3225769124959421369
      ) OR t1.c3 = t1.c3
     ORDER BY c5
     LIMIT 2884626795283549314 OFFSET 4129935474908149535) as subq0
   LEFT JOIN t0 AS t4   
    ON (subq0.c7 = t4.c0)
  LEFT JOIN t0 AS t5  
   ON (subq0.c5 = t5.c0)
WHERE FALSE = 
 CASE subq0.c7 WHEN t4.c2 = t4.c1 THEN t5.c1
      WHEN t4.c0 = t5.c0 AND subq0.c6 IS NULL AND subq0.c5 = t5.c2 OR t5.c0 = t4.c1 AND t4.c1 = t5.c1 THEN TRUE
      WHEN subq0.c5 <> t4.c1 THEN 
  CASE WHEN 
   CASE WHEN true THEN t5.c1
        ELSE subq0.c6
   END IS NOT NULL THEN t4.c2
       ELSE t5.c2
  END
      WHEN t5.c1 = t5.c1 THEN t4.c0
      WHEN CAST(subq0.c7 AS INTEGER) = subq0.c6 AND round( 74) IS NULL OR false AND t4.c0 = t5.c1 AND EXISTS (
  SELECT COALESCE(t10.c2, t10.c4, TRUE, t10.c3, t10.c4) AS c5, t10.c4 AS c6
   FROM t0 AS t10
   WHERE t10.c2 IS NOT NULL
   ORDER BY c5, c5 ASC, c6 ASC, c6 ASC
  ) AND subq0.c6 IS NOT NULL AND subq0.c6 = 
  CASE WHEN 
   CASE WHEN t4.c1 = t4.c4 THEN t4.c2
        ELSE t4.c2
   END = t5.c4 OR t4.c2 = t5.c1 AND subq0.c6 = t5.c1 AND t4.c3 <> t4.c3 OR EXISTS (
   SELECT FALSE AS c6, CAST(subq1.c5 AS BOOLEAN) AS c7
    FROM (SELECT t11.c1 AS c5
       FROM t0 AS t11
       WHERE t11.c2 <> t11.c2
       ORDER BY c5, c5 DESC, c5, c5 COLLATE BINARY
       LIMIT 3783988338597439365 ) as subq1
    WHERE true AND subq1.c5 = subq1.c5
    ORDER BY c7, c7
   ) OR char( '񞞍') IS NULL AND t4.c1 = subq0.c6 OR t5.c0 <> t4.c0 OR subq0.c5 <> subq0.c6 AND t5.c0 <> subq0.c5 AND subq0.c5 = t5.c1 AND t5.c0 <> 
   CASE WHEN t5.c0 = t4.c1 THEN subq0.c7
        ELSE t4.c0
   END AND subq0.c7 = t4.c0 AND t4.c4 = 
   CASE t5.c4 WHEN t4.c3 = t5.c3 AND EXISTS (
    SELECT t12.c1 AS c5, TRUE AS c6, t12.c4 AS c7, t12.c3 AS c8, t12.c3 AS c9, t12.c3 AS c10, t12.c4 AS c11, t12.c3 AS c12, t12.c3 AS c13
     FROM t0 AS t12
     WHERE t12.c1 = t12.c2
     ORDER BY c8, c13 DESC, c9 ASC
    ) THEN t5.c0
        WHEN t5.c3 = t5.c3 OR subq0.c7 <> 
    CASE t5.c4 WHEN true THEN t4.c2
         WHEN t4.c0 = t5.c1 THEN subq0.c7
         WHEN t4.c0 = t4.c4 THEN t4.c2
         WHEN subq0.c6 = t4.c0 THEN t5.c0
         WHEN t4.c0 <> t5.c0 THEN t5.c1
         WHEN EXISTS (
     SELECT t13.c1 AS c5, t13.c1 AS c6, t13.c4 AS c7
      FROM t0 AS t13
      WHERE t13.c0 = t13.c2
      ORDER BY c5 ASC, c7 ASC
      LIMIT 6168417241160984290 
     ) THEN FALSE
         WHEN 
     CASE WHEN true THEN t5.c1
          ELSE t5.c0
     END = t5.c4 THEN subq0.c5
         ELSE t5.c0
    END THEN t4.c4
        WHEN t5.c1 <> t5.c4 THEN t5.c2
        WHEN true AND EXISTS (
    SELECT t14.c2 AS c5, t14.c3 AS c6, t14.c2 AS c7
     FROM t0 AS t14
     WHERE false
     ORDER BY c6, c7
     LIMIT 2529889715863382023 
    ) OR 
    CASE t5.c4 WHEN t5.c2 <> t5.c4 THEN t4.c4
         WHEN subq0.c6 = t4.c2 THEN t4.c4
         WHEN true THEN t4.c1
         WHEN NULLIF(subq0.c7, subq0.c7) IS NOT NULL THEN t4.c2
         WHEN subq0.c5 = t5.c2 OR t4.c2 IS NULL OR t5.c3 = t4.c3 OR 52 IS NOT NULL AND subq0.c7 IS NULL OR t5.c2 <> t4.c4 THEN t4.c2
         WHEN subq0.c6 <> t4.c0 OR false THEN subq0.c5
         WHEN t5.c1 = t4.c4 THEN t5.c1
         WHEN t5.c2 = subq0.c6 THEN t5.c4
         WHEN t4.c0 IS NOT NULL THEN t4.c2
         ELSE subq0.c5
    END = subq0.c7 AND EXISTS (
    SELECT t15.c0 AS c5, t15.c4 AS c6, t15.c1 AS c7, t15.c0 AS c8, t15.c3 AS c9, t15.c0 AS c10, TRUE AS c11, t15.c1 AS c12, t15.c1 AS c13, t15.c2 AS c14, 
      CASE WHEN t15.c2 = t15.c2 OR t15.c2 IS NOT NULL OR true THEN t15.c2
           ELSE t15.c2
      END AS c15, t15.c3 AS c16, t15.c4 AS c17, t15.c0 AS c18, t15.c1 AS c19, t15.c1 AS c20, t15.c1 AS c21, t15.c3 AS c22, t15.c1 AS c23, t15.c2 AS c24
     FROM t0 AS t15
     WHERE t15.c3 = t15.c3
     ORDER BY c17, c5 DESC
     LIMIT 402787032451598616 
    ) AND CAST(subq0.c7 AS TEXT) <> t5.c4 AND ifnull(NULL,NULL) IS NULL OR t5.c2 <> t4.c2 THEN t4.c1
        WHEN t5.c1 = t4.c0 THEN t5.c4
        WHEN EXISTS (
    SELECT t16.c0 AS c5
     FROM t0 AS t16
       LEFT OUTER JOIN t0 AS t17       
        ON (t17.c4 = t17.c4 AND t16.c1 <> t17.c1)
     WHERE t17.c4 <> t17.c4 OR t16.c2 = t16.c4
     ORDER BY c5, c5 DESC, c5 ASC, c5
    ) OR 
    CASE WHEN subq0.c5 <> t5.c4 OR t5.c0 = subq0.c7 OR t5.c0 <> t5.c2 AND t4.c2 IS NOT NULL OR subq0.c7 = subq0.c6 OR t4.c4 <> t4.c2 THEN t5.c0
         ELSE subq0.c7
    END <> subq0.c5 THEN FALSE
        ELSE t4.c4
   END THEN TRUE
       ELSE t4.c1
  END AND subq0.c5 IS NULL THEN subq0.c6
      ELSE NULLIF(t5.c4, t5.c0)
 END
ORDER BY c5
;SELECT t1.c2 AS c5
FROM t0 AS t1
WHERE t1.c3 IS NOT NULL
ORDER BY c5 DESC, c5 DESC, c5, c5
LIMIT 7511501693464091309 OFFSET 2593332697666341708
;SELECT t1.c2 AS c5, t1.c3 AS c6, t1.c1 AS c7, t1.c4 AS c8, 
 CASE WHEN t1.c4 <> t1.c0 AND EXISTS (
  SELECT t4.c0 AS c5, t3.c1 AS c6, COALESCE(t2.c3, t3.c3) AS c7, t4.c3 AS c8, t3.c1 AS c9, t3.c0 AS c10, t2.c2 AS c11, t2.c1 AS c12, t2.c2 AS c13
   FROM t0 AS t2
     LEFT JOIN (
     t0 AS t3
      INNER JOIN t0 AS t4      
       ON (false)     )
      ON (t2.c0 = t4.c0)
   WHERE t4.c0 = t2.c1
   ORDER BY c5 COLLATE NOCASE
   LIMIT 3689926487627889613 OFFSET 3134973190160014108
  ) THEN t1.c2
      ELSE t1.c2
 END AS c14, t1.c1 AS c15, t1.c2 AS c16, t1.c4 AS c17, t1.c0 AS c18, NULL AS c19, t1.c2 AS c20
FROM t0 AS t1
WHERE t1.c3 <> 
 CASE WHEN t1.c3 <> t1.c3 THEN t1.c3
      ELSE t1.c3
 END AND t1.c2 = t1.c4 OR NULL = t1.c3 AND false AND t1.c3 <> t1.c3
ORDER BY c18 DESC
;SELECT subq0.c10 AS c7, subq1.c6 AS c8, subq0.c5 AS c9
FROM (SELECT t1.c1 AS c5, t1.c0 AS c6, t1.c1 AS c7, t1.c4 AS c8, t1.c2 AS c9, t1.c2 AS c10, COALESCE(t1.c1, t1.c2, t1.c3) AS c11, t1.c3 AS c12, t1.c3 AS c13, t1.c0 AS c14, t1.c1 AS c15, t1.c0 AS c16, t1.c0 AS c17, t1.c3 AS c18, t1.c3 AS c19, t1.c1 AS c20, t1.c1 AS c21, t1.c2 AS c22, t1.c3 AS c23
    FROM t0 AS t1
    WHERE EXISTS (
     SELECT t2.c1 AS c5, TRUE AS c6, NULL AS c7, t2.c4 AS c8, t2.c0 AS c9, t2.c2 AS c10, t2.c3 AS c11, t2.c0 AS c12, FALSE AS c13, t2.c1 AS c14, FALSE AS c15, t2.c0 AS c16, t2.c0 AS c17, t2.c0 AS c18, t2.c3 AS c19, t2.c2 AS c20
      FROM t0 AS t2
      WHERE t2.c1 <> t2.c1
      ORDER BY c10 ASC
      LIMIT 2180512414540148351 OFFSET 4640261295987126407
     )
    ORDER BY c19, c14
    LIMIT 5272730938419523083 OFFSET 5168465675604113417) as subq0
  LEFT JOIN (SELECT t6.c4 AS c5, t4.c3 AS c6
    FROM t0 AS t3
      INNER JOIN (
      t0 AS t4
        INNER JOIN t0 AS t5        
         ON (false)
       LEFT JOIN t0 AS t6       
        ON (t5.c1 <> t5.c4 OR false)      )
       ON (false AND false AND NULL IS NULL)
    WHERE t3.c1 <> t6.c1
    ORDER BY c5 DESC) as subq1  
   ON (true)
WHERE subq0.c11 <> subq0.c9
ORDER BY c9
LIMIT 4939590953637031936 OFFSET 5524567969415247392
;SELECT t1.c1 AS c5
FROM t0 AS t1
WHERE t1.c2 IS NULL OR 
 CASE WHEN t1.c3 = t1.c3 THEN t1.c0
      ELSE t1.c0
 END <> t1.c1 OR t1.c3 <> t1.c3
ORDER BY c5 ASC, c5 ASC, c5, c5 COLLATE NOCASE ASC
;SELECT TRUE AS c5, t1.c3 AS c6, t1.c0 AS c7, 
 CASE t1.c1 WHEN t1.c3 = NULL AND EXISTS (
  SELECT t2.c3 AS c5
   FROM t0 AS t2
     INNER JOIN t0 AS t3     
      ON (true)
   WHERE t2.c3 IS NOT NULL
   ORDER BY c5 COLLATE NOCASE DESC
  ) THEN t1.c0
      ELSE t1.c0
 END AS c6, 
 CASE WHEN t1.c3 <> t1.c3 AND 
  CASE WHEN t1.c2 <> CAST(t1.c0 AS TEXT) AND EXISTS (
   SELECT t5.c4 AS c5
    FROM t0 AS t4
      LEFT JOIN t0 AS t5      
       ON (false)
    WHERE t4.c3 <> t4.c3
    ORDER BY c5 DESC, c5 DESC, c5 COLLATE BINARY ASC, c5
   ) THEN CAST(t1.c4 AS BOOLEAN)
       ELSE t1.c3
  END = t1.c3 THEN t1.c3
      ELSE t1.c3
 END AS c6, t1.c4 AS c7
FROM t0 AS t1
WHERE t1.c3 <> t1.c3 AND t1.c1 = COALESCE(t1.c2, t1.c1, t1.c3) OR t1.c4 = t1.c4 OR t1.c4 = COALESCE(t1.c4, t1.c0, 
  CASE WHEN t1.c4 <> 
   CASE t1.c0 WHEN t1.c2 = t1.c4 THEN t1.c4
        WHEN t1.c3 = COALESCE(t1.c3, NULL) THEN t1.c4
        WHEN EXISTS (
    SELECT t6.c4 AS c5, t6.c1 AS c6, t6.c3 AS c7, t6.c3 AS c8, t6.c0 AS c9, t6.c0 AS c10, t6.c3 AS c11, t6.c3 AS c12, FALSE AS c13, 
      CASE WHEN t6.c1 = t6.c1 AND t6.c0 <> t6.c0 THEN t6.c3
           ELSE t6.c3
      END AS c14, t6.c3 AS c15, t6.c0 AS c16, t6.c1 AS c17
     FROM t0 AS t6
     WHERE t6.c3 = t6.c3 AND t6.c1 = t6.c2
     ORDER BY c8, c5 DESC
     LIMIT 1276840041129647995 OFFSET 6082513240452225335
    ) THEN t1.c1
        WHEN t1.c4 IS NULL THEN TRUE
        WHEN t1.c0 = t1.c1 THEN t1.c2
        ELSE t1.c1
   END THEN t1.c0
       ELSE t1.c0
  END, t1.c1, instr(62,TRUE), t1.c3)
ORDER BY c6 COLLATE RTRIM
LIMIT 8825020769783934521 
;SELECT 
 CASE WHEN subq0.c8 <> subq0.c8 THEN 
  CASE WHEN subq0.c7 IS NOT NULL THEN subq0.c5
       ELSE subq0.c7
  END
      ELSE 
  CASE subq0.c8 WHEN subq0.c6 IS NOT NULL THEN subq0.c8
       WHEN subq0.c8 = subq0.c6 THEN subq0.c8
       WHEN CAST(
    CASE subq0.c6 WHEN subq0.c6 <> subq0.c6 THEN 'text56'
         WHEN subq0.c5 IS NULL THEN TRUE
         WHEN false THEN subq0.c8
         WHEN subq0.c8 = TRUE OR subq0.c7 IS NOT NULL AND ltrim( 'text93') IS NULL THEN subq0.c5
         WHEN subq0.c7 <> subq0.c5 THEN subq0.c7
         WHEN subq0.c7 <> subq0.c7 THEN subq0.c6
         WHEN subq0.c6 <> subq0.c7 THEN subq0.c5
         WHEN subq0.c6 = subq0.c7 THEN subq0.c8
         ELSE subq0.c5
    END AS TEXT) <> 
   CASE subq0.c6 WHEN EXISTS (
    SELECT t2.c1 AS c5
     FROM t0 AS t2
     WHERE t2.c0 = t2.c2 AND t2.c3 = t2.c3 AND t2.c4 <> t2.c0
     ORDER BY c5
     LIMIT 6711247904929206241 
    ) THEN subq0.c6
        WHEN true AND false OR false THEN subq0.c5
        WHEN EXISTS (
    SELECT t3.c3 AS c5, t3.c2 AS c6, t3.c3 AS c7, t3.c4 AS c8
     FROM t0 AS t3
       CROSS JOIN t0 AS t4       
        ON (t3.c4 <> t4.c4)
     WHERE t3.c1 <> t4.c1
     ORDER BY c6 COLLATE NOCASE ASC, c5
     LIMIT 5593116128854275138 
    ) THEN subq0.c6
        WHEN subq0.c6 <> subq0.c8 THEN subq0.c5
        WHEN COALESCE(subq0.c5, subq0.c5, COALESCE(subq0.c8, subq0.c6, subq0.c6, TRUE, subq0.c7), changes(), subq0.c5, changes()) IS NOT NULL OR subq0.c8 <> subq0.c8 OR false OR subq0.c5 IS NOT NULL AND true AND subq0.c5 = subq0.c5 OR subq0.c6 IS NULL THEN subq0.c5
        WHEN subq0.c5 = subq0.c5 THEN subq0.c7
        WHEN subq0.c7 <> subq0.c7 THEN FALSE
        WHEN subq0.c6 = subq0.c6 THEN 
    CASE subq0.c6 WHEN subq0.c6 = subq0.c6 THEN subq0.c7
         WHEN COALESCE(subq0.c8, 
      CASE subq0.c8 WHEN subq0.c6 <> subq0.c7 THEN subq0.c7
           WHEN subq0.c7 = subq0.c8 THEN subq0.c5
           WHEN EXISTS (
       SELECT t5.c1 AS c5, t5.c3 AS c6, t5.c1 AS c7, t5.c2 AS c8, t5.c2 AS c9, t5.c4 AS c10, t5.c1 AS c11, t5.c2 AS c12, t5.c3 AS c13
        FROM t0 AS t5
        WHERE false AND t5.c0 <> t5.c2 AND t5.c4 = t5.c4 AND t5.c2 = t5.c0 AND t5.c4 = t5.c0
        ORDER BY c13 DESC, c10, c8
       ) THEN subq0.c7
           WHEN false THEN subq0.c5
           WHEN subq0.c7 = subq0.c7 THEN subq0.c5
           WHEN subq0.c5 = FALSE THEN subq0.c8
           WHEN subq0.c7 <> subq0.c5 THEN subq0.c7
           ELSE subq0.c7
      END, subq0.c6, subq0.c8, subq0.c7) = subq0.c7 THEN subq0.c7
         WHEN subq0.c6 = subq0.c7 OR true AND EXISTS (
     SELECT NULL AS c5, t6.c4 AS c6, t6.c2 AS c7
      FROM t0 AS t6
      WHERE false
      ORDER BY c6 COLLATE RTRIM, c7 DESC, c6
     ) THEN subq0.c8
         WHEN subq0.c8 <> subq0.c6 THEN subq0.c6
         WHEN subq0.c6 <> subq0.c5 THEN subq0.c7
         WHEN false THEN subq0.c7
         WHEN subq0.c8 = subq0.c5 AND subq0.c8 <> subq0.c7 AND subq0.c7 = subq0.c6 THEN subq0.c7
         ELSE subq0.c8
    END
        ELSE subq0.c7
   END THEN subq0.c7
       WHEN subq0.c5 = subq0.c6 THEN 
   CASE WHEN subq0.c5 = subq0.c7 AND IFNULL(subq0.c7, subq0.c5) <> subq0.c7 OR EXISTS (
    SELECT t7.c4 AS c5, t7.c0 AS c6, t7.c3 AS c7, t7.c2 AS c8, t7.c2 AS c9
     FROM t0 AS t7
     WHERE t7.c4 = t7.c4 AND t7.c3 <> t7.c3
     ORDER BY c6, c7 ASC, c7
     LIMIT 7682338943536692987 OFFSET 4732173256722869143
    ) OR subq0.c7 = 
    CASE subq0.c8 WHEN subq0.c6 <> FALSE THEN subq0.c7
         WHEN EXISTS (
     SELECT t8.c0 AS c5, t8.c4 AS c6, t8.c3 AS c7, t8.c3 AS c8
      FROM t0 AS t8
      WHERE t8.c4 <> t8.c1 AND t8.c4 <> t8.c2
      ORDER BY c7, c5, c8 ASC
      LIMIT 4958528643537299690 
     ) THEN subq0.c7
         WHEN FALSE = subq0.c5 THEN subq0.c5
         WHEN subq0.c7 IS NULL THEN subq0.c7
         WHEN subq0.c7 = TRUE THEN subq0.c5
         WHEN subq0.c8 = subq0.c7 THEN subq0.c8
         WHEN TRUE = subq0.c6 THEN subq0.c8
         ELSE subq0.c5
    END THEN subq0.c5
        ELSE subq0.c7
   END
       WHEN round( 49) IS NULL THEN subq0.c7
       WHEN subq0.c8 <> subq0.c8 AND subq0.c8 <> subq0.c5 AND subq0.c7 <> subq0.c5 OR EXISTS (
   SELECT t9.c1 AS c5
    FROM t0 AS t9
    WHERE t9.c2 = t9.c0
    ORDER BY c5, c5, c5 ASC, c5 ASC
    LIMIT 2254594639129541611 OFFSET 2702690626010723730
   ) THEN subq0.c8
       ELSE subq0.c7
  END
 END AS c6
FROM (SELECT t1.c2 AS c5, t1.c0 AS c6, t1.c2 AS c7, t1.c4 AS c8
   FROM t0 AS t1
   WHERE t1.c0 = t1.c0
   ORDER BY c5 DESC, c7
   LIMIT 2996105925323519788 ) as subq0
WHERE subq0.c7 = subq0.c8
ORDER BY c6 ASC, c6 DESC, c6 DESC, c6
LIMIT 7167210545288206677 OFFSET 4160432908387963798
;SELECT subq0.c22 AS c23
FROM (SELECT t1.c0 AS c5, 
    CASE t1.c4 WHEN EXISTS (
     SELECT t2.c0 AS c5, t2.c1 AS c6, t2.c3 AS c7, t2.c4 AS c8, t2.c3 AS c9, t2.c4 AS c10, t2.c4 AS c11
      FROM t0 AS t2
      WHERE true AND t2.c2 IS NOT NULL OR t2.c2 = t2.c4 AND false
      ORDER BY c9, c8 ASC
      LIMIT 4789725757405905636 OFFSET 3384252012716555951
     ) THEN t1.c2
         WHEN false AND t1.c1 = t1.c1 OR t1.c4 = t1.c0 OR t1.c0 = t1.c2 OR t1.c0 IS NULL OR likely( NULL) IS NULL AND t1.c1 <> t1.c4 THEN t1.c4
         WHEN t1.c0 <> t1.c0 THEN t1.c4
         WHEN t1.c4 = t1.c4 OR t1.c3 <> t1.c3 OR t1.c0 IS NOT NULL AND t1.c2 = COALESCE(t1.c2, t1.c2, t1.c3, t1.c3) THEN t1.c0
         ELSE t1.c1
    END AS c12, t1.c1 AS c13, t1.c1 AS c14, t1.c4 AS c15, FALSE AS c16, t1.c3 AS c17, t1.c2 AS c18, t1.c2 AS c19, t1.c1 AS c20, t1.c3 AS c21, t1.c3 AS c22
   FROM t0 AS t1
   WHERE t1.c0 = t1.c0 OR false
   ORDER BY c17 ASC) as subq0
WHERE subq0.c15 <> 
 CASE subq0.c14 WHEN subq0.c17 = subq0.c21 THEN subq0.c16
      WHEN subq0.c12 = subq0.c14 THEN subq0.c14
      WHEN 
  CASE WHEN subq0.c15 IS NULL THEN subq0.c16
       ELSE subq0.c15
  END <> subq0.c18 OR subq0.c20 <> subq0.c16 THEN subq0.c20
      WHEN subq0.c15 = subq0.c16 THEN subq0.c14
      WHEN subq0.c18 IS NOT NULL THEN subq0.c20
      ELSE subq0.c13
 END
ORDER BY c23 ASC
LIMIT 6109681541616057426 OFFSET 9130643380926633336
;INSERT INTO t0 VALUES (FALSE, TRUE, FALSE, NULL, FALSE)
;SELECT subq0.c6 AS c14, subq0.c9 AS c15, 
 CASE subq0.c11 WHEN subq0.c6 <> subq0.c5 THEN subq0.c8
      WHEN subq0.c11 <> subq0.c11 THEN subq0.c8
      WHEN CAST(subq0.c8 AS BOOLEAN) = subq0.c7 THEN subq0.c8
      WHEN CAST(substr(FALSE,19) AS TEXT) <> subq0.c7 THEN subq0.c9
      ELSE subq0.c6
 END AS c16, subq0.c13 AS c17, subq0.c12 AS c18, subq0.c5 AS c19
FROM (SELECT t1.c0 AS c5, COALESCE(t5.c2, t5.c2) AS c6, t5.c3 AS c7, t3.c4 AS c8, t3.c4 AS c9, t2.c3 AS c10, t5.c2 AS c11, t5.c3 AS c12, t1.c1 AS c13
   FROM t0 AS t1
     CROSS JOIN (
     t0 AS t2
       INNER JOIN t0 AS t3       
        ON (EXISTS (
         SELECT t4.c2 AS c5, t4.c2 AS c6, t4.c0 AS c7, t4.c3 AS c8, t4.c0 AS c9, t4.c4 AS c10
          FROM t0 AS t4
          WHERE true
          ORDER BY c10
          LIMIT 5949650344134444631 
         ))
      LEFT JOIN t0 AS t5      
       ON (t3.c3 = t5.c3)     )
      ON (t1.c0 = t3.c0)
   WHERE CAST(t3.c2 AS TEXT) <> t3.c0
   ORDER BY c12) as subq0
WHERE subq0.c6 <> COALESCE(NULLIF(subq0.c13, subq0.c5), subq0.c7, subq0.c11, subq0.c12, subq0.c10)
ORDER BY c16 COLLATE NOCASE DESC, c18 COLLATE NOCASE
LIMIT 2308798392841289819 
;SELECT subq1.c15 AS c17, t5.c3 AS c18
FROM t0 AS t1
    LEFT JOIN t0 AS t2    
     ON (t2.c4 IS NOT NULL)
   INNER JOIN t0 AS t3   
    ON (t1.c0 <> t2.c4)
  INNER JOIN (
  (SELECT t4.c2 AS c5, t4.c1 AS c6, t4.c2 AS c7, t4.c0 AS c8
     FROM t0 AS t4
     WHERE t4.c1 <> t4.c0 OR NULL <> t4.c3
     ORDER BY c5
     LIMIT 1216523936940816210 OFFSET 1102944029885314165) as subq0
   LEFT JOIN (
   t0 AS t5
    LEFT OUTER JOIN (SELECT t6.c3 AS c5, t6.c1 AS c6, t6.c1 AS c7, t6.c4 AS c8, t6.c0 AS c9, t6.c3 AS c10, t6.c1 AS c11, t6.c4 AS c12, t6.c3 AS c13, t6.c2 AS c14, t6.c1 AS c15, t6.c3 AS c16
      FROM t0 AS t6
      WHERE t6.c4 = t6.c0
      ORDER BY c14
      LIMIT 7574917055551379385 OFFSET 3957513802935363844) as subq1    
     ON (subq1.c9 <> t5.c0)   )
    ON (subq0.c5 IS NULL)  )
   ON (t2.c1 = t3.c4)
WHERE t1.c1 = t2.c2 OR subq1.c14 = CAST(t2.c4 AS BOOLEAN)
ORDER BY c18, c17, c17, c17
LIMIT 790968912160414393 
;SELECT t3.c0 AS c10, t1.c3 AS c11, subq0.c7 AS c12, t3.c4 AS c13
FROM t0 AS t1
    INNER JOIN (SELECT t2.c4 AS c5, t2.c1 AS c6, t2.c2 AS c7
      FROM t0 AS t2
      WHERE t2.c4 = t2.c1
      ORDER BY c5 COLLATE BINARY, c6 COLLATE NOCASE, c5 ASC
      LIMIT 2759447333249893933 ) as subq0    
     ON (t1.c2 = subq0.c5)
   INNER JOIN t0 AS t3   
    ON (subq0.c5 = t3.c0)
  LEFT JOIN (SELECT t4.c0 AS c5, t4.c1 AS c6, t4.c2 AS c7, t4.c4 AS c8, t4.c2 AS c9
    FROM t0 AS t4
    WHERE COALESCE(t4.c2, t4.c1, t4.c0, t4.c3, t4.c0) IS NOT NULL
    ORDER BY c5 ASC) as subq1  
   ON (subq1.c7 = FALSE)
WHERE t1.c2 = subq1.c7 AND 
 CASE WHEN t3.c3 IS NOT NULL THEN t1.c4
      ELSE t1.c2
 END <> subq0.c5
ORDER BY c11, c12 COLLATE RTRIM DESC
LIMIT 6725706873973067429 OFFSET 3298645120917459168
;SELECT subq0.c8 AS c11, subq0.c8 AS c12, subq0.c8 AS c13, subq0.c8 AS c14, subq0.c8 AS c15, subq0.c8 AS c16, subq0.c8 AS c17, subq0.c8 AS c18, subq0.c8 AS c19, subq0.c8 AS c20, subq0.c8 AS c21
FROM (SELECT t3.c3 AS c8
   FROM t0 AS t1
      LEFT OUTER JOIN t0 AS t2      
       ON (t1.c4 = t2.c0)
     LEFT JOIN t0 AS t3     
      ON (t1.c1 <> t3.c1 AND t1.c0 = t2.c0 AND t2.c3 <> t2.c3 OR EXISTS (
       SELECT t4.c1 AS c5, t4.c1 AS c6, t4.c4 AS c7
        FROM t0 AS t4
        WHERE t4.c1 = t4.c2
        ORDER BY c5, c7
        LIMIT 4259072686946098842 OFFSET 6049211998011443182
       ))
   WHERE EXISTS (
    SELECT t5.c2 AS c5, t5.c2 AS c6, t5.c3 AS c7, t5.c3 AS c8, t5.c3 AS c9, t5.c0 AS c10, t5.c4 AS c11, t5.c2 AS c12, t5.c0 AS c13, 
      CASE t5.c3 WHEN t5.c0 <> t5.c0 THEN t5.c3
           WHEN t5.c0 IS NOT NULL THEN t5.c3
           WHEN t5.c0 = t5.c2 THEN t5.c3
           WHEN t5.c3 <> t5.c3 THEN t5.c3
           WHEN t5.c1 = t5.c2 OR EXISTS (
       SELECT t6.c1 AS c5, t6.c1 AS c6, t6.c2 AS c7, t6.c1 AS c8
        FROM t0 AS t6
        WHERE t6.c0 <> t6.c0
        ORDER BY c8 COLLATE NOCASE, c5, c5
        LIMIT 6141301464954095136 
       ) THEN t5.c3
           WHEN true THEN t5.c3
           WHEN t5.c2 IS NOT NULL THEN t5.c3
           ELSE t5.c3
      END AS c9, t5.c3 AS c10
     FROM t0 AS t5
     WHERE true
     ORDER BY c7, c10 COLLATE BINARY
    ) OR t1.c1 <> t3.c1 AND t1.c0 = t1.c1
   ORDER BY c8 COLLATE BINARY DESC) as subq0
WHERE CAST(
  CASE WHEN subq0.c8 <> subq0.c8 OR subq0.c8 = subq0.c8 THEN subq0.c8
       ELSE subq0.c8
  END AS TEXT) <> NULLIF(subq0.c8, subq0.c8)
ORDER BY c19 COLLATE BINARY, c16 DESC, c19
;SELECT t1.c2 AS c5, t1.c0 AS c6, t1.c0 AS c7
FROM t0 AS t1
WHERE t1.c0 IS NOT NULL
ORDER BY c6, c7 COLLATE RTRIM, c5
LIMIT 5019140894750400895 OFFSET 1570854515745777431
;SELECT t1.c1 AS c5, t1.c0 AS c6, t1.c2 AS c7, t1.c4 AS c8
FROM t0 AS t1
WHERE t1.c1 = t1.c4
ORDER BY c7 COLLATE RTRIM DESC, c8, c8
;SELECT 
 CASE subq0.c6 WHEN subq0.c6 IS NULL THEN 
  CASE WHEN subq0.c6 = subq0.c6 THEN subq0.c5
       ELSE subq0.c5
  END
      WHEN subq0.c5 <> subq0.c5 AND subq0.c6 <> subq0.c6 THEN subq0.c6
      WHEN subq0.c5 <> subq0.c6 THEN subq0.c5
      WHEN subq0.c6 IS NULL THEN subq0.c5
      WHEN subq0.c6 = subq0.c6 THEN subq0.c6
      WHEN subq0.c5 IS NOT NULL THEN FALSE
      WHEN subq0.c5 = TRUE OR subq0.c6 = subq0.c6 AND FALSE = subq0.c5 THEN subq0.c6
      ELSE NULLIF(subq0.c6, subq0.c6)
 END AS c7, subq0.c6 AS c8, 
 CASE WHEN subq0.c6 = subq0.c6 AND false AND subq0.c6 = subq0.c6 OR subq0.c6 <> subq0.c6 THEN subq0.c5
      ELSE subq0.c5
 END AS c9, COALESCE(subq0.c6, subq0.c6, subq0.c5, subq0.c5) AS c10, subq0.c5 AS c11, subq0.c5 AS c12
FROM (SELECT t1.c1 AS c5, FALSE AS c6
   FROM t0 AS t1
     LEFT JOIN t0 AS t2     
      ON (t2.c2 = t1.c0)
   WHERE t2.c1 <> t1.c0
   ORDER BY c5, c5
   LIMIT 3432413939095510075 ) as subq0
WHERE true AND true
ORDER BY c9 COLLATE BINARY
LIMIT 6384805864500317613 OFFSET 8545465865938979513
;SELECT t1.c2 AS c5, t1.c3 AS c6, t1.c1 AS c7, t1.c1 AS c8, t1.c0 AS c9, t1.c1 AS c10
FROM t0 AS t1
WHERE like(78,'text49','𗓬') IS NOT NULL OR t1.c3 = t1.c3 OR t1.c2 <> t1.c1
ORDER BY c8 ASC, c6, c10 COLLATE NOCASE ASC
LIMIT 9079107753822075447 OFFSET 5532723519444560765
;SELECT subq1.c8 AS c9, subq1.c8 AS c10, subq1.c8 AS c11
FROM (SELECT FALSE AS c8
   FROM (SELECT FALSE AS c5, t1.c1 AS c6, t2.c1 AS c7
      FROM t0 AS t1
        INNER JOIN t0 AS t2        
         ON (t1.c3 = t1.c3 AND false AND t1.c0 <> t2.c4 AND false AND false AND t1.c1 <> t1.c0 OR t1.c4 IS NOT NULL AND false OR t1.c2 = t1.c0 OR t1.c3 = t1.c3)
      WHERE t1.c4 IS NULL
      ORDER BY c7 ASC, c6 DESC
      LIMIT 8447846350112311245 ) as subq0
   WHERE IFNULL(subq0.c6, subq0.c7) IS NULL
   ORDER BY c8 DESC) as subq1
WHERE subq1.c8 IS NULL AND subq1.c8 <> NULLIF(subq1.c8, subq1.c8) AND 
 CASE subq1.c8 WHEN subq1.c8 <> subq1.c8 THEN subq1.c8
      WHEN zeroblob( 15) IS NOT NULL THEN subq1.c8
      WHEN length( 'text3') IS NULL AND subq1.c8 = 
  CASE WHEN true THEN subq1.c8
       ELSE subq1.c8
  END AND subq1.c8 = subq1.c8 OR subq1.c8 <> subq1.c8 THEN subq1.c8
      WHEN subq1.c8 = TRUE THEN subq1.c8
      WHEN subq1.c8 IS NULL OR false AND subq1.c8 <> subq1.c8 THEN subq1.c8
      ELSE subq1.c8
 END IS NOT NULL AND subq1.c8 = subq1.c8
ORDER BY c11
LIMIT 3798016151953460348 
;SELECT 
 CASE WHEN EXISTS (
  SELECT subq2.c5 AS c6, subq2.c5 AS c7
   FROM (SELECT t2.c2 AS c5
      FROM t0 AS t2
      WHERE true
      ORDER BY c5
      LIMIT 3087532769150099796 OFFSET 490057756595231503) as subq2
   WHERE false
   ORDER BY c7 COLLATE NOCASE DESC
  ) OR TRUE <> subq1.c13 OR subq1.c11 <> subq1.c11 AND subq1.c11 = subq1.c13 OR subq1.c10 <> subq1.c10 OR subq1.c12 = subq1.c12 OR subq1.c13 IS NULL THEN subq1.c11
      ELSE subq1.c13
 END AS c8, subq1.c13 AS c9, subq1.c11 AS c10, subq1.c10 AS c11, subq1.c9 AS c12
FROM (SELECT subq0.c6 AS c9, subq0.c6 AS c10, subq0.c6 AS c11, subq0.c7 AS c12, subq0.c8 AS c13
   FROM (SELECT t1.c2 AS c5, t1.c0 AS c6, t1.c3 AS c7, t1.c2 AS c8
      FROM t0 AS t1
      WHERE t1.c0 IS NULL AND t1.c4 IS NOT NULL
      ORDER BY c6, c6 COLLATE NOCASE DESC, c8
      LIMIT 494111125662110690 OFFSET 7911273807240142862) as subq0
   WHERE subq0.c8 <> COALESCE(subq0.c5, subq0.c5)
   ORDER BY c11
   LIMIT 15099450632586477 OFFSET 2946330925405203981) as subq1
WHERE subq1.c12 = subq1.c12
ORDER BY c9, c12
;SELECT t1.c1 AS c5, t1.c1 AS c6, t1.c1 AS c7, t1.c2 AS c8, t1.c0 AS c9, t1.c0 AS c10, t1.c0 AS c11, CAST(max(FALSE,21,NULL) AS BOOLEAN) AS c12
FROM t0 AS t1
WHERE t1.c3 <> t1.c3
ORDER BY c10 ASC
LIMIT 8336614209627291842 OFFSET 5295841524042756789
;SELECT t4.c3 AS c5, 
 CASE WHEN t2.c1 <> COALESCE(t5.c2, t2.c3, NULLIF(
    CASE t5.c0 WHEN t2.c0 <> t3.c2 THEN t5.c4
         WHEN subq0.c5 IS NOT NULL THEN t4.c0
         WHEN coalesce(TRUE,NULL,'text80') IS NULL THEN t3.c0
         WHEN t3.c4 <> t4.c0 OR t3.c0 <> subq0.c5 AND t2.c2 <> t3.c2 THEN t5.c1
         WHEN t4.c3 <> NULLIF(t4.c3, t4.c3) THEN t4.c4
         WHEN false THEN 
     CASE t4.c1 WHEN t3.c3 <> t3.c3 THEN t3.c0
          WHEN t4.c4 IS NOT NULL OR t3.c2 <> t3.c4 THEN t4.c0
          WHEN true THEN t5.c2
          WHEN t3.c0 <> t5.c2 THEN t3.c0
          WHEN EXISTS (
      SELECT t6.c4 AS c5, t6.c1 AS c6, t6.c1 AS c7, t6.c4 AS c8, t6.c0 AS c9, t6.c3 AS c10, t6.c3 AS c11, FALSE AS c12, t6.c1 AS c13, t6.c2 AS c14, t6.c1 AS c15, t6.c1 AS c16, t6.c0 AS c17
       FROM t0 AS t6
       WHERE t6.c3 IS NOT NULL
       ORDER BY c10 COLLATE NOCASE, c5 COLLATE BINARY DESC
      ) THEN t4.c1
          WHEN t4.c0 = t3.c2 THEN FALSE
          WHEN EXISTS (
      SELECT t7.c0 AS c5
       FROM t0 AS t7
       WHERE t7.c1 <> t7.c4
       ORDER BY c5, c5, c5 ASC, c5
      ) THEN t3.c0
          ELSE t5.c2
     END
         ELSE t4.c2
    END, CAST(t2.c2 AS TEXT))) THEN t4.c1
      ELSE subq0.c5
 END AS c6, t2.c0 AS c7, t3.c1 AS c8, t3.c0 AS c9
FROM (SELECT t1.c0 AS c5
    FROM t0 AS t1
    WHERE t1.c1 <> t1.c4 OR t1.c2 <> t1.c2
    ORDER BY c5 DESC
    LIMIT 5761490687933324991 OFFSET 8510742774227654072) as subq0
  LEFT JOIN (
  t0 AS t2
   INNER JOIN (
   t0 AS t3
     INNER JOIN t0 AS t4     
      ON (t4.c2 = t4.c1)
    INNER JOIN t0 AS t5    
     ON (t5.c4 IS NOT NULL OR false)   )
    ON (t2.c4 = t4.c0)  )
   ON (t5.c2 <> t5.c0)
WHERE t4.c1 <> t5.c2
ORDER BY c9, c5 DESC, c6 COLLATE RTRIM
LIMIT 8687502936281775079 OFFSET 8692922852246921624
;SELECT t1.c4 AS c5
FROM t0 AS t1
WHERE t1.c1 = t1.c4
ORDER BY c5 DESC, c5 DESC, c5 ASC, c5 DESC
;SELECT t1.c4 AS c5, t1.c4 AS c6, t1.c4 AS c7, t1.c2 AS c8, t1.c1 AS c9, t1.c4 AS c10, t1.c3 AS c11, t1.c4 AS c12, t1.c3 AS c13, t1.c3 AS c14, t1.c3 AS c15, t1.c4 AS c16, t1.c2 AS c17, t1.c1 AS c18, 
 CASE t1.c3 WHEN true THEN t1.c3
      WHEN 
  CASE WHEN t1.c1 IS NOT NULL THEN t1.c3
       ELSE 
   CASE WHEN false THEN t1.c3
        ELSE t1.c3
   END
  END <> 
  CASE t1.c3 WHEN t1.c4 <> t1.c2 THEN t1.c3
       WHEN t1.c4 IS NOT NULL THEN t1.c3
       WHEN EXISTS (
   SELECT t2.c4 AS c5
    FROM t0 AS t2
    WHERE t2.c0 <> t2.c2 AND true OR t2.c2 IS NOT NULL
    ORDER BY c5 ASC
    LIMIT 8964149941844096880 
   ) OR t1.c1 = t1.c1 THEN t1.c3
       WHEN t1.c3 = t1.c3 THEN t1.c3
       WHEN t1.c1 <> FALSE THEN t1.c3
       WHEN NULL <> t1.c3 THEN t1.c3
       WHEN EXISTS (
   SELECT t4.c4 AS c5, t3.c1 AS c6, t3.c0 AS c7
    FROM t0 AS t3
      INNER JOIN t0 AS t4      
       ON (t3.c1 IS NULL)
    WHERE t4.c1 = t3.c1
    ORDER BY c6 ASC, c7 COLLATE BINARY, c7 DESC
   ) THEN 
   CASE WHEN t1.c0 = t1.c2 THEN t1.c3
        ELSE t1.c3
   END
       WHEN t1.c4 <> t1.c0 THEN t1.c3
       WHEN t1.c1 <> t1.c1 THEN 
   CASE WHEN t1.c2 = t1.c0 THEN t1.c3
        ELSE t1.c3
   END
       WHEN t1.c3 = NULL AND t1.c0 = t1.c4 AND t1.c3 = t1.c3 THEN t1.c3
       WHEN t1.c0 IS NOT NULL THEN t1.c3
       ELSE t1.c3
  END OR NULLIF(t1.c3, 
   CASE WHEN t1.c4 <> t1.c4 THEN 
    CASE t1.c1 WHEN t1.c2 <> t1.c2 THEN t1.c4
         WHEN t1.c1 <> CAST(t1.c0 AS INTEGER) THEN COALESCE(t1.c0, t1.c2, t1.c3, t1.c3, nullif('text90',NULL))
         ELSE t1.c4
    END
        ELSE t1.c4
   END) IS NULL THEN t1.c3
      WHEN t1.c1 <> t1.c0 THEN t1.c3
      WHEN t1.c1 = t1.c2 THEN t1.c3
      WHEN COALESCE(t1.c2, t1.c3, t1.c2) = t1.c4 THEN t1.c3
      WHEN EXISTS (
  SELECT 
    CASE t5.c1 WHEN t5.c1 <> t8.c1 THEN t7.c2
         WHEN t5.c1 <> t6.c4 THEN t5.c4
         ELSE t6.c2
    END AS c5, t7.c2 AS c6, t5.c4 AS c7, t7.c2 AS c8
   FROM t0 AS t5
      LEFT JOIN (
      t0 AS t6
       LEFT JOIN t0 AS t7       
        ON (t7.c0 IS NOT NULL)      )
       ON (t6.c4 <> t7.c2)
     LEFT OUTER JOIN t0 AS t8     
      ON (t8.c4 IS NULL)
   WHERE t7.c1 IS NOT NULL
   ORDER BY c7 COLLATE RTRIM ASC, c5, c5
   LIMIT 8896685048098886312 OFFSET 1149466692758080247
  ) THEN t1.c3
      WHEN 
  CASE t1.c3 WHEN true THEN COALESCE(t1.c4, t1.c3, 
    CASE WHEN t1.c2 <> t1.c4 OR TRUE <> t1.c4 AND t1.c3 = t1.c3 OR t1.c0 <> t1.c1 THEN t1.c3
         ELSE t1.c0
    END, t1.c3, t1.c3, t1.c3)
       WHEN t1.c2 <> t1.c0 THEN t1.c3
       WHEN 
   CASE t1.c4 WHEN t1.c3 = t1.c3 OR CAST(t1.c2 AS TEXT) <> t1.c1 AND t1.c3 <> t1.c3 OR t1.c3 <> 
    CASE t1.c3 WHEN t1.c1 <> t1.c2 OR IFNULL(t1.c0, t1.c0) <> t1.c4 AND t1.c4 = t1.c2 OR t1.c3 <> t1.c3 AND changes() IS NOT NULL THEN t1.c3
         ELSE t1.c3
    END THEN t1.c1
        WHEN t1.c0 = t1.c0 AND EXISTS (
    SELECT t9.c2 AS c5, t9.c0 AS c6, t9.c4 AS c7, t9.c2 AS c8, t9.c2 AS c9, t9.c3 AS c10, t9.c4 AS c11, t9.c3 AS c12, t9.c2 AS c13, t9.c1 AS c14, t9.c3 AS c15, COALESCE(t9.c3, t9.c0, t9.c3, t9.c3, t9.c2, t9.c2) AS c16
     FROM t0 AS t9
     WHERE t9.c0 <> t9.c4 OR t9.c4 = t9.c4
     ORDER BY c10, c6 DESC, c14 DESC
     LIMIT 2704840538329583144 OFFSET 850593914994244814
    ) AND EXISTS (
    SELECT t10.c1 AS c5, t10.c4 AS c6, t10.c4 AS c7, t10.c3 AS c8, NULL AS c9, t10.c1 AS c10, t10.c4 AS c11, t10.c1 AS c12, t10.c1 AS c13
     FROM t0 AS t10
     WHERE t10.c4 <> t10.c4 AND t10.c2 = t10.c0 AND true
     ORDER BY c8 COLLATE RTRIM, c10, c5 COLLATE NOCASE DESC
     LIMIT 6337076582591379992 
    ) AND t1.c4 = t1.c1 THEN t1.c2
        WHEN t1.c0 = t1.c1 AND t1.c2 IS NULL AND 
    CASE WHEN EXISTS (
     SELECT ALL t11.c3 AS c5, t11.c4 AS c6, t11.c4 AS c7, t11.c4 AS c8, t11.c3 AS c9, t11.c3 AS c10, t11.c2 AS c11, t11.c0 AS c12, t11.c0 AS c13, t11.c4 AS c14, t11.c4 AS c15, t11.c4 AS c16
      FROM t0 AS t11
      WHERE t11.c0 <> t11.c2
      ORDER BY c13, c9
     ) THEN t1.c4
         ELSE t1.c4
    END <> t1.c2 OR true THEN t1.c1
        WHEN t1.c1 = 
    CASE WHEN t1.c4 = t1.c0 THEN t1.c0
         ELSE t1.c1
    END THEN t1.c1
        WHEN t1.c0 <> t1.c1 THEN t1.c1
        WHEN t1.c2 <> t1.c1 THEN t1.c4
        WHEN t1.c3 IS NULL OR false THEN t1.c2
        WHEN t1.c1 <> t1.c0 THEN t1.c4
        WHEN t1.c4 = t1.c1 OR t1.c3 IS NULL OR t1.c2 = t1.c2 AND FALSE IS NULL THEN t1.c2
        WHEN t1.c1 = t1.c0 OR EXISTS (
    SELECT t13.c1 AS c5, t13.c0 AS c6
     FROM t0 AS t12
       INNER JOIN t0 AS t13       
        ON (t13.c1 IS NULL)
     WHERE EXISTS (
      SELECT DISTINCT t14.c1 AS c5
       FROM t0 AS t14
       WHERE t14.c4 = t14.c4
       ORDER BY c5 COLLATE RTRIM DESC
       LIMIT 3652202181025683050 OFFSET 8347359753905700342
      )
     ORDER BY c5
     LIMIT 5009722130122377962 OFFSET 864727444513888279
    ) THEN t1.c1
        WHEN EXISTS (
    SELECT t15.c0 AS c5, t15.c1 AS c6, t15.c2 AS c7, t15.c1 AS c8, t15.c0 AS c9, t15.c0 AS c10, t15.c1 AS c11, t15.c3 AS c12, t15.c3 AS c13
     FROM t0 AS t15
     WHERE t15.c3 IS NULL OR false
     ORDER BY c13, c7 COLLATE BINARY DESC
    ) THEN t1.c1
        WHEN false THEN t1.c1
        ELSE t1.c2
   END = t1.c0 AND COALESCE(t1.c3, t1.c1, t1.c2, t1.c1) = t1.c2 THEN t1.c3
       WHEN 
   CASE WHEN t1.c1 IS NOT NULL THEN t1.c0
        ELSE t1.c1
   END <> t1.c1 THEN 
   CASE t1.c3 WHEN t1.c1 <> TRUE THEN t1.c3
        WHEN t1.c3 = t1.c3 AND EXISTS (
    SELECT t17.c3 AS c5, t17.c4 AS c6
     FROM t0 AS t16
       LEFT JOIN t0 AS t17       
        ON (t16.c0 IS NULL)
     WHERE t17.c4 = t16.c4
     ORDER BY c6
     LIMIT 954098775056349411 OFFSET 3776469308402071790
    ) THEN t1.c3
        WHEN t1.c3 <> t1.c3 THEN t1.c3
        WHEN false THEN t1.c3
        WHEN EXISTS (
    SELECT t18.c1 AS c5, t18.c4 AS c6, t18.c2 AS c7, t18.c1 AS c8, t18.c1 AS c9, t18.c3 AS c10, t18.c0 AS c11, t18.c3 AS c12, t18.c2 AS c13, t18.c3 AS c14, t18.c1 AS c15, t18.c3 AS c16, t18.c4 AS c17, t18.c3 AS c18, t18.c3 AS c19, t18.c1 AS c20, t18.c2 AS c21, t18.c0 AS c22, t18.c0 AS c23
     FROM t0 AS t18
     WHERE t18.c2 <> t18.c2 OR t18.c4 <> TRUE OR t18.c4 = 
      CASE t18.c2 WHEN t18.c0 = t18.c1 OR EXISTS (
       SELECT t19.c0 AS c5
        FROM t0 AS t19
        WHERE t19.c3 <> t19.c3
        ORDER BY c5, c5 DESC, c5 DESC, c5
        LIMIT 5529955896044926954 OFFSET 9199712417121141164
       ) THEN t18.c0
           WHEN t18.c2 = t18.c4 THEN TRUE
           WHEN t18.c4 = t18.c1 THEN t18.c0
           WHEN t18.c2 <> t18.c0 THEN t18.c0
           WHEN false AND t18.c3 = t18.c3 AND t18.c3 IS NULL THEN t18.c1
           WHEN t18.c1 IS NULL THEN t18.c4
           WHEN t18.c1 = t18.c1 THEN t18.c1
           WHEN t18.c0 <> t18.c0 THEN t18.c2
           WHEN t18.c3 = t18.c3 AND t18.c2 <> t18.c2 OR true THEN t18.c4
           WHEN true AND t18.c1 IS NOT NULL THEN t18.c0
           WHEN FALSE IS NULL OR t18.c2 IS NOT NULL OR t18.c2 = t18.c2 AND t18.c1 <> t18.c1 AND t18.c2 <> TRUE OR t18.c4 IS NULL THEN t18.c4
           ELSE t18.c0
      END OR t18.c1 = t18.c4 OR EXISTS (
      SELECT t20.c4 AS c5, t20.c0 AS c6, t20.c0 AS c7, t20.c3 AS c8
       FROM t0 AS t20
       WHERE EXISTS (
        SELECT t21.c0 AS c5, NULL AS c6, t21.c4 AS c7, t21.c1 AS c8, t21.c0 AS c9
         FROM t0 AS t21
         WHERE t21.c2 IS NOT NULL
         ORDER BY c9 COLLATE NOCASE, c7, c5
        )
       ORDER BY c6 ASC, c5 ASC, c8
      ) AND EXISTS (
      SELECT t22.c4 AS c5, t22.c1 AS c6, t22.c3 AS c7, t22.c4 AS c8, t22.c0 AS c9, t22.c3 AS c10, t22.c3 AS c11, t22.c1 AS c12, t22.c0 AS c13, t22.c3 AS c14, t22.c3 AS c15, t22.c2 AS c16, t22.c1 AS c17
       FROM t0 AS t22
       WHERE t22.c2 <> t22.c1
       ORDER BY c6, c6 COLLATE BINARY, c17 COLLATE BINARY
       LIMIT 4890845051773137807 OFFSET 1698822335174772262
      )
     ORDER BY c7
    ) OR 
    CASE WHEN 
     CASE WHEN t1.c3 <> t1.c3 THEN TRUE
          ELSE t1.c4
     END = t1.c1 THEN t1.c4
         ELSE t1.c0
    END = t1.c4 THEN t1.c3
        WHEN false THEN t1.c3
        WHEN t1.c3 <> NULL THEN t1.c3
        WHEN t1.c3 <> t1.c3 THEN t1.c3
        WHEN NULL IS NOT NULL THEN t1.c3
        WHEN FALSE <> TRUE THEN t1.c3
        WHEN t1.c1 <> t1.c1 THEN t1.c3
        WHEN t1.c2 <> t1.c0 AND 
    CASE WHEN t1.c4 = t1.c0 THEN t1.c2
         ELSE t1.c2
    END <> t1.c0 AND false THEN t1.c3
        ELSE t1.c3
   END
       WHEN 
   CASE t1.c3 WHEN false THEN t1.c3
        WHEN t1.c1 = t1.c2 THEN 
    CASE WHEN t1.c2 <> t1.c2 AND t1.c4 <> t1.c2 OR t1.c4 = t1.c0 THEN t1.c3
         ELSE t1.c3
    END
        WHEN t1.c3 = t1.c3 THEN t1.c3
        WHEN t1.c2 = COALESCE(t1.c4, FALSE, t1.c3, t1.c1) THEN t1.c3
        WHEN t1.c2 = t1.c2 THEN t1.c3
        WHEN t1.c2 = t1.c2 THEN t1.c3
        WHEN t1.c2 <> t1.c2 THEN t1.c3
        WHEN t1.c1 <> t1.c4 THEN t1.c3
        WHEN t1.c0 <> COALESCE(t1.c1, 
     CASE WHEN EXISTS (
      SELECT t23.c3 AS c5, t23.c0 AS c6, t23.c4 AS c7, t23.c1 AS c8, t23.c4 AS c9, t23.c2 AS c10, t23.c4 AS c11, t23.c1 AS c12, t23.c4 AS c13, t23.c2 AS c14, t23.c0 AS c15
       FROM t0 AS t23
       WHERE t23.c3 = t23.c3
       ORDER BY c6
      ) THEN t1.c3
          ELSE t1.c3
     END, NULLIF(t1.c0, t1.c2), t1.c4, t1.c3) THEN NULL
        WHEN t1.c3 <> t1.c3 AND t1.c1 IS NOT NULL AND true THEN t1.c3
        WHEN t1.c4 <> t1.c4 THEN t1.c3
        ELSE t1.c3
   END = t1.c3 AND t1.c2 <> t1.c4 THEN t1.c3
       WHEN t1.c1 = 
   CASE WHEN t1.c2 <> t1.c0 OR t1.c2 <> t1.c0 THEN TRUE
        ELSE t1.c1
   END THEN 
   CASE WHEN false OR t1.c3 = t1.c3 OR t1.c0 = t1.c4 AND 
    CASE t1.c1 WHEN false THEN t1.c2
         WHEN t1.c4 <> t1.c2 THEN t1.c2
         ELSE 
     CASE t1.c4 WHEN t1.c3 IS NULL THEN t1.c2
          WHEN t1.c2 IS NULL THEN t1.c4
          WHEN t1.c4 = t1.c2 OR t1.c2 IS NOT NULL THEN t1.c2
          ELSE t1.c4
     END
    END = t1.c2 THEN t1.c3
        ELSE t1.c3
   END
       ELSE t1.c3
  END <> t1.c3 AND t1.c4 <> t1.c1 THEN t1.c3
      WHEN t1.c3 <> CAST(t1.c1 AS BOOLEAN) OR FALSE <> t1.c2 AND t1.c4 <> t1.c2 OR COALESCE(t1.c2, t1.c2, t1.c3) = t1.c3 THEN NULL
      ELSE t1.c3
 END AS c16, t1.c1 AS c17, t1.c0 AS c18, t1.c4 AS c19
FROM t0 AS t1
WHERE 
 CASE WHEN EXISTS (
  SELECT t24.c3 AS c5, t24.c3 AS c6, 
    CASE t24.c0 WHEN t24.c2 IS NULL THEN t24.c2
         WHEN t24.c3 <> t24.c3 THEN t24.c0
         WHEN t24.c3 = t24.c3 OR t24.c1 = t24.c1 THEN t24.c0
         ELSE t24.c1
    END AS c7, TRUE AS c8
   FROM t0 AS t24
   WHERE EXISTS (
    SELECT t25.c0 AS c5
     FROM t0 AS t25
     WHERE t25.c1 <> t25.c0 OR t25.c3 = t25.c3
     ORDER BY c5 ASC
     LIMIT 1165968987402933446 
    )
   ORDER BY c7 COLLATE NOCASE, c5 COLLATE RTRIM
   LIMIT 8629385142032332102 OFFSET 4376180162886991215
  ) OR t1.c1 = 
  CASE WHEN t1.c4 = t1.c0 THEN 
   CASE WHEN 
    CASE WHEN t1.c3 <> t1.c3 THEN t1.c0
         ELSE t1.c4
    END = NULLIF(t1.c2, t1.c2) AND EXISTS (
    SELECT t26.c2 AS c5, t26.c0 AS c6, t26.c4 AS c7, t26.c0 AS c8, t26.c4 AS c9
     FROM t0 AS t26
     WHERE FALSE <> t26.c2
     ORDER BY c7 ASC, c8, c7 ASC
     LIMIT 9062982367715230158 OFFSET 3162548652250144352
    ) THEN t1.c2
        ELSE t1.c2
   END
       ELSE t1.c1
  END THEN COALESCE(t1.c2, zeroblob( 100), IFNULL(t1.c3, t1.c3))
      ELSE round( 60)
 END IS NOT NULL
ORDER BY c17 COLLATE RTRIM
LIMIT 5134343968801206281 OFFSET 7625446451734541263
;SELECT subq0.c9 AS c11, subq0.c5 AS c12, subq0.c11 AS c13, subq0.c11 AS c14, subq0.c13 AS c15
FROM (SELECT t1.c1 AS c5, t1.c1 AS c6, 
    CASE t1.c2 WHEN EXISTS (
     SELECT t2.c2 AS c5, t2.c2 AS c6, t2.c3 AS c7, t2.c3 AS c8, t2.c3 AS c9, t2.c4 AS c10, t2.c4 AS c11, t2.c3 AS c12, t2.c4 AS c13, t2.c0 AS c14, t2.c0 AS c15, t2.c3 AS c16, t2.c4 AS c17, t2.c3 AS c18, t2.c4 AS c19, t2.c4 AS c20
      FROM t0 AS t2
      WHERE t2.c2 IS NOT NULL OR t2.c3 = t2.c3
      ORDER BY c7, c20, c13 ASC
     ) THEN t1.c4
         WHEN 
     CASE t1.c0 WHEN false THEN t1.c4
          WHEN t1.c0 <> t1.c0 THEN t1.c4
          WHEN t1.c4 <> t1.c1 THEN t1.c4
          WHEN t1.c2 = t1.c1 THEN t1.c2
          ELSE t1.c4
     END <> t1.c2 AND t1.c4 = t1.c4 OR t1.c1 = t1.c0 THEN t1.c4
         WHEN t1.c3 <> t1.c3 THEN t1.c4
         WHEN false AND t1.c1 <> t1.c2 THEN t1.c4
         WHEN t1.c3 <> t1.c3 AND t1.c1 = t1.c2 AND EXISTS (
     SELECT TRUE AS c5, TRUE AS c6, t3.c1 AS c7, t3.c4 AS c8, t3.c4 AS c9
      FROM t0 AS t3
      WHERE TRUE <> t3.c1 AND t3.c3 = t3.c3
      ORDER BY c7 COLLATE NOCASE
     ) THEN t1.c2
         WHEN t1.c4 <> t1.c4 THEN t1.c2
         WHEN t1.c1 <> CAST(t1.c0 AS BOOLEAN) THEN t1.c0
         WHEN true THEN TRUE
         WHEN true THEN t1.c1
         WHEN t1.c0 = t1.c1 THEN t1.c2
         ELSE t1.c2
    END AS c10, t1.c4 AS c11, t1.c3 AS c12, t1.c2 AS c13, t1.c4 AS c14, 
    CASE t1.c2 WHEN EXISTS (
     SELECT t4.c1 AS c5
      FROM t0 AS t4
      WHERE t4.c3 = t4.c3
      ORDER BY c5, c5, c5 DESC, c5 ASC
      LIMIT 1865623623209519551 
     ) THEN 
     CASE WHEN t1.c3 <> t1.c3 THEN t1.c4
          ELSE t1.c4
     END
         WHEN t1.c0 IS NULL THEN t1.c2
         WHEN 
     CASE t1.c4 WHEN t1.c4 <> t1.c1 AND false OR t1.c2 = t1.c1 OR t1.c0 = t1.c2 THEN t1.c1
          WHEN t1.c4 <> t1.c0 OR EXISTS (
      SELECT t5.c0 AS c5, t5.c1 AS c6, t5.c0 AS c7, t5.c3 AS c8, NULL AS c9, t5.c4 AS c10, NULL AS c11, t5.c3 AS c12, t5.c0 AS c13, t5.c1 AS c14, t5.c4 AS c15, t5.c4 AS c16, t5.c1 AS c17, t5.c3 AS c18, t5.c0 AS c19
       FROM t0 AS t5
       WHERE t5.c0 = t5.c1 OR t5.c4 = t5.c0
       ORDER BY c6 DESC
      ) OR t1.c1 <> t1.c0 OR true OR NULL = t1.c3 OR NULL = t1.c3 THEN t1.c4
          WHEN t1.c0 <> TRUE THEN t1.c0
          WHEN t1.c4 = t1.c1 THEN t1.c4
          ELSE t1.c4
     END = t1.c2 OR t1.c2 = t1.c4 OR t1.c2 <> t1.c4 AND true AND t1.c0 IS NULL THEN t1.c2
         WHEN NULL <> t1.c3 THEN TRUE
         WHEN t1.c1 = t1.c4 AND t1.c2 <> t1.c2 THEN t1.c2
         WHEN t1.c1 IS NULL THEN FALSE
         WHEN EXISTS (
     SELECT t6.c1 AS c5, t6.c4 AS c6, t6.c4 AS c7, t6.c2 AS c8, t6.c0 AS c9, t6.c4 AS c10
      FROM t0 AS t6
      WHERE t6.c4 IS NULL
      ORDER BY c7 DESC, c5
      LIMIT 5896022886932491050 
     ) AND t1.c1 <> t1.c0 THEN t1.c1
         WHEN EXISTS (
     SELECT t7.c0 AS c5
      FROM t0 AS t7
      WHERE t7.c2 IS NOT NULL
      ORDER BY c5 COLLATE NOCASE DESC
      LIMIT 3554346420772607410 
     ) THEN t1.c4
         WHEN EXISTS (
     SELECT t8.c2 AS c5, TRUE AS c6, t8.c4 AS c7
      FROM t0 AS t8
      WHERE t8.c1 <> t8.c1 AND t8.c1 = t8.c1
      ORDER BY c6 DESC
     ) THEN t1.c1
         WHEN t1.c2 = t1.c1 THEN t1.c1
         ELSE t1.c2
    END AS c8, t1.c0 AS c9, t1.c4 AS c10
   FROM t0 AS t1
   WHERE FALSE = t1.c1
   ORDER BY c10 ASC, c12, c14
   LIMIT 1885702620174842756 OFFSET 51976511010219178) as subq0
WHERE 
 CASE subq0.c11 WHEN subq0.c13 <> subq0.c14 THEN subq0.c5
      WHEN subq0.c14 = subq0.c10 AND EXISTS (
  SELECT t9.c4 AS c5
   FROM t0 AS t9
     INNER JOIN t0 AS t10     
      ON (NULL IS NOT NULL AND t9.c3 IS NOT NULL OR t10.c4 = t10.c0 AND t10.c3 <> NULL)
   WHERE NULLIF(t9.c0, t10.c2) <> t10.c4
   ORDER BY c5, c5, c5, c5 DESC
   LIMIT 449506983239011759 OFFSET 8138163001374384125
  ) THEN CAST(subq0.c9 AS BOOLEAN)
      WHEN subq0.c5 = subq0.c8 THEN FALSE
      WHEN subq0.c5 <> subq0.c10 AND subq0.c13 = subq0.c14 THEN COALESCE(subq0.c13, subq0.c9, subq0.c12, unicode( 'text12'))
      WHEN subq0.c11 = subq0.c10 THEN subq0.c9
      WHEN EXISTS (
  SELECT COALESCE(t11.c4, NULL) AS c5, t11.c0 AS c6
   FROM t0 AS t11
   WHERE t11.c2 = t11.c0
   ORDER BY c6 ASC
  ) THEN subq0.c6
      WHEN subq0.c11 IS NOT NULL THEN subq0.c6
      WHEN COALESCE(subq0.c10, subq0.c12, subq0.c12, subq0.c5, subq0.c10, subq0.c6) = subq0.c11 THEN subq0.c10
      WHEN subq0.c9 = subq0.c6 THEN subq0.c6
      WHEN EXISTS (
  SELECT t13.c0 AS c5
   FROM t0 AS t12
        CROSS JOIN t0 AS t13        
         ON (t13.c1 <> t12.c0)
       INNER JOIN t0 AS t14       
        ON (t12.c1 <> t12.c1)
      LEFT OUTER JOIN t0 AS t15      
       ON (TRUE <> t13.c1)
     INNER JOIN t0 AS t16     
      ON (t16.c3 = t14.c3)
   WHERE t12.c4 = t13.c2 OR t16.c1 IS NOT NULL
   ORDER BY c5, c5 COLLATE RTRIM DESC, c5 COLLATE NOCASE, c5
   LIMIT 8202338962184080054 
  ) THEN subq0.c6
      WHEN subq0.c6 <> subq0.c13 AND 
  CASE WHEN EXISTS (
   SELECT t17.c4 AS c10, COALESCE(t18.c2, t18.c1, t17.c4, t18.c2, t17.c3, t17.c4) AS c11, t18.c0 AS c12, t17.c1 AS c13, t17.c0 AS c14
    FROM t0 AS t17
      INNER JOIN t0 AS t18      
       ON (EXISTS (
        SELECT t19.c0 AS c5, t19.c3 AS c6, t19.c2 AS c7, FALSE AS c8, t19.c1 AS c9
         FROM t0 AS t19
         WHERE false OR t19.c1 <> t19.c0
         ORDER BY c5
         LIMIT 742258683745243879 
        ))
    WHERE FALSE = t18.c1
    ORDER BY c14
   ) THEN subq0.c10
       ELSE subq0.c13
  END <> subq0.c6 THEN 
  CASE subq0.c14 WHEN subq0.c5 = subq0.c13 THEN subq0.c10
       WHEN subq0.c9 = FALSE THEN 
   CASE subq0.c6 WHEN EXISTS (
    SELECT t22.c3 AS c8, t20.c1 AS c9, t21.c2 AS c10, t21.c1 AS c11, t21.c0 AS c12, t21.c4 AS c13, t22.c4 AS c14, t22.c0 AS c15, t21.c3 AS c16, t22.c4 AS c17, t21.c0 AS c18, t20.c3 AS c19, t20.c4 AS c20, t22.c4 AS c21
     FROM t0 AS t20
       LEFT JOIN (
       t0 AS t21
        LEFT JOIN t0 AS t22        
         ON (EXISTS (
          SELECT t23.c3 AS c5
           FROM t0 AS t23
           WHERE t23.c2 = t23.c2
           ORDER BY c5
           LIMIT 7380156210300404341 
          ) AND t21.c0 = t22.c2 OR true OR t22.c4 IS NOT NULL)       )
        ON (EXISTS (
         SELECT t24.c2 AS c5, NULL AS c6, t24.c0 AS c7
          FROM t0 AS t24
          WHERE t24.c3 <> t24.c3
          ORDER BY c6 COLLATE BINARY, c5
          LIMIT 6917204603433270650 OFFSET 8998949825108851334
         ))
     WHERE t20.c4 IS NULL
     ORDER BY c16, c20 DESC, c10
    ) THEN COALESCE(subq0.c10, subq0.c6, subq0.c12, subq0.c12, subq0.c11)
        WHEN true THEN subq0.c6
        ELSE subq0.c6
   END
       WHEN EXISTS (
   SELECT t25.c1 AS c5, t25.c0 AS c6, t25.c1 AS c7, TRUE AS c8, t25.c3 AS c9, COALESCE(t25.c3, t25.c0, t25.c3, t25.c4) AS c10, t25.c4 AS c11, FALSE AS c12, t25.c1 AS c13
    FROM t0 AS t25
    WHERE t25.c4 <> t25.c4 AND t25.c0 IS NOT NULL OR t25.c1 <> t25.c4 AND t25.c1 = t25.c4
    ORDER BY c11, c9, c7
   ) THEN subq0.c6
       WHEN length( 91) IS NULL AND subq0.c14 <> FALSE THEN subq0.c5
       WHEN subq0.c5 <> subq0.c14 THEN FALSE
       WHEN CAST(FALSE AS INTEGER) <> subq0.c14 THEN subq0.c9
       WHEN subq0.c14 = subq0.c6 AND subq0.c10 <> subq0.c10 THEN subq0.c9
       WHEN subq0.c10 <> subq0.c13 THEN subq0.c6
       WHEN subq0.c11 <> subq0.c6 OR subq0.c13 <> subq0.c13 THEN subq0.c14
       ELSE subq0.c14
  END
      ELSE subq0.c11
 END <> subq0.c5 AND 
 CASE subq0.c14 WHEN false AND subq0.c13 <> subq0.c10 THEN subq0.c10
      WHEN subq0.c6 <> subq0.c6 THEN subq0.c12
      WHEN subq0.c10 = subq0.c10 THEN printf('text42','text20')
      WHEN subq0.c13 <> subq0.c13 THEN COALESCE(subq0.c5, subq0.c13, subq0.c8, 30, subq0.c11)
      WHEN subq0.c6 <> subq0.c6 OR subq0.c13 = subq0.c13 THEN NULL
      WHEN EXISTS (
  SELECT t26.c4 AS c5, FALSE AS c6, t26.c3 AS c7, t26.c0 AS c8, t26.c1 AS c9, t26.c3 AS c10
   FROM t0 AS t26
   WHERE t26.c4 <> t26.c1
   ORDER BY c6 ASC, c9 COLLATE RTRIM ASC
   LIMIT 4786744876866090458 
  ) THEN unlikely( 75)
      WHEN subq0.c11 = 
  CASE subq0.c10 WHEN subq0.c11 = subq0.c14 THEN subq0.c9
       WHEN subq0.c14 = 
   CASE subq0.c5 WHEN subq0.c9 = subq0.c6 THEN CAST(subq0.c13 AS BOOLEAN)
        WHEN subq0.c10 <> subq0.c14 THEN subq0.c6
        WHEN EXISTS (
    SELECT t28.c4 AS c5, t27.c1 AS c6, t27.c3 AS c7, 
      CASE WHEN t28.c2 = t28.c0 OR t27.c1 <> t28.c1 THEN t27.c0
           ELSE t27.c4
      END AS c8, t27.c4 AS c9, t27.c4 AS c10, t27.c2 AS c11, TRUE AS c12, t27.c2 AS c13
     FROM t0 AS t27
       LEFT JOIN t0 AS t28       
        ON (t27.c3 = t27.c3)
     WHERE t28.c0 IS NULL
     ORDER BY c12 ASC
     LIMIT 1460796063655785484 
    ) THEN subq0.c9
        WHEN subq0.c13 <> subq0.c5 THEN COALESCE(subq0.c11, subq0.c14, subq0.c10, subq0.c11, subq0.c10, subq0.c6)
        WHEN subq0.c14 <> subq0.c10 THEN subq0.c10
        ELSE subq0.c6
   END THEN subq0.c8
       WHEN subq0.c6 <> subq0.c5 THEN subq0.c10
       WHEN subq0.c6 = subq0.c5 THEN subq0.c14
       WHEN subq0.c6 <> subq0.c8 THEN subq0.c5
       WHEN subq0.c14 = subq0.c6 AND subq0.c14 = subq0.c9 AND true THEN 
   CASE subq0.c14 WHEN EXISTS (
    SELECT t29.c4 AS c5, t29.c4 AS c6
     FROM t0 AS t29
     WHERE false
     ORDER BY c6 DESC
     LIMIT 7355504547202211471 
    ) OR EXISTS (
    SELECT t30.c1 AS c5
     FROM t0 AS t30
     WHERE t30.c0 <> t30.c0 OR false
     ORDER BY c5, c5 DESC, c5, c5 DESC
     LIMIT 6061655347513556637 
    ) THEN subq0.c10
        WHEN subq0.c12 <> subq0.c12 THEN subq0.c10
        WHEN CAST(subq0.c6 AS TEXT) = subq0.c11 THEN subq0.c11
        WHEN false THEN subq0.c11
        WHEN subq0.c10 <> subq0.c10 THEN subq0.c13
        WHEN subq0.c8 <> subq0.c10 THEN subq0.c6
        ELSE subq0.c9
   END
       WHEN subq0.c14 IS NULL OR subq0.c6 = subq0.c9 OR subq0.c12 = subq0.c12 AND EXISTS (
   SELECT t31.c4 AS c5
    FROM t0 AS t31
      INNER JOIN t0 AS t32      
       ON (t32.c1 = t32.c2)
    WHERE t32.c2 <> t32.c2
    ORDER BY c5 ASC, c5, c5 ASC, c5 ASC
   ) THEN subq0.c11
       WHEN subq0.c6 = subq0.c8 AND EXISTS (
   SELECT t33.c1 AS c5, t34.c0 AS c6, t33.c1 AS c7, COALESCE(t36.c3, t36.c3, t36.c0, t33.c3) AS c8, t36.c2 AS c9, t34.c0 AS c10, t35.c3 AS c11
    FROM t0 AS t33
       INNER JOIN t0 AS t34       
        ON (false)
      INNER JOIN (
      t0 AS t35
       INNER JOIN t0 AS t36       
        ON (t35.c1 = t36.c0)      )
       ON (t34.c4 <> t36.c1)
    WHERE true
    ORDER BY c8 DESC, c6, c10
    LIMIT 4068708195997496856 OFFSET 4560019836306645903
   ) THEN subq0.c10
       WHEN 
   CASE subq0.c6 WHEN subq0.c6 <> subq0.c13 THEN IFNULL(COALESCE(subq0.c9, subq0.c10, subq0.c12, subq0.c5), subq0.c14)
        WHEN false THEN subq0.c5
        WHEN subq0.c12 IS NULL THEN subq0.c13
        WHEN false THEN subq0.c11
        WHEN EXISTS (
    SELECT t37.c0 AS c5, t37.c4 AS c6, t37.c0 AS c7, t37.c0 AS c8, t37.c0 AS c9, t37.c0 AS c10, t37.c1 AS c11, t37.c4 AS c12, 
      CASE t37.c3 WHEN true THEN t37.c3
           WHEN EXISTS (
       SELECT t38.c3 AS c5, t38.c3 AS c6, t38.c1 AS c7, t38.c0 AS c8, t38.c3 AS c9, t38.c0 AS c10, t38.c3 AS c11, t38.c3 AS c12, t38.c4 AS c13, t38.c3 AS c14, t38.c3 AS c15, t38.c1 AS c16, t38.c1 AS c17, t38.c0 AS c18
        FROM t0 AS t38
        WHERE t38.c4 IS NOT NULL
        ORDER BY c17 ASC
        LIMIT 4850733848099948158 OFFSET 6685847891122014773
       ) THEN t37.c3
           WHEN t37.c3 <> t37.c3 THEN t37.c3
           WHEN true THEN t37.c3
           WHEN t37.c0 <> t37.c2 THEN t37.c3
           WHEN false THEN t37.c3
           ELSE t37.c3
      END AS c19, t37.c3 AS c20, t37.c2 AS c21, t37.c0 AS c22, t37.c0 AS c23, t37.c0 AS c24, t37.c1 AS c25, t37.c1 AS c26, t37.c2 AS c27, t37.c0 AS c28, t37.c3 AS c29, t37.c2 AS c30, t37.c4 AS c31
     FROM t0 AS t37
     WHERE t37.c3 = t37.c3
     ORDER BY c19 ASC
    ) THEN subq0.c6
        WHEN EXISTS (
    SELECT t39.c4 AS c5, t39.c1 AS c6, t39.c3 AS c7, t39.c2 AS c8, t39.c4 AS c9, t39.c2 AS c10, t39.c3 AS c11, t39.c0 AS c12, t39.c2 AS c13, t39.c1 AS c14, t39.c0 AS c15
     FROM t0 AS t39
     WHERE false AND t39.c1 = t39.c1
     ORDER BY c9, c8 COLLATE BINARY DESC
     LIMIT 1327024251741643165 OFFSET 537071067669374494
    ) THEN subq0.c14
        WHEN subq0.c5 <> subq0.c5 THEN subq0.c10
        WHEN false THEN subq0.c13
        WHEN subq0.c13 <> subq0.c5 THEN subq0.c13
        WHEN subq0.c9 <> subq0.c11 AND subq0.c12 <> subq0.c12 THEN subq0.c6
        WHEN subq0.c14 = subq0.c10 THEN subq0.c5
        WHEN subq0.c13 = subq0.c8 OR CAST(subq0.c10 AS TEXT) <> subq0.c13 AND subq0.c12 IS NOT NULL THEN subq0.c9
        ELSE subq0.c9
   END IS NOT NULL THEN subq0.c10
       WHEN subq0.c6 = subq0.c9 OR subq0.c13 <> IFNULL(subq0.c5, subq0.c5) AND subq0.c13 IS NULL THEN subq0.c9
       WHEN EXISTS (
   SELECT t40.c1 AS c5, t40.c0 AS c6, t40.c1 AS c7
    FROM t0 AS t40
    WHERE t40.c2 IS NOT NULL
    ORDER BY c5, c6 COLLATE NOCASE ASC
    LIMIT 7080739079628335836 OFFSET 1964664908878079660
   ) OR false THEN subq0.c14
       ELSE subq0.c13
  END THEN subq0.c13
      WHEN 
  CASE subq0.c5 WHEN subq0.c14 <> subq0.c13 THEN subq0.c13
       WHEN true AND abs( FALSE) IS NOT NULL THEN subq0.c10
       ELSE subq0.c8
  END = subq0.c11 THEN round(78,'text88')
      ELSE unlikely( 'text9')
 END IS NOT NULL
ORDER BY c13
LIMIT 662518205385506563 OFFSET 2144937644793872636
;SELECT subq0.c8 AS c13, subq0.c7 AS c14, subq0.c5 AS c15, subq0.c7 AS c16, subq0.c9 AS c17, subq0.c9 AS c18, subq0.c12 AS c19, subq0.c12 AS c20, 
 CASE WHEN EXISTS (
  SELECT t2.c2 AS c5, t2.c3 AS c6, t2.c0 AS c7
   FROM t0 AS t2
   WHERE t2.c1 = t2.c1
   ORDER BY c7 ASC, c5
   LIMIT 7217416404710555333 OFFSET 4859036747224613728
  ) THEN subq0.c5
      ELSE subq0.c8
 END AS c8, subq0.c6 AS c9, subq0.c5 AS c10, FALSE AS c11, subq0.c11 AS c12, subq0.c10 AS c13, subq0.c5 AS c14, subq0.c12 AS c15, COALESCE(CAST(subq0.c7 AS BOOLEAN), subq0.c8) AS c16, subq0.c8 AS c17, subq0.c8 AS c18, subq0.c7 AS c19, subq0.c11 AS c20, 
 CASE WHEN subq0.c10 <> subq0.c7 THEN subq0.c9
      ELSE subq0.c9
 END AS c21, subq0.c12 AS c22, TRUE AS c23, subq0.c10 AS c24
FROM (SELECT t1.c1 AS c5, t1.c4 AS c6, t1.c4 AS c7, t1.c0 AS c8, t1.c3 AS c9, t1.c2 AS c10, 
    CASE WHEN NULL = NULL THEN t1.c2
         ELSE t1.c4
    END AS c11, t1.c4 AS c12
   FROM t0 AS t1
   WHERE t1.c1 IS NOT NULL OR t1.c0 IS NULL AND t1.c0 IS NOT NULL
   ORDER BY c11, c8 COLLATE NOCASE
   LIMIT 5224368555802253851 ) as subq0
WHERE 
 CASE WHEN subq0.c12 <> subq0.c8 THEN subq0.c7
      ELSE NULLIF(TRUE, TRUE)
 END = CAST(subq0.c12 AS INTEGER)
ORDER BY c15 ASC, c13, c21 ASC
;SELECT subq0.c5 AS c29
FROM (SELECT 
     CASE t1.c0 WHEN t1.c3 <> COALESCE(t1.c1, t1.c3, t1.c3, t1.c3, t1.c3, t1.c3) THEN t1.c0
          WHEN t1.c0 <> t1.c2 THEN t1.c1
          WHEN true THEN t1.c2
          ELSE t1.c4
     END AS c5
    FROM t0 AS t1
    WHERE t1.c4 <> t1.c4
    ORDER BY c5) as subq0
  INNER JOIN (SELECT t2.c3 AS c5, t2.c4 AS c6
    FROM t0 AS t2
    WHERE t2.c0 = t2.c0 OR t2.c1 = t2.c4 AND EXISTS (
     SELECT t3.c1 AS c5, t3.c2 AS c6, t3.c2 AS c7, t3.c3 AS c8, t3.c2 AS c9, t3.c1 AS c10, t3.c4 AS c11, t3.c3 AS c12, t3.c3 AS c13, FALSE AS c14, t3.c3 AS c15, TRUE AS c16, t3.c4 AS c17, t3.c4 AS c18, t3.c3 AS c19, t3.c1 AS c20, t3.c4 AS c21, t3.c1 AS c22, t3.c1 AS c23, t3.c3 AS c24, t3.c2 AS c25, t3.c0 AS c26, t3.c4 AS c27, t3.c0 AS c28
      FROM t0 AS t3
      WHERE t3.c0 IS NULL OR t3.c3 = t3.c3 AND t3.c4 IS NULL
      ORDER BY c27
      LIMIT 4234636221115574450 OFFSET 7547618349524883648
     )
    ORDER BY c6) as subq1  
   ON (subq1.c5 = subq1.c5)
WHERE TRUE <> subq1.c6
ORDER BY c29, c29, c29, c29 ASC
LIMIT 5423090435604681314 
;SELECT NULLIF(t8.c3, t8.c3) AS c5, subq1.c7 AS c6, 
 CASE t8.c2 WHEN t3.c1 IS NOT NULL THEN t3.c1
      WHEN t3.c1 <> t3.c1 THEN subq0.c5
      WHEN t3.c0 <> t3.c4 THEN IFNULL(t8.c2, t8.c2)
      WHEN t8.c4 <> subq1.c7 THEN t8.c1
      WHEN t3.c3 IS NOT NULL THEN t3.c2
      WHEN t8.c2 <> subq1.c6 THEN t3.c4
      WHEN subq1.c6 = t3.c2 THEN t3.c0
      WHEN EXISTS (
  SELECT t9.c3 AS c5, t9.c2 AS c6, t9.c2 AS c7, t10.c0 AS c8, COALESCE(IFNULL(t9.c3, t9.c3), t9.c2, t10.c3, t9.c1, t10.c4) AS c9, t10.c2 AS c10, t10.c0 AS c11, t10.c1 AS c12, t9.c4 AS c13, COALESCE(t10.c2, t9.c4) AS c14
   FROM t0 AS t9
     INNER JOIN t0 AS t10     
      ON (t10.c4 = t10.c4)
   WHERE 70 IS NULL
   ORDER BY c10 ASC, c14, c7
   LIMIT 4659375441707670129 OFFSET 316419968636447146
  ) OR t3.c4 = t3.c2 THEN t3.c2
      ELSE t8.c1
 END AS c15, t3.c0 AS c16, t3.c3 AS c17
FROM (SELECT t2.c1 AS c5
      FROM t0 AS t1
        INNER JOIN t0 AS t2        
         ON (t2.c0 = t2.c2)
      WHERE t1.c3 <> t2.c3
      ORDER BY c5 ASC, c5 COLLATE NOCASE ASC, c5, c5) as subq0
    INNER JOIN t0 AS t3    
     ON (subq0.c5 IS NULL)
   LEFT JOIN (SELECT t4.c3 AS c5, t4.c2 AS c6, t4.c1 AS c7
     FROM t0 AS t4
     WHERE t4.c4 <> t4.c0
     ORDER BY c6 COLLATE BINARY ASC, c5 ASC, c6 DESC) as subq1   
    ON (EXISTS (
     SELECT t5.c0 AS c5, t5.c4 AS c6, t6.c1 AS c7, t6.c0 AS c8, t7.c3 AS c9
      FROM t0 AS t5
        INNER JOIN (
        t0 AS t6
         LEFT JOIN t0 AS t7         
          ON (t6.c0 = t7.c0)        )
         ON (t7.c4 <> t5.c1)
      WHERE t7.c1 <> t5.c4
      ORDER BY c7
      LIMIT 7498590076038439195 OFFSET 19946559663980836
     ) AND true)
  INNER JOIN t0 AS t8  
   ON (t8.c4 <> t8.c2)
WHERE t3.c2 = t8.c1
ORDER BY c5 ASC
LIMIT 8155221737521988793 OFFSET 608074637215105462
;SELECT subq0.c6 AS c7, subq0.c9 AS c8, subq0.c6 AS c9, subq0.c9 AS c10
FROM (SELECT t3.c2 AS c5, t1.c0 AS c6, t2.c3 AS c7, t2.c3 AS c8, t1.c1 AS c9, t1.c2 AS c10, t3.c4 AS c11, t3.c0 AS c12, TRUE AS c13
   FROM t0 AS t1
     LEFT JOIN (
     t0 AS t2
      LEFT OUTER JOIN t0 AS t3      
       ON (true)     )
      ON (t1.c1 <> t2.c0 OR t3.c3 = NULL AND t1.c2 <> t3.c1)
   WHERE EXISTS (
    SELECT t4.c3 AS c5, t4.c4 AS c6
     FROM t0 AS t4
     WHERE t4.c2 = t4.c0 OR t4.c3 <> t4.c3 OR true
     ORDER BY c6 DESC, c6, c5 ASC, c6 ASC
    )
   ORDER BY c6 COLLATE NOCASE DESC, c13, c9 COLLATE BINARY ASC
   LIMIT 2565747108790836579 ) as subq0
WHERE EXISTS (
 SELECT subq1.c12 AS c20, subq1.c6 AS c21, subq1.c11 AS c22, TRUE AS c23, subq1.c15 AS c24, CAST(subq1.c7 AS TEXT) AS c25, subq1.c17 AS c26
  FROM (SELECT t5.c3 AS c5, t6.c4 AS c6, t5.c3 AS c7, t6.c3 AS c8, t6.c0 AS c9, t5.c2 AS c10, t6.c4 AS c11, t6.c1 AS c12, t5.c0 AS c13, t5.c0 AS c14, t5.c4 AS c15, t6.c4 AS c16, t5.c2 AS c17, t5.c0 AS c18, t6.c0 AS c19
     FROM t0 AS t5
       LEFT JOIN t0 AS t6       
        ON (t5.c4 IS NULL)
     WHERE t5.c0 = TRUE
     ORDER BY c10 COLLATE NOCASE ASC, c19) as subq1
  WHERE subq1.c18 IS NOT NULL
  ORDER BY c26
  LIMIT 2024445897906657772 OFFSET 1787344918097992965
 )
ORDER BY c8
LIMIT 7032249793131346029 OFFSET 3431474410163900229
;SELECT t3.c2 AS c10, t3.c4 AS c11, t3.c3 AS c12, subq0.c7 AS c13, subq0.c5 AS c14, FALSE AS c15, t3.c0 AS c16, t3.c0 AS c17, t3.c4 AS c18, t3.c3 AS c19, subq0.c7 AS c20, t3.c0 AS c21, COALESCE(subq0.c6, CAST(subq0.c6 AS INTEGER), t3.c3, t3.c1, typeof( NULL), t3.c3) AS c22
FROM (SELECT t2.c4 AS c5, t1.c0 AS c6, TRUE AS c7
    FROM t0 AS t1
      LEFT JOIN t0 AS t2      
       ON (t1.c0 = t2.c4)
    WHERE t1.c1 <> t1.c1 AND t1.c2 <> TRUE
    ORDER BY c6 COLLATE RTRIM ASC, c5 COLLATE BINARY, c6
    LIMIT 6810512908755512932 ) as subq0
  INNER JOIN t0 AS t3  
   ON (
    CASE t3.c2 WHEN true THEN t3.c4
         WHEN subq0.c6 <> t3.c0 THEN subq0.c5
         WHEN t3.c0 IS NOT NULL THEN t3.c4
         WHEN t3.c2 <> t3.c1 THEN subq0.c7
         WHEN 
     CASE subq0.c7 WHEN t3.c4 <> t3.c4 OR t3.c3 <> t3.c3 THEN TRUE
          WHEN subq0.c6 IS NOT NULL THEN t3.c3
          WHEN t3.c1 <> t3.c0 THEN t3.c4
          WHEN subq0.c6 <> t3.c4 THEN 54
          WHEN false THEN t3.c1
          WHEN subq0.c7 = t3.c4 THEN subq0.c5
          WHEN t3.c3 <> t3.c3 THEN subq0.c5
          WHEN t3.c4 = t3.c1 THEN subq0.c6
          WHEN t3.c2 <> t3.c4 AND t3.c1 = t3.c1 OR t3.c1 = t3.c4 THEN subq0.c7
          WHEN subq0.c5 <> t3.c0 THEN subq0.c6
          WHEN t3.c4 = t3.c1 OR false AND t3.c4 <> subq0.c5 AND EXISTS (
      SELECT t4.c1 AS c5, t4.c4 AS c6, t4.c1 AS c7, t4.c3 AS c8, t4.c1 AS c9
       FROM t0 AS t4
       WHERE t4.c0 IS NULL AND t4.c2 IS NOT NULL
       ORDER BY c6 ASC, c6
       LIMIT 5729085246249468984 OFFSET 6291955139109440654
      ) AND subq0.c5 = 
      CASE subq0.c7 WHEN t3.c3 = t3.c3 AND subq0.c5 <> subq0.c6 THEN TRUE
           WHEN subq0.c7 = subq0.c6 THEN TRUE
           WHEN t3.c1 = t3.c1 THEN t3.c4
           WHEN t3.c0 <> t3.c1 THEN t3.c4
           WHEN TRUE = t3.c0 THEN TRUE
           WHEN t3.c4 <> subq0.c7 THEN t3.c4
           WHEN t3.c2 IS NULL THEN t3.c1
           WHEN t3.c0 = subq0.c5 THEN subq0.c5
           WHEN t3.c1 <> t3.c2 THEN subq0.c5
           WHEN t3.c1 = t3.c4 THEN t3.c2
           ELSE t3.c0
      END THEN t3.c4
          WHEN t3.c1 <> t3.c2 THEN t3.c2
          ELSE subq0.c7
     END IS NULL THEN t3.c2
         WHEN subq0.c6 <> subq0.c6 THEN t3.c4
         WHEN subq0.c5 = subq0.c5 THEN t3.c2
         ELSE 
     CASE WHEN TRUE = t3.c4 THEN subq0.c5
          ELSE t3.c1
     END
    END <> t3.c4)
WHERE subq0.c6 IS NOT NULL
ORDER BY c22, c20 ASC
;SELECT subq0.c12 AS c9, subq0.c6 AS c10, FALSE AS c11, subq0.c7 AS c12, subq0.c9 AS c13, subq0.c10 AS c14, subq0.c12 AS c15, subq0.c9 AS c16, subq0.c9 AS c17, subq0.c9 AS c18, subq0.c10 AS c19, subq0.c7 AS c20, subq0.c10 AS c21
FROM (SELECT 
    CASE WHEN t1.c2 <> t1.c1 AND false AND EXISTS (
     SELECT t2.c3 AS c5, t2.c1 AS c6, t2.c0 AS c7, t2.c1 AS c8
      FROM t0 AS t2
      WHERE t2.c1 IS NULL AND t2.c4 = t2.c4
      ORDER BY c5 ASC, c5 ASC, c6
     ) OR t1.c4 <> t1.c2 OR 
     CASE WHEN true THEN t1.c3
          ELSE t1.c3
     END <> t1.c3 THEN t1.c1
         ELSE t1.c4
    END AS c9, t1.c1 AS c10, t1.c3 AS c11, t1.c1 AS c12, 
    CASE t1.c0 WHEN EXISTS (
     SELECT t6.c0 AS c9, t3.c2 AS c10, t7.c1 AS c11, t6.c4 AS c12, t6.c3 AS c13, t6.c1 AS c14, t3.c1 AS c15, t7.c4 AS c16, t7.c1 AS c17, t4.c2 AS c18, t4.c4 AS c19
      FROM t0 AS t3
         INNER JOIN t0 AS t4         
          ON (EXISTS (
           SELECT t5.c0 AS c5, t5.c0 AS c6, t5.c1 AS c7, t5.c2 AS c8, t5.c3 AS c9, t5.c0 AS c10, t5.c2 AS c11
            FROM t0 AS t5
            WHERE t5.c2 <> t5.c1
            ORDER BY c9 DESC, c11, c5 ASC
           ))
        INNER JOIN (
        t0 AS t6
         LEFT JOIN t0 AS t7         
          ON (t7.c0 IS NOT NULL)        )
         ON (EXISTS (
          SELECT t8.c2 AS c5, t8.c3 AS c6, t8.c3 AS c7, t8.c0 AS c8
           FROM t0 AS t8
           WHERE t8.c0 IS NULL
           ORDER BY c8 ASC
          ))
      WHERE EXISTS (
       SELECT t9.c2 AS c5, t9.c3 AS c6
        FROM t0 AS t9
        WHERE t9.c0 = t9.c4
        ORDER BY c6 COLLATE BINARY DESC, c6, c5, c6
        LIMIT 6585687446264318578 OFFSET 5682247730401661378
       )
      ORDER BY c12 COLLATE BINARY, c11
     ) THEN t1.c0
         WHEN t1.c1 = t1.c1 THEN t1.c1
         WHEN t1.c0 IS NULL THEN t1.c2
         WHEN EXISTS (
     SELECT t10.c4 AS c5
      FROM t0 AS t10
      WHERE t10.c1 = t10.c0
      ORDER BY c5, c5 ASC, c5, c5 DESC
      LIMIT 2269130408353448015 
     ) THEN t1.c4
         WHEN t1.c2 IS NULL THEN t1.c1
         WHEN t1.c4 = t1.c0 THEN t1.c2
         WHEN t1.c1 <> t1.c2 THEN t1.c2
         ELSE t1.c4
    END AS c6, t1.c2 AS c7, COALESCE(NULL, t1.c3, t1.c3, t1.c1, t1.c3) AS c8
   FROM t0 AS t1
   WHERE t1.c1 = CAST(TRUE AS BOOLEAN)
   ORDER BY c7 COLLATE BINARY, c8 DESC
   LIMIT 308815561061967210 OFFSET 6363734872500455659) as subq0
WHERE subq0.c11 = NULL
ORDER BY c11 ASC
LIMIT 2953373473515483012 
;SELECT t1.c2 AS c5, 
 CASE t1.c2 WHEN EXISTS (
  SELECT t2.c3 AS c5, t5.c4 AS c6, t3.c2 AS c7, t5.c1 AS c8
   FROM t0 AS t2
       LEFT JOIN t0 AS t3       
        ON (t2.c1 = t3.c0)
      LEFT JOIN t0 AS t4      
       ON (t2.c4 <> t2.c4)
     INNER JOIN (
     t0 AS t5
       INNER JOIN (
       t0 AS t6
        INNER JOIN t0 AS t7        
         ON (t7.c4 = t7.c1)       )
        ON (false)
      LEFT OUTER JOIN t0 AS t8      
       ON (t6.c1 IS NOT NULL)     )
      ON (t3.c0 IS NULL)
   WHERE t8.c2 <> t2.c4
   ORDER BY c7, c8
   LIMIT 3098237352128010150 OFFSET 2875536321934111897
  ) THEN t1.c4
      WHEN TRUE <> t1.c2 THEN t1.c4
      WHEN t1.c3 = t1.c3 THEN t1.c1
      WHEN true THEN 
  CASE t1.c1 WHEN false THEN t1.c0
       WHEN TRUE = t1.c1 THEN t1.c4
       WHEN 
   CASE t1.c4 WHEN t1.c2 IS NOT NULL THEN t1.c0
        WHEN t1.c4 IS NOT NULL AND COALESCE(t1.c4, TRUE) = t1.c2 THEN 
    CASE t1.c1 WHEN t1.c0 IS NULL AND t1.c3 IS NOT NULL OR t1.c2 <> COALESCE(CAST(t1.c2 AS TEXT), t1.c3, t1.c0, t1.c3) AND t1.c0 IS NULL OR t1.c1 = t1.c0 THEN t1.c4
         WHEN t1.c2 IS NOT NULL THEN t1.c2
         WHEN t1.c3 <> t1.c3 THEN t1.c1
         WHEN t1.c1 IS NOT NULL THEN t1.c1
         WHEN t1.c3 IS NOT NULL AND t1.c4 <> t1.c4 THEN t1.c1
         WHEN t1.c1 <> t1.c2 AND EXISTS (
     SELECT t9.c2 AS c5, t9.c4 AS c6
      FROM t0 AS t9
      WHERE EXISTS (
       SELECT t10.c0 AS c5, t10.c2 AS c6
        FROM t0 AS t10
        WHERE false
        ORDER BY c6, c6, c5, c6 ASC
        LIMIT 2058884234901993935 OFFSET 9144606110943297515
       ) AND t9.c4 = t9.c0 AND t9.c1 = t9.c2 OR t9.c3 <> t9.c3 AND true AND t9.c4 = t9.c0
      ORDER BY c5
     ) THEN t1.c0
         WHEN t1.c1 IS NOT NULL THEN t1.c2
         WHEN t1.c3 <> t1.c3 THEN t1.c0
         WHEN t1.c2 IS NULL THEN t1.c1
         WHEN t1.c0 <> t1.c2 THEN t1.c4
         ELSE t1.c1
    END
        WHEN t1.c1 <> t1.c0 OR t1.c1 IS NULL THEN t1.c2
        WHEN t1.c2 = t1.c2 THEN TRUE
        WHEN t1.c0 = t1.c4 THEN t1.c2
        WHEN t1.c2 IS NULL THEN t1.c4
        WHEN t1.c4 = t1.c0 THEN t1.c1
        WHEN EXISTS (
    SELECT t11.c3 AS c5, t11.c3 AS c6, t11.c4 AS c7, t11.c0 AS c8, t11.c0 AS c9, t11.c2 AS c10, NULL AS c11, t11.c1 AS c12, t11.c3 AS c13, t11.c3 AS c14
     FROM t0 AS t11
     WHERE t11.c1 <> t11.c4
     ORDER BY c9 ASC
     LIMIT 8722626360204399906 OFFSET 7324884044459465083
    ) THEN t1.c0
        ELSE t1.c4
   END <> t1.c1 THEN t1.c2
       WHEN t1.c4 <> FALSE THEN t1.c4
       WHEN t1.c3 <> t1.c3 AND t1.c0 = t1.c0 THEN t1.c2
       WHEN t1.c1 <> 
   CASE t1.c0 WHEN t1.c4 <> t1.c2 THEN t1.c4
        WHEN t1.c1 = t1.c0 THEN t1.c4
        WHEN t1.c2 <> t1.c4 THEN t1.c1
        WHEN 
    CASE t1.c0 WHEN t1.c1 IS NOT NULL THEN t1.c3
         WHEN FALSE = t1.c0 THEN t1.c0
         WHEN t1.c0 = t1.c2 AND t1.c3 <> t1.c3 THEN t1.c1
         WHEN t1.c1 <> t1.c1 THEN t1.c4
         WHEN t1.c1 = t1.c2 THEN t1.c3
         ELSE t1.c0
    END IS NULL THEN t1.c4
        WHEN t1.c4 IS NULL THEN t1.c0
        WHEN t1.c1 IS NOT NULL AND t1.c2 = t1.c0 OR t1.c2 = t1.c0 AND t1.c4 <> t1.c4 AND t1.c4 <> t1.c2 OR 39 IS NULL AND t1.c1 IS NOT NULL OR true THEN t1.c0
        WHEN t1.c2 <> t1.c0 THEN t1.c0
        WHEN t1.c4 IS NOT NULL AND t1.c3 <> t1.c3 THEN FALSE
        ELSE t1.c0
   END THEN TRUE
       WHEN t1.c3 = 
   CASE t1.c3 WHEN t1.c2 <> NULLIF(t1.c4, t1.c1) THEN t1.c3
        WHEN t1.c0 IS NULL OR t1.c3 <> t1.c3 OR false THEN t1.c3
        WHEN EXISTS (
    SELECT t13.c1 AS c5, t12.c2 AS c6, t13.c1 AS c7
     FROM t0 AS t12
       LEFT OUTER JOIN t0 AS t13       
        ON (t12.c1 = t12.c0)
     WHERE t12.c3 <> NULL
     ORDER BY c5
     LIMIT 1057756923495828300 OFFSET 3622282853468745579
    ) THEN t1.c3
        WHEN FALSE <> TRUE THEN NULL
        WHEN t1.c0 = t1.c1 THEN t1.c3
        WHEN t1.c4 <> t1.c0 THEN t1.c3
        WHEN t1.c3 = NULL OR t1.c4 = t1.c1 THEN t1.c3
        WHEN t1.c2 = CAST(likely( NULL) AS TEXT) THEN t1.c3
        ELSE t1.c3
   END AND EXISTS (
   SELECT t14.c0 AS c5, FALSE AS c6, t14.c0 AS c7
    FROM t0 AS t14
    WHERE t14.c2 IS NULL
    ORDER BY c7 ASC, c6 COLLATE RTRIM ASC
    LIMIT 6529692308578562449 OFFSET 1510608847277617248
   ) OR 
   CASE t1.c0 WHEN t1.c4 <> t1.c2 THEN t1.c1
        WHEN t1.c0 = t1.c4 THEN t1.c4
        WHEN t1.c3 IS NULL THEN t1.c4
        WHEN 
    CASE t1.c1 WHEN t1.c1 = t1.c1 THEN t1.c0
         WHEN t1.c0 = t1.c1 THEN t1.c1
         ELSE t1.c1
    END = t1.c2 THEN t1.c3
        WHEN t1.c1 = t1.c2 THEN t1.c4
        WHEN t1.c2 = t1.c1 THEN t1.c0
        WHEN t1.c2 <> t1.c2 THEN t1.c3
        WHEN t1.c0 <> IFNULL(t1.c2, t1.c0) THEN t1.c1
        WHEN t1.c2 <> t1.c1 AND true AND t1.c3 = t1.c3 AND TRUE <> t1.c1 AND t1.c4 <> t1.c1 OR false AND CAST(
     CASE WHEN t1.c1 <> t1.c2 THEN t1.c4
          ELSE t1.c2
     END AS TEXT) <> t1.c2 AND t1.c3 = t1.c3 THEN zeroblob( 9)
        WHEN t1.c3 <> NULL THEN NULL
        WHEN t1.c2 = t1.c2 THEN 21
        WHEN t1.c1 <> t1.c2 THEN t1.c3
        ELSE 
    CASE WHEN t1.c1 <> t1.c4 THEN t1.c3
         ELSE 
     CASE WHEN t1.c0 IS NOT NULL THEN t1.c4
          ELSE t1.c3
     END
    END
   END IS NOT NULL OR t1.c2 IS NULL THEN 
   CASE t1.c1 WHEN t1.c2 = t1.c1 THEN FALSE
        WHEN t1.c2 <> CAST(t1.c4 AS BOOLEAN) THEN t1.c1
        WHEN t1.c0 = TRUE THEN 
    CASE t1.c4 WHEN t1.c1 <> t1.c2 THEN t1.c0
         WHEN EXISTS (
     SELECT t15.c4 AS c5, t15.c4 AS c6, t15.c0 AS c7, t15.c4 AS c8
      FROM t0 AS t15
      WHERE t15.c2 = t15.c1 AND t15.c4 <> t15.c1 AND TRUE = t15.c0 AND t15.c1 = t15.c0
      ORDER BY c7 DESC
      LIMIT 7698555506543102772 OFFSET 2840869422523569796
     ) THEN t1.c2
         WHEN 
     CASE WHEN t1.c4 = t1.c2 THEN t1.c3
          ELSE t1.c3
     END = t1.c3 THEN t1.c2
         WHEN EXISTS (
     SELECT t16.c2 AS c5, t16.c2 AS c6, t16.c3 AS c7
      FROM t0 AS t16
      WHERE false OR t16.c1 <> t16.c2 OR TRUE = t16.c2
      ORDER BY c6 COLLATE NOCASE
     ) THEN t1.c2
         WHEN t1.c1 = TRUE THEN t1.c4
         WHEN true THEN t1.c4
         WHEN t1.c3 = NULL THEN t1.c2
         WHEN true THEN 
     CASE WHEN t1.c3 <> t1.c3 THEN t1.c1
          ELSE t1.c2
     END
         WHEN t1.c1 <> t1.c0 THEN 
     CASE t1.c4 WHEN false THEN t1.c1
          WHEN t1.c4 = t1.c0 THEN t1.c4
          ELSE t1.c0
     END
         WHEN t1.c3 <> t1.c3 THEN t1.c2
         WHEN t1.c0 = t1.c4 THEN 
     CASE WHEN EXISTS (
      SELECT t17.c4 AS c5
       FROM t0 AS t17
       WHERE t17.c3 = t17.c3
       ORDER BY c5 ASC
       LIMIT 6769640447206156462 
      ) THEN t1.c0
          ELSE t1.c2
     END
         WHEN FALSE <> t1.c1 THEN t1.c0
         ELSE t1.c1
    END
        WHEN t1.c3 <> NULL THEN 
    CASE WHEN t1.c2 = t1.c1 OR EXISTS (
     SELECT FALSE AS c5, t18.c4 AS c6, t18.c3 AS c7, t18.c1 AS c8
      FROM t0 AS t18
        LEFT JOIN t0 AS t19        
         ON (t18.c1 = t19.c0)
      WHERE t19.c3 <> t18.c3 AND t18.c4 = t18.c2
      ORDER BY c5 DESC, c6 ASC, c6 COLLATE RTRIM DESC
      LIMIT 978081200182657036 
     ) THEN COALESCE(t1.c3, t1.c0, t1.c3, t1.c3, t1.c3, t1.c4)
         ELSE 
     CASE WHEN t1.c3 <> t1.c3 THEN FALSE
          ELSE t1.c1
     END
    END
        WHEN t1.c2 IS NULL AND COALESCE(t1.c2, substr(NULL,44,'text14'), t1.c2, 
     CASE WHEN t1.c0 = t1.c0 THEN TRUE
          ELSE t1.c1
     END) <> t1.c1 AND t1.c0 = t1.c0 OR t1.c0 <> t1.c2 OR t1.c4 = t1.c2 THEN t1.c2
        WHEN true THEN t1.c0
        WHEN t1.c0 = CAST(t1.c4 AS INTEGER) THEN t1.c4
        WHEN t1.c0 <> t1.c1 AND false THEN 
    CASE t1.c2 WHEN t1.c2 <> t1.c4 THEN t1.c0
         WHEN 52 IS NULL THEN t1.c4
         WHEN false THEN t1.c2
         WHEN false OR t1.c3 <> t1.c3 AND EXISTS (
     SELECT t20.c2 AS c5, t20.c4 AS c6, t20.c4 AS c7, t20.c0 AS c8, t20.c0 AS c9, t20.c2 AS c10, t20.c1 AS c11
      FROM t0 AS t20
      WHERE t20.c3 <> t20.c3 OR NULL <> t20.c3 AND false OR t20.c2 IS NOT NULL AND t20.c0 <> t20.c4 OR false AND t20.c3 <> t20.c3 OR EXISTS (
       SELECT t21.c3 AS c5, t21.c1 AS c6, t21.c2 AS c7, t21.c4 AS c8, t21.c3 AS c9, t21.c4 AS c10, t21.c4 AS c11, t21.c4 AS c12, t21.c3 AS c13, t21.c3 AS c14, t21.c1 AS c15, t21.c4 AS c16, t21.c2 AS c17
        FROM t0 AS t21
        WHERE t21.c2 IS NULL AND t21.c0 = t21.c0
        ORDER BY c14 ASC, c10 ASC
        LIMIT 4880966404124830797 
       )
      ORDER BY c5
     ) THEN t1.c4
         WHEN t1.c4 <> t1.c1 THEN t1.c0
         WHEN t1.c3 = t1.c3 THEN t1.c2
         WHEN t1.c4 <> t1.c2 THEN t1.c2
         WHEN t1.c3 = t1.c3 THEN t1.c1
         WHEN t1.c2 IS NOT NULL OR t1.c3 <> t1.c3 THEN t1.c1
         ELSE t1.c0
    END
        ELSE t1.c4
   END
       WHEN t1.c1 <> t1.c1 THEN t1.c0
       WHEN t1.c1 IS NULL THEN NULLIF(t1.c4, t1.c1)
       WHEN t1.c0 = t1.c2 THEN t1.c1
       WHEN t1.c0 <> t1.c1 THEN 
   CASE WHEN t1.c1 IS NOT NULL THEN 
    CASE t1.c4 WHEN true THEN t1.c2
         WHEN t1.c3 <> t1.c3 AND t1.c2 = t1.c4 AND t1.c4 IS NULL THEN NULLIF(t1.c1, t1.c0)
         WHEN t1.c1 <> t1.c0 THEN t1.c0
         WHEN false THEN t1.c2
         WHEN t1.c3 <> t1.c3 THEN t1.c1
         WHEN t1.c4 <> t1.c0 THEN t1.c0
         WHEN t1.c1 <> t1.c4 THEN t1.c0
         WHEN t1.c4 = t1.c0 THEN 
     CASE WHEN t1.c4 <> t1.c4 THEN TRUE
          ELSE t1.c4
     END
         WHEN EXISTS (
     SELECT t22.c2 AS c5, t22.c1 AS c6, t22.c2 AS c7, t22.c3 AS c8, t22.c3 AS c9, t22.c1 AS c10, t22.c2 AS c11, t22.c1 AS c12, t22.c1 AS c13, t22.c1 AS c14, t22.c0 AS c15, t22.c4 AS c16, t22.c3 AS c17, t22.c1 AS c18, NULL AS c19, t22.c0 AS c20, t22.c0 AS c21, t22.c0 AS c22, t22.c4 AS c23, t22.c1 AS c24
      FROM t0 AS t22
      WHERE t22.c4 = t22.c1
      ORDER BY c15 ASC, c14
      LIMIT 860059566957470985 
     ) THEN t1.c0
         ELSE t1.c1
    END
        ELSE TRUE
   END
       WHEN t1.c3 = t1.c3 THEN 
   CASE WHEN 
    CASE WHEN t1.c3 = t1.c3 THEN t1.c2
         ELSE t1.c2
    END = t1.c1 THEN t1.c0
        ELSE t1.c2
   END
       ELSE t1.c4
  END
      WHEN t1.c0 IS NULL OR CAST(t1.c4 AS INTEGER) IS NULL THEN t1.c0
      WHEN t1.c2 <> t1.c4 AND true THEN t1.c1
      WHEN t1.c3 <> t1.c3 THEN t1.c0
      WHEN t1.c0 = t1.c4 THEN t1.c2
      WHEN t1.c2 = t1.c1 THEN t1.c1
      WHEN t1.c0 <> t1.c0 THEN t1.c4
      WHEN t1.c4 = CAST(t1.c4 AS TEXT) THEN t1.c4
      ELSE t1.c1
 END AS c25, t1.c3 AS c26
FROM t0 AS t1
WHERE TRUE <> t1.c0
ORDER BY c26, c26 ASC, c25 DESC
LIMIT 1484143573448240165 
;SELECT subq1.c8 AS c15, subq0.c5 AS c16, NULL AS c17
FROM (SELECT t1.c2 AS c5, t1.c1 AS c6, t1.c3 AS c7, t1.c1 AS c8
    FROM t0 AS t1
    WHERE EXISTS (
     SELECT t2.c1 AS c5, t2.c3 AS c6, t2.c4 AS c7, t2.c4 AS c8
      FROM t0 AS t2
      WHERE t2.c0 IS NOT NULL
      ORDER BY c7 COLLATE BINARY ASC, c6 DESC
      LIMIT 7771896122323638871 OFFSET 5918932767000157552
     )
    ORDER BY c5) as subq0
  LEFT JOIN (SELECT t3.c2 AS c5, t3.c4 AS c6, t3.c3 AS c7, t3.c0 AS c8
    FROM t0 AS t3
    WHERE 
     CASE WHEN false AND t3.c3 = t3.c3 THEN t3.c0
          ELSE t3.c1
     END <> IFNULL(t3.c0, t3.c4) OR EXISTS (
     SELECT t4.c3 AS c5, t4.c3 AS c6, t4.c1 AS c7, t4.c3 AS c8, t4.c0 AS c9, t4.c1 AS c10, t4.c1 AS c11, t4.c1 AS c12, t4.c0 AS c13, t4.c4 AS c14
      FROM t0 AS t4
      WHERE false
      ORDER BY c13, c9 DESC, c10 DESC
      LIMIT 1539842603316406757 OFFSET 3384406302141845272
     )
    ORDER BY c5, c5
    LIMIT 2411974479434848843 ) as subq1  
   ON (subq0.c5 = subq1.c5)
WHERE subq0.c6 <> subq1.c5 AND COALESCE(subq1.c6, subq0.c6) = subq0.c8 OR subq1.c6 <> 
 CASE subq0.c6 WHEN subq0.c6 = subq1.c6 THEN subq1.c5
      WHEN subq1.c5 = subq1.c8 THEN subq1.c8
      WHEN subq0.c8 <> subq0.c8 THEN subq0.c6
      WHEN IFNULL(subq1.c5, subq0.c5) <> subq1.c8 THEN subq1.c6
      WHEN subq0.c5 = subq0.c8 THEN subq0.c6
      ELSE subq0.c8
 END AND 
 CASE WHEN subq1.c6 <> CAST(subq1.c6 AS TEXT) THEN subq1.c6
      ELSE subq0.c8
 END = TRUE
ORDER BY c17 ASC, c17
LIMIT 6742955814657150645 OFFSET 7868988202289882651
;SELECT t1.c3 AS c5
FROM t0 AS t1
WHERE CAST(t1.c1 AS TEXT) = t1.c2
ORDER BY c5 DESC
LIMIT 9116335001298174215 
;SELECT subq0.c8 AS c16, subq0.c7 AS c17, subq0.c6 AS c18, subq0.c5 AS c19, subq0.c9 AS c20, subq0.c6 AS c21, subq0.c8 AS c22, subq0.c15 AS c23, subq0.c14 AS c24, subq0.c6 AS c25, 
 CASE subq0.c6 WHEN subq0.c9 = COALESCE(subq0.c9, subq0.c8, subq0.c15, subq0.c7, subq0.c6) THEN subq0.c6
      WHEN subq0.c8 <> subq0.c14 OR false AND subq0.c8 = subq0.c7 OR subq0.c7 = subq0.c5 OR EXISTS (
  SELECT t4.c1 AS c5, t4.c1 AS c6, t4.c3 AS c7, t4.c4 AS c8, t4.c1 AS c9, t4.c4 AS c10, t4.c1 AS c11
   FROM t0 AS t4
   WHERE EXISTS (
    SELECT DISTINCT t5.c3 AS c5, t5.c3 AS c6, t5.c1 AS c7, t5.c1 AS c8, 
      CASE WHEN t5.c3 = t5.c3 THEN t5.c3
           ELSE t5.c3
      END AS c9, t5.c4 AS c10
     FROM t0 AS t5
     WHERE t5.c4 IS NOT NULL OR t5.c0 <> t5.c0
     ORDER BY c5, c5 COLLATE NOCASE, c5 ASC
     LIMIT 996766752739000212 OFFSET 5677344326111241968
    )
   ORDER BY c11, c6, c9
   LIMIT 7601820239747856482 OFFSET 5485023511679601294
  ) THEN 
  CASE WHEN false THEN 
   CASE subq0.c7 WHEN false THEN subq0.c8
        WHEN subq0.c15 = subq0.c15 THEN TRUE
        ELSE subq0.c6
   END
       ELSE subq0.c8
  END
      WHEN subq0.c15 <> subq0.c15 OR subq0.c15 = subq0.c15 THEN subq0.c14
      WHEN false THEN subq0.c14
      WHEN subq0.c8 <> subq0.c5 THEN subq0.c9
      WHEN subq0.c5 IS NOT NULL THEN subq0.c9
      WHEN EXISTS (
  SELECT t6.c2 AS c5, t6.c2 AS c6, t6.c3 AS c7, t6.c1 AS c8
   FROM t0 AS t6
   WHERE 
    CASE WHEN t6.c4 = t6.c0 OR t6.c2 IS NULL AND EXISTS (
     SELECT t7.c2 AS c5, t7.c4 AS c6, t7.c0 AS c7, t7.c0 AS c8
      FROM t0 AS t7
      WHERE t7.c2 = t7.c0
      ORDER BY c7 ASC
     ) THEN t6.c1
         ELSE t6.c2
    END <> t6.c0
   ORDER BY c7 ASC
   LIMIT 1561039063491337709 
  ) THEN subq0.c14
      WHEN 
  CASE subq0.c8 WHEN false THEN subq0.c8
       WHEN subq0.c14 IS NOT NULL THEN subq0.c10
       WHEN subq0.c8 = subq0.c6 AND subq0.c5 <> subq0.c14 THEN subq0.c14
       WHEN subq0.c6 = subq0.c6 OR FALSE <> subq0.c5 THEN subq0.c5
       WHEN typeof( NULL) IS NULL THEN 
   CASE WHEN subq0.c8 <> subq0.c7 THEN subq0.c15
        ELSE subq0.c8
   END
       WHEN subq0.c10 <> 
   CASE subq0.c7 WHEN subq0.c5 <> subq0.c9 THEN subq0.c6
        WHEN false THEN subq0.c10
        WHEN TRUE <> subq0.c7 AND FALSE <> subq0.c10 THEN subq0.c9
        WHEN 
    CASE WHEN subq0.c15 IS NULL THEN subq0.c7
         ELSE subq0.c10
    END IS NOT NULL THEN subq0.c7
        WHEN subq0.c14 IS NULL THEN subq0.c10
        WHEN subq0.c10 <> subq0.c8 AND subq0.c8 = subq0.c14 THEN subq0.c14
        WHEN 36 IS NOT NULL THEN subq0.c9
        WHEN quote( NULL) IS NULL THEN subq0.c10
        ELSE subq0.c10
   END AND false THEN subq0.c9
       WHEN 
   CASE subq0.c5 WHEN subq0.c15 IS NULL AND subq0.c6 = subq0.c10 THEN subq0.c5
        WHEN subq0.c6 = subq0.c5 OR subq0.c7 <> 
    CASE subq0.c5 WHEN COALESCE(subq0.c15, subq0.c15) <> subq0.c5 THEN subq0.c9
         WHEN subq0.c5 IS NOT NULL OR subq0.c6 = 
     CASE subq0.c8 WHEN false THEN subq0.c10
          WHEN true THEN subq0.c7
          WHEN subq0.c15 <> subq0.c15 OR subq0.c10 <> subq0.c10 THEN subq0.c6
          WHEN subq0.c8 IS NOT NULL THEN subq0.c7
          WHEN subq0.c8 <> subq0.c6 THEN subq0.c10
          WHEN subq0.c5 <> subq0.c9 THEN subq0.c5
          WHEN subq0.c15 <> subq0.c15 AND NULL <> COALESCE(subq0.c15, subq0.c15, subq0.c9, subq0.c15, subq0.c15) THEN subq0.c6
          WHEN subq0.c7 = subq0.c8 THEN COALESCE(subq0.c15, subq0.c14, subq0.c10, subq0.c8, subq0.c14)
          WHEN true OR subq0.c14 IS NULL OR subq0.c5 IS NOT NULL THEN subq0.c5
          WHEN subq0.c10 <> subq0.c7 THEN subq0.c14
          WHEN subq0.c14 IS NOT NULL THEN subq0.c5
          WHEN subq0.c6 <> subq0.c10 THEN subq0.c5
          ELSE subq0.c14
     END THEN subq0.c9
         WHEN subq0.c8 = subq0.c5 THEN subq0.c8
         WHEN subq0.c10 = subq0.c5 OR subq0.c6 = subq0.c5 AND subq0.c5 <> subq0.c14 THEN IFNULL(subq0.c8, subq0.c9)
         WHEN subq0.c7 = TRUE THEN subq0.c14
         WHEN false THEN subq0.c6
         WHEN subq0.c15 = subq0.c15 THEN subq0.c10
         WHEN true THEN subq0.c10
         WHEN subq0.c10 IS NOT NULL THEN subq0.c8
         ELSE subq0.c9
    END THEN TRUE
        WHEN false AND subq0.c8 = subq0.c5 AND true THEN subq0.c8
        WHEN subq0.c9 <> FALSE THEN subq0.c10
        WHEN subq0.c14 <> subq0.c14 AND subq0.c8 = subq0.c14 THEN subq0.c10
        WHEN subq0.c5 <> subq0.c10 THEN subq0.c14
        ELSE 
    CASE subq0.c7 WHEN EXISTS (
     SELECT t8.c1 AS c5, t8.c1 AS c6, t8.c0 AS c7, t8.c1 AS c8, t8.c2 AS c9, t8.c0 AS c10, t8.c3 AS c11, t8.c2 AS c12, t8.c2 AS c13, t8.c2 AS c14
      FROM t0 AS t8
      WHERE t8.c3 IS NOT NULL
      ORDER BY c10, c5 COLLATE NOCASE DESC, c13 ASC
      LIMIT 2629921582457570170 OFFSET 7969056806533832918
     ) AND IFNULL(subq0.c5, subq0.c7) <> 
     CASE subq0.c10 WHEN subq0.c15 <> subq0.c15 THEN subq0.c10
          WHEN TRUE = subq0.c14 OR subq0.c15 = subq0.c15 THEN 
      CASE subq0.c7 WHEN subq0.c8 IS NULL THEN subq0.c14
           WHEN subq0.c9 = subq0.c8 THEN subq0.c9
           WHEN subq0.c9 <> subq0.c10 AND subq0.c5 IS NOT NULL AND true OR subq0.c9 IS NULL AND subq0.c6 = subq0.c8 AND subq0.c6 <> subq0.c7 AND 47 IS NULL THEN subq0.c6
           WHEN true THEN TRUE
           WHEN subq0.c14 IS NOT NULL THEN subq0.c10
           WHEN EXISTS (
       SELECT t9.c2 AS c5, t9.c4 AS c6, t9.c3 AS c7, t9.c1 AS c8, t9.c2 AS c9, t9.c3 AS c10
        FROM t0 AS t9
        WHERE t9.c0 = t9.c1
        ORDER BY c7, c10, c10
        LIMIT 1955048299245151779 
       ) AND subq0.c6 <> subq0.c9 THEN subq0.c10
           ELSE subq0.c8
      END
          WHEN EXISTS (
      SELECT t10.c4 AS c5, t10.c0 AS c6, t10.c4 AS c7, t10.c0 AS c8
       FROM t0 AS t10
       WHERE t10.c3 <> NULL
       ORDER BY c6 DESC, c5 COLLATE NOCASE ASC
       LIMIT 1101265629426134311 OFFSET 1206722480391070755
      ) THEN subq0.c9
          WHEN subq0.c8 = subq0.c10 OR subq0.c8 = subq0.c8 THEN subq0.c5
          ELSE subq0.c9
     END THEN subq0.c8
         WHEN subq0.c9 <> subq0.c6 THEN 
     CASE WHEN subq0.c6 <> subq0.c6 THEN subq0.c5
          ELSE subq0.c5
     END
         WHEN subq0.c14 IS NOT NULL OR subq0.c6 = subq0.c6 THEN FALSE
         WHEN subq0.c5 IS NULL OR subq0.c9 = subq0.c6 AND false OR subq0.c14 <> TRUE OR true THEN subq0.c10
         WHEN subq0.c10 <> subq0.c10 THEN FALSE
         WHEN subq0.c15 IS NULL OR 
     CASE WHEN subq0.c10 <> subq0.c7 THEN subq0.c6
          ELSE subq0.c7
     END IS NULL THEN subq0.c6
         WHEN false THEN subq0.c6
         WHEN subq0.c6 <> subq0.c6 THEN subq0.c8
         WHEN subq0.c15 <> COALESCE(subq0.c15, subq0.c6, subq0.c10, subq0.c15) THEN subq0.c6
         WHEN subq0.c10 IS NULL THEN subq0.c5
         ELSE subq0.c8
    END
   END = subq0.c6 THEN subq0.c14
       ELSE 
   CASE subq0.c14 WHEN subq0.c9 = subq0.c9 AND subq0.c7 <> subq0.c9 THEN subq0.c6
        WHEN subq0.c7 = subq0.c6 OR unlikely( FALSE) IS NOT NULL AND subq0.c6 <> subq0.c6 AND 
    CASE WHEN subq0.c5 = subq0.c5 THEN subq0.c8
         ELSE subq0.c9
    END <> subq0.c6 THEN ifnull(8,NULL)
        WHEN subq0.c8 = subq0.c8 THEN subq0.c5
        WHEN subq0.c9 = TRUE THEN subq0.c7
        WHEN subq0.c8 = subq0.c7 THEN subq0.c9
        ELSE subq0.c10
   END
  END IS NOT NULL THEN subq0.c14
      WHEN substr(FALSE,'text24') IS NULL THEN subq0.c6
      WHEN false THEN NULLIF(subq0.c14, subq0.c8)
      WHEN subq0.c8 <> FALSE THEN subq0.c14
      WHEN subq0.c7 = subq0.c14 THEN subq0.c8
      ELSE TRUE
 END AS c9, subq0.c6 AS c10, subq0.c10 AS c11, subq0.c5 AS c12, subq0.c8 AS c13, subq0.c14 AS c14, subq0.c7 AS c15, subq0.c9 AS c16, subq0.c14 AS c17, subq0.c8 AS c18, subq0.c5 AS c19, subq0.c10 AS c20, subq0.c14 AS c21, subq0.c9 AS c22, subq0.c9 AS c23, subq0.c14 AS c24, subq0.c6 AS c25, CAST(subq0.c5 AS TEXT) AS c26
FROM (SELECT t2.c0 AS c5, t1.c2 AS c6, t2.c0 AS c7, t1.c1 AS c8, t1.c1 AS c9, t1.c2 AS c10, 
    CASE WHEN NULLIF(t1.c0, COALESCE(t1.c3, t2.c3, t1.c4, t2.c3)) <> t2.c1 THEN 
     CASE t1.c0 WHEN t1.c2 <> t2.c0 OR t1.c2 = t1.c2 THEN t2.c0
          WHEN t2.c4 = t1.c4 AND true AND t1.c3 IS NOT NULL THEN t2.c0
          WHEN t2.c0 IS NOT NULL THEN t2.c2
          WHEN t1.c2 <> t2.c0 THEN t1.c1
          WHEN t1.c1 <> t1.c1 THEN t1.c4
          WHEN t1.c1 = t1.c4 THEN t2.c2
          WHEN t2.c0 = t2.c4 THEN t2.c4
          WHEN t1.c2 = t2.c0 THEN t2.c4
          WHEN EXISTS (
      SELECT t3.c4 AS c5, t3.c4 AS c6, t3.c1 AS c7, t3.c0 AS c8, t3.c4 AS c9, t3.c4 AS c10, t3.c0 AS c11, t3.c2 AS c12, t3.c3 AS c13
       FROM t0 AS t3
       WHERE t3.c3 <> t3.c3
       ORDER BY c6
      ) THEN t2.c1
          WHEN true THEN t1.c2
          ELSE t1.c2
     END
         ELSE t2.c0
    END AS c14, t1.c3 AS c15
   FROM t0 AS t1
     INNER JOIN t0 AS t2     
      ON (true)
   WHERE t1.c4 IS NOT NULL
   ORDER BY c7) as subq0
WHERE subq0.c6 = subq0.c5
ORDER BY c26 COLLATE BINARY
LIMIT 273477977086907978 OFFSET 838746499703545679
;SELECT subq1.c17 AS c19
FROM (SELECT subq0.c7 AS c10, subq0.c8 AS c11, subq0.c7 AS c12, subq0.c9 AS c13, subq0.c7 AS c14, subq0.c5 AS c15, subq0.c7 AS c16, subq0.c5 AS c17, subq0.c6 AS c18
   FROM (SELECT t1.c1 AS c5, t1.c2 AS c6, t1.c0 AS c7, t1.c1 AS c8, t1.c0 AS c9
      FROM t0 AS t1
      WHERE t1.c0 IS NULL
      ORDER BY c9, c6
      LIMIT 2762705605251560559 OFFSET 2888100928464389022) as subq0
   WHERE true
   ORDER BY c17 ASC
   LIMIT 1105023608725530129 ) as subq1
WHERE 
 CASE subq1.c15 WHEN subq1.c10 <> subq1.c18 THEN subq1.c14
      WHEN 
  CASE subq1.c18 WHEN true THEN 
   CASE WHEN subq1.c13 <> subq1.c16 THEN subq1.c10
        ELSE subq1.c13
   END
       WHEN subq1.c18 IS NOT NULL THEN subq1.c17
       WHEN EXISTS (
   SELECT FALSE AS c5, t2.c3 AS c6
    FROM t0 AS t2
    WHERE TRUE <> t2.c0
    ORDER BY c6 COLLATE BINARY DESC
    LIMIT 1891598940103405247 OFFSET 6246914136617133324
   ) THEN subq1.c12
       WHEN EXISTS (
   SELECT t3.c4 AS c5
    FROM t0 AS t3
    WHERE t3.c0 = t3.c4
    ORDER BY c5, c5, c5, c5
    LIMIT 1629372624257019146 
   ) THEN subq1.c16
       WHEN TRUE <> subq1.c11 OR subq1.c16 <> subq1.c10 AND subq1.c12 <> subq1.c11 THEN subq1.c14
       WHEN subq1.c15 <> subq1.c14 THEN subq1.c10
       WHEN subq1.c10 IS NOT NULL OR false THEN subq1.c13
       WHEN true THEN subq1.c10
       ELSE subq1.c16
  END = subq1.c10 THEN FALSE
      WHEN EXISTS (
  SELECT t4.c4 AS c5, t4.c1 AS c6, t4.c0 AS c7, t4.c2 AS c8, t4.c1 AS c9, t4.c4 AS c10, t4.c3 AS c11, t4.c3 AS c12, 
    CASE WHEN t4.c3 IS NULL THEN t4.c1
         ELSE t4.c4
    END AS c13, t4.c0 AS c14, t4.c0 AS c15, t4.c4 AS c16, t4.c4 AS c17, t4.c0 AS c18, t4.c2 AS c19, t4.c2 AS c20, t4.c2 AS c21, t4.c0 AS c22, t4.c2 AS c23, t4.c2 AS c24, t4.c0 AS c25, t4.c0 AS c26, t4.c2 AS c27, t4.c2 AS c28, t4.c4 AS c29, t4.c3 AS c30, COALESCE(t4.c3, t4.c4, t4.c4, t4.c3, t4.c0) AS c31, 
    CASE WHEN t4.c3 <> t4.c3 THEN t4.c1
         ELSE t4.c0
    END AS c32, t4.c4 AS c33, t4.c1 AS c34, t4.c1 AS c35, NULL AS c36, t4.c1 AS c37, t4.c0 AS c38, COALESCE(t4.c2, t4.c3, t4.c3) AS c39, t4.c4 AS c40, t4.c2 AS c41, t4.c3 AS c42, FALSE AS c43, t4.c3 AS c44, NULLIF(t4.c4, t4.c4) AS c45
   FROM t0 AS t4
   WHERE t4.c4 = t4.c4
   ORDER BY c27 ASC
   LIMIT 1219975683633876377 OFFSET 6251512351463237635
  ) OR subq1.c14 IS NULL THEN subq1.c12
      WHEN subq1.c10 IS NOT NULL AND subq1.c16 IS NULL OR subq1.c11 = subq1.c17 OR subq1.c13 = subq1.c14 AND subq1.c17 = subq1.c14 OR subq1.c16 = subq1.c11 AND false OR subq1.c14 <> subq1.c16 OR subq1.c12 = subq1.c10 AND false THEN subq1.c12
      WHEN COALESCE(subq1.c12, subq1.c12, subq1.c18, subq1.c15) <> subq1.c10 THEN subq1.c17
      WHEN subq1.c17 = subq1.c14 THEN subq1.c12
      WHEN EXISTS (
  SELECT COALESCE(subq2.c10, subq2.c9, subq2.c9, subq2.c8, subq2.c5) AS c14, subq2.c8 AS c15, subq2.c11 AS c16, subq2.c5 AS c17, subq2.c12 AS c18, subq2.c10 AS c19, subq2.c6 AS c20, subq2.c5 AS c21, subq2.c9 AS c22, subq2.c8 AS c23, TRUE AS c24, TRUE AS c25
   FROM (SELECT t5.c3 AS c5, t6.c0 AS c6, t5.c2 AS c7, t6.c1 AS c8, t5.c3 AS c9, t6.c0 AS c10, t5.c1 AS c11, t6.c1 AS c12, t5.c4 AS c13
      FROM t0 AS t5
        LEFT JOIN t0 AS t6        
         ON (true)
      WHERE false
      ORDER BY c13) as subq2
   WHERE subq2.c6 IS NOT NULL
   ORDER BY c21, c24 ASC, c16
   LIMIT 8850420948764317175 OFFSET 9102616022903711171
  ) THEN subq1.c11
      ELSE subq1.c15
 END <> subq1.c13
ORDER BY c19 ASC, c19, c19, c19
LIMIT 792606088145664733 OFFSET 8618023158504009045
;SELECT subq0.c5 AS c5, subq0.c12 AS c6, subq0.c12 AS c7
FROM (SELECT t1.c4 AS c5, t1.c2 AS c6, t1.c4 AS c7, t2.c0 AS c8, t1.c2 AS c9, t1.c4 AS c10, t1.c0 AS c11, t2.c4 AS c12, t1.c0 AS c13, t1.c4 AS c14
    FROM t0 AS t1
      INNER JOIN t0 AS t2      
       ON (t1.c1 = t2.c0)
    WHERE EXISTS (
     SELECT t3.c3 AS c5
      FROM t0 AS t3
      WHERE EXISTS (
       SELECT t4.c0 AS c5, t4.c2 AS c6, t4.c3 AS c7, t4.c3 AS c8, t4.c2 AS c9, t4.c1 AS c10
        FROM t0 AS t4
        WHERE true AND EXISTS (
         SELECT t5.c0 AS c5, TRUE AS c6, t5.c2 AS c7, t5.c1 AS c8
          FROM t0 AS t5
          WHERE t5.c4 = t5.c4
          ORDER BY c6 DESC, c5
          LIMIT 2903795855469982555 
         ) OR t4.c3 <> t4.c3
        ORDER BY c7, c6
        LIMIT 6936275556542441620 OFFSET 7162791788138669256
       )
      ORDER BY c5, c5, c5, c5
      LIMIT 6408711974194024020 OFFSET 5823555140577838453
     )
    ORDER BY c5, c12 ASC, c5 COLLATE NOCASE ASC
    LIMIT 897009158358949674 OFFSET 7852801809846673126) as subq0
  LEFT JOIN t0 AS t6  
   ON (subq0.c14 <> subq0.c5 AND true OR subq0.c11 <> t6.c4)
WHERE subq0.c10 = subq0.c12 AND subq0.c11 = 
 CASE subq0.c14 WHEN subq0.c7 <> NULLIF(NULLIF(subq0.c9, t6.c2), t6.c4) OR false AND subq0.c6 <> subq0.c5 OR t6.c0 IS NOT NULL THEN 
  CASE WHEN true OR subq0.c13 = subq0.c10 THEN subq0.c9
       ELSE subq0.c11
  END
      WHEN t6.c3 IS NOT NULL THEN subq0.c12
      WHEN true THEN subq0.c8
      WHEN t6.c4 <> CAST('text89' AS TEXT) THEN t6.c0
      WHEN subq0.c13 = subq0.c8 THEN subq0.c6
      WHEN 
  CASE subq0.c10 WHEN t6.c3 IS NULL THEN subq0.c10
       ELSE t6.c4
  END <> t6.c4 THEN subq0.c12
      ELSE subq0.c5
 END OR subq0.c9 <> subq0.c10
ORDER BY c5 DESC
;SELECT ALL subq0.c5 AS c12
FROM (SELECT t1.c4 AS c5, t1.c2 AS c6, t1.c0 AS c7, t1.c0 AS c8, t1.c0 AS c9, t1.c1 AS c10, t1.c4 AS c11, t1.c3 AS c12, t1.c2 AS c13, t1.c1 AS c14, t1.c2 AS c15, t1.c4 AS c16, t1.c2 AS c17, TRUE AS c18, t1.c3 AS c19, t1.c3 AS c20, t1.c4 AS c21, t1.c1 AS c22, t1.c1 AS c23, t1.c1 AS c24, t1.c4 AS c25, t1.c2 AS c26, t1.c0 AS c27, t1.c1 AS c28, t1.c4 AS c29, TRUE AS c30, TRUE AS c31, t1.c0 AS c32, t1.c1 AS c33, t1.c3 AS c34
    FROM t0 AS t1
    WHERE t1.c0 <> t1.c4
    ORDER BY c33
    LIMIT 7159421596449531626 ) as subq0
  LEFT JOIN (SELECT FALSE AS c5, t3.c2 AS c6, t2.c4 AS c7, FALSE AS c8, t3.c2 AS c9, TRUE AS c10, 
     CASE WHEN t3.c1 = t3.c4 THEN t2.c1
          ELSE t3.c1
     END AS c11
    FROM t0 AS t2
      INNER JOIN t0 AS t3      
       ON (t3.c4 = t3.c1)
    WHERE t2.c2 <> t2.c2
    ORDER BY c7, c10 COLLATE NOCASE
    LIMIT 6369228148676788469 OFFSET 3013417593787202470) as subq1  
   ON (subq0.c24 <> subq0.c31)
WHERE subq1.c9 IS NULL
ORDER BY c12 ASC
;SELECT t11.c2 AS c14, t11.c4 AS c15, subq0.c8 AS c16, t2.c0 AS c17, t2.c2 AS c18, 
 CASE WHEN subq0.c5 = 
  CASE t7.c1 WHEN t5.c3 = subq0.c11 THEN t8.c0
       WHEN t11.c2 <> t1.c1 THEN 
   CASE WHEN EXISTS (
    SELECT NULL AS c5, t14.c0 AS c6, t15.c2 AS c7, t16.c2 AS c8, t15.c3 AS c9, t16.c0 AS c10, t14.c3 AS c11, t14.c0 AS c12, t13.c2 AS c13, t15.c1 AS c14, FALSE AS c15, t14.c1 AS c16
     FROM t0 AS t13
        INNER JOIN t0 AS t14        
         ON (t13.c3 = t14.c3)
       INNER JOIN (
       t0 AS t15
        LEFT JOIN t0 AS t16        
         ON (t15.c0 = t16.c0)       )
        ON (t16.c2 <> t14.c0)
     WHERE false OR t13.c3 IS NOT NULL
     ORDER BY c6 DESC
     LIMIT 763411759542199145 
    ) THEN t7.c0
        ELSE t5.c1
   END
       ELSE t4.c2
  END THEN t8.c2
      ELSE t5.c2
 END AS c17
FROM t0 AS t1
   INNER JOIN (
   t0 AS t2
      INNER JOIN t0 AS t3      
       ON (t3.c2 <> TRUE)
     LEFT JOIN t0 AS t4     
      ON (t3.c3 <> t3.c3)
    LEFT OUTER JOIN (
    t0 AS t5
      INNER JOIN t0 AS t6      
       ON (t6.c0 = t5.c2)
     LEFT JOIN (
     t0 AS t7
      INNER JOIN t0 AS t8      
       ON (t7.c4 = t7.c1)     )
      ON (t5.c1 = t8.c0)    )
     ON (EXISTS (
      SELECT t10.c0 AS c5
       FROM t0 AS t9
         LEFT JOIN t0 AS t10         
          ON (t10.c2 <> t9.c0)
       WHERE t10.c1 = t10.c4 OR NULL = t10.c3 AND t10.c3 = t10.c3
       ORDER BY c5 DESC, c5 DESC, c5 COLLATE RTRIM DESC, c5
       LIMIT 1512218345096019691 OFFSET 60118117508868104
      ))   )
    ON (t6.c2 <> t1.c1 AND t2.c3 IS NOT NULL AND t4.c4 <> t7.c0 OR 
     CASE WHEN t5.c2 = t3.c0 THEN t1.c2
          ELSE t8.c1
     END = t8.c0)
  LEFT JOIN (
  t0 AS t11
   LEFT JOIN (SELECT t12.c4 AS c5, t12.c2 AS c6, t12.c2 AS c7, t12.c2 AS c8, NULL AS c9, t12.c3 AS c10, t12.c3 AS c11, t12.c0 AS c12, t12.c0 AS c13
     FROM t0 AS t12
     WHERE t12.c2 = t12.c4
     ORDER BY c13, c11, c9 DESC) as subq0   
    ON (NULL = subq0.c11 AND t11.c4 = subq0.c8)  )
   ON (33 IS NULL AND true AND t6.c2 = t3.c2)
WHERE subq0.c7 <> 
 CASE t4.c0 WHEN subq0.c13 IS NOT NULL OR t5.c0 = t6.c4 AND t6.c0 = subq0.c5 THEN CAST(
   CASE WHEN t7.c4 IS NULL OR t3.c2 IS NULL THEN t3.c1
        ELSE t1.c0
   END AS TEXT)
      WHEN IFNULL(NULL, subq0.c9) = subq0.c10 AND t11.c3 = 
  CASE t4.c3 WHEN EXISTS (
   SELECT t17.c2 AS c9, t18.c4 AS c10
    FROM t0 AS t17
      LEFT JOIN (
      t0 AS t18
       LEFT JOIN t0 AS t19       
        ON (EXISTS (
         SELECT t20.c0 AS c5, t20.c4 AS c6, t20.c3 AS c7, t20.c0 AS c8
          FROM t0 AS t20
          WHERE t20.c1 <> t20.c1
          ORDER BY c5, c6 COLLATE NOCASE ASC, c8 ASC
         ))      )
       ON (false)
    WHERE t19.c0 = t17.c1
    ORDER BY c10 DESC
   ) THEN t1.c3
       WHEN false OR subq0.c12 IS NULL OR t5.c1 <> t5.c4 AND upper( 'text79') IS NOT NULL AND COALESCE(t8.c3, NULLIF(t6.c4, 41)) = t2.c4 OR t6.c4 IS NOT NULL OR t11.c0 <> t2.c0 THEN t5.c3
       WHEN t5.c2 = t4.c0 THEN subq0.c10
       WHEN t1.c4 = subq0.c13 THEN t11.c3
       WHEN EXISTS (
   SELECT t21.c3 AS c5, t21.c2 AS c6, t21.c4 AS c7, t21.c2 AS c8, t21.c1 AS c9
    FROM t0 AS t21
    WHERE true
    ORDER BY c9
    LIMIT 2136352105139913993 OFFSET 5766267915185007341
   ) THEN t5.c3
       WHEN t1.c1 = t8.c4 THEN t1.c3
       ELSE COALESCE(subq0.c10, subq0.c11, t8.c4, subq0.c11, CAST('text67' AS TEXT), t7.c3)
  END AND t8.c3 = t11.c3 OR COALESCE(
   CASE WHEN t6.c0 <> t7.c1 THEN t7.c2
        ELSE t2.c2
   END, t7.c3, t5.c3, t2.c1) <> t11.c0 AND t2.c1 = t1.c0 AND true OR t1.c2 = COALESCE(t8.c1, t4.c3, t1.c3, t8.c1) THEN t7.c1
      WHEN subq0.c6 = t1.c0 AND subq0.c10 IS NOT NULL THEN t4.c4
      WHEN t6.c0 <> 
  CASE subq0.c5 WHEN t7.c2 = CAST(t7.c4 AS INTEGER) THEN t6.c0
       WHEN t3.c0 <> FALSE THEN t3.c4
       WHEN t2.c3 = t5.c3 THEN NULLIF(t7.c2, t1.c4)
       WHEN t1.c1 IS NOT NULL THEN COALESCE(t6.c1, 
    CASE t5.c4 WHEN false THEN FALSE
         WHEN t3.c4 <> CAST(t11.c0 AS INTEGER) THEN t3.c4
         ELSE t8.c4
    END, t8.c2, t4.c2, subq0.c11, NULLIF(t11.c3, subq0.c9))
       WHEN t4.c2 <> t11.c2 THEN t4.c1
       WHEN TRUE <> t6.c2 THEN 
   CASE WHEN t6.c4 <> t5.c4 THEN subq0.c13
        ELSE CAST(t4.c1 AS INTEGER)
   END
       WHEN subq0.c8 <> t2.c0 THEN t1.c4
       WHEN EXISTS (
   SELECT t22.c1 AS c5, t22.c1 AS c6, t22.c3 AS c7, t22.c3 AS c8
    FROM t0 AS t22
    WHERE t22.c4 = t22.c1
    ORDER BY c5
    LIMIT 5220738318729146011 OFFSET 6435989798047802236
   ) AND nullif('text26',29) IS NULL OR t4.c2 IS NOT NULL OR t3.c4 = subq0.c13 AND 
   CASE t8.c2 WHEN t1.c4 = t11.c4 THEN t1.c2
        WHEN t7.c3 <> subq0.c10 THEN FALSE
        WHEN t6.c0 IS NULL THEN t11.c1
        ELSE t6.c2
   END <> t4.c1 OR true AND t2.c4 <> t4.c4 OR t4.c3 IS NULL OR t4.c3 <> t11.c3 AND t11.c3 <> t3.c3 AND t7.c3 <> subq0.c10 THEN 
   CASE t2.c2 WHEN 
    CASE WHEN t8.c3 = 
     CASE subq0.c11 WHEN t3.c3 <> subq0.c11 THEN subq0.c10
          WHEN t6.c3 <> t7.c3 THEN t6.c3
          WHEN false THEN t1.c3
          WHEN EXISTS (
      SELECT t23.c1 AS c5, t23.c0 AS c6, NULL AS c7
       FROM t0 AS t23
       WHERE t23.c0 = t23.c1
       ORDER BY c5
       LIMIT 8627486127834449064 OFFSET 3258382185645726630
      ) THEN t2.c3
          WHEN EXISTS (
      SELECT t24.c3 AS c5, t24.c2 AS c6, t24.c2 AS c7, t24.c3 AS c8, t24.c4 AS c9, t24.c0 AS c10, t24.c1 AS c11, t24.c1 AS c12, t24.c2 AS c13
       FROM t0 AS t24
       WHERE TRUE <> t24.c1
       ORDER BY c10, c7, c6 COLLATE RTRIM DESC
       LIMIT 7903937682531544462 OFFSET 8971397600546931821
      ) OR t1.c2 IS NULL THEN t8.c3
          WHEN 
      CASE WHEN subq0.c8 <> t6.c4 THEN t1.c0
           ELSE NULL
      END IS NULL THEN t11.c3
          WHEN t2.c4 = t7.c1 AND t2.c1 <> t11.c2 THEN t6.c3
          WHEN t3.c2 <> t2.c1 OR subq0.c8 = FALSE THEN t1.c3
          WHEN true OR t4.c3 <> t8.c3 THEN t6.c3
          WHEN false THEN t4.c3
          WHEN t11.c4 = t4.c0 THEN 
      CASE t7.c3 WHEN t1.c1 = t5.c4 OR t11.c4 IS NULL THEN NULL
           ELSE t3.c3
      END
          ELSE subq0.c10
     END THEN subq0.c5
         ELSE t11.c4
    END <> t6.c1 THEN t6.c1
        WHEN 
    CASE WHEN t5.c0 <> t2.c4 OR t2.c4 <> t2.c0 AND t4.c3 = subq0.c11 OR 
     CASE t8.c3 WHEN t4.c3 = 
      CASE WHEN t1.c4 = t11.c1 THEN t3.c3
           ELSE t11.c3
      END THEN t11.c3
          WHEN true THEN t4.c4
          WHEN t1.c0 = t5.c2 THEN 'text52'
          WHEN subq0.c7 <> t6.c4 THEN t7.c4
          WHEN subq0.c5 <> t5.c4 THEN t6.c0
          WHEN false THEN t6.c1
          WHEN t7.c0 = subq0.c12 THEN t7.c0
          WHEN t5.c0 = t3.c4 THEN subq0.c8
          WHEN t2.c3 = t2.c3 THEN t2.c4
          WHEN t8.c0 IS NOT NULL THEN t11.c0
          WHEN subq0.c8 = subq0.c7 OR t7.c4 <> t11.c1 AND t7.c4 = t5.c4 THEN t6.c1
          WHEN subq0.c9 <> t2.c3 THEN t5.c0
          ELSE t3.c0
     END IS NULL AND t1.c0 <> subq0.c5 OR subq0.c11 <> t7.c3 OR t11.c2 <> t1.c1 OR t6.c1 IS NULL AND true OR t11.c4 <> subq0.c5 OR true OR t7.c1 = t4.c4 THEN NULL
         ELSE subq0.c11
    END = t8.c3 THEN t5.c1
        WHEN t5.c4 = t4.c4 THEN t8.c1
        WHEN t8.c1 <> t1.c0 AND t5.c1 IS NOT NULL OR t3.c4 <> subq0.c12 OR true THEN t2.c1
        ELSE t6.c0
   END
       WHEN t3.c2 = t4.c0 THEN t5.c1
       WHEN CAST(t2.c0 AS BOOLEAN) <> t8.c1 THEN t8.c1
       WHEN t2.c0 = t4.c4 THEN t8.c0
       ELSE t1.c0
  END THEN subq0.c8
      WHEN t8.c4 = CAST(t8.c0 AS INTEGER) THEN t3.c2
      WHEN t2.c4 <> COALESCE(t6.c4, t3.c3, t11.c4) THEN NULLIF(subq0.c5, t11.c1)
      WHEN subq0.c10 = 
  CASE t7.c3 WHEN subq0.c6 = subq0.c12 THEN t3.c3
       WHEN t5.c2 <> 
   CASE t6.c2 WHEN EXISTS (
    SELECT t25.c0 AS c5, t25.c1 AS c6, t25.c1 AS c7, t25.c3 AS c8, t25.c0 AS c9, t25.c3 AS c10, t25.c4 AS c11, t25.c0 AS c12, t25.c3 AS c13
     FROM t0 AS t25
     WHERE true
     ORDER BY c8, c13 COLLATE BINARY
     LIMIT 6047317623282215837 OFFSET 2330633870601150565
    ) AND EXISTS (
    SELECT CAST(t26.c3 AS INTEGER) AS c5, t26.c1 AS c6, t26.c4 AS c7, t26.c0 AS c8, TRUE AS c9, t26.c3 AS c10, t26.c2 AS c11, t26.c2 AS c12, t26.c0 AS c13, t26.c0 AS c14, t26.c1 AS c15, FALSE AS c16, t26.c3 AS c17, t26.c0 AS c18, t26.c3 AS c19
     FROM t0 AS t26
     WHERE EXISTS (
      SELECT t27.c0 AS c5, t28.c0 AS c6, t27.c2 AS c7, t27.c0 AS c8, t27.c0 AS c9, t27.c1 AS c10, t28.c0 AS c11, t27.c0 AS c12, FALSE AS c13, t27.c3 AS c14, t27.c0 AS c15, t27.c3 AS c16, t28.c4 AS c17, t27.c4 AS c18, t27.c0 AS c19, t27.c4 AS c20, t28.c2 AS c21, t28.c4 AS c22, t28.c4 AS c23, t27.c1 AS c24, t28.c2 AS c25, t28.c0 AS c26, t27.c3 AS c27
       FROM t0 AS t27
         CROSS JOIN t0 AS t28         
          ON (t27.c3 = t28.c3)
       WHERE true
       ORDER BY c22 ASC, c25, c9
       LIMIT 6025685548398862100 OFFSET 8597601891515994316
      )
     ORDER BY c9
     LIMIT 3948916950865278934 
    ) THEN t6.c4
        WHEN t11.c2 <> t8.c2 THEN t4.c0
        WHEN t4.c1 <> subq0.c7 THEN TRUE
        WHEN t7.c0 = FALSE THEN t7.c1
        WHEN t5.c0 = t5.c2 THEN t11.c2
        WHEN false THEN 
    CASE WHEN t6.c2 = t7.c0 AND subq0.c7 = t1.c2 THEN t5.c0
         ELSE t5.c0
    END
        ELSE t6.c4
   END THEN 
   CASE WHEN t8.c3 = t7.c3 THEN t6.c3
        ELSE t2.c3
   END
       ELSE t7.c3
  END THEN subq0.c12
      WHEN subq0.c9 = subq0.c11 THEN t7.c1
      ELSE t6.c2
 END
ORDER BY c18, c17, c16
;SELECT CAST(NULL AS INTEGER) AS c5
FROM t0 AS t1
WHERE t1.c0 <> t1.c0 AND t1.c2 = 
 CASE WHEN t1.c0 = t1.c1 THEN t1.c1
      ELSE TRUE
 END AND 
 CASE WHEN max(54,NULL,86) IS NULL AND false THEN t1.c0
      ELSE t1.c1
 END = t1.c2 AND FALSE <> t1.c4 OR IFNULL(t1.c0, t1.c4) IS NULL AND TRUE <> t1.c1 AND t1.c1 IS NOT NULL
ORDER BY c5 COLLATE BINARY, c5 ASC, c5, c5
LIMIT 9129948605025028567 
;SELECT t1.c3 AS c5, 
 CASE WHEN t1.c3 IS NOT NULL THEN COALESCE(t1.c1, 
   CASE t1.c2 WHEN true THEN 55
        WHEN t1.c0 <> t1.c2 AND t1.c4 = t1.c2 AND t1.c0 = t1.c1 OR t1.c4 = t1.c1 AND t1.c1 <> t1.c4 THEN t1.c2
        ELSE t1.c2
   END, t1.c2)
      ELSE t1.c4
 END AS c6
FROM t0 AS t1
WHERE t1.c4 <> t1.c0
ORDER BY c6 COLLATE BINARY
;SELECT subq0.c16 AS c19, subq0.c6 AS c20, subq0.c12 AS c21, subq0.c15 AS c22, subq0.c10 AS c23, subq0.c8 AS c24, 
 CASE subq0.c17 WHEN NULLIF(CAST(subq0.c10 AS TEXT), subq0.c7) = subq0.c16 THEN FALSE
      WHEN COALESCE(subq0.c9, subq0.c10) <> subq0.c6 AND 
  CASE subq0.c13 WHEN subq0.c10 IS NOT NULL THEN subq0.c7
       WHEN 
   CASE WHEN subq0.c15 = subq0.c7 AND subq0.c5 = subq0.c16 THEN subq0.c18
        ELSE subq0.c18
   END = subq0.c18 THEN subq0.c14
       WHEN subq0.c8 <> subq0.c8 THEN subq0.c16
       WHEN EXISTS (
   SELECT t2.c1 AS c5, t2.c0 AS c6, t2.c3 AS c7, t2.c2 AS c8, t2.c2 AS c9, t2.c4 AS c10, t2.c2 AS c11, t2.c2 AS c12, t2.c4 AS c13, t2.c0 AS c14, t2.c0 AS c15, t2.c2 AS c16
    FROM t0 AS t2
    WHERE t2.c3 <> t2.c3
    ORDER BY c9 ASC
    LIMIT 8092666349076482621 OFFSET 655518705019291861
   ) THEN FALSE
       WHEN false THEN subq0.c6
       WHEN subq0.c6 <> subq0.c7 AND subq0.c9 = subq0.c18 OR like(TRUE,48) IS NULL OR subq0.c7 = subq0.c16 AND subq0.c13 <> subq0.c12 THEN CAST(subq0.c17 AS BOOLEAN)
       WHEN subq0.c10 = subq0.c18 AND subq0.c13 <> subq0.c11 THEN subq0.c5
       WHEN 
   CASE WHEN subq0.c7 <> subq0.c6 THEN 
    CASE WHEN subq0.c10 <> subq0.c18 THEN subq0.c16
         ELSE subq0.c16
    END
        ELSE subq0.c5
   END = subq0.c16 THEN subq0.c5
       WHEN subq0.c7 <> 
   CASE subq0.c6 WHEN subq0.c16 IS NULL THEN subq0.c17
        WHEN subq0.c18 = subq0.c9 AND subq0.c14 = subq0.c15 THEN subq0.c15
        WHEN subq0.c16 <> subq0.c17 THEN COALESCE(subq0.c6, subq0.c12, subq0.c14, subq0.c9)
        WHEN subq0.c11 = subq0.c14 THEN subq0.c15
        WHEN subq0.c6 IS NULL THEN subq0.c13
        WHEN subq0.c14 <> subq0.c5 THEN subq0.c16
        WHEN FALSE = subq0.c14 THEN subq0.c16
        WHEN EXISTS (
    SELECT t3.c0 AS c5, t4.c3 AS c6, t3.c3 AS c7
     FROM t0 AS t3
       LEFT JOIN t0 AS t4       
        ON (t4.c0 <> FALSE)
     WHERE true
     ORDER BY c6
    ) THEN 
    CASE WHEN subq0.c15 IS NOT NULL AND 
     CASE subq0.c12 WHEN false THEN subq0.c16
          ELSE subq0.c16
     END = subq0.c11 OR subq0.c13 <> FALSE AND subq0.c15 = subq0.c12 AND subq0.c6 = subq0.c11 THEN subq0.c17
         ELSE subq0.c14
    END
        WHEN FALSE = subq0.c5 THEN subq0.c7
        WHEN subq0.c13 = subq0.c8 THEN subq0.c16
        WHEN subq0.c8 <> subq0.c12 THEN subq0.c7
        WHEN subq0.c6 = subq0.c13 THEN TRUE
        ELSE subq0.c5
   END THEN subq0.c7
       ELSE subq0.c16
  END = subq0.c17 AND subq0.c18 = 
  CASE WHEN subq0.c17 <> subq0.c12 THEN subq0.c18
       ELSE subq0.c18
  END THEN subq0.c8
      WHEN NULLIF(subq0.c18, last_insert_rowid()) IS NOT NULL AND subq0.c7 = subq0.c6 OR subq0.c8 = subq0.c13 THEN subq0.c15
      WHEN subq0.c8 = subq0.c6 AND subq0.c13 = subq0.c8 AND subq0.c6 <> subq0.c7 OR 
  CASE WHEN subq0.c13 = COALESCE(subq0.c6, subq0.c16, subq0.c7) OR subq0.c16 = subq0.c11 THEN subq0.c16
       ELSE subq0.c5
  END <> subq0.c8 THEN subq0.c14
      WHEN subq0.c12 = subq0.c7 THEN subq0.c5
      WHEN subq0.c12 = subq0.c12 AND subq0.c15 = subq0.c17 THEN subq0.c14
      WHEN subq0.c10 = NULL THEN subq0.c6
      WHEN subq0.c17 IS NOT NULL OR subq0.c15 = subq0.c17 THEN subq0.c6
      WHEN subq0.c17 = 
  CASE WHEN IFNULL(subq0.c13, subq0.c17) IS NOT NULL THEN subq0.c17
       ELSE subq0.c5
  END THEN subq0.c11
      WHEN CAST(subq0.c12 AS INTEGER) <> subq0.c11 AND subq0.c17 = subq0.c6 THEN subq0.c7
      WHEN subq0.c17 <> subq0.c11 THEN subq0.c13
      WHEN subq0.c17 <> subq0.c12 THEN subq0.c6
      ELSE TRUE
 END AS c8, NULL AS c9, subq0.c12 AS c10, subq0.c10 AS c11, subq0.c6 AS c12, subq0.c7 AS c13, subq0.c9 AS c14
FROM (SELECT t1.c1 AS c5, t1.c1 AS c6, t1.c1 AS c7, t1.c2 AS c8, t1.c3 AS c9, t1.c3 AS c10, t1.c0 AS c11, t1.c0 AS c12, t1.c0 AS c13, t1.c0 AS c14, t1.c0 AS c15, t1.c1 AS c16, t1.c4 AS c17, t1.c3 AS c18
   FROM t0 AS t1
   WHERE true
   ORDER BY c12) as subq0
WHERE 
 CASE WHEN true THEN CAST(CAST(subq0.c7 AS TEXT) AS BOOLEAN)
      ELSE subq0.c9
 END = subq0.c9
ORDER BY c22, c9
;SELECT subq0.c5 AS c9, subq0.c5 AS c10, subq0.c8 AS c11, subq0.c6 AS c12, subq0.c7 AS c13, subq0.c7 AS c14, subq0.c7 AS c15, subq0.c8 AS c16, subq0.c5 AS c17, 
 CASE subq0.c8 WHEN subq0.c6 <> subq0.c7 THEN subq0.c8
      WHEN subq0.c5 = subq0.c8 THEN subq0.c6
      WHEN subq0.c7 IS NULL THEN FALSE
      WHEN subq0.c7 = 
  CASE WHEN subq0.c6 <> subq0.c6 THEN subq0.c5
       ELSE subq0.c8
  END THEN subq0.c5
      WHEN subq0.c7 = TRUE THEN subq0.c5
      WHEN EXISTS (
  SELECT COALESCE(t5.c3, subq1.c8, t5.c4, t5.c0, CAST(subq1.c8 AS TEXT)) AS c9, t5.c2 AS c10, t5.c4 AS c11, subq1.c8 AS c12, t5.c2 AS c13, subq1.c8 AS c14, COALESCE(t5.c3, t5.c0, NULL) AS c15, subq1.c8 AS c16, t5.c4 AS c17, subq1.c6 AS c18, 
    CASE WHEN t5.c3 <> NULL THEN subq1.c8
         ELSE subq1.c6
    END AS c19, subq1.c7 AS c20, t5.c0 AS c21, t5.c4 AS c22, subq1.c5 AS c23, NULLIF(subq1.c7, t5.c2) AS c24, subq1.c8 AS c25, t5.c2 AS c26, subq1.c6 AS c27, subq1.c8 AS c28, subq1.c8 AS c29, t5.c4 AS c30, subq1.c6 AS c31, subq1.c7 AS c32, COALESCE(t5.c1, subq1.c8, t5.c2, subq1.c8, t5.c3, t5.c1) AS c33
   FROM t0 AS t5
     LEFT JOIN (SELECT t6.c2 AS c5, t6.c0 AS c6, t6.c2 AS c7, t6.c2 AS c8
       FROM t0 AS t6
       WHERE t6.c2 = t6.c1
       ORDER BY c5 DESC, c6 ASC, c8) as subq1     
      ON (t5.c3 = t5.c3 AND t5.c0 <> t5.c1 AND t5.c4 <> t5.c2 OR subq1.c7 = subq1.c7)
   WHERE subq1.c6 IS NULL OR subq1.c8 = t5.c2 AND t5.c1 IS NOT NULL OR 
    CASE t5.c4 WHEN t5.c3 IS NOT NULL THEN t5.c0
         WHEN 
     CASE WHEN true AND subq1.c8 <> t5.c1 AND t5.c1 IS NULL THEN subq1.c8
          ELSE subq1.c8
     END <> t5.c2 THEN subq1.c6
         WHEN subq1.c7 <> TRUE THEN t5.c0
         WHEN t5.c1 = t5.c4 THEN subq1.c6
         WHEN true OR EXISTS (
     SELECT t7.c4 AS c5, t7.c2 AS c6, t7.c4 AS c7, t7.c4 AS c8, TRUE AS c9
      FROM t0 AS t7
      WHERE EXISTS (
       SELECT t8.c0 AS c5, t8.c4 AS c6, t8.c4 AS c7, t8.c0 AS c8, t8.c3 AS c9, t8.c4 AS c10, t8.c3 AS c11, t8.c4 AS c12, t8.c4 AS c13, t8.c4 AS c14, t8.c3 AS c15, t8.c4 AS c16, t8.c1 AS c17, t8.c3 AS c18, t8.c1 AS c19, t8.c3 AS c20, t8.c2 AS c21, t8.c4 AS c22, FALSE AS c23, FALSE AS c24, t8.c0 AS c25
        FROM t0 AS t8
        WHERE t8.c4 IS NOT NULL AND t8.c4 <> t8.c1 AND t8.c4 = t8.c2 OR t8.c0 = t8.c2
        ORDER BY c24 COLLATE NOCASE DESC, c22 DESC, c23
        LIMIT 3179102365151382579 OFFSET 3725863306534793420
       )
      ORDER BY c9, c6 ASC, c8 ASC
     ) THEN subq1.c5
         WHEN subq1.c8 <> t5.c0 THEN subq1.c7
         WHEN false THEN t5.c3
         WHEN subq1.c5 <> t5.c0 AND t5.c4 <> subq1.c7 THEN subq1.c8
         WHEN t5.c1 <> t5.c2 THEN t5.c0
         WHEN subq1.c8 IS NULL THEN subq1.c6
         WHEN NULLIF(subq1.c6, subq1.c6) <> t5.c4 THEN t5.c0
         ELSE t5.c2
    END IS NOT NULL
   ORDER BY c16 COLLATE RTRIM, c28 COLLATE RTRIM
   LIMIT 2191938096911567980 
  ) THEN subq0.c5
      WHEN subq0.c5 <> subq0.c5 THEN subq0.c5
      ELSE subq0.c5
 END AS c26, subq0.c7 AS c27, subq0.c8 AS c28, subq0.c6 AS c29
FROM (SELECT t1.c0 AS c5, t1.c0 AS c6, FALSE AS c7, t4.c1 AS c8
   FROM t0 AS t1
      INNER JOIN t0 AS t2      
       ON (t2.c1 = t2.c4 AND true AND true AND t1.c2 IS NULL OR true AND t1.c2 = t1.c0 OR t2.c4 = t2.c4 AND EXISTS (
        SELECT t3.c0 AS c5, t3.c0 AS c6, t3.c1 AS c7, t3.c2 AS c8, t3.c4 AS c9, t3.c0 AS c10, t3.c2 AS c11, t3.c2 AS c12, t3.c1 AS c13, t3.c0 AS c14
         FROM t0 AS t3
         WHERE t3.c2 = t3.c4 AND true
         ORDER BY c5 COLLATE BINARY
         LIMIT 7027837024114780038 OFFSET 3745299517886390381
        ))
     INNER JOIN t0 AS t4     
      ON (t1.c3 <> t2.c3 OR t2.c0 <> t4.c0)
   WHERE NULL = t2.c3 AND t1.c0 <> 
    CASE t2.c0 WHEN t4.c4 <> t4.c1 THEN t2.c2
         WHEN COALESCE(t1.c0, t4.c0, t4.c3, t4.c3) <> t4.c4 THEN t1.c0
         WHEN false THEN t4.c4
         WHEN t1.c1 <> t4.c4 THEN t1.c1
         ELSE t1.c0
    END AND FALSE IS NULL AND NULLIF(t4.c1, t1.c0) IS NULL OR t4.c0 <> t1.c1
   ORDER BY c6 ASC, c8) as subq0
WHERE subq0.c7 IS NOT NULL
ORDER BY c17 DESC
LIMIT 6397331995978273016 OFFSET 6576966710524688807
;SELECT TRUE AS c6
FROM (SELECT t1.c1 AS c5
   FROM t0 AS t1
   WHERE t1.c4 = t1.c1
   ORDER BY c5 ASC
   LIMIT 9138493561022644835 ) as subq0
WHERE subq0.c5 IS NOT NULL
ORDER BY c6 ASC, c6 COLLATE RTRIM, c6 COLLATE RTRIM ASC, c6 ASC
LIMIT 825629310544339900 
;SELECT subq1.c8 AS c11, subq1.c8 AS c12, subq1.c23 AS c13, 
 CASE subq1.c18 WHEN CAST(subq1.c16 AS TEXT) <> subq1.c15 THEN subq1.c20
      WHEN replace(NULL,'text86',NULL) IS NOT NULL OR subq1.c16 <> subq1.c16 THEN subq1.c22
      WHEN EXISTS (
  SELECT t4.c2 AS c5, t5.c2 AS c6, t7.c2 AS c7, t6.c2 AS c8, t5.c3 AS c9, t5.c3 AS c10
   FROM t0 AS t4
     INNER JOIN (
     t0 AS t5
      INNER JOIN (
      t0 AS t6
       INNER JOIN t0 AS t7       
        ON (t6.c4 = t7.c4 OR t6.c1 = t6.c2)      )
       ON (t7.c2 <> TRUE)     )
      ON (t7.c4 = t5.c1)
   WHERE t6.c2 IS NULL
   ORDER BY c6, c7 ASC, c5 ASC
   LIMIT 8190069677885531893 OFFSET 7955928956126160601
  ) THEN subq1.c20
      WHEN EXISTS (
  SELECT 
    CASE t9.c4 WHEN t9.c4 <> t9.c2 THEN t9.c1
         WHEN 
     CASE t9.c1 WHEN t8.c4 = t9.c4 AND t9.c3 = t8.c3 THEN t8.c4
          WHEN t8.c0 = t8.c4 THEN t9.c4
          WHEN t9.c3 = t8.c3 OR TRUE <> t8.c4 OR t8.c4 <> t8.c2 AND t8.c1 = t8.c0 THEN t9.c1
          ELSE t9.c4
     END = t9.c4 THEN t9.c2
         WHEN t9.c2 IS NOT NULL THEN t8.c2
         WHEN EXISTS (
     SELECT t10.c2 AS c5, t10.c4 AS c6, t10.c1 AS c7
      FROM t0 AS t10
      WHERE true
      ORDER BY c5, c6 ASC
      LIMIT 8447028863694351935 
     ) THEN t9.c4
         WHEN 
     CASE t8.c0 WHEN false THEN t8.c2
          WHEN t8.c0 <> t9.c2 AND t8.c2 <> t8.c2 OR t9.c1 <> t8.c4 THEN t8.c4
          ELSE t9.c2
     END = CAST(t9.c3 AS TEXT) AND t9.c3 = t8.c3 OR t9.c0 = t9.c2 THEN t9.c4
         WHEN t9.c0 <> t9.c2 AND t8.c3 <> t8.c3 THEN t8.c4
         WHEN t8.c2 <> t9.c4 THEN t8.c4
         WHEN false THEN t8.c4
         WHEN t8.c3 IS NOT NULL THEN t9.c1
         WHEN t8.c4 = t8.c4 THEN t8.c4
         ELSE t8.c0
    END AS c8, t8.c0 AS c9, t9.c2 AS c10
   FROM t0 AS t8
     INNER JOIN t0 AS t9     
      ON (t9.c1 = t9.c2)
   WHERE EXISTS (
    SELECT t11.c0 AS c5, t11.c0 AS c6, t11.c2 AS c7, t11.c2 AS c8, t11.c1 AS c9, t11.c3 AS c10, t11.c2 AS c11, t11.c2 AS c12, t11.c0 AS c13, t11.c3 AS c14, t11.c2 AS c15, t11.c2 AS c16, t11.c4 AS c17, t11.c3 AS c18, t11.c4 AS c19
     FROM t0 AS t11
     WHERE EXISTS (
      SELECT t12.c3 AS c5
       FROM t0 AS t12
       WHERE t12.c3 <> t12.c3
       ORDER BY c5 ASC, c5 ASC, c5 COLLATE NOCASE, c5
      ) AND EXISTS (
      SELECT t13.c2 AS c5, FALSE AS c6, t13.c3 AS c7, t13.c0 AS c8, t13.c0 AS c9, t13.c3 AS c10, t13.c4 AS c11, t13.c0 AS c12, t13.c2 AS c13
       FROM t0 AS t13
       WHERE t13.c4 IS NULL OR t13.c3 <> t13.c3 OR false AND t13.c3 <> t13.c3 OR t13.c4 <> t13.c1
       ORDER BY c6
      ) OR t11.c1 <> t11.c2 OR t11.c0 <> t11.c1 OR t11.c2 <> t11.c2 AND t11.c0 <> t11.c1
     ORDER BY c16 DESC, c6 DESC, c16
     LIMIT 2488614322545673251 OFFSET 8186312745583813397
    )
   ORDER BY c8 ASC, c8 COLLATE RTRIM ASC, c9
   LIMIT 8852300224466591057 OFFSET 1375727001509368824
  ) THEN subq1.c16
      WHEN subq1.c19 <> subq1.c19 THEN NULL
      ELSE subq1.c12
 END AS c14, subq1.c17 AS c15, subq1.c15 AS c16, subq1.c16 AS c17
FROM (SELECT subq0.c5 AS c8, subq0.c6 AS c9, 
    CASE subq0.c7 WHEN subq0.c7 <> subq0.c7 THEN subq0.c7
         WHEN subq0.c6 = subq0.c6 THEN subq0.c7
         WHEN TRUE = subq0.c5 OR subq0.c5 <> subq0.c5 THEN subq0.c7
         WHEN subq0.c7 = subq0.c7 THEN subq0.c7
         WHEN EXISTS (
     SELECT t2.c4 AS c5, t2.c1 AS c6, t2.c3 AS c7, t2.c3 AS c8, t2.c3 AS c9, t2.c1 AS c10, t2.c1 AS c11
      FROM t0 AS t2
      WHERE false
      ORDER BY c5, c5 ASC, c5 ASC
      LIMIT 8160780888367313199 
     ) THEN subq0.c7
         WHEN true THEN subq0.c7
         ELSE subq0.c7
    END AS c12, COALESCE(subq0.c5, instr('text97',FALSE), subq0.c5, subq0.c7, subq0.c5, subq0.c6) AS c13, 
    CASE WHEN subq0.c6 = subq0.c6 OR subq0.c6 IS NOT NULL THEN subq0.c7
         ELSE subq0.c7
    END AS c14, TRUE AS c15, subq0.c7 AS c16, subq0.c6 AS c17, subq0.c7 AS c18, subq0.c7 AS c19, subq0.c7 AS c20, 
    CASE WHEN subq0.c5 = subq0.c5 AND subq0.c7 <> subq0.c7 AND true AND subq0.c7 IS NULL OR subq0.c5 <> subq0.c6 THEN subq0.c6
         ELSE subq0.c6
    END AS c21, NULL AS c22, subq0.c6 AS c23, 
    CASE subq0.c5 WHEN subq0.c5 = subq0.c6 THEN subq0.c6
         WHEN subq0.c5 = subq0.c6 THEN subq0.c5
         WHEN EXISTS (
     SELECT t3.c2 AS c5, t3.c4 AS c6, t3.c1 AS c7
      FROM t0 AS t3
      WHERE t3.c2 = t3.c2
      ORDER BY c6, c5, c7 COLLATE RTRIM
      LIMIT 6833184680195132842 OFFSET 7794660735299495993
     ) THEN subq0.c6
         WHEN subq0.c7 <> subq0.c7 THEN subq0.c5
         WHEN subq0.c7 = subq0.c7 THEN subq0.c6
         WHEN subq0.c6 = subq0.c5 THEN subq0.c6
         WHEN true THEN subq0.c6
         ELSE subq0.c5
    END AS c8, subq0.c5 AS c9, subq0.c5 AS c10
   FROM (SELECT t1.c4 AS c5, t1.c1 AS c6, t1.c3 AS c7
      FROM t0 AS t1
      WHERE t1.c1 = t1.c1
      ORDER BY c5, c7
      LIMIT 6986650299178021932 OFFSET 1957833868893705250) as subq0
   WHERE subq0.c5 <> subq0.c5
   ORDER BY c9 DESC, c13 COLLATE NOCASE) as subq1
WHERE true
ORDER BY c16, c16
LIMIT 7217052593023191747 
;SELECT CAST(t1.c4 AS INTEGER) AS c5, t2.c4 AS c6, t2.c0 AS c7, CAST(nullif(NULL,TRUE) AS TEXT) AS c8
FROM t0 AS t1
  INNER JOIN (
  t0 AS t2
   LEFT JOIN t0 AS t3   
    ON (t2.c2 = t3.c0)  )
   ON (IFNULL(t2.c0, t3.c1) <> t2.c0 AND t1.c0 <> t2.c4)
WHERE t2.c0 = COALESCE(COALESCE(
   CASE WHEN t2.c0 <> t1.c2 THEN like(TRUE,53,'򃏒')
        ELSE t2.c0
   END, t1.c2, t3.c3, t2.c3, t2.c2), changes(), t1.c0, t2.c4) OR t1.c4 <> t2.c2
ORDER BY c8 ASC
LIMIT 4660051973442689040 OFFSET 5130609385403992168
;SELECT t1.c2 AS c5, t1.c4 AS c6, t1.c1 AS c7, t1.c4 AS c8, t1.c1 AS c9, 
 CASE t1.c3 WHEN EXISTS (
  SELECT CAST(t2.c2 AS BOOLEAN) AS c5, t2.c2 AS c6
   FROM t0 AS t2
     INNER JOIN t0 AS t3     
      ON (t3.c1 <> t2.c4)
   WHERE t2.c3 <> t3.c3
   ORDER BY c6 ASC
   LIMIT 6421186858572944931 OFFSET 1619844355595981402
  ) OR t1.c0 = IFNULL(t1.c0, t1.c4) THEN t1.c3
      WHEN t1.c0 <> t1.c1 THEN 
  CASE t1.c3 WHEN EXISTS (
   SELECT t4.c1 AS c5, t4.c0 AS c6, t4.c3 AS c7, COALESCE(t4.c3, t4.c3, t4.c0) AS c8, t4.c2 AS c9, t4.c4 AS c10
    FROM t0 AS t4
    WHERE t4.c2 <> t4.c0
    ORDER BY c8 COLLATE BINARY ASC, c9 ASC
    LIMIT 2497474371909031192 
   ) THEN t1.c3
       WHEN false THEN t1.c3
       WHEN 
   CASE WHEN t1.c3 <> t1.c3 THEN NULLIF(t1.c2, t1.c0)
        ELSE t1.c1
   END <> t1.c0 THEN t1.c3
       WHEN t1.c0 <> t1.c4 OR t1.c2 = t1.c0 THEN t1.c3
       ELSE NULLIF(t1.c3, t1.c3)
  END
      WHEN t1.c1 = t1.c4 OR t1.c1 = t1.c2 THEN t1.c3
      WHEN 
  CASE WHEN t1.c2 = t1.c0 THEN t1.c4
       ELSE t1.c1
  END = t1.c0 THEN t1.c3
      WHEN t1.c0 = t1.c1 THEN 
  CASE WHEN t1.c2 = 
   CASE t1.c1 WHEN t1.c0 <> t1.c0 THEN t1.c2
        WHEN t1.c1 <> t1.c4 THEN t1.c0
        WHEN t1.c0 = 
    CASE WHEN FALSE IS NOT NULL THEN t1.c4
         ELSE TRUE
    END THEN t1.c1
        WHEN t1.c4 = t1.c4 THEN t1.c4
        ELSE t1.c0
   END THEN t1.c3
       ELSE t1.c3
  END
      WHEN t1.c4 = t1.c0 THEN 
  CASE WHEN ltrim( FALSE) IS NULL THEN t1.c3
       ELSE t1.c3
  END
      WHEN t1.c2 <> CAST(t1.c3 AS BOOLEAN) THEN t1.c3
      WHEN t1.c0 <> t1.c2 AND t1.c0 <> t1.c4 AND false OR NULLIF(t1.c4, FALSE) = t1.c0 THEN t1.c3
      WHEN t1.c1 = t1.c2 THEN t1.c3
      ELSE t1.c3
 END AS c11, 
 CASE WHEN t1.c0 <> t1.c0 THEN t1.c2
      ELSE t1.c2
 END AS c12, FALSE AS c13, FALSE AS c14
FROM t0 AS t1
WHERE t1.c1 = t1.c0 OR t1.c0 = t1.c0
ORDER BY c14 COLLATE RTRIM, c11 ASC
LIMIT 5757538757133904659 OFFSET 1418398010565386076
;SELECT 
 CASE t1.c3 WHEN t1.c1 = 
  CASE WHEN t1.c3 = t1.c3 THEN t1.c1
       ELSE t1.c0
  END THEN t1.c3
      WHEN t1.c2 = t1.c1 THEN t1.c3
      WHEN t1.c3 <> NULLIF(t1.c3, t1.c3) THEN t1.c3
      WHEN t1.c4 IS NOT NULL THEN t1.c3
      WHEN true AND CAST(t1.c1 AS BOOLEAN) IS NOT NULL OR EXISTS (
  SELECT t8.c4 AS c5, t5.c2 AS c6, t3.c3 AS c7, t4.c0 AS c8, 
    CASE t2.c2 WHEN t2.c3 <> t6.c3 THEN t4.c2
         WHEN t8.c4 IS NULL THEN t6.c2
         WHEN t3.c2 = t8.c4 THEN t3.c0
         WHEN t3.c2 <> t3.c4 OR t3.c0 IS NOT NULL THEN t5.c2
         WHEN true THEN t5.c1
         WHEN EXISTS (
     SELECT t9.c4 AS c5, t9.c2 AS c6, t9.c3 AS c7, t9.c3 AS c8, t9.c3 AS c9, t9.c0 AS c10, t9.c2 AS c11, t9.c2 AS c12, t9.c2 AS c13, t9.c0 AS c14
      FROM t0 AS t9
      WHERE false
      ORDER BY c12 DESC, c9
     ) THEN FALSE
         WHEN t4.c2 <> t3.c1 THEN IFNULL(t3.c0, t8.c2)
         ELSE t5.c0
    END AS c15, t3.c4 AS c16, t6.c0 AS c17, t5.c2 AS c18, t6.c4 AS c19, t3.c0 AS c20, t3.c4 AS c21, NULLIF(
     CASE t8.c3 WHEN t8.c4 <> t8.c1 THEN t6.c3
          WHEN EXISTS (
      SELECT t10.c0 AS c5
       FROM t0 AS t10
       WHERE t10.c4 <> t10.c1 OR false
       ORDER BY c5, c5 ASC, c5, c5 COLLATE RTRIM ASC
       LIMIT 7784237889573323286 OFFSET 5420123432071777847
      ) THEN t8.c3
          WHEN t4.c4 <> t2.c2 THEN t4.c3
          WHEN t2.c3 <> t4.c3 OR t2.c2 = 
      CASE t6.c0 WHEN true THEN t2.c0
           WHEN t8.c0 = t5.c0 THEN t5.c1
           WHEN true THEN t5.c2
           WHEN t8.c0 IS NULL THEN t8.c1
           WHEN t5.c3 <> t3.c3 AND t6.c2 IS NULL THEN t5.c2
           WHEN t2.c4 <> t8.c0 OR t8.c2 <> t2.c0 AND t4.c4 <> t5.c1 OR t5.c2 = t4.c2 THEN t5.c0
           WHEN t2.c2 <> t8.c0 THEN t6.c2
           WHEN t6.c3 IS NOT NULL THEN t8.c0
           WHEN t3.c2 <> t6.c0 OR t6.c0 <> t6.c1 OR t3.c2 = t8.c1 OR t2.c1 <> FALSE OR t5.c3 = t6.c3 OR t2.c1 = t4.c0 THEN FALSE
           WHEN t6.c3 <> t8.c3 THEN TRUE
           WHEN false AND t3.c2 <> t8.c1 THEN t6.c0
           ELSE t3.c4
      END AND t8.c0 = t3.c1 THEN t6.c3
          WHEN t4.c2 = t3.c4 THEN t4.c3
          WHEN NULLIF(t2.c1, t2.c1) <> t8.c0 THEN t2.c3
          WHEN t4.c4 IS NOT NULL THEN t6.c3
          WHEN t8.c2 IS NOT NULL THEN t6.c3
          WHEN t6.c0 = t4.c4 THEN t4.c3
          WHEN t2.c1 <> t2.c4 THEN NULL
          WHEN t3.c4 <> t2.c0 THEN t6.c3
          WHEN t4.c2 IS NOT NULL THEN t6.c3
          ELSE t4.c3
     END, t3.c3) AS c6, IFNULL(t4.c1, t2.c0) AS c7, t6.c1 AS c8, t2.c0 AS c9, t3.c4 AS c10, t4.c2 AS c11, t3.c3 AS c12, t8.c0 AS c13, t4.c3 AS c14, t2.c3 AS c15, NULLIF(t5.c4, t5.c4) AS c16, t8.c1 AS c17, t3.c3 AS c18, t3.c4 AS c19
   FROM t0 AS t2
       LEFT OUTER JOIN t0 AS t3       
        ON (true OR t2.c4 <> t2.c1 AND false AND t3.c3 = t3.c3 OR t3.c3 <> t3.c3 OR t2.c1 <> t3.c0)
      LEFT JOIN (
      t0 AS t4
        LEFT OUTER JOIN t0 AS t5        
         ON (true AND t4.c4 <> t5.c2)
       LEFT JOIN t0 AS t6       
        ON (EXISTS (
         SELECT t7.c0 AS c5
          FROM t0 AS t7
          WHERE false
          ORDER BY c5, c5, c5, c5
          LIMIT 1112576047287702053 OFFSET 2284674334813969277
         ) AND t6.c2 <> t5.c4 AND false OR t4.c3 = t6.c3)      )
       ON (t2.c3 <> t2.c3)
     LEFT JOIN t0 AS t8     
      ON (t8.c4 = t5.c1)
   WHERE 
    CASE t3.c2 WHEN EXISTS (
     SELECT t11.c1 AS c5, t11.c1 AS c6
      FROM t0 AS t11
      WHERE EXISTS (
       SELECT t12.c4 AS c5, t12.c1 AS c6, t12.c0 AS c7, t12.c0 AS c8, t12.c3 AS c9, t12.c0 AS c10, t12.c0 AS c11, t12.c3 AS c12, t12.c3 AS c13, t12.c0 AS c14, t12.c2 AS c15, t12.c2 AS c16, t12.c2 AS c17, t12.c4 AS c18, t12.c3 AS c19
        FROM t0 AS t12
        WHERE t12.c2 IS NULL
        ORDER BY c15, c13 COLLATE NOCASE, c6 DESC
       ) AND true OR t11.c4 <> t11.c0
      ORDER BY c6, c5 ASC, c5, c5
      LIMIT 1429918908859556151 OFFSET 7110365763799505033
     ) AND t2.c1 <> t8.c2 AND t3.c2 <> t8.c0 OR t4.c0 = t4.c0 THEN t6.c1
         WHEN t4.c1 <> t4.c4 THEN t6.c0
         WHEN t3.c1 IS NULL THEN t8.c1
         WHEN t2.c1 <> t3.c2 THEN t5.c0
         ELSE t2.c0
    END <> t5.c0
   ORDER BY c7, c17 DESC
   LIMIT 4819972491395393718 
  ) AND 
  CASE t1.c0 WHEN t1.c0 <> t1.c0 THEN t1.c2
       WHEN t1.c1 IS NULL THEN t1.c4
       WHEN 
   CASE t1.c0 WHEN EXISTS (
    SELECT t13.c4 AS c5, t13.c0 AS c6, t13.c3 AS c7
     FROM t0 AS t13
     WHERE t13.c2 <> t13.c2
     ORDER BY c7, c6
     LIMIT 4419669646520015638 OFFSET 1972548673007983187
    ) THEN t1.c4
        WHEN false OR t1.c0 = t1.c2 THEN t1.c1
        WHEN t1.c0 IS NOT NULL THEN t1.c1
        WHEN EXISTS (
    SELECT t14.c1 AS c5, t14.c4 AS c6, COALESCE(t14.c3, t14.c3) AS c7, t14.c4 AS c8, TRUE AS c9, t14.c0 AS c10, t14.c1 AS c11, t14.c1 AS c12, t14.c4 AS c13, FALSE AS c14, t14.c1 AS c15, t14.c2 AS c16
     FROM t0 AS t14
     WHERE t14.c1 = t14.c1
     ORDER BY c8
    ) THEN t1.c4
        ELSE t1.c1
   END <> 
   CASE t1.c4 WHEN t1.c3 IS NULL THEN t1.c4
        WHEN 42 IS NULL THEN t1.c1
        WHEN EXISTS (
    SELECT t15.c2 AS c5
     FROM t0 AS t15
     WHERE FALSE <> t15.c0 OR t15.c0 <> t15.c4
     ORDER BY c5 COLLATE NOCASE, c5, c5 ASC, c5 COLLATE NOCASE
     LIMIT 5994853927547657609 
    ) THEN t1.c2
        WHEN t1.c2 <> t1.c2 THEN FALSE
        WHEN t1.c1 <> t1.c1 OR 
    CASE WHEN t1.c2 = t1.c1 AND t1.c3 = t1.c3 THEN t1.c0
         ELSE FALSE
    END = t1.c2 THEN CAST(t1.c1 AS INTEGER)
        WHEN t1.c3 = t1.c3 OR t1.c1 <> t1.c0 AND t1.c2 = t1.c0 AND t1.c0 = t1.c0 AND t1.c2 <> COALESCE(t1.c3, t1.c4) THEN t1.c1
        ELSE t1.c1
   END AND t1.c4 = t1.c1 THEN t1.c1
       WHEN t1.c4 IS NULL AND EXISTS (
   SELECT TRUE AS c8, t16.c0 AS c9, t16.c1 AS c10
    FROM t0 AS t16
      INNER JOIN t0 AS t17      
       ON (EXISTS (
        SELECT t18.c0 AS c5, t18.c1 AS c6, t18.c2 AS c7
         FROM t0 AS t18
         WHERE t18.c0 <> t18.c0
         ORDER BY c7
         LIMIT 79863893643966641 OFFSET 8147371069745079689
        ))
    WHERE t16.c0 <> CAST(t16.c1 AS BOOLEAN)
    ORDER BY c9, c8 DESC, c8
    LIMIT 23840680065567968 OFFSET 3112566001836980842
   ) THEN t1.c2
       WHEN t1.c4 <> 
   CASE t1.c2 WHEN false AND t1.c3 = t1.c3 THEN t1.c4
        WHEN t1.c3 = t1.c3 OR t1.c1 <> 
    CASE WHEN t1.c2 = t1.c1 THEN t1.c4
         ELSE TRUE
    END OR t1.c2 = t1.c4 THEN t1.c1
        WHEN t1.c0 <> t1.c1 THEN t1.c1
        WHEN upper( 'text80') IS NULL OR t1.c2 = t1.c2 THEN t1.c2
        WHEN 
    CASE WHEN FALSE <> FALSE THEN t1.c2
         ELSE t1.c2
    END = IFNULL(t1.c2, t1.c4) OR t1.c3 <> t1.c3 THEN t1.c2
        WHEN t1.c3 <> CAST(t1.c4 AS BOOLEAN) AND t1.c1 = t1.c4 THEN t1.c0
        WHEN t1.c4 = t1.c2 THEN 
    CASE t1.c1 WHEN t1.c2 = t1.c0 THEN t1.c4
         WHEN 
     CASE t1.c3 WHEN EXISTS (
      SELECT t19.c4 AS c5, t19.c2 AS c6, t19.c4 AS c7
       FROM t0 AS t19
       WHERE t19.c2 IS NOT NULL
       ORDER BY c6 DESC
       LIMIT 3400298393515898984 OFFSET 2670060333696768284
      ) THEN t1.c3
          ELSE 'text10'
     END IS NOT NULL THEN t1.c2
         WHEN t1.c4 = t1.c4 THEN t1.c4
         WHEN t1.c1 IS NULL THEN t1.c0
         ELSE t1.c4
    END
        WHEN t1.c0 = 
    CASE WHEN t1.c4 = t1.c4 THEN t1.c1
         ELSE t1.c2
    END THEN t1.c2
        WHEN typeof( 'text64') IS NULL THEN t1.c4
        ELSE t1.c2
   END AND false AND t1.c2 IS NOT NULL OR t1.c3 = t1.c3 OR t1.c2 = t1.c4 THEN t1.c0
       WHEN hex( TRUE) IS NULL OR false AND COALESCE(t1.c2, t1.c4) = t1.c4 OR t1.c2 = t1.c0 THEN t1.c2
       WHEN likelihood(TRUE,0.949523) IS NULL OR t1.c4 IS NOT NULL THEN 
   CASE t1.c0 WHEN true OR t1.c3 = t1.c3 THEN t1.c1
        WHEN t1.c2 <> t1.c2 OR EXISTS (
    SELECT t20.c1 AS c5, t20.c2 AS c6
     FROM t0 AS t20
     WHERE t20.c0 = t20.c0
     ORDER BY c6, c6 ASC, c5 COLLATE NOCASE ASC, c5
     LIMIT 7536196319269242212 
    ) AND t1.c4 = t1.c0 THEN t1.c2
        WHEN t1.c1 <> t1.c0 THEN t1.c1
        ELSE t1.c4
   END
       ELSE t1.c0
  END <> t1.c4 THEN t1.c3
      WHEN false OR t1.c1 <> 
  CASE WHEN false OR t1.c4 IS NULL THEN 
   CASE t1.c4 WHEN false AND t1.c0 IS NULL AND t1.c1 IS NULL THEN t1.c1
        WHEN t1.c3 <> t1.c3 OR t1.c4 IS NOT NULL OR t1.c2 IS NULL THEN CAST(t1.c1 AS INTEGER)
        WHEN t1.c0 <> t1.c2 THEN t1.c1
        WHEN t1.c4 <> t1.c1 THEN t1.c1
        WHEN 
    CASE WHEN t1.c3 = t1.c3 THEN t1.c3
         ELSE 
     CASE WHEN t1.c3 IS NOT NULL THEN t1.c3
          ELSE t1.c3
     END
    END <> t1.c3 OR t1.c3 IS NULL THEN t1.c4
        WHEN t1.c2 <> t1.c1 THEN t1.c4
        ELSE t1.c0
   END
       ELSE t1.c0
  END THEN t1.c3
      WHEN t1.c1 = t1.c0 THEN t1.c3
      WHEN t1.c2 <> t1.c0 THEN t1.c3
      ELSE t1.c3
 END AS c7, t1.c2 AS c8, t1.c2 AS c9, t1.c2 AS c10, COALESCE(
  CASE WHEN t1.c1 IS NOT NULL THEN t1.c1
       ELSE COALESCE(t1.c3, 
    CASE WHEN t1.c3 = t1.c3 THEN t1.c1
         ELSE t1.c3
    END, t1.c3, t1.c3)
  END, 
  CASE t1.c3 WHEN t1.c4 <> t1.c1 THEN NULL
       WHEN t1.c3 IS NULL THEN t1.c3
       WHEN t1.c0 <> t1.c2 OR t1.c4 <> t1.c1 THEN t1.c3
       WHEN t1.c3 = t1.c3 AND true OR t1.c0 = 
   CASE WHEN t1.c1 = t1.c0 THEN t1.c4
        ELSE t1.c4
   END THEN t1.c3
       WHEN t1.c2 IS NOT NULL THEN t1.c3
       WHEN 
   CASE WHEN trim(24,TRUE) IS NOT NULL THEN t1.c1
        ELSE t1.c0
   END = t1.c0 THEN t1.c3
       WHEN t1.c3 = t1.c3 THEN NULLIF(t1.c3, t1.c3)
       WHEN t1.c4 <> t1.c2 AND t1.c0 <> t1.c1 AND t1.c2 <> t1.c4 THEN t1.c3
       ELSE CAST(t1.c4 AS TEXT)
  END, t1.c3, t1.c0, t1.c0, t1.c0) AS c11
FROM t0 AS t1
WHERE CAST(t1.c1 AS INTEGER) IS NULL
ORDER BY c9 DESC, c10 ASC, c8 COLLATE NOCASE
LIMIT 6524415081436830756 OFFSET 8974316330235316679
;INSERT INTO t0 VALUES (TRUE, TRUE, FALSE, NULL, TRUE)
;SELECT subq0.c10 AS c13, subq0.c6 AS c14, subq0.c12 AS c15, subq0.c5 AS c16
FROM (SELECT t2.c0 AS c5, t1.c0 AS c6, t2.c3 AS c7, t3.c4 AS c8, t4.c0 AS c9, t3.c0 AS c10, t1.c4 AS c11, t2.c2 AS c12
   FROM t0 AS t1
       INNER JOIN t0 AS t2       
        ON (t2.c4 IS NULL)
      LEFT JOIN t0 AS t3      
       ON (false)
     LEFT JOIN t0 AS t4     
      ON (true)
   WHERE t4.c4 = CAST(t4.c2 AS TEXT)
   ORDER BY c6 COLLATE RTRIM DESC
   LIMIT 4339039501116809916 ) as subq0
WHERE subq0.c5 = subq0.c12
ORDER BY c13 COLLATE NOCASE DESC, c13, c16
LIMIT 7701240380609567352 OFFSET 6062542394582981957
;SELECT subq0.c5 AS c10, subq0.c9 AS c11, subq0.c8 AS c12, subq0.c6 AS c13
FROM (SELECT t1.c3 AS c5, t1.c0 AS c6, t1.c3 AS c7, t1.c1 AS c8, t1.c0 AS c9
   FROM t0 AS t1
   WHERE t1.c2 = CAST(t1.c4 AS TEXT)
   ORDER BY c7
   LIMIT 6937536879641773356 OFFSET 1288081267646996483) as subq0
WHERE subq0.c6 = COALESCE(TRUE, subq0.c7, subq0.c7, subq0.c7, subq0.c5)
ORDER BY c11 DESC, c12 COLLATE NOCASE DESC
LIMIT 4958563531914704813 OFFSET 3845421372727715935
;SELECT t1.c1 AS c5, t1.c0 AS c6, t1.c0 AS c7, t1.c2 AS c8, t1.c3 AS c9
FROM t0 AS t1
WHERE EXISTS (
 SELECT subq0.c5 AS c7, subq0.c6 AS c8, 
   CASE subq0.c6 WHEN subq0.c5 <> subq0.c5 THEN subq0.c6
        WHEN subq0.c6 <> subq0.c5 THEN TRUE
        ELSE subq0.c6
   END AS c9, subq0.c6 AS c10, subq0.c5 AS c11, subq0.c6 AS c12
  FROM (SELECT t2.c1 AS c5, t2.c2 AS c6
     FROM t0 AS t2
     WHERE t2.c1 <> COALESCE(t2.c1, t2.c2, t2.c3, t2.c4)
     ORDER BY c5, c6
     LIMIT 2344054724609529394 ) as subq0
  WHERE rtrim( FALSE) IS NULL OR EXISTS (
   SELECT subq1.c5 AS c15, subq1.c9 AS c16, subq1.c8 AS c17
    FROM (SELECT t3.c0 AS c5, t3.c2 AS c6, t3.c4 AS c7, t3.c2 AS c8, t3.c3 AS c9, t3.c3 AS c10, t3.c2 AS c11, t3.c2 AS c12, t3.c4 AS c13, t3.c4 AS c14
       FROM t0 AS t3
       WHERE t3.c0 = t3.c0 OR t3.c4 = t3.c0
       ORDER BY c10, c6, c13 ASC
       LIMIT 6393567116974181105 ) as subq1
    WHERE subq1.c12 = subq1.c12 OR subq1.c11 <> subq1.c7
    ORDER BY c17, c17 COLLATE RTRIM
    LIMIT 2059702721700457711 
   ) AND true
  ORDER BY c10 ASC, c10, c12
 )
ORDER BY c7, c6 ASC, c8 ASC
LIMIT 5339464769191641215 OFFSET 8733928884966204982
;SELECT subq0.c16 AS c17, subq0.c15 AS c18
FROM (SELECT t1.c4 AS c14, TRUE AS c15, t1.c0 AS c16
   FROM t0 AS t1
     INNER JOIN t0 AS t2     
      ON (false OR EXISTS (
       SELECT t3.c2 AS c5, t3.c1 AS c6, t3.c2 AS c7, t3.c1 AS c8, t3.c1 AS c9, t3.c4 AS c10, t3.c3 AS c11, t3.c4 AS c12, t3.c3 AS c13
        FROM t0 AS t3
        WHERE t3.c0 = t3.c0
        ORDER BY c12, c10, c6
       ))
   WHERE t2.c1 <> 
    CASE WHEN t2.c1 IS NOT NULL THEN t2.c2
         ELSE t1.c1
    END
   ORDER BY c15) as subq0
WHERE subq0.c14 IS NULL OR subq0.c15 IS NULL AND EXISTS (
 SELECT t5.c3 AS c7, t4.c4 AS c8, subq1.c5 AS c9, t4.c4 AS c10, t5.c1 AS c11
  FROM t0 AS t4
     LEFT JOIN t0 AS t5     
      ON (t4.c0 = t5.c1)
    LEFT OUTER JOIN (SELECT t6.c2 AS c5, t6.c4 AS c6
      FROM t0 AS t6
      WHERE t6.c4 = TRUE
      ORDER BY c6 COLLATE RTRIM, c6 DESC
      LIMIT 2871198361254202110 OFFSET 5455437622971804605) as subq1    
     ON (t4.c4 = t5.c4)
  WHERE t5.c2 = t4.c2
  ORDER BY c7 ASC, c8, c9 ASC
  LIMIT 7159761237025388141 OFFSET 4270182018513914909
 ) OR subq0.c14 = subq0.c15 AND subq0.c15 <> subq0.c16 AND subq0.c15 <> subq0.c15
ORDER BY c17 COLLATE BINARY, c18, c17 COLLATE NOCASE ASC, c17 COLLATE NOCASE
;SELECT t1.c4 AS c5, t1.c3 AS c6, t1.c2 AS c7, t1.c0 AS c8, t1.c1 AS c9, t1.c4 AS c10, t1.c2 AS c11, t1.c4 AS c12, t1.c2 AS c13, t1.c0 AS c14
FROM t0 AS t1
WHERE t1.c2 <> t1.c4
ORDER BY c11 ASC, c7
LIMIT 4847509908338574431 OFFSET 7147060204877741255
;; SELECT * FROM t0; DROP TABLE t0;' || New_Out: 0|1|1|1|1
||1|0|1|1|1|1
1||1|1||0
1|0|1|0|||0|0|1|0|1|0|0|1|1|0|0|1|1|0|0||0|1|1
0|0|

0
|0
1|1|1||0
0|1|0||0
1|1|0||1
-----------/Error----------- */
CREATE TABLE t0 (
    c0 BOOLEAN,
    c1 BOOLEAN,
    c2 BOOLEAN,
    c3 NULL,
    c4 BOOLEAN
);
UPDATE t0 
SET c0 = t0.c0, c1 = t0.c1, c2 = 
  CASE WHEN t0.c0 = t0.c4 THEN t0.c0
       ELSE 
   CASE WHEN t0.c3 = t0.c3 THEN t0.c4
        ELSE t0.c1
   END
  END
WHERE t0.c1 = t0.c0;
INSERT INTO t0 VALUES (TRUE, TRUE, TRUE, NULL, FALSE);
UPDATE t0 
SET c1 = FALSE, c2 = t0.c4, c4 = t0.c1
WHERE false;
DELETE FROM t0
WHERE t0.c2 <> t0.c2;
SELECT t2.c2 AS c5, t2.c3 AS c6
FROM t0 AS t1
  INNER JOIN t0 AS t2  
   ON (FALSE <> FALSE)
WHERE t1.c2 <> t2.c1
ORDER BY c5 DESC
LIMIT 3489068177354952166 ;
SELECT t1.c0 AS c5, t1.c0 AS c6, t1.c3 AS c7, t1.c0 AS c8, 
 CASE WHEN NULL = t1.c3 OR t1.c3 = t1.c3 THEN t1.c2
      ELSE t1.c2
 END AS c9
FROM t0 AS t1
WHERE t1.c4 = t1.c0
ORDER BY c6 COLLATE BINARY, c9, c8 COLLATE BINARY ASC
LIMIT 1872518644991716210 ;
SELECT 
 CASE t11.c0 WHEN t9.c3 = t11.c3 THEN t11.c0
      ELSE t10.c2
 END AS c5, t9.c4 AS c6, t10.c1 AS c7, COALESCE(subq0.c8, t11.c2, t9.c4, subq0.c10, 'text95') AS c8, NULL AS c9, t10.c1 AS c10, t9.c3 AS c11, t1.c0 AS c12
FROM t0 AS t1
  LEFT JOIN (
  (SELECT FALSE AS c6, t2.c3 AS c7, t3.c3 AS c8, t2.c1 AS c9, 
      CASE t3.c3 WHEN EXISTS (
       SELECT t5.c0 AS c5, t5.c1 AS c6, t5.c2 AS c7, NULL AS c8, TRUE AS c9, t5.c4 AS c10, t5.c1 AS c11, t5.c3 AS c12, t5.c4 AS c13, TRUE AS c14, t5.c4 AS c15, t5.c1 AS c16, t5.c2 AS c17, t5.c3 AS c18
        FROM t0 AS t5
        WHERE t5.c0 = t5.c4
        ORDER BY c12
        LIMIT 4168631915696415283 
       ) THEN t3.c3
           WHEN t3.c4 <> t2.c4 OR t3.c1 = TRUE THEN NULL
           WHEN t2.c4 <> t3.c1 THEN t2.c3
           WHEN t2.c4 IS NULL THEN t3.c3
           WHEN t2.c2 IS NULL THEN t2.c3
           WHEN EXISTS (
       SELECT t6.c1 AS c5, t6.c3 AS c6, t6.c1 AS c7, t6.c4 AS c8, t6.c3 AS c9
        FROM t0 AS t6
        WHERE t6.c0 <> t6.c1
        ORDER BY c6 DESC
        LIMIT 3315104814579592944 
       ) THEN t3.c3
           WHEN t2.c4 = t3.c1 THEN t3.c3
           WHEN t3.c2 = t2.c0 THEN t2.c3
           WHEN false THEN t2.c3
           WHEN t2.c2 = t3.c1 THEN t3.c3
           WHEN true OR t2.c1 = t3.c1 THEN t3.c3
           WHEN t2.c4 = t2.c4 THEN t3.c3
           ELSE t3.c3
      END AS c10, t2.c0 AS c11, t2.c3 AS c12, t3.c4 AS c13, t2.c4 AS c14, t3.c4 AS c15, t2.c2 AS c16, t2.c2 AS c17
     FROM t0 AS t2
       CROSS JOIN t0 AS t3       
        ON (t2.c3 <> t3.c3 OR EXISTS (
         SELECT NULL AS c5
          FROM t0 AS t4
          WHERE t4.c3 = t4.c3 AND t4.c1 IS NULL
          ORDER BY c5 COLLATE NOCASE
         ))
     WHERE t2.c4 IS NULL AND t2.c2 = t3.c4 AND t3.c2 = t2.c0 OR EXISTS (
      SELECT TRUE AS c5, t7.c4 AS c6, t7.c2 AS c7, t7.c2 AS c8, t7.c0 AS c9
       FROM t0 AS t7
       WHERE t7.c2 <> t7.c0
       ORDER BY c5 ASC, c6, c6
      )
     ORDER BY c10) as subq0
   INNER JOIN (
   t0 AS t8
    LEFT JOIN (
    t0 AS t9
      CROSS JOIN t0 AS t10      
       ON (t9.c2 = t10.c0)
     LEFT JOIN t0 AS t11     
      ON (t10.c0 <> t9.c0 OR t10.c0 = t9.c4 AND t10.c4 <> t11.c2)    )
     ON (t8.c1 IS NOT NULL)   )
    ON (t11.c1 = subq0.c15)  )
   ON (t9.c0 = t10.c2)
WHERE EXISTS (
 SELECT subq1.c5 AS c6, subq1.c5 AS c7, subq1.c5 AS c8, subq1.c5 AS c9, subq1.c5 AS c10, subq1.c5 AS c11, subq1.c5 AS c12, subq1.c5 AS c13, subq1.c5 AS c14, subq1.c5 AS c15, subq1.c5 AS c16, subq1.c5 AS c17, subq1.c5 AS c18, subq1.c5 AS c19, subq1.c5 AS c20, subq1.c5 AS c21
  FROM (SELECT t13.c3 AS c5
     FROM t0 AS t12
       INNER JOIN t0 AS t13       
        ON (true)
     WHERE t12.c0 <> t13.c1
     ORDER BY c5 COLLATE RTRIM DESC
     LIMIT 5491843566662984611 OFFSET 6030566075870591871) as subq1
  WHERE subq1.c5 = subq1.c5 OR subq1.c5 <> subq1.c5
  ORDER BY c21 COLLATE BINARY
  LIMIT 7881353086329425355 OFFSET 8416483466822435079
 )
ORDER BY c10;
SELECT subq0.c7 AS c16, t1.c0 AS c17, 
 CASE WHEN subq0.c7 <> NULLIF(
   CASE subq0.c15 WHEN true THEN subq0.c15
        WHEN t1.c4 = subq0.c10 THEN 
    CASE subq0.c15 WHEN subq0.c5 <> subq0.c6 OR true THEN t1.c0
         WHEN subq0.c11 = t1.c3 THEN t1.c1
         WHEN t1.c2 = t1.c0 THEN FALSE
         WHEN t1.c4 IS NULL THEN subq0.c6
         WHEN subq0.c14 = subq0.c7 AND t1.c4 IS NULL THEN subq0.c10
         WHEN t1.c3 IS NOT NULL AND subq0.c15 = subq0.c15 AND false AND false THEN subq0.c7
         WHEN EXISTS (
     SELECT t3.c2 AS c5
      FROM t0 AS t3
      WHERE t3.c2 <> t3.c1 AND t3.c0 <> t3.c2 AND t3.c3 = t3.c3 OR FALSE <> FALSE AND t3.c3 <> t3.c3 OR t3.c4 = t3.c0
      ORDER BY c5, c5 ASC, c5 DESC, c5
      LIMIT 6338914668196768434 OFFSET 2259381121951445808
     ) THEN subq0.c14
         WHEN subq0.c12 = subq0.c14 THEN subq0.c14
         WHEN subq0.c12 = subq0.c14 THEN subq0.c6
         WHEN t1.c0 <> subq0.c9 AND subq0.c14 <> CAST(subq0.c5 AS INTEGER) THEN subq0.c13
         WHEN false AND false THEN 
     CASE WHEN false THEN subq0.c6
          ELSE t1.c0
     END
         ELSE subq0.c7
    END
        WHEN subq0.c12 <> CAST(subq0.c12 AS BOOLEAN) THEN t1.c0
        WHEN subq0.c12 <> subq0.c9 THEN subq0.c10
        WHEN t1.c0 <> subq0.c12 THEN t1.c4
        WHEN t1.c4 = t1.c2 THEN t1.c1
        WHEN FALSE <> t1.c4 THEN t1.c0
        ELSE subq0.c15
   END, subq0.c15) THEN t1.c4
      ELSE subq0.c13
 END AS c6, subq0.c14 AS c7
FROM t0 AS t1
  INNER JOIN (SELECT t2.c2 AS c5, t2.c1 AS c6, t2.c4 AS c7, t2.c2 AS c8, t2.c1 AS c9, t2.c1 AS c10, t2.c3 AS c11, t2.c2 AS c12, t2.c1 AS c13, t2.c0 AS c14, t2.c1 AS c15
    FROM t0 AS t2
    WHERE false OR t2.c0 IS NULL OR t2.c0 <> t2.c1 OR t2.c1 IS NULL
    ORDER BY c15 COLLATE RTRIM, c10 ASC, c15) as subq0  
   ON (subq0.c10 IS NULL OR subq0.c9 = FALSE)
WHERE COALESCE(t1.c3, subq0.c11, 
  CASE WHEN subq0.c7 = 
   CASE WHEN EXISTS (
    SELECT t4.c3 AS c5, t4.c0 AS c6, t4.c4 AS c7, t4.c1 AS c8, t4.c1 AS c9, t4.c3 AS c10, t4.c1 AS c11, t4.c2 AS c12, t4.c2 AS c13, t4.c2 AS c14, t4.c1 AS c15, t4.c1 AS c16
     FROM t0 AS t4
     WHERE true
     ORDER BY c5
     LIMIT 9592695690041534 
    ) THEN subq0.c13
        ELSE COALESCE(subq0.c9, subq0.c9, subq0.c9, NULL, subq0.c11, 90)
   END THEN subq0.c11
       ELSE subq0.c11
  END) = NULL
ORDER BY c17;
SELECT t1.c4 AS c5, t1.c2 AS c6, t1.c1 AS c7, COALESCE(t1.c1, t1.c0, t1.c4, t1.c2) AS c8, t1.c0 AS c9
FROM t0 AS t1
WHERE t1.c4 <> t1.c0
ORDER BY c5 DESC, c5, c9
LIMIT 913274745945213034 ;
SELECT t1.c3 AS c5, t1.c1 AS c6, t1.c3 AS c7, t1.c0 AS c8, t1.c2 AS c9, t1.c0 AS c10, t1.c0 AS c11, t1.c4 AS c12
FROM t0 AS t1
WHERE t1.c0 <> t1.c2
ORDER BY c10 DESC, c5, c5
LIMIT 4985006124125536569 OFFSET 3494965248147406215;
SELECT subq1.c8 AS c10, CAST(subq1.c8 AS BOOLEAN) AS c11, COALESCE(subq1.c9, subq1.c9, subq1.c9) AS c12, subq1.c8 AS c13, COALESCE(subq1.c9, subq1.c9, subq1.c8, subq1.c9, 
  CASE subq1.c9 WHEN subq1.c9 = subq1.c9 THEN subq1.c9
       WHEN true THEN subq1.c9
       WHEN EXISTS (
   SELECT 
     CASE WHEN t5.c3 IS NULL THEN t4.c2
          ELSE t6.c0
     END AS c5, t6.c4 AS c6
    FROM t0 AS t4
       LEFT JOIN t0 AS t5       
        ON (TRUE = t4.c2)
      INNER JOIN t0 AS t6      
       ON (t4.c1 = t6.c0)
    WHERE t4.c2 = t4.c0
    ORDER BY c6 DESC, c6
   ) THEN subq1.c9
       WHEN FALSE <> subq1.c8 THEN subq1.c9
       WHEN subq1.c9 = subq1.c9 THEN COALESCE(subq1.c8, NULL, subq1.c9, subq1.c9, NULL, subq1.c9)
       WHEN subq1.c9 = subq1.c9 THEN subq1.c9
       WHEN EXISTS (
   SELECT DISTINCT t7.c0 AS c5, t7.c0 AS c6, t7.c1 AS c7, t7.c1 AS c8, t7.c2 AS c9, t7.c4 AS c10
    FROM t0 AS t7
    WHERE TRUE = t7.c0 AND t7.c3 = t7.c3 AND EXISTS (
     SELECT t8.c1 AS c5, TRUE AS c6, t8.c0 AS c7
      FROM t0 AS t8
      WHERE t8.c2 <> t8.c2
      ORDER BY c7 DESC
      LIMIT 4864159336937569980 
     )
    ORDER BY c10 ASC, c10 DESC
   ) THEN subq1.c9
       WHEN subq1.c8 <> 
   CASE WHEN false AND subq1.c9 <> subq1.c9 OR subq1.c8 <> subq1.c8 AND subq1.c8 <> subq1.c8 OR 
    CASE subq1.c9 WHEN subq1.c8 = subq1.c8 THEN subq1.c9
         WHEN subq1.c8 <> subq1.c8 THEN subq1.c9
         WHEN subq1.c8 <> subq1.c8 THEN subq1.c9
         WHEN EXISTS (
     SELECT t9.c0 AS c5, t9.c1 AS c6, t9.c4 AS c7
      FROM t0 AS t9
      WHERE t9.c0 = t9.c0
      ORDER BY c5 DESC, c5 COLLATE BINARY, c7
     ) THEN 
     CASE WHEN EXISTS (
      SELECT t10.c0 AS c5, t10.c4 AS c6, t10.c3 AS c7, t10.c1 AS c8, t10.c0 AS c9
       FROM t0 AS t10
       WHERE t10.c1 <> t10.c0
       ORDER BY c5 ASC
      ) THEN subq1.c9
          ELSE subq1.c9
     END
         WHEN subq1.c8 <> subq1.c8 AND subq1.c9 <> subq1.c9 AND subq1.c8 = subq1.c8 AND subq1.c9 = NULL OR subq1.c9 = 
     CASE subq1.c9 WHEN subq1.c9 <> subq1.c9 THEN subq1.c9
          WHEN false THEN subq1.c9
          WHEN subq1.c8 <> 
      CASE WHEN subq1.c9 <> subq1.c9 THEN subq1.c8
           ELSE subq1.c8
      END AND subq1.c8 <> subq1.c8 THEN NULL
          WHEN subq1.c9 = subq1.c9 THEN subq1.c9
          WHEN true AND EXISTS (
      SELECT TRUE AS c5, t11.c4 AS c6, t11.c3 AS c7, t11.c0 AS c8, t11.c2 AS c9, t11.c4 AS c10
       FROM t0 AS t11
       WHERE t11.c2 IS NULL AND t11.c0 IS NULL
       ORDER BY c5
      ) THEN subq1.c9
          WHEN subq1.c8 <> subq1.c8 OR subq1.c8 IS NULL THEN subq1.c9
          WHEN true THEN subq1.c9
          WHEN subq1.c8 = subq1.c8 OR subq1.c9 <> subq1.c9 THEN subq1.c9
          WHEN subq1.c8 = subq1.c8 THEN 
      CASE WHEN subq1.c8 <> subq1.c8 OR false AND subq1.c9 = subq1.c9 THEN subq1.c9
           ELSE subq1.c9
      END
          WHEN subq1.c8 = subq1.c8 THEN subq1.c9
          ELSE subq1.c9
     END OR subq1.c8 = 
     CASE WHEN subq1.c8 IS NOT NULL AND subq1.c9 <> subq1.c9 THEN subq1.c8
          ELSE subq1.c8
     END THEN subq1.c9
         WHEN subq1.c8 <> TRUE AND subq1.c9 <> subq1.c9 THEN subq1.c9
         WHEN subq1.c8 = subq1.c8 AND subq1.c9 <> subq1.c9 THEN NULL
         ELSE subq1.c9
    END = subq1.c9 THEN subq1.c8
        ELSE subq1.c8
   END THEN subq1.c9
       WHEN subq1.c9 IS NULL THEN COALESCE(subq1.c9, subq1.c9, subq1.c9)
       ELSE subq1.c9
  END) AS c11, subq1.c9 AS c12, 
 CASE WHEN subq1.c9 <> subq1.c9 AND COALESCE(subq1.c8, subq1.c8, subq1.c8, subq1.c8, subq1.c9, 81) = subq1.c8 OR subq1.c8 <> CAST(subq1.c8 AS BOOLEAN) AND subq1.c8 = subq1.c8 THEN NULLIF(
   CASE subq1.c8 WHEN subq1.c8 = subq1.c8 THEN subq1.c8
        WHEN subq1.c9 = subq1.c9 THEN subq1.c8
        WHEN subq1.c9 <> subq1.c9 THEN subq1.c8
        WHEN subq1.c8 <> subq1.c8 THEN subq1.c8
        ELSE subq1.c8
   END, 
   CASE subq1.c8 WHEN EXISTS (
    SELECT t12.c4 AS c5, 
      CASE t13.c3 WHEN EXISTS (
       SELECT t14.c3 AS c5, t14.c2 AS c6, NULL AS c7, t14.c1 AS c8, t14.c3 AS c9, t14.c1 AS c10, TRUE AS c11, t14.c2 AS c12, t14.c3 AS c13, t14.c3 AS c14, TRUE AS c15, t14.c1 AS c16
        FROM t0 AS t14
        WHERE t14.c3 <> t14.c3 OR EXISTS (
         SELECT t15.c2 AS c5, t15.c0 AS c6, t15.c2 AS c7, t15.c3 AS c8, t15.c0 AS c9, t15.c2 AS c10, t15.c2 AS c11
          FROM t0 AS t15
          WHERE false
          ORDER BY c11 ASC, c9 COLLATE NOCASE ASC, c6
          LIMIT 8387930341120390604 OFFSET 225361810415418816
         )
        ORDER BY c6 ASC
        LIMIT 4863298919854118628 
       ) THEN t12.c3
           WHEN t13.c3 <> t13.c3 THEN t12.c3
           WHEN EXISTS (
       SELECT t16.c4 AS c5, t16.c2 AS c6, t16.c0 AS c7, t16.c3 AS c8, t16.c2 AS c9, t16.c4 AS c10, t16.c1 AS c11, t16.c4 AS c12
        FROM t0 AS t16
        WHERE FALSE <> t16.c2
        ORDER BY c8 DESC
        LIMIT 2036435071021223265 OFFSET 8379564570455881838
       ) THEN t13.c3
           WHEN t12.c4 = t12.c4 THEN t13.c3
           WHEN false THEN t12.c3
           WHEN t12.c2 <> t13.c4 THEN t13.c3
           ELSE t12.c3
      END AS c13
     FROM t0 AS t12
       INNER JOIN t0 AS t13       
        ON (t13.c1 IS NOT NULL)
     WHERE t13.c0 IS NOT NULL
     ORDER BY c13 ASC, c13 DESC, c5, c13 DESC
     LIMIT 1077542675674414091 
    ) THEN FALSE
        WHEN subq1.c9 <> subq1.c9 THEN subq1.c8
        WHEN subq1.c8 = subq1.c8 THEN subq1.c8
        WHEN subq1.c8 = subq1.c8 THEN subq1.c8
        WHEN subq1.c8 = subq1.c8 THEN subq1.c8
        WHEN subq1.c9 = subq1.c9 THEN subq1.c8
        WHEN subq1.c9 IS NOT NULL THEN subq1.c8
        WHEN subq1.c9 = subq1.c9 THEN 
    CASE WHEN subq1.c8 <> subq1.c8 THEN subq1.c8
         ELSE subq1.c8
    END
        WHEN subq1.c8 = subq1.c8 OR subq1.c8 <> subq1.c8 OR subq1.c8 = subq1.c8 THEN subq1.c8
        WHEN subq1.c8 <> subq1.c8 OR COALESCE(NULL, subq1.c8) IS NULL THEN subq1.c8
        WHEN subq1.c8 = COALESCE(subq1.c8, subq1.c8, subq1.c9) THEN subq1.c8
        ELSE subq1.c8
   END)
      ELSE subq1.c8
 END AS c14, FALSE AS c15, subq1.c9 AS c16, subq1.c9 AS c17, subq1.c8 AS c18, subq1.c9 AS c19, CAST(subq1.c9 AS INTEGER) AS c20, subq1.c8 AS c21, subq1.c9 AS c22, 
 CASE WHEN subq1.c9 IS NULL THEN subq1.c8
      ELSE COALESCE(subq1.c8, 
   CASE subq1.c8 WHEN false THEN subq1.c9
        WHEN subq1.c8 = subq1.c8 THEN CAST(subq1.c8 AS TEXT)
        WHEN subq1.c9 <> subq1.c9 THEN subq1.c9
        WHEN subq1.c9 = subq1.c9 THEN subq1.c9
        WHEN subq1.c8 = subq1.c8 THEN subq1.c8
        WHEN subq1.c9 <> subq1.c9 THEN subq1.c8
        WHEN 
    CASE subq1.c8 WHEN EXISTS (
     SELECT t17.c1 AS c5, t17.c2 AS c6
      FROM t0 AS t17
      WHERE NULL IS NOT NULL
      ORDER BY c6 COLLATE BINARY
     ) THEN subq1.c8
         WHEN EXISTS (
     SELECT t18.c1 AS c5, t18.c0 AS c6, t18.c1 AS c7
      FROM t0 AS t18
      WHERE t18.c1 = t18.c4
      ORDER BY c6 DESC
      LIMIT 2608151202018388094 
     ) THEN subq1.c8
         WHEN EXISTS (
     SELECT t19.c1 AS c5, t19.c3 AS c6, t19.c1 AS c7
      FROM t0 AS t19
      WHERE t19.c1 IS NOT NULL AND t19.c2 IS NULL AND t19.c0 <> t19.c0
      ORDER BY c5 DESC
     ) THEN subq1.c8
         WHEN true THEN subq1.c8
         WHEN EXISTS (
     SELECT t20.c3 AS c5, t20.c3 AS c6, t20.c3 AS c7, t20.c3 AS c8
      FROM t0 AS t20
      WHERE true
      ORDER BY c6, c6
      LIMIT 8812446435144642713 OFFSET 4704648149624058217
     ) AND false THEN subq1.c8
         WHEN subq1.c9 IS NULL THEN subq1.c8
         WHEN false THEN TRUE
         WHEN subq1.c8 <> subq1.c8 OR EXISTS (
     SELECT t21.c3 AS c5
      FROM t0 AS t21
      WHERE t21.c1 = t21.c0
      ORDER BY c5 ASC, c5, c5, c5
      LIMIT 4217312003361260894 OFFSET 7842039654277319056
     ) AND subq1.c8 = subq1.c8 OR subq1.c8 IS NOT NULL THEN subq1.c8
         WHEN subq1.c9 <> subq1.c9 THEN subq1.c8
         ELSE TRUE
    END <> subq1.c8 THEN subq1.c8
        WHEN false THEN subq1.c9
        WHEN subq1.c9 = NULL THEN subq1.c8
        WHEN subq1.c9 = subq1.c9 THEN subq1.c8
        WHEN subq1.c9 = 
    CASE WHEN subq1.c8 = subq1.c8 THEN subq1.c9
         ELSE subq1.c9
    END THEN subq1.c9
        ELSE subq1.c9
   END, COALESCE(subq1.c9, subq1.c9, subq1.c9, subq1.c9, subq1.c9, subq1.c9))
 END AS c6
FROM (SELECT t1.c4 AS c8, t1.c3 AS c9
   FROM t0 AS t1
     LEFT JOIN (SELECT t3.c1 AS c5, t2.c3 AS c6, t2.c3 AS c7
       FROM t0 AS t2
         INNER JOIN t0 AS t3         
          ON (t2.c3 = t3.c3)
       WHERE false
       ORDER BY c5, c5, c6) as subq0     
      ON (subq0.c7 = t1.c3)
   WHERE t1.c1 = subq0.c5
   ORDER BY c8
   LIMIT 1666052079669969208 OFFSET 1003276629925830650) as subq1
WHERE EXISTS (
 SELECT t22.c2 AS c5, t22.c4 AS c6, t22.c0 AS c7, FALSE AS c8
  FROM t0 AS t22
  WHERE t22.c0 = t22.c2
  ORDER BY c6, c6 COLLATE BINARY ASC
  LIMIT 7742528962879775918 
 )
ORDER BY c13
LIMIT 6263915710455464103 OFFSET 2527186621035486187;
SELECT subq0.c9 AS c18, subq0.c6 AS c19, subq0.c11 AS c20, subq0.c5 AS c21, subq0.c10 AS c22
FROM (SELECT t2.c4 AS c5, t2.c4 AS c6, t2.c3 AS c7, t1.c0 AS c8, t2.c3 AS c9, t2.c1 AS c10, t1.c1 AS c11
   FROM t0 AS t1
     LEFT JOIN t0 AS t2     
      ON (t2.c0 IS NULL)
   WHERE EXISTS (
    SELECT t3.c2 AS c5, t4.c0 AS c6, t3.c2 AS c7, t4.c0 AS c8, t3.c2 AS c9, t3.c4 AS c10
     FROM t0 AS t3
       LEFT JOIN t0 AS t4       
        ON (false)
     WHERE t3.c1 <> 
      CASE t3.c0 WHEN t3.c4 <> t3.c2 THEN t3.c1
           WHEN true THEN t3.c2
           WHEN true THEN t3.c4
           WHEN false THEN t3.c1
           WHEN t3.c3 <> t4.c3 THEN t3.c1
           WHEN t3.c4 <> t4.c0 THEN t3.c4
           WHEN false THEN t3.c0
           WHEN t4.c4 <> t3.c0 THEN t3.c0
           WHEN t4.c4 IS NOT NULL THEN t3.c4
           WHEN false THEN t4.c4
           WHEN EXISTS (
       SELECT ALL t5.c1 AS c5, t5.c0 AS c6, t5.c4 AS c7, t5.c3 AS c8, t5.c0 AS c9
        FROM t0 AS t5
        WHERE EXISTS (
         SELECT t6.c4 AS c5, t6.c4 AS c6, t6.c4 AS c7, t6.c0 AS c8, t6.c0 AS c9, t6.c0 AS c10, t6.c3 AS c11, t6.c1 AS c12, t6.c4 AS c13, t6.c4 AS c14, t6.c2 AS c15, t6.c1 AS c16, t6.c0 AS c17, t6.c1 AS c18, t6.c4 AS c19, t6.c4 AS c20, t6.c0 AS c21, t6.c4 AS c22, t6.c3 AS c23, t6.c2 AS c24, t6.c0 AS c25, t6.c2 AS c26, t6.c2 AS c27, t6.c1 AS c28, t6.c1 AS c29, t6.c4 AS c30, t6.c1 AS c31, t6.c4 AS c32, t6.c3 AS c33, t6.c2 AS c34, t6.c1 AS c35, t6.c0 AS c36, t6.c1 AS c37, t6.c1 AS c38, t6.c4 AS c39, t6.c3 AS c40, t6.c1 AS c41, t6.c4 AS c42, t6.c1 AS c43, t6.c2 AS c44, t6.c0 AS c45, t6.c4 AS c46, t6.c0 AS c47, t6.c1 AS c48, t6.c3 AS c49, t6.c2 AS c50, t6.c0 AS c51, t6.c0 AS c52, t6.c1 AS c53, t6.c1 AS c54, t6.c1 AS c55, t6.c1 AS c56, t6.c3 AS c57, t6.c4 AS c58, TRUE AS c59, t6.c3 AS c60, t6.c4 AS c61, t6.c2 AS c62, t6.c3 AS c63, t6.c0 AS c64, t6.c0 AS c65, t6.c0 AS c66, t6.c4 AS c67, t6.c3 AS c68
          FROM t0 AS t6
          WHERE t6.c0 = t6.c4
          ORDER BY c51, c16, c17
          LIMIT 3561390515118351305 OFFSET 15136132549819939
         )
        ORDER BY c7 DESC, c9, c7
        LIMIT 6615394238511073363 OFFSET 8426490578867041509
       ) AND EXISTS (
       SELECT t7.c4 AS c5, t7.c3 AS c6, FALSE AS c7, t7.c3 AS c8, TRUE AS c9, t7.c1 AS c10, t7.c4 AS c11, t7.c4 AS c12, t7.c1 AS c13, t7.c3 AS c14, t7.c0 AS c15, t7.c0 AS c16, t7.c2 AS c17
        FROM t0 AS t7
        WHERE false
        ORDER BY c8 COLLATE NOCASE ASC
        LIMIT 287886085010888344 
       ) OR t3.c1 = t4.c4 THEN t4.c0
           WHEN true THEN TRUE
           ELSE t4.c4
      END
     ORDER BY c8 ASC, c7 DESC, c8 COLLATE BINARY
    )
   ORDER BY c10) as subq0
WHERE subq0.c10 <> subq0.c5 OR subq0.c10 <> subq0.c8
ORDER BY c20 COLLATE RTRIM ASC, c22 DESC
LIMIT 8442250381574657271 OFFSET 8000018593546913125;
SELECT t4.c1 AS c18, t4.c0 AS c19, t2.c4 AS c20, t4.c3 AS c21, subq0.c5 AS c22, t1.c2 AS c23, subq0.c7 AS c24, subq0.c9 AS c25, t4.c3 AS c26, subq0.c9 AS c27, t4.c3 AS c28, t1.c4 AS c29
FROM t0 AS t1
    LEFT OUTER JOIN t0 AS t2    
     ON (t1.c1 = t2.c0)
   INNER JOIN (
   t0 AS t3
    INNER JOIN t0 AS t4    
     ON (false OR t4.c1 = t4.c2)   )
    ON (
     CASE WHEN t1.c4 <> t3.c0 THEN t1.c1
          ELSE 
      CASE WHEN t4.c4 <> t3.c2 THEN t2.c2
           ELSE t1.c4
      END
     END = t3.c2 AND EXISTS (
     SELECT t5.c2 AS c5, t5.c2 AS c6, t6.c3 AS c7, t5.c4 AS c8, t5.c3 AS c9, TRUE AS c10
      FROM t0 AS t5
        INNER JOIN t0 AS t6        
         ON (t5.c0 <> t6.c0)
      WHERE t5.c1 IS NULL
      ORDER BY c9 ASC, c8
      LIMIT 92577673082669428 OFFSET 1497295336788356833
     ))
  LEFT JOIN (SELECT t9.c3 AS c5, t7.c3 AS c6, t7.c1 AS c7, t8.c4 AS c8, t7.c3 AS c9, t7.c2 AS c10, t9.c3 AS c11, t9.c4 AS c12, FALSE AS c13, t8.c0 AS c14, t8.c3 AS c15, t9.c3 AS c16, TRUE AS c17
    FROM t0 AS t7
      INNER JOIN (
      t0 AS t8
       INNER JOIN t0 AS t9       
        ON (t8.c2 <> t9.c2)      )
       ON (t9.c3 <> t8.c3 AND t8.c2 IS NOT NULL AND t8.c4 = t9.c0)
    WHERE t7.c4 <> FALSE
    ORDER BY c14 ASC
    LIMIT 2175441593555478779 OFFSET 211165141889724639) as subq0  
   ON (t1.c4 <> t2.c0)
WHERE 
 CASE subq0.c14 WHEN TRUE <> t3.c4 THEN subq0.c12
      WHEN t1.c0 = 
  CASE t2.c2 WHEN subq0.c12 <> t4.c1 THEN t4.c2
       WHEN NULLIF(t3.c3, t4.c2) IS NULL THEN t3.c1
       WHEN t3.c4 <> t4.c2 OR subq0.c7 <> subq0.c7 THEN t2.c0
       ELSE t4.c2
  END THEN FALSE
      WHEN t4.c2 = subq0.c8 THEN 
  CASE subq0.c7 WHEN COALESCE(subq0.c5, t3.c3) <> t4.c4 THEN t1.c4
       WHEN EXISTS (
   SELECT t10.c3 AS c5, t10.c2 AS c6, t10.c0 AS c7, t10.c3 AS c8, t10.c2 AS c9, t10.c2 AS c10, t10.c3 AS c11, t10.c3 AS c12, t10.c0 AS c13
    FROM t0 AS t10
    WHERE t10.c4 = t10.c4
    ORDER BY c12 ASC, c12
    LIMIT 6484267646180432263 
   ) OR t4.c2 <> t1.c4 OR CAST(subq0.c17 AS INTEGER) <> 
   CASE t1.c3 WHEN t3.c1 = t1.c1 THEN t1.c3
        WHEN true THEN subq0.c6
        WHEN t4.c2 <> CAST(t3.c3 AS BOOLEAN) THEN CAST(t2.c3 AS BOOLEAN)
        WHEN EXISTS (
    SELECT t11.c0 AS c5, t11.c0 AS c6, t11.c0 AS c7, t11.c2 AS c8, t11.c0 AS c9, t11.c0 AS c10
     FROM t0 AS t11
     WHERE t11.c1 = t11.c0
     ORDER BY c10 ASC, c7 DESC, c10 ASC
     LIMIT 4027208194025033502 OFFSET 6740202987673016447
    ) THEN NULL
        ELSE subq0.c16
   END OR subq0.c8 = t4.c4 OR t2.c4 = t4.c0 THEN subq0.c14
       WHEN EXISTS (
   SELECT t12.c0 AS c5, t12.c4 AS c6
    FROM t0 AS t12
    WHERE EXISTS (
     SELECT t14.c3 AS c5, t14.c1 AS c6, t14.c1 AS c7, t14.c3 AS c8, t13.c2 AS c9, t13.c4 AS c10, t13.c1 AS c11, t14.c1 AS c12, FALSE AS c13, t14.c0 AS c14, t14.c1 AS c15, t14.c2 AS c16
      FROM t0 AS t13
        LEFT JOIN t0 AS t14        
         ON (false)
      WHERE t14.c4 <> t14.c4
      ORDER BY c15 COLLATE RTRIM, c12
      LIMIT 5663307843387231157 
     )
    ORDER BY c6 COLLATE RTRIM
    LIMIT 3694560089365636797 OFFSET 2374999895180265882
   ) OR subq0.c13 = t3.c0 THEN t2.c4
       WHEN t2.c3 = subq0.c5 THEN t1.c4
       ELSE t3.c1
  END
      WHEN subq0.c17 <> t1.c1 THEN subq0.c10
      WHEN t3.c2 <> subq0.c13 THEN t1.c4
      WHEN t3.c3 IS NULL AND subq0.c11 = t1.c3 THEN FALSE
      WHEN t2.c1 IS NULL THEN t2.c2
      ELSE t4.c2
 END = t3.c2
ORDER BY c29, c25 COLLATE NOCASE, c23 COLLATE NOCASE DESC
LIMIT 4394810966481756117 ;
SELECT subq0.c6 AS c9, subq0.c6 AS c10, subq0.c5 AS c11, subq0.c5 AS c12, subq0.c8 AS c13
FROM (SELECT t1.c4 AS c5, t1.c3 AS c6, t1.c0 AS c7, t1.c2 AS c8
   FROM t0 AS t1
   WHERE t1.c2 <> t1.c4
   ORDER BY c5 ASC
   LIMIT 1745297682895268448 OFFSET 5005322683249696503) as subq0
WHERE subq0.c6 = subq0.c6
ORDER BY c11, c11
LIMIT 1990061791171353819 ;
SELECT NULLIF(t1.c2, t1.c4) AS c5, t1.c0 AS c6, t1.c1 AS c7, t1.c1 AS c8, t1.c0 AS c9, t1.c0 AS c10, IFNULL(t1.c2, t1.c0) AS c11, t1.c1 AS c12, t1.c1 AS c13, t1.c0 AS c14
FROM t0 AS t1
WHERE t1.c3 = t1.c3
ORDER BY c7, c9 DESC, c6 ASC
LIMIT 3502026258478761959 OFFSET 8025695000768855868;
SELECT subq0.c10 AS c6, CAST(
  CASE subq0.c8 WHEN COALESCE(subq0.c9, NULL) = subq0.c9 AND IFNULL(subq0.c5, subq0.c6) = subq0.c10 AND subq0.c9 <> subq0.c9 THEN subq0.c7
       WHEN subq0.c7 <> subq0.c10 THEN subq1.c5
       WHEN TRUE = subq0.c7 THEN 
   CASE WHEN subq0.c8 IS NULL THEN subq0.c5
        ELSE subq1.c5
   END
       WHEN 
   CASE WHEN subq0.c8 = 
    CASE subq0.c8 WHEN 
     CASE subq0.c9 WHEN subq0.c10 = FALSE AND subq0.c10 = subq0.c8 THEN subq0.c10
          WHEN subq0.c10 = subq1.c5 THEN subq0.c5
          WHEN subq0.c10 <> subq0.c10 THEN subq0.c9
          WHEN subq0.c8 <> subq0.c5 THEN subq1.c5
          WHEN subq0.c8 IS NULL THEN subq0.c5
          WHEN true OR subq0.c6 <> subq0.c5 THEN subq1.c5
          WHEN subq0.c6 = subq0.c6 THEN subq0.c6
          WHEN subq0.c9 IS NOT NULL THEN subq0.c5
          WHEN subq0.c8 <> subq0.c6 THEN subq0.c6
          WHEN subq0.c10 IS NOT NULL THEN subq0.c10
          ELSE subq1.c5
     END IS NULL THEN FALSE
         WHEN subq0.c10 = subq0.c5 THEN subq0.c8
         ELSE subq0.c7
    END THEN subq0.c10
        ELSE FALSE
   END <> NULLIF(
    CASE WHEN 
     CASE WHEN subq0.c7 = subq0.c5 THEN subq0.c8
          ELSE subq1.c5
     END = subq0.c5 THEN subq0.c8
         ELSE subq0.c10
    END, subq0.c8) THEN like(77,'text42')
       WHEN 
   CASE subq0.c10 WHEN subq0.c6 = subq0.c6 THEN subq0.c8
        ELSE TRUE
   END <> subq0.c10 OR subq1.c5 = subq0.c5 THEN subq0.c8
       ELSE 
   CASE WHEN subq0.c7 = 
    CASE WHEN subq0.c10 <> subq0.c6 THEN subq1.c5
         ELSE subq0.c8
    END AND subq0.c5 <> subq0.c5 AND subq0.c6 = subq0.c7 AND false THEN subq0.c9
        ELSE subq1.c5
   END
  END AS TEXT) AS c7, CAST(typeof( 33) AS BOOLEAN) AS c8, subq0.c8 AS c9, subq0.c9 AS c10, subq0.c10 AS c11, subq0.c8 AS c12, CAST(subq0.c10 AS BOOLEAN) AS c13, subq0.c6 AS c14, FALSE AS c15, subq0.c6 AS c16, subq0.c10 AS c17, subq1.c5 AS c18, subq0.c10 AS c19, subq1.c5 AS c20, 
 CASE WHEN subq0.c5 = subq0.c5 AND subq0.c10 = subq0.c7 THEN subq1.c5
      ELSE subq0.c8
 END AS c21, subq0.c8 AS c22, subq0.c9 AS c23, subq0.c7 AS c24
FROM (SELECT CAST(t2.c3 AS BOOLEAN) AS c5, t4.c0 AS c6, t1.c2 AS c7, CAST('text12' AS TEXT) AS c8, t2.c3 AS c9, FALSE AS c10
    FROM t0 AS t1
      LEFT JOIN (
      t0 AS t2
        INNER JOIN t0 AS t3        
         ON (TRUE <> t3.c4)
       INNER JOIN t0 AS t4       
        ON (t3.c2 = t4.c4)      )
       ON (t2.c0 <> t3.c1)
    WHERE false
    ORDER BY c6) as subq0
  LEFT JOIN (SELECT t5.c4 AS c5
    FROM t0 AS t5
    WHERE t5.c4 <> t5.c0
    ORDER BY c5
    LIMIT 6811456231352677695 OFFSET 4855463149379903292) as subq1  
   ON (subq0.c8 <> subq1.c5)
WHERE FALSE <> subq0.c7
ORDER BY c17 COLLATE BINARY, c21 ASC, c23 DESC
LIMIT 4282044708981676001 OFFSET 769262671411545049;
SELECT subq0.c5 AS c10
FROM (SELECT t1.c0 AS c5, t1.c1 AS c6, t1.c0 AS c7, t1.c1 AS c8, t1.c3 AS c9
   FROM t0 AS t1
   WHERE t1.c2 <> t1.c2
   ORDER BY c8
   LIMIT 8729806147205844901 OFFSET 5928218051544710455) as subq0
WHERE 
 CASE subq0.c9 WHEN subq0.c8 <> subq0.c8 THEN subq0.c9
      WHEN subq0.c9 IS NULL OR subq0.c6 = COALESCE(subq0.c9, subq0.c9, subq0.c9) AND 
  CASE WHEN subq0.c9 IS NOT NULL THEN subq0.c7
       ELSE IFNULL(TRUE, COALESCE(subq0.c9, subq0.c9, subq0.c9, rtrim( NULL)))
  END = subq0.c8 OR subq0.c6 = subq0.c6 OR 
  CASE subq0.c8 WHEN subq0.c7 = subq0.c7 THEN subq0.c8
       WHEN true OR false THEN subq0.c5
       WHEN subq0.c9 IS NOT NULL THEN subq0.c6
       WHEN 
   CASE subq0.c7 WHEN subq0.c9 = subq0.c9 THEN subq0.c6
        WHEN subq0.c6 <> subq0.c7 THEN subq0.c9
        WHEN false OR subq0.c7 <> subq0.c5 THEN subq0.c5
        WHEN subq0.c6 <> subq0.c8 THEN subq0.c5
        WHEN subq0.c7 = subq0.c5 THEN subq0.c5
        WHEN subq0.c6 <> subq0.c6 THEN subq0.c8
        WHEN subq0.c6 <> subq0.c5 THEN subq0.c5
        WHEN false THEN subq0.c7
        ELSE subq0.c8
   END IS NULL THEN subq0.c7
       ELSE subq0.c7
  END <> subq0.c8 THEN subq0.c7
      WHEN subq0.c9 = 
  CASE subq0.c9 WHEN subq0.c8 = subq0.c5 AND subq0.c6 IS NULL OR subq0.c6 IS NOT NULL THEN subq0.c9
       WHEN subq0.c8 <> subq0.c7 THEN subq0.c9
       WHEN subq0.c9 = subq0.c9 THEN subq0.c9
       WHEN subq0.c8 <> subq0.c6 OR 
   CASE subq0.c5 WHEN subq0.c7 <> subq0.c8 THEN subq0.c8
        WHEN subq0.c7 <> subq0.c8 THEN subq0.c9
        ELSE subq0.c9
   END IS NULL THEN subq0.c9
       ELSE subq0.c9
  END THEN substr(35,NULL,NULL)
      WHEN EXISTS (
  SELECT TRUE AS c5, t3.c1 AS c6
   FROM t0 AS t2
     LEFT JOIN t0 AS t3     
      ON (t2.c2 <> t3.c1 AND t2.c1 <> t2.c2)
   WHERE t2.c2 = COALESCE(t3.c2, TRUE)
   ORDER BY c5 DESC, c5 COLLATE BINARY, c5 COLLATE RTRIM, c5 ASC
   LIMIT 1247364859216158096 OFFSET 1073276695676670390
  ) THEN subq0.c8
      WHEN EXISTS (
  SELECT t4.c0 AS c5, t4.c2 AS c6, CAST(t4.c3 AS BOOLEAN) AS c7, t4.c4 AS c8, t4.c0 AS c9, 
    CASE WHEN trim( 34) IS NULL OR t4.c4 <> t4.c0 THEN t4.c0
         ELSE t4.c2
    END AS c10
   FROM t0 AS t4
   WHERE t4.c0 = t4.c2 OR t4.c2 <> t4.c0
   ORDER BY c8 DESC
  ) THEN subq0.c7
      WHEN subq0.c5 <> subq0.c8 THEN subq0.c6
      WHEN subq0.c9 IS NOT NULL THEN max(21,TRUE,100)
      WHEN false THEN subq0.c6
      WHEN subq0.c5 <> subq0.c8 OR false AND subq0.c6 IS NULL THEN subq0.c7
      WHEN 
  CASE subq0.c8 WHEN subq0.c5 = subq0.c8 THEN subq0.c5
       WHEN subq0.c5 = subq0.c5 THEN subq0.c7
       WHEN subq0.c8 = subq0.c8 THEN subq0.c5
       WHEN subq0.c6 = subq0.c6 THEN subq0.c7
       WHEN subq0.c5 IS NOT NULL THEN 
   CASE subq0.c7 WHEN EXISTS (
    SELECT t5.c1 AS c5, t5.c3 AS c6
     FROM t0 AS t5
     WHERE false
     ORDER BY c5 DESC
     LIMIT 3070194652881600981 OFFSET 4741050355799803806
    ) AND subq0.c7 <> subq0.c5 THEN subq0.c5
        WHEN subq0.c8 = subq0.c5 THEN subq0.c5
        WHEN subq0.c9 = subq0.c9 OR subq0.c5 <> subq0.c8 AND subq0.c7 IS NULL THEN subq0.c5
        WHEN true THEN subq0.c8
        WHEN false THEN subq0.c7
        WHEN true THEN subq0.c6
        ELSE subq0.c6
   END
       WHEN subq0.c6 <> subq0.c7 THEN IFNULL(subq0.c7, subq0.c8)
       WHEN subq0.c9 = subq0.c9 THEN subq0.c8
       WHEN subq0.c8 <> subq0.c6 THEN CAST(subq0.c7 AS INTEGER)
       WHEN subq0.c5 = subq0.c7 THEN subq0.c6
       ELSE CAST(
    CASE subq0.c7 WHEN EXISTS (
     SELECT t6.c0 AS c5, t6.c1 AS c6, t7.c1 AS c7, t6.c4 AS c8, t6.c3 AS c9
      FROM t0 AS t6
        INNER JOIN t0 AS t7        
         ON (t6.c0 = t7.c0)
      WHERE t7.c2 <> t7.c1
      ORDER BY c6 COLLATE NOCASE, c9, c8
      LIMIT 2764196109523022477 OFFSET 9194055099295359420
     ) AND subq0.c6 <> subq0.c7 THEN 
     CASE WHEN subq0.c5 = subq0.c7 OR subq0.c6 = subq0.c8 THEN subq0.c8
          ELSE subq0.c5
     END
         WHEN subq0.c6 = subq0.c6 THEN subq0.c8
         WHEN subq0.c7 <> subq0.c7 THEN subq0.c6
         WHEN subq0.c7 <> subq0.c6 THEN subq0.c9
         WHEN subq0.c7 = subq0.c7 OR subq0.c9 <> subq0.c9 THEN subq0.c8
         WHEN subq0.c9 = subq0.c9 THEN subq0.c9
         WHEN subq0.c9 <> NULL THEN subq0.c5
         WHEN subq0.c8 IS NOT NULL THEN subq0.c7
         WHEN true AND subq0.c9 IS NOT NULL THEN unlikely( FALSE)
         WHEN 
     CASE WHEN subq0.c5 <> subq0.c7 THEN subq0.c7
          ELSE TRUE
     END <> subq0.c6 THEN subq0.c7
         WHEN subq0.c9 IS NULL OR EXISTS (
     SELECT t8.c3 AS c5, t8.c3 AS c6, t8.c0 AS c7, t8.c2 AS c8, t8.c4 AS c9, t8.c1 AS c10, t8.c4 AS c11, t8.c1 AS c12, t8.c0 AS c13, t8.c3 AS c14, t8.c2 AS c15, t8.c0 AS c16, t8.c3 AS c17, t8.c1 AS c18, t8.c4 AS c19
      FROM t0 AS t8
      WHERE NULL = t8.c3
      ORDER BY c10
      LIMIT 3122744795586829020 
     ) OR 
     CASE subq0.c9 WHEN subq0.c9 <> subq0.c9 OR subq0.c6 = subq0.c7 OR subq0.c9 IS NULL AND subq0.c6 IS NULL THEN subq0.c9
          WHEN subq0.c7 = subq0.c7 THEN subq0.c9
          WHEN subq0.c6 IS NULL THEN subq0.c9
          WHEN subq0.c6 = subq0.c7 THEN subq0.c9
          WHEN subq0.c7 = subq0.c8 THEN subq0.c9
          WHEN subq0.c5 <> subq0.c8 AND subq0.c6 = subq0.c8 THEN subq0.c9
          WHEN false THEN subq0.c9
          WHEN subq0.c7 <> subq0.c8 THEN subq0.c9
          WHEN subq0.c7 IS NULL THEN subq0.c9
          WHEN subq0.c5 <> subq0.c8 THEN subq0.c9
          WHEN subq0.c6 IS NOT NULL THEN subq0.c9
          ELSE subq0.c9
     END = subq0.c9 THEN subq0.c8
         ELSE subq0.c7
    END AS TEXT)
  END <> subq0.c5 THEN char( '󼵮')
      WHEN subq0.c6 = subq0.c7 THEN subq0.c6
      WHEN subq0.c8 IS NOT NULL THEN 
  CASE WHEN EXISTS (
   SELECT subq1.c5 AS c12, subq1.c10 AS c13, subq1.c8 AS c14, subq1.c10 AS c15, subq1.c7 AS c16, subq1.c11 AS c17, subq1.c10 AS c18, subq1.c5 AS c19, subq1.c9 AS c20
    FROM (SELECT t9.c0 AS c5, t9.c0 AS c6, t9.c2 AS c7, t9.c2 AS c8, t9.c3 AS c9, t9.c1 AS c10, t9.c3 AS c11
       FROM t0 AS t9
       WHERE true AND t9.c0 <> t9.c0
       ORDER BY c7, c5 ASC
       LIMIT 2778362885039830866 OFFSET 5811718617283633353) as subq1
    WHERE subq1.c8 <> subq1.c8
    ORDER BY c17 DESC, c12
    LIMIT 9109567191522946396 OFFSET 3500177592994566692
   ) AND trim( TRUE) IS NULL OR 
   CASE WHEN subq0.c7 IS NULL AND true AND subq0.c9 = subq0.c9 AND subq0.c9 <> subq0.c9 THEN subq0.c5
        ELSE subq0.c7
   END = subq0.c6 OR subq0.c7 <> subq0.c7 AND subq0.c6 <> subq0.c5 OR subq0.c9 IS NOT NULL THEN subq0.c6
       ELSE subq0.c7
  END
      ELSE subq0.c5
 END IS NOT NULL
ORDER BY c10 DESC, c10, c10, c10
LIMIT 1622685772403696748 OFFSET 4249764861911309633;
SELECT subq0.c9 AS c12, subq0.c6 AS c13, subq0.c9 AS c14, subq0.c10 AS c15, subq0.c8 AS c16
FROM (SELECT t1.c0 AS c5, t1.c3 AS c6, t1.c1 AS c7, t1.c0 AS c8, t1.c0 AS c9, t1.c3 AS c10, t1.c0 AS c11
   FROM t0 AS t1
   WHERE t1.c1 = t1.c2
   ORDER BY c7
   LIMIT 902719237873040448 OFFSET 4652970233758824993) as subq0
WHERE subq0.c5 = 
 CASE subq0.c8 WHEN subq0.c6 <> subq0.c10 THEN subq0.c7
      WHEN false THEN subq0.c9
      WHEN TRUE <> subq0.c7 AND subq0.c11 IS NULL AND subq0.c7 <> subq0.c8 AND subq0.c7 = subq0.c8 THEN subq0.c8
      WHEN subq0.c6 = subq0.c10 THEN subq0.c11
      WHEN subq0.c8 = subq0.c9 THEN subq0.c9
      WHEN subq0.c5 = COALESCE(subq0.c10, subq0.c8) AND false THEN subq0.c5
      ELSE 
  CASE subq0.c8 WHEN subq0.c9 <> subq0.c11 THEN subq0.c7
       WHEN subq0.c6 IS NULL THEN subq0.c11
       WHEN true AND CAST(subq0.c8 AS INTEGER) = subq0.c9 THEN subq0.c5
       WHEN subq0.c9 = TRUE AND subq0.c7 <> subq0.c11 THEN CAST('text94' AS BOOLEAN)
       WHEN false OR true THEN subq0.c5
       WHEN subq0.c7 <> FALSE THEN subq0.c7
       WHEN subq0.c6 = 
   CASE WHEN false THEN subq0.c10
        ELSE 
    CASE subq0.c6 WHEN subq0.c5 <> subq0.c5 AND EXISTS (
     SELECT t2.c1 AS c5, t2.c1 AS c6, t2.c1 AS c7
      FROM t0 AS t2
      WHERE true
      ORDER BY c5 COLLATE NOCASE ASC
      LIMIT 3209544238373600707 OFFSET 3717375196467995736
     ) THEN subq0.c10
         WHEN subq0.c5 <> subq0.c11 OR subq0.c9 <> subq0.c8 OR subq0.c8 IS NULL OR subq0.c8 IS NOT NULL THEN subq0.c6
         WHEN subq0.c5 IS NULL THEN subq0.c6
         WHEN subq0.c11 <> subq0.c7 AND subq0.c11 IS NOT NULL AND false THEN subq0.c10
         WHEN subq0.c6 <> subq0.c6 THEN subq0.c10
         ELSE subq0.c6
    END
   END THEN subq0.c5
       WHEN EXISTS (
   SELECT t3.c4 AS c5, t3.c3 AS c6
    FROM t0 AS t3
    WHERE t3.c4 = t3.c0
    ORDER BY c5 ASC
   ) THEN subq0.c11
       WHEN true THEN subq0.c7
       ELSE subq0.c11
  END
 END
ORDER BY c13 DESC, c15 COLLATE NOCASE;
SELECT subq0.c8 AS c11, subq0.c6 AS c12, 
 CASE WHEN subq0.c8 = subq0.c10 THEN subq0.c7
      ELSE subq0.c7
 END AS c13, subq0.c9 AS c14, subq0.c10 AS c15, subq0.c6 AS c16, subq0.c9 AS c17, subq0.c7 AS c18, COALESCE(subq0.c6, subq0.c8, subq0.c8, subq0.c5, subq0.c7) AS c19
FROM (SELECT t2.c1 AS c5, t1.c2 AS c6, t3.c3 AS c7, t3.c4 AS c8, t3.c4 AS c9, t2.c1 AS c10
   FROM t0 AS t1
      LEFT OUTER JOIN t0 AS t2      
       ON (t1.c0 = t2.c0)
     LEFT JOIN t0 AS t3     
      ON (t3.c0 <> t2.c4 OR false)
   WHERE t2.c3 = t3.c3
   ORDER BY c8 DESC
   LIMIT 2692075423974895261 OFFSET 5445991424498385090) as subq0
WHERE subq0.c6 <> subq0.c5 AND subq0.c10 = subq0.c6 OR subq0.c7 = NULLIF(subq0.c7, NULL) AND 
 CASE WHEN EXISTS (
  SELECT 
    CASE WHEN NULL IS NOT NULL THEN t4.c0
         ELSE t4.c2
    END AS c5, t4.c3 AS c6, t4.c1 AS c7, t4.c2 AS c8, t4.c2 AS c9, t4.c0 AS c10, t4.c3 AS c11, t4.c3 AS c12, t4.c3 AS c13, t4.c4 AS c14
   FROM t0 AS t4
   WHERE t4.c4 IS NULL OR t4.c2 IS NULL AND true
   ORDER BY c12, c9
   LIMIT 6078854612527124504 OFFSET 1711488418446664467
  ) THEN subq0.c8
      ELSE COALESCE(subq0.c5, subq0.c10, COALESCE(subq0.c9, subq0.c7, subq0.c7, subq0.c6, 
    CASE subq0.c6 WHEN EXISTS (
     SELECT t5.c3 AS c5
      FROM t0 AS t5
      WHERE true AND t5.c1 = t5.c0
      ORDER BY c5, c5 ASC, c5, c5
      LIMIT 7452966359713307945 OFFSET 5953572179060453113
     ) AND subq0.c8 = subq0.c5 THEN subq0.c10
         ELSE subq0.c8
    END, subq0.c8))
 END = COALESCE(subq0.c10, subq0.c5, subq0.c7, subq0.c8)
ORDER BY c14 DESC, c15
LIMIT 1772850260710518710 OFFSET 2873757911005537959;
SELECT 
 CASE WHEN false AND t1.c3 <> 
  CASE t1.c3 WHEN t1.c2 = TRUE THEN t1.c3
       WHEN t1.c2 = t1.c2 THEN 
   CASE t1.c3 WHEN t1.c2 <> t1.c2 THEN t1.c3
        WHEN t1.c3 IS NULL OR t1.c2 = t1.c0 AND t1.c3 = t1.c3 THEN t1.c3
        WHEN t1.c1 IS NULL THEN t1.c3
        ELSE NULL
   END
       WHEN t1.c1 <> t1.c1 AND t1.c1 <> t1.c0 THEN t1.c3
       WHEN EXISTS (
   SELECT t2.c3 AS c5, t2.c3 AS c6, t2.c3 AS c7, t2.c3 AS c8, t2.c1 AS c9, t2.c0 AS c10, t2.c0 AS c11, t2.c3 AS c12, t2.c1 AS c13, t2.c4 AS c14, t2.c2 AS c15, t2.c4 AS c16, t2.c1 AS c17
    FROM t0 AS t2
    WHERE t2.c3 = t2.c3
    ORDER BY c12, c17 ASC
    LIMIT 8067746387408932234 OFFSET 2062687125216495165
   ) AND t1.c4 = t1.c1 THEN t1.c3
       WHEN COALESCE(t1.c4, t1.c3, NULL, t1.c0) = t1.c0 THEN t1.c3
       WHEN t1.c3 IS NULL AND t1.c3 <> t1.c3 THEN t1.c3
       WHEN t1.c2 <> CAST(t1.c3 AS TEXT) THEN t1.c3
       WHEN EXISTS (
   SELECT t3.c3 AS c5, t3.c1 AS c6, t3.c0 AS c7, t3.c1 AS c8, t3.c2 AS c9, t3.c3 AS c10, t3.c2 AS c11, t3.c0 AS c12
    FROM t0 AS t3
    WHERE t3.c4 = t3.c0
    ORDER BY c6 DESC, c8, c9
   ) OR t1.c2 <> t1.c4 THEN 
   CASE WHEN t1.c2 = t1.c1 THEN t1.c3
        ELSE t1.c3
   END
       WHEN t1.c1 = t1.c2 THEN t1.c3
       ELSE t1.c3
  END THEN t1.c3
      ELSE t1.c3
 END AS c13, t1.c3 AS c14, t1.c2 AS c15, t1.c4 AS c16, t1.c0 AS c17, t1.c0 AS c18, t1.c2 AS c19, t1.c0 AS c20
FROM t0 AS t1
WHERE t1.c0 = 
 CASE t1.c4 WHEN t1.c0 IS NOT NULL THEN t1.c4
      WHEN t1.c1 = FALSE THEN t1.c2
      WHEN t1.c2 <> t1.c4 THEN t1.c1
      WHEN t1.c4 <> t1.c0 THEN t1.c2
      WHEN true THEN t1.c4
      WHEN t1.c3 <> 
  CASE WHEN t1.c1 IS NOT NULL THEN t1.c3
       ELSE t1.c3
  END THEN t1.c0
      WHEN COALESCE(t1.c3, IFNULL(t1.c4, t1.c4), 
   CASE t1.c4 WHEN t1.c0 <> t1.c1 THEN t1.c1
        WHEN NULL <> t1.c3 OR t1.c1 <> t1.c0 OR NULL = t1.c3 THEN t1.c0
        WHEN t1.c3 = t1.c3 THEN t1.c1
        WHEN t1.c3 <> t1.c3 THEN t1.c2
        WHEN t1.c3 = t1.c3 THEN t1.c1
        WHEN t1.c3 = COALESCE(t1.c3, t1.c0, t1.c3, t1.c4, t1.c3) OR t1.c1 <> t1.c4 THEN t1.c0
        WHEN t1.c3 = 
    CASE WHEN true THEN t1.c3
         ELSE NULL
    END AND t1.c1 = t1.c1 AND false AND t1.c1 <> t1.c0 THEN t1.c4
        WHEN t1.c2 = t1.c0 THEN t1.c0
        WHEN t1.c1 IS NULL THEN t1.c1
        WHEN t1.c3 <> t1.c3 THEN t1.c0
        WHEN t1.c2 IS NOT NULL THEN t1.c4
        ELSE t1.c4
   END, t1.c3) <> t1.c1 THEN t1.c2
      WHEN t1.c4 = t1.c1 THEN t1.c1
      WHEN t1.c0 = t1.c4 THEN t1.c2
      WHEN t1.c1 <> COALESCE(FALSE, t1.c3, t1.c2, t1.c2, t1.c4, t1.c3) THEN t1.c1
      WHEN t1.c3 <> NULL THEN t1.c2
      ELSE t1.c0
 END
ORDER BY c19 ASC
LIMIT 517991967470516283 ;
SELECT CAST(
  CASE subq0.c9 WHEN subq0.c7 = subq0.c9 THEN like(NULL,TRUE)
       WHEN EXISTS (
   SELECT t4.c2 AS c5, t4.c4 AS c6, IFNULL(COALESCE(t4.c1, t4.c2, t4.c1, t4.c2, t5.c3), t5.c2) AS c7, t4.c3 AS c8, t4.c4 AS c9, t4.c2 AS c10, t5.c0 AS c11, t4.c3 AS c12, COALESCE(t4.c4, t4.c3) AS c13, t4.c4 AS c14, t5.c4 AS c15
    FROM t0 AS t4
      LEFT JOIN t0 AS t5      
       ON (t4.c0 = t5.c0)
    WHERE true
    ORDER BY c10 ASC, c11 COLLATE BINARY, c13 ASC
   ) OR EXISTS (
   SELECT t6.c4 AS c5, t6.c1 AS c6, t6.c3 AS c7
    FROM t0 AS t6
    WHERE t6.c1 <> t6.c0 OR false
    ORDER BY c6 ASC, c5
    LIMIT 6345119400205409753 
   ) AND true AND subq0.c6 <> subq0.c8 AND subq0.c8 = subq0.c8 THEN subq0.c7
       WHEN subq0.c6 = subq0.c6 THEN subq0.c9
       WHEN subq0.c5 IS NULL OR subq0.c9 <> subq0.c8 THEN subq0.c7
       WHEN COALESCE(NULL, subq0.c5) = subq0.c8 THEN subq0.c9
       WHEN subq0.c5 IS NOT NULL THEN round( 9)
       WHEN subq0.c5 <> subq0.c5 THEN subq0.c7
       WHEN subq0.c6 = subq0.c8 THEN subq0.c5
       WHEN subq0.c5 <> subq0.c5 THEN 'text23'
       WHEN subq0.c8 IS NOT NULL THEN subq0.c5
       ELSE subq0.c7
  END AS BOOLEAN) AS c8, IFNULL(subq0.c8, subq0.c6) AS c9
FROM (SELECT NULL AS c5, TRUE AS c6, t1.c4 AS c7, t1.c0 AS c8, t1.c1 AS c9
   FROM t0 AS t1
   WHERE EXISTS (
    SELECT t2.c4 AS c5
     FROM t0 AS t2
       INNER JOIN t0 AS t3       
        ON (t3.c2 <> t2.c0)
     WHERE t3.c3 <> t3.c3
     ORDER BY c5, c5, c5, c5 ASC
    )
   ORDER BY c8 ASC, c8 ASC
   LIMIT 6250857752555542615 OFFSET 8224861665079070160) as subq0
WHERE true
ORDER BY c8
LIMIT 2957529158935375139 OFFSET 3000947446062230456;
SELECT t1.c0 AS c5, t1.c1 AS c6, t1.c2 AS c7, t1.c4 AS c8
FROM t0 AS t1
WHERE t1.c4 = t1.c0
ORDER BY c6 ASC, c6 COLLATE NOCASE
LIMIT 7380133253529618337 OFFSET 4132230358966642340;
SELECT TRUE AS c5, t5.c3 AS c6, t5.c0 AS c7, t5.c4 AS c8, t4.c3 AS c9, 
 CASE t5.c3 WHEN subq0.c6 <> t4.c0 THEN t5.c3
      WHEN t5.c3 <> t4.c3 THEN t4.c3
      WHEN subq0.c6 <> COALESCE(t4.c2, t4.c1, NULL) THEN t4.c3
      WHEN t4.c2 <> t4.c0 THEN t4.c3
      WHEN t4.c0 = t4.c0 OR t4.c0 = subq0.c5 AND subq0.c5 = subq0.c7 OR IFNULL(COALESCE(t5.c3, 
    CASE t4.c3 WHEN t5.c0 = IFNULL(
      CASE t5.c2 WHEN t4.c1 IS NOT NULL THEN t4.c2
           WHEN t5.c0 IS NULL THEN t5.c2
           WHEN t4.c4 = t5.c1 THEN subq0.c7
           WHEN t5.c0 IS NULL THEN t5.c2
           WHEN t5.c2 <> t4.c1 THEN t5.c4
           WHEN t4.c1 = t5.c2 THEN t4.c4
           WHEN EXISTS (
       SELECT t6.c2 AS c5, t6.c4 AS c6
        FROM t0 AS t6
        WHERE t6.c2 IS NULL
        ORDER BY c5 ASC, c5 COLLATE RTRIM DESC, c6 ASC, c6
        LIMIT 1457593903525327723 OFFSET 1292579544105021596
       ) THEN t5.c0
           ELSE t5.c0
      END, subq0.c7) THEN t4.c3
         WHEN EXISTS (
     SELECT t7.c0 AS c5, t7.c2 AS c6, t7.c4 AS c7, TRUE AS c8, t7.c0 AS c9, t7.c2 AS c10
      FROM t0 AS t7
      WHERE t7.c4 = t7.c1
      ORDER BY c10
      LIMIT 8595510609548272317 
     ) OR t5.c0 <> subq0.c6 AND replace(NULL,93,NULL) IS NOT NULL THEN CAST(subq0.c6 AS BOOLEAN)
         WHEN subq0.c7 <> t5.c2 THEN t5.c3
         WHEN t4.c0 <> t5.c0 THEN t5.c3
         WHEN t5.c4 <> subq0.c7 THEN 
     CASE WHEN t4.c4 <> t5.c4 THEN t5.c3
          ELSE t5.c3
     END
         WHEN t5.c1 = t5.c4 THEN t5.c3
         WHEN t4.c1 = t5.c1 THEN t4.c3
         WHEN t4.c3 <> t5.c3 THEN t5.c3
         WHEN t4.c4 <> t5.c4 THEN t5.c3
         WHEN t4.c0 = t5.c4 THEN t5.c3
         WHEN false THEN t4.c3
         ELSE t5.c3
    END, NULL, COALESCE(t4.c3, NULL, t5.c3, t4.c3, quote( 'text50'), t4.c1), t5.c3, t5.c1), t4.c3) = t5.c3 THEN t4.c3
      WHEN t4.c2 <> t5.c0 THEN NULL
      WHEN t4.c4 IS NOT NULL THEN t4.c3
      WHEN t5.c2 = 
  CASE WHEN subq0.c6 <> t5.c2 OR 
   CASE WHEN EXISTS (
    SELECT t8.c4 AS c5, t8.c3 AS c6, FALSE AS c7
     FROM t0 AS t8
     WHERE t8.c2 <> t8.c4
     ORDER BY c6
    ) AND false OR t5.c1 = t4.c4 OR t4.c0 = subq0.c5 AND TRUE <> t5.c2 THEN t5.c4
        ELSE t4.c4
   END <> t4.c1 THEN t5.c4
       ELSE t5.c4
  END THEN t5.c3
      WHEN EXISTS (
  SELECT t9.c3 AS c5, t9.c3 AS c6, t9.c1 AS c7, t9.c1 AS c8, t9.c0 AS c9
   FROM t0 AS t9
   WHERE TRUE = FALSE AND t9.c4 = t9.c0 AND t9.c3 = t9.c3 AND t9.c2 = t9.c0
   ORDER BY c6 ASC, c8, c8 COLLATE NOCASE DESC
   LIMIT 4317673371097146092 OFFSET 9069877977619361287
  ) THEN t5.c3
      ELSE t4.c3
 END AS c10
FROM (SELECT t1.c0 AS c5, CAST(t1.c1 AS INTEGER) AS c6, t1.c0 AS c7
     FROM t0 AS t1
     WHERE EXISTS (
      SELECT t2.c3 AS c5
       FROM t0 AS t2
       WHERE EXISTS (
        SELECT ALL t3.c4 AS c5, t3.c1 AS c6
         FROM t0 AS t3
         WHERE true
         ORDER BY c5, c6
         LIMIT 7882291863581626889 
        )
       ORDER BY c5, c5 DESC, c5, c5 DESC
       LIMIT 4166197038051909141 OFFSET 3225769124959421369
      ) OR t1.c3 = t1.c3
     ORDER BY c5
     LIMIT 2884626795283549314 OFFSET 4129935474908149535) as subq0
   LEFT JOIN t0 AS t4   
    ON (subq0.c7 = t4.c0)
  LEFT JOIN t0 AS t5  
   ON (subq0.c5 = t5.c0)
WHERE FALSE = 
 CASE subq0.c7 WHEN t4.c2 = t4.c1 THEN t5.c1
      WHEN t4.c0 = t5.c0 AND subq0.c6 IS NULL AND subq0.c5 = t5.c2 OR t5.c0 = t4.c1 AND t4.c1 = t5.c1 THEN TRUE
      WHEN subq0.c5 <> t4.c1 THEN 
  CASE WHEN 
   CASE WHEN true THEN t5.c1
        ELSE subq0.c6
   END IS NOT NULL THEN t4.c2
       ELSE t5.c2
  END
      WHEN t5.c1 = t5.c1 THEN t4.c0
      WHEN CAST(subq0.c7 AS INTEGER) = subq0.c6 AND round( 74) IS NULL OR false AND t4.c0 = t5.c1 AND EXISTS (
  SELECT COALESCE(t10.c2, t10.c4, TRUE, t10.c3, t10.c4) AS c5, t10.c4 AS c6
   FROM t0 AS t10
   WHERE t10.c2 IS NOT NULL
   ORDER BY c5, c5 ASC, c6 ASC, c6 ASC
  ) AND subq0.c6 IS NOT NULL AND subq0.c6 = 
  CASE WHEN 
   CASE WHEN t4.c1 = t4.c4 THEN t4.c2
        ELSE t4.c2
   END = t5.c4 OR t4.c2 = t5.c1 AND subq0.c6 = t5.c1 AND t4.c3 <> t4.c3 OR EXISTS (
   SELECT FALSE AS c6, CAST(subq1.c5 AS BOOLEAN) AS c7
    FROM (SELECT t11.c1 AS c5
       FROM t0 AS t11
       WHERE t11.c2 <> t11.c2
       ORDER BY c5, c5 DESC, c5, c5 COLLATE BINARY
       LIMIT 3783988338597439365 ) as subq1
    WHERE true AND subq1.c5 = subq1.c5
    ORDER BY c7, c7
   ) OR char( '񞞍') IS NULL AND t4.c1 = subq0.c6 OR t5.c0 <> t4.c0 OR subq0.c5 <> subq0.c6 AND t5.c0 <> subq0.c5 AND subq0.c5 = t5.c1 AND t5.c0 <> 
   CASE WHEN t5.c0 = t4.c1 THEN subq0.c7
        ELSE t4.c0
   END AND subq0.c7 = t4.c0 AND t4.c4 = 
   CASE t5.c4 WHEN t4.c3 = t5.c3 AND EXISTS (
    SELECT t12.c1 AS c5, TRUE AS c6, t12.c4 AS c7, t12.c3 AS c8, t12.c3 AS c9, t12.c3 AS c10, t12.c4 AS c11, t12.c3 AS c12, t12.c3 AS c13
     FROM t0 AS t12
     WHERE t12.c1 = t12.c2
     ORDER BY c8, c13 DESC, c9 ASC
    ) THEN t5.c0
        WHEN t5.c3 = t5.c3 OR subq0.c7 <> 
    CASE t5.c4 WHEN true THEN t4.c2
         WHEN t4.c0 = t5.c1 THEN subq0.c7
         WHEN t4.c0 = t4.c4 THEN t4.c2
         WHEN subq0.c6 = t4.c0 THEN t5.c0
         WHEN t4.c0 <> t5.c0 THEN t5.c1
         WHEN EXISTS (
     SELECT t13.c1 AS c5, t13.c1 AS c6, t13.c4 AS c7
      FROM t0 AS t13
      WHERE t13.c0 = t13.c2
      ORDER BY c5 ASC, c7 ASC
      LIMIT 6168417241160984290 
     ) THEN FALSE
         WHEN 
     CASE WHEN true THEN t5.c1
          ELSE t5.c0
     END = t5.c4 THEN subq0.c5
         ELSE t5.c0
    END THEN t4.c4
        WHEN t5.c1 <> t5.c4 THEN t5.c2
        WHEN true AND EXISTS (
    SELECT t14.c2 AS c5, t14.c3 AS c6, t14.c2 AS c7
     FROM t0 AS t14
     WHERE false
     ORDER BY c6, c7
     LIMIT 2529889715863382023 
    ) OR 
    CASE t5.c4 WHEN t5.c2 <> t5.c4 THEN t4.c4
         WHEN subq0.c6 = t4.c2 THEN t4.c4
         WHEN true THEN t4.c1
         WHEN NULLIF(subq0.c7, subq0.c7) IS NOT NULL THEN t4.c2
         WHEN subq0.c5 = t5.c2 OR t4.c2 IS NULL OR t5.c3 = t4.c3 OR 52 IS NOT NULL AND subq0.c7 IS NULL OR t5.c2 <> t4.c4 THEN t4.c2
         WHEN subq0.c6 <> t4.c0 OR false THEN subq0.c5
         WHEN t5.c1 = t4.c4 THEN t5.c1
         WHEN t5.c2 = subq0.c6 THEN t5.c4
         WHEN t4.c0 IS NOT NULL THEN t4.c2
         ELSE subq0.c5
    END = subq0.c7 AND EXISTS (
    SELECT t15.c0 AS c5, t15.c4 AS c6, t15.c1 AS c7, t15.c0 AS c8, t15.c3 AS c9, t15.c0 AS c10, TRUE AS c11, t15.c1 AS c12, t15.c1 AS c13, t15.c2 AS c14, 
      CASE WHEN t15.c2 = t15.c2 OR t15.c2 IS NOT NULL OR true THEN t15.c2
           ELSE t15.c2
      END AS c15, t15.c3 AS c16, t15.c4 AS c17, t15.c0 AS c18, t15.c1 AS c19, t15.c1 AS c20, t15.c1 AS c21, t15.c3 AS c22, t15.c1 AS c23, t15.c2 AS c24
     FROM t0 AS t15
     WHERE t15.c3 = t15.c3
     ORDER BY c17, c5 DESC
     LIMIT 402787032451598616 
    ) AND CAST(subq0.c7 AS TEXT) <> t5.c4 AND ifnull(NULL,NULL) IS NULL OR t5.c2 <> t4.c2 THEN t4.c1
        WHEN t5.c1 = t4.c0 THEN t5.c4
        WHEN EXISTS (
    SELECT t16.c0 AS c5
     FROM t0 AS t16
       LEFT OUTER JOIN t0 AS t17       
        ON (t17.c4 = t17.c4 AND t16.c1 <> t17.c1)
     WHERE t17.c4 <> t17.c4 OR t16.c2 = t16.c4
     ORDER BY c5, c5 DESC, c5 ASC, c5
    ) OR 
    CASE WHEN subq0.c5 <> t5.c4 OR t5.c0 = subq0.c7 OR t5.c0 <> t5.c2 AND t4.c2 IS NOT NULL OR subq0.c7 = subq0.c6 OR t4.c4 <> t4.c2 THEN t5.c0
         ELSE subq0.c7
    END <> subq0.c5 THEN FALSE
        ELSE t4.c4
   END THEN TRUE
       ELSE t4.c1
  END AND subq0.c5 IS NULL THEN subq0.c6
      ELSE NULLIF(t5.c4, t5.c0)
 END
ORDER BY c5;
SELECT t1.c2 AS c5
FROM t0 AS t1
WHERE t1.c3 IS NOT NULL
ORDER BY c5 DESC, c5 DESC, c5, c5
LIMIT 7511501693464091309 OFFSET 2593332697666341708;
SELECT t1.c2 AS c5, t1.c3 AS c6, t1.c1 AS c7, t1.c4 AS c8, 
 CASE WHEN t1.c4 <> t1.c0 AND EXISTS (
  SELECT t4.c0 AS c5, t3.c1 AS c6, COALESCE(t2.c3, t3.c3) AS c7, t4.c3 AS c8, t3.c1 AS c9, t3.c0 AS c10, t2.c2 AS c11, t2.c1 AS c12, t2.c2 AS c13
   FROM t0 AS t2
     LEFT JOIN (
     t0 AS t3
      INNER JOIN t0 AS t4      
       ON (false)     )
      ON (t2.c0 = t4.c0)
   WHERE t4.c0 = t2.c1
   ORDER BY c5 COLLATE NOCASE
   LIMIT 3689926487627889613 OFFSET 3134973190160014108
  ) THEN t1.c2
      ELSE t1.c2
 END AS c14, t1.c1 AS c15, t1.c2 AS c16, t1.c4 AS c17, t1.c0 AS c18, NULL AS c19, t1.c2 AS c20
FROM t0 AS t1
WHERE t1.c3 <> 
 CASE WHEN t1.c3 <> t1.c3 THEN t1.c3
      ELSE t1.c3
 END AND t1.c2 = t1.c4 OR NULL = t1.c3 AND false AND t1.c3 <> t1.c3
ORDER BY c18 DESC;
SELECT subq0.c10 AS c7, subq1.c6 AS c8, subq0.c5 AS c9
FROM (SELECT t1.c1 AS c5, t1.c0 AS c6, t1.c1 AS c7, t1.c4 AS c8, t1.c2 AS c9, t1.c2 AS c10, COALESCE(t1.c1, t1.c2, t1.c3) AS c11, t1.c3 AS c12, t1.c3 AS c13, t1.c0 AS c14, t1.c1 AS c15, t1.c0 AS c16, t1.c0 AS c17, t1.c3 AS c18, t1.c3 AS c19, t1.c1 AS c20, t1.c1 AS c21, t1.c2 AS c22, t1.c3 AS c23
    FROM t0 AS t1
    WHERE EXISTS (
     SELECT t2.c1 AS c5, TRUE AS c6, NULL AS c7, t2.c4 AS c8, t2.c0 AS c9, t2.c2 AS c10, t2.c3 AS c11, t2.c0 AS c12, FALSE AS c13, t2.c1 AS c14, FALSE AS c15, t2.c0 AS c16, t2.c0 AS c17, t2.c0 AS c18, t2.c3 AS c19, t2.c2 AS c20
      FROM t0 AS t2
      WHERE t2.c1 <> t2.c1
      ORDER BY c10 ASC
      LIMIT 2180512414540148351 OFFSET 4640261295987126407
     )
    ORDER BY c19, c14
    LIMIT 5272730938419523083 OFFSET 5168465675604113417) as subq0
  LEFT JOIN (SELECT t6.c4 AS c5, t4.c3 AS c6
    FROM t0 AS t3
      INNER JOIN (
      t0 AS t4
        INNER JOIN t0 AS t5        
         ON (false)
       LEFT JOIN t0 AS t6       
        ON (t5.c1 <> t5.c4 OR false)      )
       ON (false AND false AND NULL IS NULL)
    WHERE t3.c1 <> t6.c1
    ORDER BY c5 DESC) as subq1  
   ON (true)
WHERE subq0.c11 <> subq0.c9
ORDER BY c9
LIMIT 4939590953637031936 OFFSET 5524567969415247392;
SELECT t1.c1 AS c5
FROM t0 AS t1
WHERE t1.c2 IS NULL OR 
 CASE WHEN t1.c3 = t1.c3 THEN t1.c0
      ELSE t1.c0
 END <> t1.c1 OR t1.c3 <> t1.c3
ORDER BY c5 ASC, c5 ASC, c5, c5 COLLATE NOCASE ASC;
SELECT TRUE AS c5, t1.c3 AS c6, t1.c0 AS c7, 
 CASE t1.c1 WHEN t1.c3 = NULL AND EXISTS (
  SELECT t2.c3 AS c5
   FROM t0 AS t2
     INNER JOIN t0 AS t3     
      ON (true)
   WHERE t2.c3 IS NOT NULL
   ORDER BY c5 COLLATE NOCASE DESC
  ) THEN t1.c0
      ELSE t1.c0
 END AS c6, 
 CASE WHEN t1.c3 <> t1.c3 AND 
  CASE WHEN t1.c2 <> CAST(t1.c0 AS TEXT) AND EXISTS (
   SELECT t5.c4 AS c5
    FROM t0 AS t4
      LEFT JOIN t0 AS t5      
       ON (false)
    WHERE t4.c3 <> t4.c3
    ORDER BY c5 DESC, c5 DESC, c5 COLLATE BINARY ASC, c5
   ) THEN CAST(t1.c4 AS BOOLEAN)
       ELSE t1.c3
  END = t1.c3 THEN t1.c3
      ELSE t1.c3
 END AS c6, t1.c4 AS c7
FROM t0 AS t1
WHERE t1.c3 <> t1.c3 AND t1.c1 = COALESCE(t1.c2, t1.c1, t1.c3) OR t1.c4 = t1.c4 OR t1.c4 = COALESCE(t1.c4, t1.c0, 
  CASE WHEN t1.c4 <> 
   CASE t1.c0 WHEN t1.c2 = t1.c4 THEN t1.c4
        WHEN t1.c3 = COALESCE(t1.c3, NULL) THEN t1.c4
        WHEN EXISTS (
    SELECT t6.c4 AS c5, t6.c1 AS c6, t6.c3 AS c7, t6.c3 AS c8, t6.c0 AS c9, t6.c0 AS c10, t6.c3 AS c11, t6.c3 AS c12, FALSE AS c13, 
      CASE WHEN t6.c1 = t6.c1 AND t6.c0 <> t6.c0 THEN t6.c3
           ELSE t6.c3
      END AS c14, t6.c3 AS c15, t6.c0 AS c16, t6.c1 AS c17
     FROM t0 AS t6
     WHERE t6.c3 = t6.c3 AND t6.c1 = t6.c2
     ORDER BY c8, c5 DESC
     LIMIT 1276840041129647995 OFFSET 6082513240452225335
    ) THEN t1.c1
        WHEN t1.c4 IS NULL THEN TRUE
        WHEN t1.c0 = t1.c1 THEN t1.c2
        ELSE t1.c1
   END THEN t1.c0
       ELSE t1.c0
  END, t1.c1, instr(62,TRUE), t1.c3)
ORDER BY c6 COLLATE RTRIM
LIMIT 8825020769783934521 ;
SELECT 
 CASE WHEN subq0.c8 <> subq0.c8 THEN 
  CASE WHEN subq0.c7 IS NOT NULL THEN subq0.c5
       ELSE subq0.c7
  END
      ELSE 
  CASE subq0.c8 WHEN subq0.c6 IS NOT NULL THEN subq0.c8
       WHEN subq0.c8 = subq0.c6 THEN subq0.c8
       WHEN CAST(
    CASE subq0.c6 WHEN subq0.c6 <> subq0.c6 THEN 'text56'
         WHEN subq0.c5 IS NULL THEN TRUE
         WHEN false THEN subq0.c8
         WHEN subq0.c8 = TRUE OR subq0.c7 IS NOT NULL AND ltrim( 'text93') IS NULL THEN subq0.c5
         WHEN subq0.c7 <> subq0.c5 THEN subq0.c7
         WHEN subq0.c7 <> subq0.c7 THEN subq0.c6
         WHEN subq0.c6 <> subq0.c7 THEN subq0.c5
         WHEN subq0.c6 = subq0.c7 THEN subq0.c8
         ELSE subq0.c5
    END AS TEXT) <> 
   CASE subq0.c6 WHEN EXISTS (
    SELECT t2.c1 AS c5
     FROM t0 AS t2
     WHERE t2.c0 = t2.c2 AND t2.c3 = t2.c3 AND t2.c4 <> t2.c0
     ORDER BY c5
     LIMIT 6711247904929206241 
    ) THEN subq0.c6
        WHEN true AND false OR false THEN subq0.c5
        WHEN EXISTS (
    SELECT t3.c3 AS c5, t3.c2 AS c6, t3.c3 AS c7, t3.c4 AS c8
     FROM t0 AS t3
       CROSS JOIN t0 AS t4       
        ON (t3.c4 <> t4.c4)
     WHERE t3.c1 <> t4.c1
     ORDER BY c6 COLLATE NOCASE ASC, c5
     LIMIT 5593116128854275138 
    ) THEN subq0.c6
        WHEN subq0.c6 <> subq0.c8 THEN subq0.c5
        WHEN COALESCE(subq0.c5, subq0.c5, COALESCE(subq0.c8, subq0.c6, subq0.c6, TRUE, subq0.c7), changes(), subq0.c5, changes()) IS NOT NULL OR subq0.c8 <> subq0.c8 OR false OR subq0.c5 IS NOT NULL AND true AND subq0.c5 = subq0.c5 OR subq0.c6 IS NULL THEN subq0.c5
        WHEN subq0.c5 = subq0.c5 THEN subq0.c7
        WHEN subq0.c7 <> subq0.c7 THEN FALSE
        WHEN subq0.c6 = subq0.c6 THEN 
    CASE subq0.c6 WHEN subq0.c6 = subq0.c6 THEN subq0.c7
         WHEN COALESCE(subq0.c8, 
      CASE subq0.c8 WHEN subq0.c6 <> subq0.c7 THEN subq0.c7
           WHEN subq0.c7 = subq0.c8 THEN subq0.c5
           WHEN EXISTS (
       SELECT t5.c1 AS c5, t5.c3 AS c6, t5.c1 AS c7, t5.c2 AS c8, t5.c2 AS c9, t5.c4 AS c10, t5.c1 AS c11, t5.c2 AS c12, t5.c3 AS c13
        FROM t0 AS t5
        WHERE false AND t5.c0 <> t5.c2 AND t5.c4 = t5.c4 AND t5.c2 = t5.c0 AND t5.c4 = t5.c0
        ORDER BY c13 DESC, c10, c8
       ) THEN subq0.c7
           WHEN false THEN subq0.c5
           WHEN subq0.c7 = subq0.c7 THEN subq0.c5
           WHEN subq0.c5 = FALSE THEN subq0.c8
           WHEN subq0.c7 <> subq0.c5 THEN subq0.c7
           ELSE subq0.c7
      END, subq0.c6, subq0.c8, subq0.c7) = subq0.c7 THEN subq0.c7
         WHEN subq0.c6 = subq0.c7 OR true AND EXISTS (
     SELECT NULL AS c5, t6.c4 AS c6, t6.c2 AS c7
      FROM t0 AS t6
      WHERE false
      ORDER BY c6 COLLATE RTRIM, c7 DESC, c6
     ) THEN subq0.c8
         WHEN subq0.c8 <> subq0.c6 THEN subq0.c6
         WHEN subq0.c6 <> subq0.c5 THEN subq0.c7
         WHEN false THEN subq0.c7
         WHEN subq0.c8 = subq0.c5 AND subq0.c8 <> subq0.c7 AND subq0.c7 = subq0.c6 THEN subq0.c7
         ELSE subq0.c8
    END
        ELSE subq0.c7
   END THEN subq0.c7
       WHEN subq0.c5 = subq0.c6 THEN 
   CASE WHEN subq0.c5 = subq0.c7 AND IFNULL(subq0.c7, subq0.c5) <> subq0.c7 OR EXISTS (
    SELECT t7.c4 AS c5, t7.c0 AS c6, t7.c3 AS c7, t7.c2 AS c8, t7.c2 AS c9
     FROM t0 AS t7
     WHERE t7.c4 = t7.c4 AND t7.c3 <> t7.c3
     ORDER BY c6, c7 ASC, c7
     LIMIT 7682338943536692987 OFFSET 4732173256722869143
    ) OR subq0.c7 = 
    CASE subq0.c8 WHEN subq0.c6 <> FALSE THEN subq0.c7
         WHEN EXISTS (
     SELECT t8.c0 AS c5, t8.c4 AS c6, t8.c3 AS c7, t8.c3 AS c8
      FROM t0 AS t8
      WHERE t8.c4 <> t8.c1 AND t8.c4 <> t8.c2
      ORDER BY c7, c5, c8 ASC
      LIMIT 4958528643537299690 
     ) THEN subq0.c7
         WHEN FALSE = subq0.c5 THEN subq0.c5
         WHEN subq0.c7 IS NULL THEN subq0.c7
         WHEN subq0.c7 = TRUE THEN subq0.c5
         WHEN subq0.c8 = subq0.c7 THEN subq0.c8
         WHEN TRUE = subq0.c6 THEN subq0.c8
         ELSE subq0.c5
    END THEN subq0.c5
        ELSE subq0.c7
   END
       WHEN round( 49) IS NULL THEN subq0.c7
       WHEN subq0.c8 <> subq0.c8 AND subq0.c8 <> subq0.c5 AND subq0.c7 <> subq0.c5 OR EXISTS (
   SELECT t9.c1 AS c5
    FROM t0 AS t9
    WHERE t9.c2 = t9.c0
    ORDER BY c5, c5, c5 ASC, c5 ASC
    LIMIT 2254594639129541611 OFFSET 2702690626010723730
   ) THEN subq0.c8
       ELSE subq0.c7
  END
 END AS c6
FROM (SELECT t1.c2 AS c5, t1.c0 AS c6, t1.c2 AS c7, t1.c4 AS c8
   FROM t0 AS t1
   WHERE t1.c0 = t1.c0
   ORDER BY c5 DESC, c7
   LIMIT 2996105925323519788 ) as subq0
WHERE subq0.c7 = subq0.c8
ORDER BY c6 ASC, c6 DESC, c6 DESC, c6
LIMIT 7167210545288206677 OFFSET 4160432908387963798;
SELECT subq0.c22 AS c23
FROM (SELECT t1.c0 AS c5, 
    CASE t1.c4 WHEN EXISTS (
     SELECT t2.c0 AS c5, t2.c1 AS c6, t2.c3 AS c7, t2.c4 AS c8, t2.c3 AS c9, t2.c4 AS c10, t2.c4 AS c11
      FROM t0 AS t2
      WHERE true AND t2.c2 IS NOT NULL OR t2.c2 = t2.c4 AND false
      ORDER BY c9, c8 ASC
      LIMIT 4789725757405905636 OFFSET 3384252012716555951
     ) THEN t1.c2
         WHEN false AND t1.c1 = t1.c1 OR t1.c4 = t1.c0 OR t1.c0 = t1.c2 OR t1.c0 IS NULL OR likely( NULL) IS NULL AND t1.c1 <> t1.c4 THEN t1.c4
         WHEN t1.c0 <> t1.c0 THEN t1.c4
         WHEN t1.c4 = t1.c4 OR t1.c3 <> t1.c3 OR t1.c0 IS NOT NULL AND t1.c2 = COALESCE(t1.c2, t1.c2, t1.c3, t1.c3) THEN t1.c0
         ELSE t1.c1
    END AS c12, t1.c1 AS c13, t1.c1 AS c14, t1.c4 AS c15, FALSE AS c16, t1.c3 AS c17, t1.c2 AS c18, t1.c2 AS c19, t1.c1 AS c20, t1.c3 AS c21, t1.c3 AS c22
   FROM t0 AS t1
   WHERE t1.c0 = t1.c0 OR false
   ORDER BY c17 ASC) as subq0
WHERE subq0.c15 <> 
 CASE subq0.c14 WHEN subq0.c17 = subq0.c21 THEN subq0.c16
      WHEN subq0.c12 = subq0.c14 THEN subq0.c14
      WHEN 
  CASE WHEN subq0.c15 IS NULL THEN subq0.c16
       ELSE subq0.c15
  END <> subq0.c18 OR subq0.c20 <> subq0.c16 THEN subq0.c20
      WHEN subq0.c15 = subq0.c16 THEN subq0.c14
      WHEN subq0.c18 IS NOT NULL THEN subq0.c20
      ELSE subq0.c13
 END
ORDER BY c23 ASC
LIMIT 6109681541616057426 OFFSET 9130643380926633336;
INSERT INTO t0 VALUES (FALSE, TRUE, FALSE, NULL, FALSE);
SELECT subq0.c6 AS c14, subq0.c9 AS c15, 
 CASE subq0.c11 WHEN subq0.c6 <> subq0.c5 THEN subq0.c8
      WHEN subq0.c11 <> subq0.c11 THEN subq0.c8
      WHEN CAST(subq0.c8 AS BOOLEAN) = subq0.c7 THEN subq0.c8
      WHEN CAST(substr(FALSE,19) AS TEXT) <> subq0.c7 THEN subq0.c9
      ELSE subq0.c6
 END AS c16, subq0.c13 AS c17, subq0.c12 AS c18, subq0.c5 AS c19
FROM (SELECT t1.c0 AS c5, COALESCE(t5.c2, t5.c2) AS c6, t5.c3 AS c7, t3.c4 AS c8, t3.c4 AS c9, t2.c3 AS c10, t5.c2 AS c11, t5.c3 AS c12, t1.c1 AS c13
   FROM t0 AS t1
     CROSS JOIN (
     t0 AS t2
       INNER JOIN t0 AS t3       
        ON (EXISTS (
         SELECT t4.c2 AS c5, t4.c2 AS c6, t4.c0 AS c7, t4.c3 AS c8, t4.c0 AS c9, t4.c4 AS c10
          FROM t0 AS t4
          WHERE true
          ORDER BY c10
          LIMIT 5949650344134444631 
         ))
      LEFT JOIN t0 AS t5      
       ON (t3.c3 = t5.c3)     )
      ON (t1.c0 = t3.c0)
   WHERE CAST(t3.c2 AS TEXT) <> t3.c0
   ORDER BY c12) as subq0
WHERE subq0.c6 <> COALESCE(NULLIF(subq0.c13, subq0.c5), subq0.c7, subq0.c11, subq0.c12, subq0.c10)
ORDER BY c16 COLLATE NOCASE DESC, c18 COLLATE NOCASE
LIMIT 2308798392841289819 ;
SELECT subq1.c15 AS c17, t5.c3 AS c18
FROM t0 AS t1
    LEFT JOIN t0 AS t2    
     ON (t2.c4 IS NOT NULL)
   INNER JOIN t0 AS t3   
    ON (t1.c0 <> t2.c4)
  INNER JOIN (
  (SELECT t4.c2 AS c5, t4.c1 AS c6, t4.c2 AS c7, t4.c0 AS c8
     FROM t0 AS t4
     WHERE t4.c1 <> t4.c0 OR NULL <> t4.c3
     ORDER BY c5
     LIMIT 1216523936940816210 OFFSET 1102944029885314165) as subq0
   LEFT JOIN (
   t0 AS t5
    LEFT OUTER JOIN (SELECT t6.c3 AS c5, t6.c1 AS c6, t6.c1 AS c7, t6.c4 AS c8, t6.c0 AS c9, t6.c3 AS c10, t6.c1 AS c11, t6.c4 AS c12, t6.c3 AS c13, t6.c2 AS c14, t6.c1 AS c15, t6.c3 AS c16
      FROM t0 AS t6
      WHERE t6.c4 = t6.c0
      ORDER BY c14
      LIMIT 7574917055551379385 OFFSET 3957513802935363844) as subq1    
     ON (subq1.c9 <> t5.c0)   )
    ON (subq0.c5 IS NULL)  )
   ON (t2.c1 = t3.c4)
WHERE t1.c1 = t2.c2 OR subq1.c14 = CAST(t2.c4 AS BOOLEAN)
ORDER BY c18, c17, c17, c17
LIMIT 790968912160414393 ;
SELECT t3.c0 AS c10, t1.c3 AS c11, subq0.c7 AS c12, t3.c4 AS c13
FROM t0 AS t1
    INNER JOIN (SELECT t2.c4 AS c5, t2.c1 AS c6, t2.c2 AS c7
      FROM t0 AS t2
      WHERE t2.c4 = t2.c1
      ORDER BY c5 COLLATE BINARY, c6 COLLATE NOCASE, c5 ASC
      LIMIT 2759447333249893933 ) as subq0    
     ON (t1.c2 = subq0.c5)
   INNER JOIN t0 AS t3   
    ON (subq0.c5 = t3.c0)
  LEFT JOIN (SELECT t4.c0 AS c5, t4.c1 AS c6, t4.c2 AS c7, t4.c4 AS c8, t4.c2 AS c9
    FROM t0 AS t4
    WHERE COALESCE(t4.c2, t4.c1, t4.c0, t4.c3, t4.c0) IS NOT NULL
    ORDER BY c5 ASC) as subq1  
   ON (subq1.c7 = FALSE)
WHERE t1.c2 = subq1.c7 AND 
 CASE WHEN t3.c3 IS NOT NULL THEN t1.c4
      ELSE t1.c2
 END <> subq0.c5
ORDER BY c11, c12 COLLATE RTRIM DESC
LIMIT 6725706873973067429 OFFSET 3298645120917459168;
SELECT subq0.c8 AS c11, subq0.c8 AS c12, subq0.c8 AS c13, subq0.c8 AS c14, subq0.c8 AS c15, subq0.c8 AS c16, subq0.c8 AS c17, subq0.c8 AS c18, subq0.c8 AS c19, subq0.c8 AS c20, subq0.c8 AS c21
FROM (SELECT t3.c3 AS c8
   FROM t0 AS t1
      LEFT OUTER JOIN t0 AS t2      
       ON (t1.c4 = t2.c0)
     LEFT JOIN t0 AS t3     
      ON (t1.c1 <> t3.c1 AND t1.c0 = t2.c0 AND t2.c3 <> t2.c3 OR EXISTS (
       SELECT t4.c1 AS c5, t4.c1 AS c6, t4.c4 AS c7
        FROM t0 AS t4
        WHERE t4.c1 = t4.c2
        ORDER BY c5, c7
        LIMIT 4259072686946098842 OFFSET 6049211998011443182
       ))
   WHERE EXISTS (
    SELECT t5.c2 AS c5, t5.c2 AS c6, t5.c3 AS c7, t5.c3 AS c8, t5.c3 AS c9, t5.c0 AS c10, t5.c4 AS c11, t5.c2 AS c12, t5.c0 AS c13, 
      CASE t5.c3 WHEN t5.c0 <> t5.c0 THEN t5.c3
           WHEN t5.c0 IS NOT NULL THEN t5.c3
           WHEN t5.c0 = t5.c2 THEN t5.c3
           WHEN t5.c3 <> t5.c3 THEN t5.c3
           WHEN t5.c1 = t5.c2 OR EXISTS (
       SELECT t6.c1 AS c5, t6.c1 AS c6, t6.c2 AS c7, t6.c1 AS c8
        FROM t0 AS t6
        WHERE t6.c0 <> t6.c0
        ORDER BY c8 COLLATE NOCASE, c5, c5
        LIMIT 6141301464954095136 
       ) THEN t5.c3
           WHEN true THEN t5.c3
           WHEN t5.c2 IS NOT NULL THEN t5.c3
           ELSE t5.c3
      END AS c9, t5.c3 AS c10
     FROM t0 AS t5
     WHERE true
     ORDER BY c7, c10 COLLATE BINARY
    ) OR t1.c1 <> t3.c1 AND t1.c0 = t1.c1
   ORDER BY c8 COLLATE BINARY DESC) as subq0
WHERE CAST(
  CASE WHEN subq0.c8 <> subq0.c8 OR subq0.c8 = subq0.c8 THEN subq0.c8
       ELSE subq0.c8
  END AS TEXT) <> NULLIF(subq0.c8, subq0.c8)
ORDER BY c19 COLLATE BINARY, c16 DESC, c19;
SELECT t1.c2 AS c5, t1.c0 AS c6, t1.c0 AS c7
FROM t0 AS t1
WHERE t1.c0 IS NOT NULL
ORDER BY c6, c7 COLLATE RTRIM, c5
LIMIT 5019140894750400895 OFFSET 1570854515745777431;
SELECT t1.c1 AS c5, t1.c0 AS c6, t1.c2 AS c7, t1.c4 AS c8
FROM t0 AS t1
WHERE t1.c1 = t1.c4
ORDER BY c7 COLLATE RTRIM DESC, c8, c8;
SELECT 
 CASE subq0.c6 WHEN subq0.c6 IS NULL THEN 
  CASE WHEN subq0.c6 = subq0.c6 THEN subq0.c5
       ELSE subq0.c5
  END
      WHEN subq0.c5 <> subq0.c5 AND subq0.c6 <> subq0.c6 THEN subq0.c6
      WHEN subq0.c5 <> subq0.c6 THEN subq0.c5
      WHEN subq0.c6 IS NULL THEN subq0.c5
      WHEN subq0.c6 = subq0.c6 THEN subq0.c6
      WHEN subq0.c5 IS NOT NULL THEN FALSE
      WHEN subq0.c5 = TRUE OR subq0.c6 = subq0.c6 AND FALSE = subq0.c5 THEN subq0.c6
      ELSE NULLIF(subq0.c6, subq0.c6)
 END AS c7, subq0.c6 AS c8, 
 CASE WHEN subq0.c6 = subq0.c6 AND false AND subq0.c6 = subq0.c6 OR subq0.c6 <> subq0.c6 THEN subq0.c5
      ELSE subq0.c5
 END AS c9, COALESCE(subq0.c6, subq0.c6, subq0.c5, subq0.c5) AS c10, subq0.c5 AS c11, subq0.c5 AS c12
FROM (SELECT t1.c1 AS c5, FALSE AS c6
   FROM t0 AS t1
     LEFT JOIN t0 AS t2     
      ON (t2.c2 = t1.c0)
   WHERE t2.c1 <> t1.c0
   ORDER BY c5, c5
   LIMIT 3432413939095510075 ) as subq0
WHERE true AND true
ORDER BY c9 COLLATE BINARY
LIMIT 6384805864500317613 OFFSET 8545465865938979513;
SELECT t1.c2 AS c5, t1.c3 AS c6, t1.c1 AS c7, t1.c1 AS c8, t1.c0 AS c9, t1.c1 AS c10
FROM t0 AS t1
WHERE like(78,'text49','𗓬') IS NOT NULL OR t1.c3 = t1.c3 OR t1.c2 <> t1.c1
ORDER BY c8 ASC, c6, c10 COLLATE NOCASE ASC
LIMIT 9079107753822075447 OFFSET 5532723519444560765;
SELECT subq1.c8 AS c9, subq1.c8 AS c10, subq1.c8 AS c11
FROM (SELECT FALSE AS c8
   FROM (SELECT FALSE AS c5, t1.c1 AS c6, t2.c1 AS c7
      FROM t0 AS t1
        INNER JOIN t0 AS t2        
         ON (t1.c3 = t1.c3 AND false AND t1.c0 <> t2.c4 AND false AND false AND t1.c1 <> t1.c0 OR t1.c4 IS NOT NULL AND false OR t1.c2 = t1.c0 OR t1.c3 = t1.c3)
      WHERE t1.c4 IS NULL
      ORDER BY c7 ASC, c6 DESC
      LIMIT 8447846350112311245 ) as subq0
   WHERE IFNULL(subq0.c6, subq0.c7) IS NULL
   ORDER BY c8 DESC) as subq1
WHERE subq1.c8 IS NULL AND subq1.c8 <> NULLIF(subq1.c8, subq1.c8) AND 
 CASE subq1.c8 WHEN subq1.c8 <> subq1.c8 THEN subq1.c8
      WHEN zeroblob( 15) IS NOT NULL THEN subq1.c8
      WHEN length( 'text3') IS NULL AND subq1.c8 = 
  CASE WHEN true THEN subq1.c8
       ELSE subq1.c8
  END AND subq1.c8 = subq1.c8 OR subq1.c8 <> subq1.c8 THEN subq1.c8
      WHEN subq1.c8 = TRUE THEN subq1.c8
      WHEN subq1.c8 IS NULL OR false AND subq1.c8 <> subq1.c8 THEN subq1.c8
      ELSE subq1.c8
 END IS NOT NULL AND subq1.c8 = subq1.c8
ORDER BY c11
LIMIT 3798016151953460348 ;
SELECT 
 CASE WHEN EXISTS (
  SELECT subq2.c5 AS c6, subq2.c5 AS c7
   FROM (SELECT t2.c2 AS c5
      FROM t0 AS t2
      WHERE true
      ORDER BY c5
      LIMIT 3087532769150099796 OFFSET 490057756595231503) as subq2
   WHERE false
   ORDER BY c7 COLLATE NOCASE DESC
  ) OR TRUE <> subq1.c13 OR subq1.c11 <> subq1.c11 AND subq1.c11 = subq1.c13 OR subq1.c10 <> subq1.c10 OR subq1.c12 = subq1.c12 OR subq1.c13 IS NULL THEN subq1.c11
      ELSE subq1.c13
 END AS c8, subq1.c13 AS c9, subq1.c11 AS c10, subq1.c10 AS c11, subq1.c9 AS c12
FROM (SELECT subq0.c6 AS c9, subq0.c6 AS c10, subq0.c6 AS c11, subq0.c7 AS c12, subq0.c8 AS c13
   FROM (SELECT t1.c2 AS c5, t1.c0 AS c6, t1.c3 AS c7, t1.c2 AS c8
      FROM t0 AS t1
      WHERE t1.c0 IS NULL AND t1.c4 IS NOT NULL
      ORDER BY c6, c6 COLLATE NOCASE DESC, c8
      LIMIT 494111125662110690 OFFSET 7911273807240142862) as subq0
   WHERE subq0.c8 <> COALESCE(subq0.c5, subq0.c5)
   ORDER BY c11
   LIMIT 15099450632586477 OFFSET 2946330925405203981) as subq1
WHERE subq1.c12 = subq1.c12
ORDER BY c9, c12;
SELECT t1.c1 AS c5, t1.c1 AS c6, t1.c1 AS c7, t1.c2 AS c8, t1.c0 AS c9, t1.c0 AS c10, t1.c0 AS c11, CAST(max(FALSE,21,NULL) AS BOOLEAN) AS c12
FROM t0 AS t1
WHERE t1.c3 <> t1.c3
ORDER BY c10 ASC
LIMIT 8336614209627291842 OFFSET 5295841524042756789;
SELECT t4.c3 AS c5, 
 CASE WHEN t2.c1 <> COALESCE(t5.c2, t2.c3, NULLIF(
    CASE t5.c0 WHEN t2.c0 <> t3.c2 THEN t5.c4
         WHEN subq0.c5 IS NOT NULL THEN t4.c0
         WHEN coalesce(TRUE,NULL,'text80') IS NULL THEN t3.c0
         WHEN t3.c4 <> t4.c0 OR t3.c0 <> subq0.c5 AND t2.c2 <> t3.c2 THEN t5.c1
         WHEN t4.c3 <> NULLIF(t4.c3, t4.c3) THEN t4.c4
         WHEN false THEN 
     CASE t4.c1 WHEN t3.c3 <> t3.c3 THEN t3.c0
          WHEN t4.c4 IS NOT NULL OR t3.c2 <> t3.c4 THEN t4.c0
          WHEN true THEN t5.c2
          WHEN t3.c0 <> t5.c2 THEN t3.c0
          WHEN EXISTS (
      SELECT t6.c4 AS c5, t6.c1 AS c6, t6.c1 AS c7, t6.c4 AS c8, t6.c0 AS c9, t6.c3 AS c10, t6.c3 AS c11, FALSE AS c12, t6.c1 AS c13, t6.c2 AS c14, t6.c1 AS c15, t6.c1 AS c16, t6.c0 AS c17
       FROM t0 AS t6
       WHERE t6.c3 IS NOT NULL
       ORDER BY c10 COLLATE NOCASE, c5 COLLATE BINARY DESC
      ) THEN t4.c1
          WHEN t4.c0 = t3.c2 THEN FALSE
          WHEN EXISTS (
      SELECT t7.c0 AS c5
       FROM t0 AS t7
       WHERE t7.c1 <> t7.c4
       ORDER BY c5, c5, c5 ASC, c5
      ) THEN t3.c0
          ELSE t5.c2
     END
         ELSE t4.c2
    END, CAST(t2.c2 AS TEXT))) THEN t4.c1
      ELSE subq0.c5
 END AS c6, t2.c0 AS c7, t3.c1 AS c8, t3.c0 AS c9
FROM (SELECT t1.c0 AS c5
    FROM t0 AS t1
    WHERE t1.c1 <> t1.c4 OR t1.c2 <> t1.c2
    ORDER BY c5 DESC
    LIMIT 5761490687933324991 OFFSET 8510742774227654072) as subq0
  LEFT JOIN (
  t0 AS t2
   INNER JOIN (
   t0 AS t3
     INNER JOIN t0 AS t4     
      ON (t4.c2 = t4.c1)
    INNER JOIN t0 AS t5    
     ON (t5.c4 IS NOT NULL OR false)   )
    ON (t2.c4 = t4.c0)  )
   ON (t5.c2 <> t5.c0)
WHERE t4.c1 <> t5.c2
ORDER BY c9, c5 DESC, c6 COLLATE RTRIM
LIMIT 8687502936281775079 OFFSET 8692922852246921624;
SELECT t1.c4 AS c5
FROM t0 AS t1
WHERE t1.c1 = t1.c4
ORDER BY c5 DESC, c5 DESC, c5 ASC, c5 DESC;
SELECT t1.c4 AS c5, t1.c4 AS c6, t1.c4 AS c7, t1.c2 AS c8, t1.c1 AS c9, t1.c4 AS c10, t1.c3 AS c11, t1.c4 AS c12, t1.c3 AS c13, t1.c3 AS c14, t1.c3 AS c15, t1.c4 AS c16, t1.c2 AS c17, t1.c1 AS c18, 
 CASE t1.c3 WHEN true THEN t1.c3
      WHEN 
  CASE WHEN t1.c1 IS NOT NULL THEN t1.c3
       ELSE 
   CASE WHEN false THEN t1.c3
        ELSE t1.c3
   END
  END <> 
  CASE t1.c3 WHEN t1.c4 <> t1.c2 THEN t1.c3
       WHEN t1.c4 IS NOT NULL THEN t1.c3
       WHEN EXISTS (
   SELECT t2.c4 AS c5
    FROM t0 AS t2
    WHERE t2.c0 <> t2.c2 AND true OR t2.c2 IS NOT NULL
    ORDER BY c5 ASC
    LIMIT 8964149941844096880 
   ) OR t1.c1 = t1.c1 THEN t1.c3
       WHEN t1.c3 = t1.c3 THEN t1.c3
       WHEN t1.c1 <> FALSE THEN t1.c3
       WHEN NULL <> t1.c3 THEN t1.c3
       WHEN EXISTS (
   SELECT t4.c4 AS c5, t3.c1 AS c6, t3.c0 AS c7
    FROM t0 AS t3
      INNER JOIN t0 AS t4      
       ON (t3.c1 IS NULL)
    WHERE t4.c1 = t3.c1
    ORDER BY c6 ASC, c7 COLLATE BINARY, c7 DESC
   ) THEN 
   CASE WHEN t1.c0 = t1.c2 THEN t1.c3
        ELSE t1.c3
   END
       WHEN t1.c4 <> t1.c0 THEN t1.c3
       WHEN t1.c1 <> t1.c1 THEN 
   CASE WHEN t1.c2 = t1.c0 THEN t1.c3
        ELSE t1.c3
   END
       WHEN t1.c3 = NULL AND t1.c0 = t1.c4 AND t1.c3 = t1.c3 THEN t1.c3
       WHEN t1.c0 IS NOT NULL THEN t1.c3
       ELSE t1.c3
  END OR NULLIF(t1.c3, 
   CASE WHEN t1.c4 <> t1.c4 THEN 
    CASE t1.c1 WHEN t1.c2 <> t1.c2 THEN t1.c4
         WHEN t1.c1 <> CAST(t1.c0 AS INTEGER) THEN COALESCE(t1.c0, t1.c2, t1.c3, t1.c3, nullif('text90',NULL))
         ELSE t1.c4
    END
        ELSE t1.c4
   END) IS NULL THEN t1.c3
      WHEN t1.c1 <> t1.c0 THEN t1.c3
      WHEN t1.c1 = t1.c2 THEN t1.c3
      WHEN COALESCE(t1.c2, t1.c3, t1.c2) = t1.c4 THEN t1.c3
      WHEN EXISTS (
  SELECT 
    CASE t5.c1 WHEN t5.c1 <> t8.c1 THEN t7.c2
         WHEN t5.c1 <> t6.c4 THEN t5.c4
         ELSE t6.c2
    END AS c5, t7.c2 AS c6, t5.c4 AS c7, t7.c2 AS c8
   FROM t0 AS t5
      LEFT JOIN (
      t0 AS t6
       LEFT JOIN t0 AS t7       
        ON (t7.c0 IS NOT NULL)      )
       ON (t6.c4 <> t7.c2)
     LEFT OUTER JOIN t0 AS t8     
      ON (t8.c4 IS NULL)
   WHERE t7.c1 IS NOT NULL
   ORDER BY c7 COLLATE RTRIM ASC, c5, c5
   LIMIT 8896685048098886312 OFFSET 1149466692758080247
  ) THEN t1.c3
      WHEN 
  CASE t1.c3 WHEN true THEN COALESCE(t1.c4, t1.c3, 
    CASE WHEN t1.c2 <> t1.c4 OR TRUE <> t1.c4 AND t1.c3 = t1.c3 OR t1.c0 <> t1.c1 THEN t1.c3
         ELSE t1.c0
    END, t1.c3, t1.c3, t1.c3)
       WHEN t1.c2 <> t1.c0 THEN t1.c3
       WHEN 
   CASE t1.c4 WHEN t1.c3 = t1.c3 OR CAST(t1.c2 AS TEXT) <> t1.c1 AND t1.c3 <> t1.c3 OR t1.c3 <> 
    CASE t1.c3 WHEN t1.c1 <> t1.c2 OR IFNULL(t1.c0, t1.c0) <> t1.c4 AND t1.c4 = t1.c2 OR t1.c3 <> t1.c3 AND changes() IS NOT NULL THEN t1.c3
         ELSE t1.c3
    END THEN t1.c1
        WHEN t1.c0 = t1.c0 AND EXISTS (
    SELECT t9.c2 AS c5, t9.c0 AS c6, t9.c4 AS c7, t9.c2 AS c8, t9.c2 AS c9, t9.c3 AS c10, t9.c4 AS c11, t9.c3 AS c12, t9.c2 AS c13, t9.c1 AS c14, t9.c3 AS c15, COALESCE(t9.c3, t9.c0, t9.c3, t9.c3, t9.c2, t9.c2) AS c16
     FROM t0 AS t9
     WHERE t9.c0 <> t9.c4 OR t9.c4 = t9.c4
     ORDER BY c10, c6 DESC, c14 DESC
     LIMIT 2704840538329583144 OFFSET 850593914994244814
    ) AND EXISTS (
    SELECT t10.c1 AS c5, t10.c4 AS c6, t10.c4 AS c7, t10.c3 AS c8, NULL AS c9, t10.c1 AS c10, t10.c4 AS c11, t10.c1 AS c12, t10.c1 AS c13
     FROM t0 AS t10
     WHERE t10.c4 <> t10.c4 AND t10.c2 = t10.c0 AND true
     ORDER BY c8 COLLATE RTRIM, c10, c5 COLLATE NOCASE DESC
     LIMIT 6337076582591379992 
    ) AND t1.c4 = t1.c1 THEN t1.c2
        WHEN t1.c0 = t1.c1 AND t1.c2 IS NULL AND 
    CASE WHEN EXISTS (
     SELECT ALL t11.c3 AS c5, t11.c4 AS c6, t11.c4 AS c7, t11.c4 AS c8, t11.c3 AS c9, t11.c3 AS c10, t11.c2 AS c11, t11.c0 AS c12, t11.c0 AS c13, t11.c4 AS c14, t11.c4 AS c15, t11.c4 AS c16
      FROM t0 AS t11
      WHERE t11.c0 <> t11.c2
      ORDER BY c13, c9
     ) THEN t1.c4
         ELSE t1.c4
    END <> t1.c2 OR true THEN t1.c1
        WHEN t1.c1 = 
    CASE WHEN t1.c4 = t1.c0 THEN t1.c0
         ELSE t1.c1
    END THEN t1.c1
        WHEN t1.c0 <> t1.c1 THEN t1.c1
        WHEN t1.c2 <> t1.c1 THEN t1.c4
        WHEN t1.c3 IS NULL OR false THEN t1.c2
        WHEN t1.c1 <> t1.c0 THEN t1.c4
        WHEN t1.c4 = t1.c1 OR t1.c3 IS NULL OR t1.c2 = t1.c2 AND FALSE IS NULL THEN t1.c2
        WHEN t1.c1 = t1.c0 OR EXISTS (
    SELECT t13.c1 AS c5, t13.c0 AS c6
     FROM t0 AS t12
       INNER JOIN t0 AS t13       
        ON (t13.c1 IS NULL)
     WHERE EXISTS (
      SELECT DISTINCT t14.c1 AS c5
       FROM t0 AS t14
       WHERE t14.c4 = t14.c4
       ORDER BY c5 COLLATE RTRIM DESC
       LIMIT 3652202181025683050 OFFSET 8347359753905700342
      )
     ORDER BY c5
     LIMIT 5009722130122377962 OFFSET 864727444513888279
    ) THEN t1.c1
        WHEN EXISTS (
    SELECT t15.c0 AS c5, t15.c1 AS c6, t15.c2 AS c7, t15.c1 AS c8, t15.c0 AS c9, t15.c0 AS c10, t15.c1 AS c11, t15.c3 AS c12, t15.c3 AS c13
     FROM t0 AS t15
     WHERE t15.c3 IS NULL OR false
     ORDER BY c13, c7 COLLATE BINARY DESC
    ) THEN t1.c1
        WHEN false THEN t1.c1
        ELSE t1.c2
   END = t1.c0 AND COALESCE(t1.c3, t1.c1, t1.c2, t1.c1) = t1.c2 THEN t1.c3
       WHEN 
   CASE WHEN t1.c1 IS NOT NULL THEN t1.c0
        ELSE t1.c1
   END <> t1.c1 THEN 
   CASE t1.c3 WHEN t1.c1 <> TRUE THEN t1.c3
        WHEN t1.c3 = t1.c3 AND EXISTS (
    SELECT t17.c3 AS c5, t17.c4 AS c6
     FROM t0 AS t16
       LEFT JOIN t0 AS t17       
        ON (t16.c0 IS NULL)
     WHERE t17.c4 = t16.c4
     ORDER BY c6
     LIMIT 954098775056349411 OFFSET 3776469308402071790
    ) THEN t1.c3
        WHEN t1.c3 <> t1.c3 THEN t1.c3
        WHEN false THEN t1.c3
        WHEN EXISTS (
    SELECT t18.c1 AS c5, t18.c4 AS c6, t18.c2 AS c7, t18.c1 AS c8, t18.c1 AS c9, t18.c3 AS c10, t18.c0 AS c11, t18.c3 AS c12, t18.c2 AS c13, t18.c3 AS c14, t18.c1 AS c15, t18.c3 AS c16, t18.c4 AS c17, t18.c3 AS c18, t18.c3 AS c19, t18.c1 AS c20, t18.c2 AS c21, t18.c0 AS c22, t18.c0 AS c23
     FROM t0 AS t18
     WHERE t18.c2 <> t18.c2 OR t18.c4 <> TRUE OR t18.c4 = 
      CASE t18.c2 WHEN t18.c0 = t18.c1 OR EXISTS (
       SELECT t19.c0 AS c5
        FROM t0 AS t19
        WHERE t19.c3 <> t19.c3
        ORDER BY c5, c5 DESC, c5 DESC, c5
        LIMIT 5529955896044926954 OFFSET 9199712417121141164
       ) THEN t18.c0
           WHEN t18.c2 = t18.c4 THEN TRUE
           WHEN t18.c4 = t18.c1 THEN t18.c0
           WHEN t18.c2 <> t18.c0 THEN t18.c0
           WHEN false AND t18.c3 = t18.c3 AND t18.c3 IS NULL THEN t18.c1
           WHEN t18.c1 IS NULL THEN t18.c4
           WHEN t18.c1 = t18.c1 THEN t18.c1
           WHEN t18.c0 <> t18.c0 THEN t18.c2
           WHEN t18.c3 = t18.c3 AND t18.c2 <> t18.c2 OR true THEN t18.c4
           WHEN true AND t18.c1 IS NOT NULL THEN t18.c0
           WHEN FALSE IS NULL OR t18.c2 IS NOT NULL OR t18.c2 = t18.c2 AND t18.c1 <> t18.c1 AND t18.c2 <> TRUE OR t18.c4 IS NULL THEN t18.c4
           ELSE t18.c0
      END OR t18.c1 = t18.c4 OR EXISTS (
      SELECT t20.c4 AS c5, t20.c0 AS c6, t20.c0 AS c7, t20.c3 AS c8
       FROM t0 AS t20
       WHERE EXISTS (
        SELECT t21.c0 AS c5, NULL AS c6, t21.c4 AS c7, t21.c1 AS c8, t21.c0 AS c9
         FROM t0 AS t21
         WHERE t21.c2 IS NOT NULL
         ORDER BY c9 COLLATE NOCASE, c7, c5
        )
       ORDER BY c6 ASC, c5 ASC, c8
      ) AND EXISTS (
      SELECT t22.c4 AS c5, t22.c1 AS c6, t22.c3 AS c7, t22.c4 AS c8, t22.c0 AS c9, t22.c3 AS c10, t22.c3 AS c11, t22.c1 AS c12, t22.c0 AS c13, t22.c3 AS c14, t22.c3 AS c15, t22.c2 AS c16, t22.c1 AS c17
       FROM t0 AS t22
       WHERE t22.c2 <> t22.c1
       ORDER BY c6, c6 COLLATE BINARY, c17 COLLATE BINARY
       LIMIT 4890845051773137807 OFFSET 1698822335174772262
      )
     ORDER BY c7
    ) OR 
    CASE WHEN 
     CASE WHEN t1.c3 <> t1.c3 THEN TRUE
          ELSE t1.c4
     END = t1.c1 THEN t1.c4
         ELSE t1.c0
    END = t1.c4 THEN t1.c3
        WHEN false THEN t1.c3
        WHEN t1.c3 <> NULL THEN t1.c3
        WHEN t1.c3 <> t1.c3 THEN t1.c3
        WHEN NULL IS NOT NULL THEN t1.c3
        WHEN FALSE <> TRUE THEN t1.c3
        WHEN t1.c1 <> t1.c1 THEN t1.c3
        WHEN t1.c2 <> t1.c0 AND 
    CASE WHEN t1.c4 = t1.c0 THEN t1.c2
         ELSE t1.c2
    END <> t1.c0 AND false THEN t1.c3
        ELSE t1.c3
   END
       WHEN 
   CASE t1.c3 WHEN false THEN t1.c3
        WHEN t1.c1 = t1.c2 THEN 
    CASE WHEN t1.c2 <> t1.c2 AND t1.c4 <> t1.c2 OR t1.c4 = t1.c0 THEN t1.c3
         ELSE t1.c3
    END
        WHEN t1.c3 = t1.c3 THEN t1.c3
        WHEN t1.c2 = COALESCE(t1.c4, FALSE, t1.c3, t1.c1) THEN t1.c3
        WHEN t1.c2 = t1.c2 THEN t1.c3
        WHEN t1.c2 = t1.c2 THEN t1.c3
        WHEN t1.c2 <> t1.c2 THEN t1.c3
        WHEN t1.c1 <> t1.c4 THEN t1.c3
        WHEN t1.c0 <> COALESCE(t1.c1, 
     CASE WHEN EXISTS (
      SELECT t23.c3 AS c5, t23.c0 AS c6, t23.c4 AS c7, t23.c1 AS c8, t23.c4 AS c9, t23.c2 AS c10, t23.c4 AS c11, t23.c1 AS c12, t23.c4 AS c13, t23.c2 AS c14, t23.c0 AS c15
       FROM t0 AS t23
       WHERE t23.c3 = t23.c3
       ORDER BY c6
      ) THEN t1.c3
          ELSE t1.c3
     END, NULLIF(t1.c0, t1.c2), t1.c4, t1.c3) THEN NULL
        WHEN t1.c3 <> t1.c3 AND t1.c1 IS NOT NULL AND true THEN t1.c3
        WHEN t1.c4 <> t1.c4 THEN t1.c3
        ELSE t1.c3
   END = t1.c3 AND t1.c2 <> t1.c4 THEN t1.c3
       WHEN t1.c1 = 
   CASE WHEN t1.c2 <> t1.c0 OR t1.c2 <> t1.c0 THEN TRUE
        ELSE t1.c1
   END THEN 
   CASE WHEN false OR t1.c3 = t1.c3 OR t1.c0 = t1.c4 AND 
    CASE t1.c1 WHEN false THEN t1.c2
         WHEN t1.c4 <> t1.c2 THEN t1.c2
         ELSE 
     CASE t1.c4 WHEN t1.c3 IS NULL THEN t1.c2
          WHEN t1.c2 IS NULL THEN t1.c4
          WHEN t1.c4 = t1.c2 OR t1.c2 IS NOT NULL THEN t1.c2
          ELSE t1.c4
     END
    END = t1.c2 THEN t1.c3
        ELSE t1.c3
   END
       ELSE t1.c3
  END <> t1.c3 AND t1.c4 <> t1.c1 THEN t1.c3
      WHEN t1.c3 <> CAST(t1.c1 AS BOOLEAN) OR FALSE <> t1.c2 AND t1.c4 <> t1.c2 OR COALESCE(t1.c2, t1.c2, t1.c3) = t1.c3 THEN NULL
      ELSE t1.c3
 END AS c16, t1.c1 AS c17, t1.c0 AS c18, t1.c4 AS c19
FROM t0 AS t1
WHERE 
 CASE WHEN EXISTS (
  SELECT t24.c3 AS c5, t24.c3 AS c6, 
    CASE t24.c0 WHEN t24.c2 IS NULL THEN t24.c2
         WHEN t24.c3 <> t24.c3 THEN t24.c0
         WHEN t24.c3 = t24.c3 OR t24.c1 = t24.c1 THEN t24.c0
         ELSE t24.c1
    END AS c7, TRUE AS c8
   FROM t0 AS t24
   WHERE EXISTS (
    SELECT t25.c0 AS c5
     FROM t0 AS t25
     WHERE t25.c1 <> t25.c0 OR t25.c3 = t25.c3
     ORDER BY c5 ASC
     LIMIT 1165968987402933446 
    )
   ORDER BY c7 COLLATE NOCASE, c5 COLLATE RTRIM
   LIMIT 8629385142032332102 OFFSET 4376180162886991215
  ) OR t1.c1 = 
  CASE WHEN t1.c4 = t1.c0 THEN 
   CASE WHEN 
    CASE WHEN t1.c3 <> t1.c3 THEN t1.c0
         ELSE t1.c4
    END = NULLIF(t1.c2, t1.c2) AND EXISTS (
    SELECT t26.c2 AS c5, t26.c0 AS c6, t26.c4 AS c7, t26.c0 AS c8, t26.c4 AS c9
     FROM t0 AS t26
     WHERE FALSE <> t26.c2
     ORDER BY c7 ASC, c8, c7 ASC
     LIMIT 9062982367715230158 OFFSET 3162548652250144352
    ) THEN t1.c2
        ELSE t1.c2
   END
       ELSE t1.c1
  END THEN COALESCE(t1.c2, zeroblob( 100), IFNULL(t1.c3, t1.c3))
      ELSE round( 60)
 END IS NOT NULL
ORDER BY c17 COLLATE RTRIM
LIMIT 5134343968801206281 OFFSET 7625446451734541263;
SELECT subq0.c9 AS c11, subq0.c5 AS c12, subq0.c11 AS c13, subq0.c11 AS c14, subq0.c13 AS c15
FROM (SELECT t1.c1 AS c5, t1.c1 AS c6, 
    CASE t1.c2 WHEN EXISTS (
     SELECT t2.c2 AS c5, t2.c2 AS c6, t2.c3 AS c7, t2.c3 AS c8, t2.c3 AS c9, t2.c4 AS c10, t2.c4 AS c11, t2.c3 AS c12, t2.c4 AS c13, t2.c0 AS c14, t2.c0 AS c15, t2.c3 AS c16, t2.c4 AS c17, t2.c3 AS c18, t2.c4 AS c19, t2.c4 AS c20
      FROM t0 AS t2
      WHERE t2.c2 IS NOT NULL OR t2.c3 = t2.c3
      ORDER BY c7, c20, c13 ASC
     ) THEN t1.c4
         WHEN 
     CASE t1.c0 WHEN false THEN t1.c4
          WHEN t1.c0 <> t1.c0 THEN t1.c4
          WHEN t1.c4 <> t1.c1 THEN t1.c4
          WHEN t1.c2 = t1.c1 THEN t1.c2
          ELSE t1.c4
     END <> t1.c2 AND t1.c4 = t1.c4 OR t1.c1 = t1.c0 THEN t1.c4
         WHEN t1.c3 <> t1.c3 THEN t1.c4
         WHEN false AND t1.c1 <> t1.c2 THEN t1.c4
         WHEN t1.c3 <> t1.c3 AND t1.c1 = t1.c2 AND EXISTS (
     SELECT TRUE AS c5, TRUE AS c6, t3.c1 AS c7, t3.c4 AS c8, t3.c4 AS c9
      FROM t0 AS t3
      WHERE TRUE <> t3.c1 AND t3.c3 = t3.c3
      ORDER BY c7 COLLATE NOCASE
     ) THEN t1.c2
         WHEN t1.c4 <> t1.c4 THEN t1.c2
         WHEN t1.c1 <> CAST(t1.c0 AS BOOLEAN) THEN t1.c0
         WHEN true THEN TRUE
         WHEN true THEN t1.c1
         WHEN t1.c0 = t1.c1 THEN t1.c2
         ELSE t1.c2
    END AS c10, t1.c4 AS c11, t1.c3 AS c12, t1.c2 AS c13, t1.c4 AS c14, 
    CASE t1.c2 WHEN EXISTS (
     SELECT t4.c1 AS c5
      FROM t0 AS t4
      WHERE t4.c3 = t4.c3
      ORDER BY c5, c5, c5 DESC, c5 ASC
      LIMIT 1865623623209519551 
     ) THEN 
     CASE WHEN t1.c3 <> t1.c3 THEN t1.c4
          ELSE t1.c4
     END
         WHEN t1.c0 IS NULL THEN t1.c2
         WHEN 
     CASE t1.c4 WHEN t1.c4 <> t1.c1 AND false OR t1.c2 = t1.c1 OR t1.c0 = t1.c2 THEN t1.c1
          WHEN t1.c4 <> t1.c0 OR EXISTS (
      SELECT t5.c0 AS c5, t5.c1 AS c6, t5.c0 AS c7, t5.c3 AS c8, NULL AS c9, t5.c4 AS c10, NULL AS c11, t5.c3 AS c12, t5.c0 AS c13, t5.c1 AS c14, t5.c4 AS c15, t5.c4 AS c16, t5.c1 AS c17, t5.c3 AS c18, t5.c0 AS c19
       FROM t0 AS t5
       WHERE t5.c0 = t5.c1 OR t5.c4 = t5.c0
       ORDER BY c6 DESC
      ) OR t1.c1 <> t1.c0 OR true OR NULL = t1.c3 OR NULL = t1.c3 THEN t1.c4
          WHEN t1.c0 <> TRUE THEN t1.c0
          WHEN t1.c4 = t1.c1 THEN t1.c4
          ELSE t1.c4
     END = t1.c2 OR t1.c2 = t1.c4 OR t1.c2 <> t1.c4 AND true AND t1.c0 IS NULL THEN t1.c2
         WHEN NULL <> t1.c3 THEN TRUE
         WHEN t1.c1 = t1.c4 AND t1.c2 <> t1.c2 THEN t1.c2
         WHEN t1.c1 IS NULL THEN FALSE
         WHEN EXISTS (
     SELECT t6.c1 AS c5, t6.c4 AS c6, t6.c4 AS c7, t6.c2 AS c8, t6.c0 AS c9, t6.c4 AS c10
      FROM t0 AS t6
      WHERE t6.c4 IS NULL
      ORDER BY c7 DESC, c5
      LIMIT 5896022886932491050 
     ) AND t1.c1 <> t1.c0 THEN t1.c1
         WHEN EXISTS (
     SELECT t7.c0 AS c5
      FROM t0 AS t7
      WHERE t7.c2 IS NOT NULL
      ORDER BY c5 COLLATE NOCASE DESC
      LIMIT 3554346420772607410 
     ) THEN t1.c4
         WHEN EXISTS (
     SELECT t8.c2 AS c5, TRUE AS c6, t8.c4 AS c7
      FROM t0 AS t8
      WHERE t8.c1 <> t8.c1 AND t8.c1 = t8.c1
      ORDER BY c6 DESC
     ) THEN t1.c1
         WHEN t1.c2 = t1.c1 THEN t1.c1
         ELSE t1.c2
    END AS c8, t1.c0 AS c9, t1.c4 AS c10
   FROM t0 AS t1
   WHERE FALSE = t1.c1
   ORDER BY c10 ASC, c12, c14
   LIMIT 1885702620174842756 OFFSET 51976511010219178) as subq0
WHERE 
 CASE subq0.c11 WHEN subq0.c13 <> subq0.c14 THEN subq0.c5
      WHEN subq0.c14 = subq0.c10 AND EXISTS (
  SELECT t9.c4 AS c5
   FROM t0 AS t9
     INNER JOIN t0 AS t10     
      ON (NULL IS NOT NULL AND t9.c3 IS NOT NULL OR t10.c4 = t10.c0 AND t10.c3 <> NULL)
   WHERE NULLIF(t9.c0, t10.c2) <> t10.c4
   ORDER BY c5, c5, c5, c5 DESC
   LIMIT 449506983239011759 OFFSET 8138163001374384125
  ) THEN CAST(subq0.c9 AS BOOLEAN)
      WHEN subq0.c5 = subq0.c8 THEN FALSE
      WHEN subq0.c5 <> subq0.c10 AND subq0.c13 = subq0.c14 THEN COALESCE(subq0.c13, subq0.c9, subq0.c12, unicode( 'text12'))
      WHEN subq0.c11 = subq0.c10 THEN subq0.c9
      WHEN EXISTS (
  SELECT COALESCE(t11.c4, NULL) AS c5, t11.c0 AS c6
   FROM t0 AS t11
   WHERE t11.c2 = t11.c0
   ORDER BY c6 ASC
  ) THEN subq0.c6
      WHEN subq0.c11 IS NOT NULL THEN subq0.c6
      WHEN COALESCE(subq0.c10, subq0.c12, subq0.c12, subq0.c5, subq0.c10, subq0.c6) = subq0.c11 THEN subq0.c10
      WHEN subq0.c9 = subq0.c6 THEN subq0.c6
      WHEN EXISTS (
  SELECT t13.c0 AS c5
   FROM t0 AS t12
        CROSS JOIN t0 AS t13        
         ON (t13.c1 <> t12.c0)
       INNER JOIN t0 AS t14       
        ON (t12.c1 <> t12.c1)
      LEFT OUTER JOIN t0 AS t15      
       ON (TRUE <> t13.c1)
     INNER JOIN t0 AS t16     
      ON (t16.c3 = t14.c3)
   WHERE t12.c4 = t13.c2 OR t16.c1 IS NOT NULL
   ORDER BY c5, c5 COLLATE RTRIM DESC, c5 COLLATE NOCASE, c5
   LIMIT 8202338962184080054 
  ) THEN subq0.c6
      WHEN subq0.c6 <> subq0.c13 AND 
  CASE WHEN EXISTS (
   SELECT t17.c4 AS c10, COALESCE(t18.c2, t18.c1, t17.c4, t18.c2, t17.c3, t17.c4) AS c11, t18.c0 AS c12, t17.c1 AS c13, t17.c0 AS c14
    FROM t0 AS t17
      INNER JOIN t0 AS t18      
       ON (EXISTS (
        SELECT t19.c0 AS c5, t19.c3 AS c6, t19.c2 AS c7, FALSE AS c8, t19.c1 AS c9
         FROM t0 AS t19
         WHERE false OR t19.c1 <> t19.c0
         ORDER BY c5
         LIMIT 742258683745243879 
        ))
    WHERE FALSE = t18.c1
    ORDER BY c14
   ) THEN subq0.c10
       ELSE subq0.c13
  END <> subq0.c6 THEN 
  CASE subq0.c14 WHEN subq0.c5 = subq0.c13 THEN subq0.c10
       WHEN subq0.c9 = FALSE THEN 
   CASE subq0.c6 WHEN EXISTS (
    SELECT t22.c3 AS c8, t20.c1 AS c9, t21.c2 AS c10, t21.c1 AS c11, t21.c0 AS c12, t21.c4 AS c13, t22.c4 AS c14, t22.c0 AS c15, t21.c3 AS c16, t22.c4 AS c17, t21.c0 AS c18, t20.c3 AS c19, t20.c4 AS c20, t22.c4 AS c21
     FROM t0 AS t20
       LEFT JOIN (
       t0 AS t21
        LEFT JOIN t0 AS t22        
         ON (EXISTS (
          SELECT t23.c3 AS c5
           FROM t0 AS t23
           WHERE t23.c2 = t23.c2
           ORDER BY c5
           LIMIT 7380156210300404341 
          ) AND t21.c0 = t22.c2 OR true OR t22.c4 IS NOT NULL)       )
        ON (EXISTS (
         SELECT t24.c2 AS c5, NULL AS c6, t24.c0 AS c7
          FROM t0 AS t24
          WHERE t24.c3 <> t24.c3
          ORDER BY c6 COLLATE BINARY, c5
          LIMIT 6917204603433270650 OFFSET 8998949825108851334
         ))
     WHERE t20.c4 IS NULL
     ORDER BY c16, c20 DESC, c10
    ) THEN COALESCE(subq0.c10, subq0.c6, subq0.c12, subq0.c12, subq0.c11)
        WHEN true THEN subq0.c6
        ELSE subq0.c6
   END
       WHEN EXISTS (
   SELECT t25.c1 AS c5, t25.c0 AS c6, t25.c1 AS c7, TRUE AS c8, t25.c3 AS c9, COALESCE(t25.c3, t25.c0, t25.c3, t25.c4) AS c10, t25.c4 AS c11, FALSE AS c12, t25.c1 AS c13
    FROM t0 AS t25
    WHERE t25.c4 <> t25.c4 AND t25.c0 IS NOT NULL OR t25.c1 <> t25.c4 AND t25.c1 = t25.c4
    ORDER BY c11, c9, c7
   ) THEN subq0.c6
       WHEN length( 91) IS NULL AND subq0.c14 <> FALSE THEN subq0.c5
       WHEN subq0.c5 <> subq0.c14 THEN FALSE
       WHEN CAST(FALSE AS INTEGER) <> subq0.c14 THEN subq0.c9
       WHEN subq0.c14 = subq0.c6 AND subq0.c10 <> subq0.c10 THEN subq0.c9
       WHEN subq0.c10 <> subq0.c13 THEN subq0.c6
       WHEN subq0.c11 <> subq0.c6 OR subq0.c13 <> subq0.c13 THEN subq0.c14
       ELSE subq0.c14
  END
      ELSE subq0.c11
 END <> subq0.c5 AND 
 CASE subq0.c14 WHEN false AND subq0.c13 <> subq0.c10 THEN subq0.c10
      WHEN subq0.c6 <> subq0.c6 THEN subq0.c12
      WHEN subq0.c10 = subq0.c10 THEN printf('text42','text20')
      WHEN subq0.c13 <> subq0.c13 THEN COALESCE(subq0.c5, subq0.c13, subq0.c8, 30, subq0.c11)
      WHEN subq0.c6 <> subq0.c6 OR subq0.c13 = subq0.c13 THEN NULL
      WHEN EXISTS (
  SELECT t26.c4 AS c5, FALSE AS c6, t26.c3 AS c7, t26.c0 AS c8, t26.c1 AS c9, t26.c3 AS c10
   FROM t0 AS t26
   WHERE t26.c4 <> t26.c1
   ORDER BY c6 ASC, c9 COLLATE RTRIM ASC
   LIMIT 4786744876866090458 
  ) THEN unlikely( 75)
      WHEN subq0.c11 = 
  CASE subq0.c10 WHEN subq0.c11 = subq0.c14 THEN subq0.c9
       WHEN subq0.c14 = 
   CASE subq0.c5 WHEN subq0.c9 = subq0.c6 THEN CAST(subq0.c13 AS BOOLEAN)
        WHEN subq0.c10 <> subq0.c14 THEN subq0.c6
        WHEN EXISTS (
    SELECT t28.c4 AS c5, t27.c1 AS c6, t27.c3 AS c7, 
      CASE WHEN t28.c2 = t28.c0 OR t27.c1 <> t28.c1 THEN t27.c0
           ELSE t27.c4
      END AS c8, t27.c4 AS c9, t27.c4 AS c10, t27.c2 AS c11, TRUE AS c12, t27.c2 AS c13
     FROM t0 AS t27
       LEFT JOIN t0 AS t28       
        ON (t27.c3 = t27.c3)
     WHERE t28.c0 IS NULL
     ORDER BY c12 ASC
     LIMIT 1460796063655785484 
    ) THEN subq0.c9
        WHEN subq0.c13 <> subq0.c5 THEN COALESCE(subq0.c11, subq0.c14, subq0.c10, subq0.c11, subq0.c10, subq0.c6)
        WHEN subq0.c14 <> subq0.c10 THEN subq0.c10
        ELSE subq0.c6
   END THEN subq0.c8
       WHEN subq0.c6 <> subq0.c5 THEN subq0.c10
       WHEN subq0.c6 = subq0.c5 THEN subq0.c14
       WHEN subq0.c6 <> subq0.c8 THEN subq0.c5
       WHEN subq0.c14 = subq0.c6 AND subq0.c14 = subq0.c9 AND true THEN 
   CASE subq0.c14 WHEN EXISTS (
    SELECT t29.c4 AS c5, t29.c4 AS c6
     FROM t0 AS t29
     WHERE false
     ORDER BY c6 DESC
     LIMIT 7355504547202211471 
    ) OR EXISTS (
    SELECT t30.c1 AS c5
     FROM t0 AS t30
     WHERE t30.c0 <> t30.c0 OR false
     ORDER BY c5, c5 DESC, c5, c5 DESC
     LIMIT 6061655347513556637 
    ) THEN subq0.c10
        WHEN subq0.c12 <> subq0.c12 THEN subq0.c10
        WHEN CAST(subq0.c6 AS TEXT) = subq0.c11 THEN subq0.c11
        WHEN false THEN subq0.c11
        WHEN subq0.c10 <> subq0.c10 THEN subq0.c13
        WHEN subq0.c8 <> subq0.c10 THEN subq0.c6
        ELSE subq0.c9
   END
       WHEN subq0.c14 IS NULL OR subq0.c6 = subq0.c9 OR subq0.c12 = subq0.c12 AND EXISTS (
   SELECT t31.c4 AS c5
    FROM t0 AS t31
      INNER JOIN t0 AS t32      
       ON (t32.c1 = t32.c2)
    WHERE t32.c2 <> t32.c2
    ORDER BY c5 ASC, c5, c5 ASC, c5 ASC
   ) THEN subq0.c11
       WHEN subq0.c6 = subq0.c8 AND EXISTS (
   SELECT t33.c1 AS c5, t34.c0 AS c6, t33.c1 AS c7, COALESCE(t36.c3, t36.c3, t36.c0, t33.c3) AS c8, t36.c2 AS c9, t34.c0 AS c10, t35.c3 AS c11
    FROM t0 AS t33
       INNER JOIN t0 AS t34       
        ON (false)
      INNER JOIN (
      t0 AS t35
       INNER JOIN t0 AS t36       
        ON (t35.c1 = t36.c0)      )
       ON (t34.c4 <> t36.c1)
    WHERE true
    ORDER BY c8 DESC, c6, c10
    LIMIT 4068708195997496856 OFFSET 4560019836306645903
   ) THEN subq0.c10
       WHEN 
   CASE subq0.c6 WHEN subq0.c6 <> subq0.c13 THEN IFNULL(COALESCE(subq0.c9, subq0.c10, subq0.c12, subq0.c5), subq0.c14)
        WHEN false THEN subq0.c5
        WHEN subq0.c12 IS NULL THEN subq0.c13
        WHEN false THEN subq0.c11
        WHEN EXISTS (
    SELECT t37.c0 AS c5, t37.c4 AS c6, t37.c0 AS c7, t37.c0 AS c8, t37.c0 AS c9, t37.c0 AS c10, t37.c1 AS c11, t37.c4 AS c12, 
      CASE t37.c3 WHEN true THEN t37.c3
           WHEN EXISTS (
       SELECT t38.c3 AS c5, t38.c3 AS c6, t38.c1 AS c7, t38.c0 AS c8, t38.c3 AS c9, t38.c0 AS c10, t38.c3 AS c11, t38.c3 AS c12, t38.c4 AS c13, t38.c3 AS c14, t38.c3 AS c15, t38.c1 AS c16, t38.c1 AS c17, t38.c0 AS c18
        FROM t0 AS t38
        WHERE t38.c4 IS NOT NULL
        ORDER BY c17 ASC
        LIMIT 4850733848099948158 OFFSET 6685847891122014773
       ) THEN t37.c3
           WHEN t37.c3 <> t37.c3 THEN t37.c3
           WHEN true THEN t37.c3
           WHEN t37.c0 <> t37.c2 THEN t37.c3
           WHEN false THEN t37.c3
           ELSE t37.c3
      END AS c19, t37.c3 AS c20, t37.c2 AS c21, t37.c0 AS c22, t37.c0 AS c23, t37.c0 AS c24, t37.c1 AS c25, t37.c1 AS c26, t37.c2 AS c27, t37.c0 AS c28, t37.c3 AS c29, t37.c2 AS c30, t37.c4 AS c31
     FROM t0 AS t37
     WHERE t37.c3 = t37.c3
     ORDER BY c19 ASC
    ) THEN subq0.c6
        WHEN EXISTS (
    SELECT t39.c4 AS c5, t39.c1 AS c6, t39.c3 AS c7, t39.c2 AS c8, t39.c4 AS c9, t39.c2 AS c10, t39.c3 AS c11, t39.c0 AS c12, t39.c2 AS c13, t39.c1 AS c14, t39.c0 AS c15
     FROM t0 AS t39
     WHERE false AND t39.c1 = t39.c1
     ORDER BY c9, c8 COLLATE BINARY DESC
     LIMIT 1327024251741643165 OFFSET 537071067669374494
    ) THEN subq0.c14
        WHEN subq0.c5 <> subq0.c5 THEN subq0.c10
        WHEN false THEN subq0.c13
        WHEN subq0.c13 <> subq0.c5 THEN subq0.c13
        WHEN subq0.c9 <> subq0.c11 AND subq0.c12 <> subq0.c12 THEN subq0.c6
        WHEN subq0.c14 = subq0.c10 THEN subq0.c5
        WHEN subq0.c13 = subq0.c8 OR CAST(subq0.c10 AS TEXT) <> subq0.c13 AND subq0.c12 IS NOT NULL THEN subq0.c9
        ELSE subq0.c9
   END IS NOT NULL THEN subq0.c10
       WHEN subq0.c6 = subq0.c9 OR subq0.c13 <> IFNULL(subq0.c5, subq0.c5) AND subq0.c13 IS NULL THEN subq0.c9
       WHEN EXISTS (
   SELECT t40.c1 AS c5, t40.c0 AS c6, t40.c1 AS c7
    FROM t0 AS t40
    WHERE t40.c2 IS NOT NULL
    ORDER BY c5, c6 COLLATE NOCASE ASC
    LIMIT 7080739079628335836 OFFSET 1964664908878079660
   ) OR false THEN subq0.c14
       ELSE subq0.c13
  END THEN subq0.c13
      WHEN 
  CASE subq0.c5 WHEN subq0.c14 <> subq0.c13 THEN subq0.c13
       WHEN true AND abs( FALSE) IS NOT NULL THEN subq0.c10
       ELSE subq0.c8
  END = subq0.c11 THEN round(78,'text88')
      ELSE unlikely( 'text9')
 END IS NOT NULL
ORDER BY c13
LIMIT 662518205385506563 OFFSET 2144937644793872636;
SELECT subq0.c8 AS c13, subq0.c7 AS c14, subq0.c5 AS c15, subq0.c7 AS c16, subq0.c9 AS c17, subq0.c9 AS c18, subq0.c12 AS c19, subq0.c12 AS c20, 
 CASE WHEN EXISTS (
  SELECT t2.c2 AS c5, t2.c3 AS c6, t2.c0 AS c7
   FROM t0 AS t2
   WHERE t2.c1 = t2.c1
   ORDER BY c7 ASC, c5
   LIMIT 7217416404710555333 OFFSET 4859036747224613728
  ) THEN subq0.c5
      ELSE subq0.c8
 END AS c8, subq0.c6 AS c9, subq0.c5 AS c10, FALSE AS c11, subq0.c11 AS c12, subq0.c10 AS c13, subq0.c5 AS c14, subq0.c12 AS c15, COALESCE(CAST(subq0.c7 AS BOOLEAN), subq0.c8) AS c16, subq0.c8 AS c17, subq0.c8 AS c18, subq0.c7 AS c19, subq0.c11 AS c20, 
 CASE WHEN subq0.c10 <> subq0.c7 THEN subq0.c9
      ELSE subq0.c9
 END AS c21, subq0.c12 AS c22, TRUE AS c23, subq0.c10 AS c24
FROM (SELECT t1.c1 AS c5, t1.c4 AS c6, t1.c4 AS c7, t1.c0 AS c8, t1.c3 AS c9, t1.c2 AS c10, 
    CASE WHEN NULL = NULL THEN t1.c2
         ELSE t1.c4
    END AS c11, t1.c4 AS c12
   FROM t0 AS t1
   WHERE t1.c1 IS NOT NULL OR t1.c0 IS NULL AND t1.c0 IS NOT NULL
   ORDER BY c11, c8 COLLATE NOCASE
   LIMIT 5224368555802253851 ) as subq0
WHERE 
 CASE WHEN subq0.c12 <> subq0.c8 THEN subq0.c7
      ELSE NULLIF(TRUE, TRUE)
 END = CAST(subq0.c12 AS INTEGER)
ORDER BY c15 ASC, c13, c21 ASC;
SELECT subq0.c5 AS c29
FROM (SELECT 
     CASE t1.c0 WHEN t1.c3 <> COALESCE(t1.c1, t1.c3, t1.c3, t1.c3, t1.c3, t1.c3) THEN t1.c0
          WHEN t1.c0 <> t1.c2 THEN t1.c1
          WHEN true THEN t1.c2
          ELSE t1.c4
     END AS c5
    FROM t0 AS t1
    WHERE t1.c4 <> t1.c4
    ORDER BY c5) as subq0
  INNER JOIN (SELECT t2.c3 AS c5, t2.c4 AS c6
    FROM t0 AS t2
    WHERE t2.c0 = t2.c0 OR t2.c1 = t2.c4 AND EXISTS (
     SELECT t3.c1 AS c5, t3.c2 AS c6, t3.c2 AS c7, t3.c3 AS c8, t3.c2 AS c9, t3.c1 AS c10, t3.c4 AS c11, t3.c3 AS c12, t3.c3 AS c13, FALSE AS c14, t3.c3 AS c15, TRUE AS c16, t3.c4 AS c17, t3.c4 AS c18, t3.c3 AS c19, t3.c1 AS c20, t3.c4 AS c21, t3.c1 AS c22, t3.c1 AS c23, t3.c3 AS c24, t3.c2 AS c25, t3.c0 AS c26, t3.c4 AS c27, t3.c0 AS c28
      FROM t0 AS t3
      WHERE t3.c0 IS NULL OR t3.c3 = t3.c3 AND t3.c4 IS NULL
      ORDER BY c27
      LIMIT 4234636221115574450 OFFSET 7547618349524883648
     )
    ORDER BY c6) as subq1  
   ON (subq1.c5 = subq1.c5)
WHERE TRUE <> subq1.c6
ORDER BY c29, c29, c29, c29 ASC
LIMIT 5423090435604681314 ;
SELECT NULLIF(t8.c3, t8.c3) AS c5, subq1.c7 AS c6, 
 CASE t8.c2 WHEN t3.c1 IS NOT NULL THEN t3.c1
      WHEN t3.c1 <> t3.c1 THEN subq0.c5
      WHEN t3.c0 <> t3.c4 THEN IFNULL(t8.c2, t8.c2)
      WHEN t8.c4 <> subq1.c7 THEN t8.c1
      WHEN t3.c3 IS NOT NULL THEN t3.c2
      WHEN t8.c2 <> subq1.c6 THEN t3.c4
      WHEN subq1.c6 = t3.c2 THEN t3.c0
      WHEN EXISTS (
  SELECT t9.c3 AS c5, t9.c2 AS c6, t9.c2 AS c7, t10.c0 AS c8, COALESCE(IFNULL(t9.c3, t9.c3), t9.c2, t10.c3, t9.c1, t10.c4) AS c9, t10.c2 AS c10, t10.c0 AS c11, t10.c1 AS c12, t9.c4 AS c13, COALESCE(t10.c2, t9.c4) AS c14
   FROM t0 AS t9
     INNER JOIN t0 AS t10     
      ON (t10.c4 = t10.c4)
   WHERE 70 IS NULL
   ORDER BY c10 ASC, c14, c7
   LIMIT 4659375441707670129 OFFSET 316419968636447146
  ) OR t3.c4 = t3.c2 THEN t3.c2
      ELSE t8.c1
 END AS c15, t3.c0 AS c16, t3.c3 AS c17
FROM (SELECT t2.c1 AS c5
      FROM t0 AS t1
        INNER JOIN t0 AS t2        
         ON (t2.c0 = t2.c2)
      WHERE t1.c3 <> t2.c3
      ORDER BY c5 ASC, c5 COLLATE NOCASE ASC, c5, c5) as subq0
    INNER JOIN t0 AS t3    
     ON (subq0.c5 IS NULL)
   LEFT JOIN (SELECT t4.c3 AS c5, t4.c2 AS c6, t4.c1 AS c7
     FROM t0 AS t4
     WHERE t4.c4 <> t4.c0
     ORDER BY c6 COLLATE BINARY ASC, c5 ASC, c6 DESC) as subq1   
    ON (EXISTS (
     SELECT t5.c0 AS c5, t5.c4 AS c6, t6.c1 AS c7, t6.c0 AS c8, t7.c3 AS c9
      FROM t0 AS t5
        INNER JOIN (
        t0 AS t6
         LEFT JOIN t0 AS t7         
          ON (t6.c0 = t7.c0)        )
         ON (t7.c4 <> t5.c1)
      WHERE t7.c1 <> t5.c4
      ORDER BY c7
      LIMIT 7498590076038439195 OFFSET 19946559663980836
     ) AND true)
  INNER JOIN t0 AS t8  
   ON (t8.c4 <> t8.c2)
WHERE t3.c2 = t8.c1
ORDER BY c5 ASC
LIMIT 8155221737521988793 OFFSET 608074637215105462;
SELECT subq0.c6 AS c7, subq0.c9 AS c8, subq0.c6 AS c9, subq0.c9 AS c10
FROM (SELECT t3.c2 AS c5, t1.c0 AS c6, t2.c3 AS c7, t2.c3 AS c8, t1.c1 AS c9, t1.c2 AS c10, t3.c4 AS c11, t3.c0 AS c12, TRUE AS c13
   FROM t0 AS t1
     LEFT JOIN (
     t0 AS t2
      LEFT OUTER JOIN t0 AS t3      
       ON (true)     )
      ON (t1.c1 <> t2.c0 OR t3.c3 = NULL AND t1.c2 <> t3.c1)
   WHERE EXISTS (
    SELECT t4.c3 AS c5, t4.c4 AS c6
     FROM t0 AS t4
     WHERE t4.c2 = t4.c0 OR t4.c3 <> t4.c3 OR true
     ORDER BY c6 DESC, c6, c5 ASC, c6 ASC
    )
   ORDER BY c6 COLLATE NOCASE DESC, c13, c9 COLLATE BINARY ASC
   LIMIT 2565747108790836579 ) as subq0
WHERE EXISTS (
 SELECT subq1.c12 AS c20, subq1.c6 AS c21, subq1.c11 AS c22, TRUE AS c23, subq1.c15 AS c24, CAST(subq1.c7 AS TEXT) AS c25, subq1.c17 AS c26
  FROM (SELECT t5.c3 AS c5, t6.c4 AS c6, t5.c3 AS c7, t6.c3 AS c8, t6.c0 AS c9, t5.c2 AS c10, t6.c4 AS c11, t6.c1 AS c12, t5.c0 AS c13, t5.c0 AS c14, t5.c4 AS c15, t6.c4 AS c16, t5.c2 AS c17, t5.c0 AS c18, t6.c0 AS c19
     FROM t0 AS t5
       LEFT JOIN t0 AS t6       
        ON (t5.c4 IS NULL)
     WHERE t5.c0 = TRUE
     ORDER BY c10 COLLATE NOCASE ASC, c19) as subq1
  WHERE subq1.c18 IS NOT NULL
  ORDER BY c26
  LIMIT 2024445897906657772 OFFSET 1787344918097992965
 )
ORDER BY c8
LIMIT 7032249793131346029 OFFSET 3431474410163900229;
SELECT t3.c2 AS c10, t3.c4 AS c11, t3.c3 AS c12, subq0.c7 AS c13, subq0.c5 AS c14, FALSE AS c15, t3.c0 AS c16, t3.c0 AS c17, t3.c4 AS c18, t3.c3 AS c19, subq0.c7 AS c20, t3.c0 AS c21, COALESCE(subq0.c6, CAST(subq0.c6 AS INTEGER), t3.c3, t3.c1, typeof( NULL), t3.c3) AS c22
FROM (SELECT t2.c4 AS c5, t1.c0 AS c6, TRUE AS c7
    FROM t0 AS t1
      LEFT JOIN t0 AS t2      
       ON (t1.c0 = t2.c4)
    WHERE t1.c1 <> t1.c1 AND t1.c2 <> TRUE
    ORDER BY c6 COLLATE RTRIM ASC, c5 COLLATE BINARY, c6
    LIMIT 6810512908755512932 ) as subq0
  INNER JOIN t0 AS t3  
   ON (
    CASE t3.c2 WHEN true THEN t3.c4
         WHEN subq0.c6 <> t3.c0 THEN subq0.c5
         WHEN t3.c0 IS NOT NULL THEN t3.c4
         WHEN t3.c2 <> t3.c1 THEN subq0.c7
         WHEN 
     CASE subq0.c7 WHEN t3.c4 <> t3.c4 OR t3.c3 <> t3.c3 THEN TRUE
          WHEN subq0.c6 IS NOT NULL THEN t3.c3
          WHEN t3.c1 <> t3.c0 THEN t3.c4
          WHEN subq0.c6 <> t3.c4 THEN 54
          WHEN false THEN t3.c1
          WHEN subq0.c7 = t3.c4 THEN subq0.c5
          WHEN t3.c3 <> t3.c3 THEN subq0.c5
          WHEN t3.c4 = t3.c1 THEN subq0.c6
          WHEN t3.c2 <> t3.c4 AND t3.c1 = t3.c1 OR t3.c1 = t3.c4 THEN subq0.c7
          WHEN subq0.c5 <> t3.c0 THEN subq0.c6
          WHEN t3.c4 = t3.c1 OR false AND t3.c4 <> subq0.c5 AND EXISTS (
      SELECT t4.c1 AS c5, t4.c4 AS c6, t4.c1 AS c7, t4.c3 AS c8, t4.c1 AS c9
       FROM t0 AS t4
       WHERE t4.c0 IS NULL AND t4.c2 IS NOT NULL
       ORDER BY c6 ASC, c6
       LIMIT 5729085246249468984 OFFSET 6291955139109440654
      ) AND subq0.c5 = 
      CASE subq0.c7 WHEN t3.c3 = t3.c3 AND subq0.c5 <> subq0.c6 THEN TRUE
           WHEN subq0.c7 = subq0.c6 THEN TRUE
           WHEN t3.c1 = t3.c1 THEN t3.c4
           WHEN t3.c0 <> t3.c1 THEN t3.c4
           WHEN TRUE = t3.c0 THEN TRUE
           WHEN t3.c4 <> subq0.c7 THEN t3.c4
           WHEN t3.c2 IS NULL THEN t3.c1
           WHEN t3.c0 = subq0.c5 THEN subq0.c5
           WHEN t3.c1 <> t3.c2 THEN subq0.c5
           WHEN t3.c1 = t3.c4 THEN t3.c2
           ELSE t3.c0
      END THEN t3.c4
          WHEN t3.c1 <> t3.c2 THEN t3.c2
          ELSE subq0.c7
     END IS NULL THEN t3.c2
         WHEN subq0.c6 <> subq0.c6 THEN t3.c4
         WHEN subq0.c5 = subq0.c5 THEN t3.c2
         ELSE 
     CASE WHEN TRUE = t3.c4 THEN subq0.c5
          ELSE t3.c1
     END
    END <> t3.c4)
WHERE subq0.c6 IS NOT NULL
ORDER BY c22, c20 ASC;
SELECT subq0.c12 AS c9, subq0.c6 AS c10, FALSE AS c11, subq0.c7 AS c12, subq0.c9 AS c13, subq0.c10 AS c14, subq0.c12 AS c15, subq0.c9 AS c16, subq0.c9 AS c17, subq0.c9 AS c18, subq0.c10 AS c19, subq0.c7 AS c20, subq0.c10 AS c21
FROM (SELECT 
    CASE WHEN t1.c2 <> t1.c1 AND false AND EXISTS (
     SELECT t2.c3 AS c5, t2.c1 AS c6, t2.c0 AS c7, t2.c1 AS c8
      FROM t0 AS t2
      WHERE t2.c1 IS NULL AND t2.c4 = t2.c4
      ORDER BY c5 ASC, c5 ASC, c6
     ) OR t1.c4 <> t1.c2 OR 
     CASE WHEN true THEN t1.c3
          ELSE t1.c3
     END <> t1.c3 THEN t1.c1
         ELSE t1.c4
    END AS c9, t1.c1 AS c10, t1.c3 AS c11, t1.c1 AS c12, 
    CASE t1.c0 WHEN EXISTS (
     SELECT t6.c0 AS c9, t3.c2 AS c10, t7.c1 AS c11, t6.c4 AS c12, t6.c3 AS c13, t6.c1 AS c14, t3.c1 AS c15, t7.c4 AS c16, t7.c1 AS c17, t4.c2 AS c18, t4.c4 AS c19
      FROM t0 AS t3
         INNER JOIN t0 AS t4         
          ON (EXISTS (
           SELECT t5.c0 AS c5, t5.c0 AS c6, t5.c1 AS c7, t5.c2 AS c8, t5.c3 AS c9, t5.c0 AS c10, t5.c2 AS c11
            FROM t0 AS t5
            WHERE t5.c2 <> t5.c1
            ORDER BY c9 DESC, c11, c5 ASC
           ))
        INNER JOIN (
        t0 AS t6
         LEFT JOIN t0 AS t7         
          ON (t7.c0 IS NOT NULL)        )
         ON (EXISTS (
          SELECT t8.c2 AS c5, t8.c3 AS c6, t8.c3 AS c7, t8.c0 AS c8
           FROM t0 AS t8
           WHERE t8.c0 IS NULL
           ORDER BY c8 ASC
          ))
      WHERE EXISTS (
       SELECT t9.c2 AS c5, t9.c3 AS c6
        FROM t0 AS t9
        WHERE t9.c0 = t9.c4
        ORDER BY c6 COLLATE BINARY DESC, c6, c5, c6
        LIMIT 6585687446264318578 OFFSET 5682247730401661378
       )
      ORDER BY c12 COLLATE BINARY, c11
     ) THEN t1.c0
         WHEN t1.c1 = t1.c1 THEN t1.c1
         WHEN t1.c0 IS NULL THEN t1.c2
         WHEN EXISTS (
     SELECT t10.c4 AS c5
      FROM t0 AS t10
      WHERE t10.c1 = t10.c0
      ORDER BY c5, c5 ASC, c5, c5 DESC
      LIMIT 2269130408353448015 
     ) THEN t1.c4
         WHEN t1.c2 IS NULL THEN t1.c1
         WHEN t1.c4 = t1.c0 THEN t1.c2
         WHEN t1.c1 <> t1.c2 THEN t1.c2
         ELSE t1.c4
    END AS c6, t1.c2 AS c7, COALESCE(NULL, t1.c3, t1.c3, t1.c1, t1.c3) AS c8
   FROM t0 AS t1
   WHERE t1.c1 = CAST(TRUE AS BOOLEAN)
   ORDER BY c7 COLLATE BINARY, c8 DESC
   LIMIT 308815561061967210 OFFSET 6363734872500455659) as subq0
WHERE subq0.c11 = NULL
ORDER BY c11 ASC
LIMIT 2953373473515483012 ;
SELECT t1.c2 AS c5, 
 CASE t1.c2 WHEN EXISTS (
  SELECT t2.c3 AS c5, t5.c4 AS c6, t3.c2 AS c7, t5.c1 AS c8
   FROM t0 AS t2
       LEFT JOIN t0 AS t3       
        ON (t2.c1 = t3.c0)
      LEFT JOIN t0 AS t4      
       ON (t2.c4 <> t2.c4)
     INNER JOIN (
     t0 AS t5
       INNER JOIN (
       t0 AS t6
        INNER JOIN t0 AS t7        
         ON (t7.c4 = t7.c1)       )
        ON (false)
      LEFT OUTER JOIN t0 AS t8      
       ON (t6.c1 IS NOT NULL)     )
      ON (t3.c0 IS NULL)
   WHERE t8.c2 <> t2.c4
   ORDER BY c7, c8
   LIMIT 3098237352128010150 OFFSET 2875536321934111897
  ) THEN t1.c4
      WHEN TRUE <> t1.c2 THEN t1.c4
      WHEN t1.c3 = t1.c3 THEN t1.c1
      WHEN true THEN 
  CASE t1.c1 WHEN false THEN t1.c0
       WHEN TRUE = t1.c1 THEN t1.c4
       WHEN 
   CASE t1.c4 WHEN t1.c2 IS NOT NULL THEN t1.c0
        WHEN t1.c4 IS NOT NULL AND COALESCE(t1.c4, TRUE) = t1.c2 THEN 
    CASE t1.c1 WHEN t1.c0 IS NULL AND t1.c3 IS NOT NULL OR t1.c2 <> COALESCE(CAST(t1.c2 AS TEXT), t1.c3, t1.c0, t1.c3) AND t1.c0 IS NULL OR t1.c1 = t1.c0 THEN t1.c4
         WHEN t1.c2 IS NOT NULL THEN t1.c2
         WHEN t1.c3 <> t1.c3 THEN t1.c1
         WHEN t1.c1 IS NOT NULL THEN t1.c1
         WHEN t1.c3 IS NOT NULL AND t1.c4 <> t1.c4 THEN t1.c1
         WHEN t1.c1 <> t1.c2 AND EXISTS (
     SELECT t9.c2 AS c5, t9.c4 AS c6
      FROM t0 AS t9
      WHERE EXISTS (
       SELECT t10.c0 AS c5, t10.c2 AS c6
        FROM t0 AS t10
        WHERE false
        ORDER BY c6, c6, c5, c6 ASC
        LIMIT 2058884234901993935 OFFSET 9144606110943297515
       ) AND t9.c4 = t9.c0 AND t9.c1 = t9.c2 OR t9.c3 <> t9.c3 AND true AND t9.c4 = t9.c0
      ORDER BY c5
     ) THEN t1.c0
         WHEN t1.c1 IS NOT NULL THEN t1.c2
         WHEN t1.c3 <> t1.c3 THEN t1.c0
         WHEN t1.c2 IS NULL THEN t1.c1
         WHEN t1.c0 <> t1.c2 THEN t1.c4
         ELSE t1.c1
    END
        WHEN t1.c1 <> t1.c0 OR t1.c1 IS NULL THEN t1.c2
        WHEN t1.c2 = t1.c2 THEN TRUE
        WHEN t1.c0 = t1.c4 THEN t1.c2
        WHEN t1.c2 IS NULL THEN t1.c4
        WHEN t1.c4 = t1.c0 THEN t1.c1
        WHEN EXISTS (
    SELECT t11.c3 AS c5, t11.c3 AS c6, t11.c4 AS c7, t11.c0 AS c8, t11.c0 AS c9, t11.c2 AS c10, NULL AS c11, t11.c1 AS c12, t11.c3 AS c13, t11.c3 AS c14
     FROM t0 AS t11
     WHERE t11.c1 <> t11.c4
     ORDER BY c9 ASC
     LIMIT 8722626360204399906 OFFSET 7324884044459465083
    ) THEN t1.c0
        ELSE t1.c4
   END <> t1.c1 THEN t1.c2
       WHEN t1.c4 <> FALSE THEN t1.c4
       WHEN t1.c3 <> t1.c3 AND t1.c0 = t1.c0 THEN t1.c2
       WHEN t1.c1 <> 
   CASE t1.c0 WHEN t1.c4 <> t1.c2 THEN t1.c4
        WHEN t1.c1 = t1.c0 THEN t1.c4
        WHEN t1.c2 <> t1.c4 THEN t1.c1
        WHEN 
    CASE t1.c0 WHEN t1.c1 IS NOT NULL THEN t1.c3
         WHEN FALSE = t1.c0 THEN t1.c0
         WHEN t1.c0 = t1.c2 AND t1.c3 <> t1.c3 THEN t1.c1
         WHEN t1.c1 <> t1.c1 THEN t1.c4
         WHEN t1.c1 = t1.c2 THEN t1.c3
         ELSE t1.c0
    END IS NULL THEN t1.c4
        WHEN t1.c4 IS NULL THEN t1.c0
        WHEN t1.c1 IS NOT NULL AND t1.c2 = t1.c0 OR t1.c2 = t1.c0 AND t1.c4 <> t1.c4 AND t1.c4 <> t1.c2 OR 39 IS NULL AND t1.c1 IS NOT NULL OR true THEN t1.c0
        WHEN t1.c2 <> t1.c0 THEN t1.c0
        WHEN t1.c4 IS NOT NULL AND t1.c3 <> t1.c3 THEN FALSE
        ELSE t1.c0
   END THEN TRUE
       WHEN t1.c3 = 
   CASE t1.c3 WHEN t1.c2 <> NULLIF(t1.c4, t1.c1) THEN t1.c3
        WHEN t1.c0 IS NULL OR t1.c3 <> t1.c3 OR false THEN t1.c3
        WHEN EXISTS (
    SELECT t13.c1 AS c5, t12.c2 AS c6, t13.c1 AS c7
     FROM t0 AS t12
       LEFT OUTER JOIN t0 AS t13       
        ON (t12.c1 = t12.c0)
     WHERE t12.c3 <> NULL
     ORDER BY c5
     LIMIT 1057756923495828300 OFFSET 3622282853468745579
    ) THEN t1.c3
        WHEN FALSE <> TRUE THEN NULL
        WHEN t1.c0 = t1.c1 THEN t1.c3
        WHEN t1.c4 <> t1.c0 THEN t1.c3
        WHEN t1.c3 = NULL OR t1.c4 = t1.c1 THEN t1.c3
        WHEN t1.c2 = CAST(likely( NULL) AS TEXT) THEN t1.c3
        ELSE t1.c3
   END AND EXISTS (
   SELECT t14.c0 AS c5, FALSE AS c6, t14.c0 AS c7
    FROM t0 AS t14
    WHERE t14.c2 IS NULL
    ORDER BY c7 ASC, c6 COLLATE RTRIM ASC
    LIMIT 6529692308578562449 OFFSET 1510608847277617248
   ) OR 
   CASE t1.c0 WHEN t1.c4 <> t1.c2 THEN t1.c1
        WHEN t1.c0 = t1.c4 THEN t1.c4
        WHEN t1.c3 IS NULL THEN t1.c4
        WHEN 
    CASE t1.c1 WHEN t1.c1 = t1.c1 THEN t1.c0
         WHEN t1.c0 = t1.c1 THEN t1.c1
         ELSE t1.c1
    END = t1.c2 THEN t1.c3
        WHEN t1.c1 = t1.c2 THEN t1.c4
        WHEN t1.c2 = t1.c1 THEN t1.c0
        WHEN t1.c2 <> t1.c2 THEN t1.c3
        WHEN t1.c0 <> IFNULL(t1.c2, t1.c0) THEN t1.c1
        WHEN t1.c2 <> t1.c1 AND true AND t1.c3 = t1.c3 AND TRUE <> t1.c1 AND t1.c4 <> t1.c1 OR false AND CAST(
     CASE WHEN t1.c1 <> t1.c2 THEN t1.c4
          ELSE t1.c2
     END AS TEXT) <> t1.c2 AND t1.c3 = t1.c3 THEN zeroblob( 9)
        WHEN t1.c3 <> NULL THEN NULL
        WHEN t1.c2 = t1.c2 THEN 21
        WHEN t1.c1 <> t1.c2 THEN t1.c3
        ELSE 
    CASE WHEN t1.c1 <> t1.c4 THEN t1.c3
         ELSE 
     CASE WHEN t1.c0 IS NOT NULL THEN t1.c4
          ELSE t1.c3
     END
    END
   END IS NOT NULL OR t1.c2 IS NULL THEN 
   CASE t1.c1 WHEN t1.c2 = t1.c1 THEN FALSE
        WHEN t1.c2 <> CAST(t1.c4 AS BOOLEAN) THEN t1.c1
        WHEN t1.c0 = TRUE THEN 
    CASE t1.c4 WHEN t1.c1 <> t1.c2 THEN t1.c0
         WHEN EXISTS (
     SELECT t15.c4 AS c5, t15.c4 AS c6, t15.c0 AS c7, t15.c4 AS c8
      FROM t0 AS t15
      WHERE t15.c2 = t15.c1 AND t15.c4 <> t15.c1 AND TRUE = t15.c0 AND t15.c1 = t15.c0
      ORDER BY c7 DESC
      LIMIT 7698555506543102772 OFFSET 2840869422523569796
     ) THEN t1.c2
         WHEN 
     CASE WHEN t1.c4 = t1.c2 THEN t1.c3
          ELSE t1.c3
     END = t1.c3 THEN t1.c2
         WHEN EXISTS (
     SELECT t16.c2 AS c5, t16.c2 AS c6, t16.c3 AS c7
      FROM t0 AS t16
      WHERE false OR t16.c1 <> t16.c2 OR TRUE = t16.c2
      ORDER BY c6 COLLATE NOCASE
     ) THEN t1.c2
         WHEN t1.c1 = TRUE THEN t1.c4
         WHEN true THEN t1.c4
         WHEN t1.c3 = NULL THEN t1.c2
         WHEN true THEN 
     CASE WHEN t1.c3 <> t1.c3 THEN t1.c1
          ELSE t1.c2
     END
         WHEN t1.c1 <> t1.c0 THEN 
     CASE t1.c4 WHEN false THEN t1.c1
          WHEN t1.c4 = t1.c0 THEN t1.c4
          ELSE t1.c0
     END
         WHEN t1.c3 <> t1.c3 THEN t1.c2
         WHEN t1.c0 = t1.c4 THEN 
     CASE WHEN EXISTS (
      SELECT t17.c4 AS c5
       FROM t0 AS t17
       WHERE t17.c3 = t17.c3
       ORDER BY c5 ASC
       LIMIT 6769640447206156462 
      ) THEN t1.c0
          ELSE t1.c2
     END
         WHEN FALSE <> t1.c1 THEN t1.c0
         ELSE t1.c1
    END
        WHEN t1.c3 <> NULL THEN 
    CASE WHEN t1.c2 = t1.c1 OR EXISTS (
     SELECT FALSE AS c5, t18.c4 AS c6, t18.c3 AS c7, t18.c1 AS c8
      FROM t0 AS t18
        LEFT JOIN t0 AS t19        
         ON (t18.c1 = t19.c0)
      WHERE t19.c3 <> t18.c3 AND t18.c4 = t18.c2
      ORDER BY c5 DESC, c6 ASC, c6 COLLATE RTRIM DESC
      LIMIT 978081200182657036 
     ) THEN COALESCE(t1.c3, t1.c0, t1.c3, t1.c3, t1.c3, t1.c4)
         ELSE 
     CASE WHEN t1.c3 <> t1.c3 THEN FALSE
          ELSE t1.c1
     END
    END
        WHEN t1.c2 IS NULL AND COALESCE(t1.c2, substr(NULL,44,'text14'), t1.c2, 
     CASE WHEN t1.c0 = t1.c0 THEN TRUE
          ELSE t1.c1
     END) <> t1.c1 AND t1.c0 = t1.c0 OR t1.c0 <> t1.c2 OR t1.c4 = t1.c2 THEN t1.c2
        WHEN true THEN t1.c0
        WHEN t1.c0 = CAST(t1.c4 AS INTEGER) THEN t1.c4
        WHEN t1.c0 <> t1.c1 AND false THEN 
    CASE t1.c2 WHEN t1.c2 <> t1.c4 THEN t1.c0
         WHEN 52 IS NULL THEN t1.c4
         WHEN false THEN t1.c2
         WHEN false OR t1.c3 <> t1.c3 AND EXISTS (
     SELECT t20.c2 AS c5, t20.c4 AS c6, t20.c4 AS c7, t20.c0 AS c8, t20.c0 AS c9, t20.c2 AS c10, t20.c1 AS c11
      FROM t0 AS t20
      WHERE t20.c3 <> t20.c3 OR NULL <> t20.c3 AND false OR t20.c2 IS NOT NULL AND t20.c0 <> t20.c4 OR false AND t20.c3 <> t20.c3 OR EXISTS (
       SELECT t21.c3 AS c5, t21.c1 AS c6, t21.c2 AS c7, t21.c4 AS c8, t21.c3 AS c9, t21.c4 AS c10, t21.c4 AS c11, t21.c4 AS c12, t21.c3 AS c13, t21.c3 AS c14, t21.c1 AS c15, t21.c4 AS c16, t21.c2 AS c17
        FROM t0 AS t21
        WHERE t21.c2 IS NULL AND t21.c0 = t21.c0
        ORDER BY c14 ASC, c10 ASC
        LIMIT 4880966404124830797 
       )
      ORDER BY c5
     ) THEN t1.c4
         WHEN t1.c4 <> t1.c1 THEN t1.c0
         WHEN t1.c3 = t1.c3 THEN t1.c2
         WHEN t1.c4 <> t1.c2 THEN t1.c2
         WHEN t1.c3 = t1.c3 THEN t1.c1
         WHEN t1.c2 IS NOT NULL OR t1.c3 <> t1.c3 THEN t1.c1
         ELSE t1.c0
    END
        ELSE t1.c4
   END
       WHEN t1.c1 <> t1.c1 THEN t1.c0
       WHEN t1.c1 IS NULL THEN NULLIF(t1.c4, t1.c1)
       WHEN t1.c0 = t1.c2 THEN t1.c1
       WHEN t1.c0 <> t1.c1 THEN 
   CASE WHEN t1.c1 IS NOT NULL THEN 
    CASE t1.c4 WHEN true THEN t1.c2
         WHEN t1.c3 <> t1.c3 AND t1.c2 = t1.c4 AND t1.c4 IS NULL THEN NULLIF(t1.c1, t1.c0)
         WHEN t1.c1 <> t1.c0 THEN t1.c0
         WHEN false THEN t1.c2
         WHEN t1.c3 <> t1.c3 THEN t1.c1
         WHEN t1.c4 <> t1.c0 THEN t1.c0
         WHEN t1.c1 <> t1.c4 THEN t1.c0
         WHEN t1.c4 = t1.c0 THEN 
     CASE WHEN t1.c4 <> t1.c4 THEN TRUE
          ELSE t1.c4
     END
         WHEN EXISTS (
     SELECT t22.c2 AS c5, t22.c1 AS c6, t22.c2 AS c7, t22.c3 AS c8, t22.c3 AS c9, t22.c1 AS c10, t22.c2 AS c11, t22.c1 AS c12, t22.c1 AS c13, t22.c1 AS c14, t22.c0 AS c15, t22.c4 AS c16, t22.c3 AS c17, t22.c1 AS c18, NULL AS c19, t22.c0 AS c20, t22.c0 AS c21, t22.c0 AS c22, t22.c4 AS c23, t22.c1 AS c24
      FROM t0 AS t22
      WHERE t22.c4 = t22.c1
      ORDER BY c15 ASC, c14
      LIMIT 860059566957470985 
     ) THEN t1.c0
         ELSE t1.c1
    END
        ELSE TRUE
   END
       WHEN t1.c3 = t1.c3 THEN 
   CASE WHEN 
    CASE WHEN t1.c3 = t1.c3 THEN t1.c2
         ELSE t1.c2
    END = t1.c1 THEN t1.c0
        ELSE t1.c2
   END
       ELSE t1.c4
  END
      WHEN t1.c0 IS NULL OR CAST(t1.c4 AS INTEGER) IS NULL THEN t1.c0
      WHEN t1.c2 <> t1.c4 AND true THEN t1.c1
      WHEN t1.c3 <> t1.c3 THEN t1.c0
      WHEN t1.c0 = t1.c4 THEN t1.c2
      WHEN t1.c2 = t1.c1 THEN t1.c1
      WHEN t1.c0 <> t1.c0 THEN t1.c4
      WHEN t1.c4 = CAST(t1.c4 AS TEXT) THEN t1.c4
      ELSE t1.c1
 END AS c25, t1.c3 AS c26
FROM t0 AS t1
WHERE TRUE <> t1.c0
ORDER BY c26, c26 ASC, c25 DESC
LIMIT 1484143573448240165 ;
SELECT subq1.c8 AS c15, subq0.c5 AS c16, NULL AS c17
FROM (SELECT t1.c2 AS c5, t1.c1 AS c6, t1.c3 AS c7, t1.c1 AS c8
    FROM t0 AS t1
    WHERE EXISTS (
     SELECT t2.c1 AS c5, t2.c3 AS c6, t2.c4 AS c7, t2.c4 AS c8
      FROM t0 AS t2
      WHERE t2.c0 IS NOT NULL
      ORDER BY c7 COLLATE BINARY ASC, c6 DESC
      LIMIT 7771896122323638871 OFFSET 5918932767000157552
     )
    ORDER BY c5) as subq0
  LEFT JOIN (SELECT t3.c2 AS c5, t3.c4 AS c6, t3.c3 AS c7, t3.c0 AS c8
    FROM t0 AS t3
    WHERE 
     CASE WHEN false AND t3.c3 = t3.c3 THEN t3.c0
          ELSE t3.c1
     END <> IFNULL(t3.c0, t3.c4) OR EXISTS (
     SELECT t4.c3 AS c5, t4.c3 AS c6, t4.c1 AS c7, t4.c3 AS c8, t4.c0 AS c9, t4.c1 AS c10, t4.c1 AS c11, t4.c1 AS c12, t4.c0 AS c13, t4.c4 AS c14
      FROM t0 AS t4
      WHERE false
      ORDER BY c13, c9 DESC, c10 DESC
      LIMIT 1539842603316406757 OFFSET 3384406302141845272
     )
    ORDER BY c5, c5
    LIMIT 2411974479434848843 ) as subq1  
   ON (subq0.c5 = subq1.c5)
WHERE subq0.c6 <> subq1.c5 AND COALESCE(subq1.c6, subq0.c6) = subq0.c8 OR subq1.c6 <> 
 CASE subq0.c6 WHEN subq0.c6 = subq1.c6 THEN subq1.c5
      WHEN subq1.c5 = subq1.c8 THEN subq1.c8
      WHEN subq0.c8 <> subq0.c8 THEN subq0.c6
      WHEN IFNULL(subq1.c5, subq0.c5) <> subq1.c8 THEN subq1.c6
      WHEN subq0.c5 = subq0.c8 THEN subq0.c6
      ELSE subq0.c8
 END AND 
 CASE WHEN subq1.c6 <> CAST(subq1.c6 AS TEXT) THEN subq1.c6
      ELSE subq0.c8
 END = TRUE
ORDER BY c17 ASC, c17
LIMIT 6742955814657150645 OFFSET 7868988202289882651;
SELECT t1.c3 AS c5
FROM t0 AS t1
WHERE CAST(t1.c1 AS TEXT) = t1.c2
ORDER BY c5 DESC
LIMIT 9116335001298174215 ;
SELECT subq0.c8 AS c16, subq0.c7 AS c17, subq0.c6 AS c18, subq0.c5 AS c19, subq0.c9 AS c20, subq0.c6 AS c21, subq0.c8 AS c22, subq0.c15 AS c23, subq0.c14 AS c24, subq0.c6 AS c25, 
 CASE subq0.c6 WHEN subq0.c9 = COALESCE(subq0.c9, subq0.c8, subq0.c15, subq0.c7, subq0.c6) THEN subq0.c6
      WHEN subq0.c8 <> subq0.c14 OR false AND subq0.c8 = subq0.c7 OR subq0.c7 = subq0.c5 OR EXISTS (
  SELECT t4.c1 AS c5, t4.c1 AS c6, t4.c3 AS c7, t4.c4 AS c8, t4.c1 AS c9, t4.c4 AS c10, t4.c1 AS c11
   FROM t0 AS t4
   WHERE EXISTS (
    SELECT DISTINCT t5.c3 AS c5, t5.c3 AS c6, t5.c1 AS c7, t5.c1 AS c8, 
      CASE WHEN t5.c3 = t5.c3 THEN t5.c3
           ELSE t5.c3
      END AS c9, t5.c4 AS c10
     FROM t0 AS t5
     WHERE t5.c4 IS NOT NULL OR t5.c0 <> t5.c0
     ORDER BY c5, c5 COLLATE NOCASE, c5 ASC
     LIMIT 996766752739000212 OFFSET 5677344326111241968
    )
   ORDER BY c11, c6, c9
   LIMIT 7601820239747856482 OFFSET 5485023511679601294
  ) THEN 
  CASE WHEN false THEN 
   CASE subq0.c7 WHEN false THEN subq0.c8
        WHEN subq0.c15 = subq0.c15 THEN TRUE
        ELSE subq0.c6
   END
       ELSE subq0.c8
  END
      WHEN subq0.c15 <> subq0.c15 OR subq0.c15 = subq0.c15 THEN subq0.c14
      WHEN false THEN subq0.c14
      WHEN subq0.c8 <> subq0.c5 THEN subq0.c9
      WHEN subq0.c5 IS NOT NULL THEN subq0.c9
      WHEN EXISTS (
  SELECT t6.c2 AS c5, t6.c2 AS c6, t6.c3 AS c7, t6.c1 AS c8
   FROM t0 AS t6
   WHERE 
    CASE WHEN t6.c4 = t6.c0 OR t6.c2 IS NULL AND EXISTS (
     SELECT t7.c2 AS c5, t7.c4 AS c6, t7.c0 AS c7, t7.c0 AS c8
      FROM t0 AS t7
      WHERE t7.c2 = t7.c0
      ORDER BY c7 ASC
     ) THEN t6.c1
         ELSE t6.c2
    END <> t6.c0
   ORDER BY c7 ASC
   LIMIT 1561039063491337709 
  ) THEN subq0.c14
      WHEN 
  CASE subq0.c8 WHEN false THEN subq0.c8
       WHEN subq0.c14 IS NOT NULL THEN subq0.c10
       WHEN subq0.c8 = subq0.c6 AND subq0.c5 <> subq0.c14 THEN subq0.c14
       WHEN subq0.c6 = subq0.c6 OR FALSE <> subq0.c5 THEN subq0.c5
       WHEN typeof( NULL) IS NULL THEN 
   CASE WHEN subq0.c8 <> subq0.c7 THEN subq0.c15
        ELSE subq0.c8
   END
       WHEN subq0.c10 <> 
   CASE subq0.c7 WHEN subq0.c5 <> subq0.c9 THEN subq0.c6
        WHEN false THEN subq0.c10
        WHEN TRUE <> subq0.c7 AND FALSE <> subq0.c10 THEN subq0.c9
        WHEN 
    CASE WHEN subq0.c15 IS NULL THEN subq0.c7
         ELSE subq0.c10
    END IS NOT NULL THEN subq0.c7
        WHEN subq0.c14 IS NULL THEN subq0.c10
        WHEN subq0.c10 <> subq0.c8 AND subq0.c8 = subq0.c14 THEN subq0.c14
        WHEN 36 IS NOT NULL THEN subq0.c9
        WHEN quote( NULL) IS NULL THEN subq0.c10
        ELSE subq0.c10
   END AND false THEN subq0.c9
       WHEN 
   CASE subq0.c5 WHEN subq0.c15 IS NULL AND subq0.c6 = subq0.c10 THEN subq0.c5
        WHEN subq0.c6 = subq0.c5 OR subq0.c7 <> 
    CASE subq0.c5 WHEN COALESCE(subq0.c15, subq0.c15) <> subq0.c5 THEN subq0.c9
         WHEN subq0.c5 IS NOT NULL OR subq0.c6 = 
     CASE subq0.c8 WHEN false THEN subq0.c10
          WHEN true THEN subq0.c7
          WHEN subq0.c15 <> subq0.c15 OR subq0.c10 <> subq0.c10 THEN subq0.c6
          WHEN subq0.c8 IS NOT NULL THEN subq0.c7
          WHEN subq0.c8 <> subq0.c6 THEN subq0.c10
          WHEN subq0.c5 <> subq0.c9 THEN subq0.c5
          WHEN subq0.c15 <> subq0.c15 AND NULL <> COALESCE(subq0.c15, subq0.c15, subq0.c9, subq0.c15, subq0.c15) THEN subq0.c6
          WHEN subq0.c7 = subq0.c8 THEN COALESCE(subq0.c15, subq0.c14, subq0.c10, subq0.c8, subq0.c14)
          WHEN true OR subq0.c14 IS NULL OR subq0.c5 IS NOT NULL THEN subq0.c5
          WHEN subq0.c10 <> subq0.c7 THEN subq0.c14
          WHEN subq0.c14 IS NOT NULL THEN subq0.c5
          WHEN subq0.c6 <> subq0.c10 THEN subq0.c5
          ELSE subq0.c14
     END THEN subq0.c9
         WHEN subq0.c8 = subq0.c5 THEN subq0.c8
         WHEN subq0.c10 = subq0.c5 OR subq0.c6 = subq0.c5 AND subq0.c5 <> subq0.c14 THEN IFNULL(subq0.c8, subq0.c9)
         WHEN subq0.c7 = TRUE THEN subq0.c14
         WHEN false THEN subq0.c6
         WHEN subq0.c15 = subq0.c15 THEN subq0.c10
         WHEN true THEN subq0.c10
         WHEN subq0.c10 IS NOT NULL THEN subq0.c8
         ELSE subq0.c9
    END THEN TRUE
        WHEN false AND subq0.c8 = subq0.c5 AND true THEN subq0.c8
        WHEN subq0.c9 <> FALSE THEN subq0.c10
        WHEN subq0.c14 <> subq0.c14 AND subq0.c8 = subq0.c14 THEN subq0.c10
        WHEN subq0.c5 <> subq0.c10 THEN subq0.c14
        ELSE 
    CASE subq0.c7 WHEN EXISTS (
     SELECT t8.c1 AS c5, t8.c1 AS c6, t8.c0 AS c7, t8.c1 AS c8, t8.c2 AS c9, t8.c0 AS c10, t8.c3 AS c11, t8.c2 AS c12, t8.c2 AS c13, t8.c2 AS c14
      FROM t0 AS t8
      WHERE t8.c3 IS NOT NULL
      ORDER BY c10, c5 COLLATE NOCASE DESC, c13 ASC
      LIMIT 2629921582457570170 OFFSET 7969056806533832918
     ) AND IFNULL(subq0.c5, subq0.c7) <> 
     CASE subq0.c10 WHEN subq0.c15 <> subq0.c15 THEN subq0.c10
          WHEN TRUE = subq0.c14 OR subq0.c15 = subq0.c15 THEN 
      CASE subq0.c7 WHEN subq0.c8 IS NULL THEN subq0.c14
           WHEN subq0.c9 = subq0.c8 THEN subq0.c9
           WHEN subq0.c9 <> subq0.c10 AND subq0.c5 IS NOT NULL AND true OR subq0.c9 IS NULL AND subq0.c6 = subq0.c8 AND subq0.c6 <> subq0.c7 AND 47 IS NULL THEN subq0.c6
           WHEN true THEN TRUE
           WHEN subq0.c14 IS NOT NULL THEN subq0.c10
           WHEN EXISTS (
       SELECT t9.c2 AS c5, t9.c4 AS c6, t9.c3 AS c7, t9.c1 AS c8, t9.c2 AS c9, t9.c3 AS c10
        FROM t0 AS t9
        WHERE t9.c0 = t9.c1
        ORDER BY c7, c10, c10
        LIMIT 1955048299245151779 
       ) AND subq0.c6 <> subq0.c9 THEN subq0.c10
           ELSE subq0.c8
      END
          WHEN EXISTS (
      SELECT t10.c4 AS c5, t10.c0 AS c6, t10.c4 AS c7, t10.c0 AS c8
       FROM t0 AS t10
       WHERE t10.c3 <> NULL
       ORDER BY c6 DESC, c5 COLLATE NOCASE ASC
       LIMIT 1101265629426134311 OFFSET 1206722480391070755
      ) THEN subq0.c9
          WHEN subq0.c8 = subq0.c10 OR subq0.c8 = subq0.c8 THEN subq0.c5
          ELSE subq0.c9
     END THEN subq0.c8
         WHEN subq0.c9 <> subq0.c6 THEN 
     CASE WHEN subq0.c6 <> subq0.c6 THEN subq0.c5
          ELSE subq0.c5
     END
         WHEN subq0.c14 IS NOT NULL OR subq0.c6 = subq0.c6 THEN FALSE
         WHEN subq0.c5 IS NULL OR subq0.c9 = subq0.c6 AND false OR subq0.c14 <> TRUE OR true THEN subq0.c10
         WHEN subq0.c10 <> subq0.c10 THEN FALSE
         WHEN subq0.c15 IS NULL OR 
     CASE WHEN subq0.c10 <> subq0.c7 THEN subq0.c6
          ELSE subq0.c7
     END IS NULL THEN subq0.c6
         WHEN false THEN subq0.c6
         WHEN subq0.c6 <> subq0.c6 THEN subq0.c8
         WHEN subq0.c15 <> COALESCE(subq0.c15, subq0.c6, subq0.c10, subq0.c15) THEN subq0.c6
         WHEN subq0.c10 IS NULL THEN subq0.c5
         ELSE subq0.c8
    END
   END = subq0.c6 THEN subq0.c14
       ELSE 
   CASE subq0.c14 WHEN subq0.c9 = subq0.c9 AND subq0.c7 <> subq0.c9 THEN subq0.c6
        WHEN subq0.c7 = subq0.c6 OR unlikely( FALSE) IS NOT NULL AND subq0.c6 <> subq0.c6 AND 
    CASE WHEN subq0.c5 = subq0.c5 THEN subq0.c8
         ELSE subq0.c9
    END <> subq0.c6 THEN ifnull(8,NULL)
        WHEN subq0.c8 = subq0.c8 THEN subq0.c5
        WHEN subq0.c9 = TRUE THEN subq0.c7
        WHEN subq0.c8 = subq0.c7 THEN subq0.c9
        ELSE subq0.c10
   END
  END IS NOT NULL THEN subq0.c14
      WHEN substr(FALSE,'text24') IS NULL THEN subq0.c6
      WHEN false THEN NULLIF(subq0.c14, subq0.c8)
      WHEN subq0.c8 <> FALSE THEN subq0.c14
      WHEN subq0.c7 = subq0.c14 THEN subq0.c8
      ELSE TRUE
 END AS c9, subq0.c6 AS c10, subq0.c10 AS c11, subq0.c5 AS c12, subq0.c8 AS c13, subq0.c14 AS c14, subq0.c7 AS c15, subq0.c9 AS c16, subq0.c14 AS c17, subq0.c8 AS c18, subq0.c5 AS c19, subq0.c10 AS c20, subq0.c14 AS c21, subq0.c9 AS c22, subq0.c9 AS c23, subq0.c14 AS c24, subq0.c6 AS c25, CAST(subq0.c5 AS TEXT) AS c26
FROM (SELECT t2.c0 AS c5, t1.c2 AS c6, t2.c0 AS c7, t1.c1 AS c8, t1.c1 AS c9, t1.c2 AS c10, 
    CASE WHEN NULLIF(t1.c0, COALESCE(t1.c3, t2.c3, t1.c4, t2.c3)) <> t2.c1 THEN 
     CASE t1.c0 WHEN t1.c2 <> t2.c0 OR t1.c2 = t1.c2 THEN t2.c0
          WHEN t2.c4 = t1.c4 AND true AND t1.c3 IS NOT NULL THEN t2.c0
          WHEN t2.c0 IS NOT NULL THEN t2.c2
          WHEN t1.c2 <> t2.c0 THEN t1.c1
          WHEN t1.c1 <> t1.c1 THEN t1.c4
          WHEN t1.c1 = t1.c4 THEN t2.c2
          WHEN t2.c0 = t2.c4 THEN t2.c4
          WHEN t1.c2 = t2.c0 THEN t2.c4
          WHEN EXISTS (
      SELECT t3.c4 AS c5, t3.c4 AS c6, t3.c1 AS c7, t3.c0 AS c8, t3.c4 AS c9, t3.c4 AS c10, t3.c0 AS c11, t3.c2 AS c12, t3.c3 AS c13
       FROM t0 AS t3
       WHERE t3.c3 <> t3.c3
       ORDER BY c6
      ) THEN t2.c1
          WHEN true THEN t1.c2
          ELSE t1.c2
     END
         ELSE t2.c0
    END AS c14, t1.c3 AS c15
   FROM t0 AS t1
     INNER JOIN t0 AS t2     
      ON (true)
   WHERE t1.c4 IS NOT NULL
   ORDER BY c7) as subq0
WHERE subq0.c6 = subq0.c5
ORDER BY c26 COLLATE BINARY
LIMIT 273477977086907978 OFFSET 838746499703545679;
SELECT subq1.c17 AS c19
FROM (SELECT subq0.c7 AS c10, subq0.c8 AS c11, subq0.c7 AS c12, subq0.c9 AS c13, subq0.c7 AS c14, subq0.c5 AS c15, subq0.c7 AS c16, subq0.c5 AS c17, subq0.c6 AS c18
   FROM (SELECT t1.c1 AS c5, t1.c2 AS c6, t1.c0 AS c7, t1.c1 AS c8, t1.c0 AS c9
      FROM t0 AS t1
      WHERE t1.c0 IS NULL
      ORDER BY c9, c6
      LIMIT 2762705605251560559 OFFSET 2888100928464389022) as subq0
   WHERE true
   ORDER BY c17 ASC
   LIMIT 1105023608725530129 ) as subq1
WHERE 
 CASE subq1.c15 WHEN subq1.c10 <> subq1.c18 THEN subq1.c14
      WHEN 
  CASE subq1.c18 WHEN true THEN 
   CASE WHEN subq1.c13 <> subq1.c16 THEN subq1.c10
        ELSE subq1.c13
   END
       WHEN subq1.c18 IS NOT NULL THEN subq1.c17
       WHEN EXISTS (
   SELECT FALSE AS c5, t2.c3 AS c6
    FROM t0 AS t2
    WHERE TRUE <> t2.c0
    ORDER BY c6 COLLATE BINARY DESC
    LIMIT 1891598940103405247 OFFSET 6246914136617133324
   ) THEN subq1.c12
       WHEN EXISTS (
   SELECT t3.c4 AS c5
    FROM t0 AS t3
    WHERE t3.c0 = t3.c4
    ORDER BY c5, c5, c5, c5
    LIMIT 1629372624257019146 
   ) THEN subq1.c16
       WHEN TRUE <> subq1.c11 OR subq1.c16 <> subq1.c10 AND subq1.c12 <> subq1.c11 THEN subq1.c14
       WHEN subq1.c15 <> subq1.c14 THEN subq1.c10
       WHEN subq1.c10 IS NOT NULL OR false THEN subq1.c13
       WHEN true THEN subq1.c10
       ELSE subq1.c16
  END = subq1.c10 THEN FALSE
      WHEN EXISTS (
  SELECT t4.c4 AS c5, t4.c1 AS c6, t4.c0 AS c7, t4.c2 AS c8, t4.c1 AS c9, t4.c4 AS c10, t4.c3 AS c11, t4.c3 AS c12, 
    CASE WHEN t4.c3 IS NULL THEN t4.c1
         ELSE t4.c4
    END AS c13, t4.c0 AS c14, t4.c0 AS c15, t4.c4 AS c16, t4.c4 AS c17, t4.c0 AS c18, t4.c2 AS c19, t4.c2 AS c20, t4.c2 AS c21, t4.c0 AS c22, t4.c2 AS c23, t4.c2 AS c24, t4.c0 AS c25, t4.c0 AS c26, t4.c2 AS c27, t4.c2 AS c28, t4.c4 AS c29, t4.c3 AS c30, COALESCE(t4.c3, t4.c4, t4.c4, t4.c3, t4.c0) AS c31, 
    CASE WHEN t4.c3 <> t4.c3 THEN t4.c1
         ELSE t4.c0
    END AS c32, t4.c4 AS c33, t4.c1 AS c34, t4.c1 AS c35, NULL AS c36, t4.c1 AS c37, t4.c0 AS c38, COALESCE(t4.c2, t4.c3, t4.c3) AS c39, t4.c4 AS c40, t4.c2 AS c41, t4.c3 AS c42, FALSE AS c43, t4.c3 AS c44, NULLIF(t4.c4, t4.c4) AS c45
   FROM t0 AS t4
   WHERE t4.c4 = t4.c4
   ORDER BY c27 ASC
   LIMIT 1219975683633876377 OFFSET 6251512351463237635
  ) OR subq1.c14 IS NULL THEN subq1.c12
      WHEN subq1.c10 IS NOT NULL AND subq1.c16 IS NULL OR subq1.c11 = subq1.c17 OR subq1.c13 = subq1.c14 AND subq1.c17 = subq1.c14 OR subq1.c16 = subq1.c11 AND false OR subq1.c14 <> subq1.c16 OR subq1.c12 = subq1.c10 AND false THEN subq1.c12
      WHEN COALESCE(subq1.c12, subq1.c12, subq1.c18, subq1.c15) <> subq1.c10 THEN subq1.c17
      WHEN subq1.c17 = subq1.c14 THEN subq1.c12
      WHEN EXISTS (
  SELECT COALESCE(subq2.c10, subq2.c9, subq2.c9, subq2.c8, subq2.c5) AS c14, subq2.c8 AS c15, subq2.c11 AS c16, subq2.c5 AS c17, subq2.c12 AS c18, subq2.c10 AS c19, subq2.c6 AS c20, subq2.c5 AS c21, subq2.c9 AS c22, subq2.c8 AS c23, TRUE AS c24, TRUE AS c25
   FROM (SELECT t5.c3 AS c5, t6.c0 AS c6, t5.c2 AS c7, t6.c1 AS c8, t5.c3 AS c9, t6.c0 AS c10, t5.c1 AS c11, t6.c1 AS c12, t5.c4 AS c13
      FROM t0 AS t5
        LEFT JOIN t0 AS t6        
         ON (true)
      WHERE false
      ORDER BY c13) as subq2
   WHERE subq2.c6 IS NOT NULL
   ORDER BY c21, c24 ASC, c16
   LIMIT 8850420948764317175 OFFSET 9102616022903711171
  ) THEN subq1.c11
      ELSE subq1.c15
 END <> subq1.c13
ORDER BY c19 ASC, c19, c19, c19
LIMIT 792606088145664733 OFFSET 8618023158504009045;
SELECT subq0.c5 AS c5, subq0.c12 AS c6, subq0.c12 AS c7
FROM (SELECT t1.c4 AS c5, t1.c2 AS c6, t1.c4 AS c7, t2.c0 AS c8, t1.c2 AS c9, t1.c4 AS c10, t1.c0 AS c11, t2.c4 AS c12, t1.c0 AS c13, t1.c4 AS c14
    FROM t0 AS t1
      INNER JOIN t0 AS t2      
       ON (t1.c1 = t2.c0)
    WHERE EXISTS (
     SELECT t3.c3 AS c5
      FROM t0 AS t3
      WHERE EXISTS (
       SELECT t4.c0 AS c5, t4.c2 AS c6, t4.c3 AS c7, t4.c3 AS c8, t4.c2 AS c9, t4.c1 AS c10
        FROM t0 AS t4
        WHERE true AND EXISTS (
         SELECT t5.c0 AS c5, TRUE AS c6, t5.c2 AS c7, t5.c1 AS c8
          FROM t0 AS t5
          WHERE t5.c4 = t5.c4
          ORDER BY c6 DESC, c5
          LIMIT 2903795855469982555 
         ) OR t4.c3 <> t4.c3
        ORDER BY c7, c6
        LIMIT 6936275556542441620 OFFSET 7162791788138669256
       )
      ORDER BY c5, c5, c5, c5
      LIMIT 6408711974194024020 OFFSET 5823555140577838453
     )
    ORDER BY c5, c12 ASC, c5 COLLATE NOCASE ASC
    LIMIT 897009158358949674 OFFSET 7852801809846673126) as subq0
  LEFT JOIN t0 AS t6  
   ON (subq0.c14 <> subq0.c5 AND true OR subq0.c11 <> t6.c4)
WHERE subq0.c10 = subq0.c12 AND subq0.c11 = 
 CASE subq0.c14 WHEN subq0.c7 <> NULLIF(NULLIF(subq0.c9, t6.c2), t6.c4) OR false AND subq0.c6 <> subq0.c5 OR t6.c0 IS NOT NULL THEN 
  CASE WHEN true OR subq0.c13 = subq0.c10 THEN subq0.c9
       ELSE subq0.c11
  END
      WHEN t6.c3 IS NOT NULL THEN subq0.c12
      WHEN true THEN subq0.c8
      WHEN t6.c4 <> CAST('text89' AS TEXT) THEN t6.c0
      WHEN subq0.c13 = subq0.c8 THEN subq0.c6
      WHEN 
  CASE subq0.c10 WHEN t6.c3 IS NULL THEN subq0.c10
       ELSE t6.c4
  END <> t6.c4 THEN subq0.c12
      ELSE subq0.c5
 END OR subq0.c9 <> subq0.c10
ORDER BY c5 DESC;
SELECT ALL subq0.c5 AS c12
FROM (SELECT t1.c4 AS c5, t1.c2 AS c6, t1.c0 AS c7, t1.c0 AS c8, t1.c0 AS c9, t1.c1 AS c10, t1.c4 AS c11, t1.c3 AS c12, t1.c2 AS c13, t1.c1 AS c14, t1.c2 AS c15, t1.c4 AS c16, t1.c2 AS c17, TRUE AS c18, t1.c3 AS c19, t1.c3 AS c20, t1.c4 AS c21, t1.c1 AS c22, t1.c1 AS c23, t1.c1 AS c24, t1.c4 AS c25, t1.c2 AS c26, t1.c0 AS c27, t1.c1 AS c28, t1.c4 AS c29, TRUE AS c30, TRUE AS c31, t1.c0 AS c32, t1.c1 AS c33, t1.c3 AS c34
    FROM t0 AS t1
    WHERE t1.c0 <> t1.c4
    ORDER BY c33
    LIMIT 7159421596449531626 ) as subq0
  LEFT JOIN (SELECT FALSE AS c5, t3.c2 AS c6, t2.c4 AS c7, FALSE AS c8, t3.c2 AS c9, TRUE AS c10, 
     CASE WHEN t3.c1 = t3.c4 THEN t2.c1
          ELSE t3.c1
     END AS c11
    FROM t0 AS t2
      INNER JOIN t0 AS t3      
       ON (t3.c4 = t3.c1)
    WHERE t2.c2 <> t2.c2
    ORDER BY c7, c10 COLLATE NOCASE
    LIMIT 6369228148676788469 OFFSET 3013417593787202470) as subq1  
   ON (subq0.c24 <> subq0.c31)
WHERE subq1.c9 IS NULL
ORDER BY c12 ASC;
SELECT t11.c2 AS c14, t11.c4 AS c15, subq0.c8 AS c16, t2.c0 AS c17, t2.c2 AS c18, 
 CASE WHEN subq0.c5 = 
  CASE t7.c1 WHEN t5.c3 = subq0.c11 THEN t8.c0
       WHEN t11.c2 <> t1.c1 THEN 
   CASE WHEN EXISTS (
    SELECT NULL AS c5, t14.c0 AS c6, t15.c2 AS c7, t16.c2 AS c8, t15.c3 AS c9, t16.c0 AS c10, t14.c3 AS c11, t14.c0 AS c12, t13.c2 AS c13, t15.c1 AS c14, FALSE AS c15, t14.c1 AS c16
     FROM t0 AS t13
        INNER JOIN t0 AS t14        
         ON (t13.c3 = t14.c3)
       INNER JOIN (
       t0 AS t15
        LEFT JOIN t0 AS t16        
         ON (t15.c0 = t16.c0)       )
        ON (t16.c2 <> t14.c0)
     WHERE false OR t13.c3 IS NOT NULL
     ORDER BY c6 DESC
     LIMIT 763411759542199145 
    ) THEN t7.c0
        ELSE t5.c1
   END
       ELSE t4.c2
  END THEN t8.c2
      ELSE t5.c2
 END AS c17
FROM t0 AS t1
   INNER JOIN (
   t0 AS t2
      INNER JOIN t0 AS t3      
       ON (t3.c2 <> TRUE)
     LEFT JOIN t0 AS t4     
      ON (t3.c3 <> t3.c3)
    LEFT OUTER JOIN (
    t0 AS t5
      INNER JOIN t0 AS t6      
       ON (t6.c0 = t5.c2)
     LEFT JOIN (
     t0 AS t7
      INNER JOIN t0 AS t8      
       ON (t7.c4 = t7.c1)     )
      ON (t5.c1 = t8.c0)    )
     ON (EXISTS (
      SELECT t10.c0 AS c5
       FROM t0 AS t9
         LEFT JOIN t0 AS t10         
          ON (t10.c2 <> t9.c0)
       WHERE t10.c1 = t10.c4 OR NULL = t10.c3 AND t10.c3 = t10.c3
       ORDER BY c5 DESC, c5 DESC, c5 COLLATE RTRIM DESC, c5
       LIMIT 1512218345096019691 OFFSET 60118117508868104
      ))   )
    ON (t6.c2 <> t1.c1 AND t2.c3 IS NOT NULL AND t4.c4 <> t7.c0 OR 
     CASE WHEN t5.c2 = t3.c0 THEN t1.c2
          ELSE t8.c1
     END = t8.c0)
  LEFT JOIN (
  t0 AS t11
   LEFT JOIN (SELECT t12.c4 AS c5, t12.c2 AS c6, t12.c2 AS c7, t12.c2 AS c8, NULL AS c9, t12.c3 AS c10, t12.c3 AS c11, t12.c0 AS c12, t12.c0 AS c13
     FROM t0 AS t12
     WHERE t12.c2 = t12.c4
     ORDER BY c13, c11, c9 DESC) as subq0   
    ON (NULL = subq0.c11 AND t11.c4 = subq0.c8)  )
   ON (33 IS NULL AND true AND t6.c2 = t3.c2)
WHERE subq0.c7 <> 
 CASE t4.c0 WHEN subq0.c13 IS NOT NULL OR t5.c0 = t6.c4 AND t6.c0 = subq0.c5 THEN CAST(
   CASE WHEN t7.c4 IS NULL OR t3.c2 IS NULL THEN t3.c1
        ELSE t1.c0
   END AS TEXT)
      WHEN IFNULL(NULL, subq0.c9) = subq0.c10 AND t11.c3 = 
  CASE t4.c3 WHEN EXISTS (
   SELECT t17.c2 AS c9, t18.c4 AS c10
    FROM t0 AS t17
      LEFT JOIN (
      t0 AS t18
       LEFT JOIN t0 AS t19       
        ON (EXISTS (
         SELECT t20.c0 AS c5, t20.c4 AS c6, t20.c3 AS c7, t20.c0 AS c8
          FROM t0 AS t20
          WHERE t20.c1 <> t20.c1
          ORDER BY c5, c6 COLLATE NOCASE ASC, c8 ASC
         ))      )
       ON (false)
    WHERE t19.c0 = t17.c1
    ORDER BY c10 DESC
   ) THEN t1.c3
       WHEN false OR subq0.c12 IS NULL OR t5.c1 <> t5.c4 AND upper( 'text79') IS NOT NULL AND COALESCE(t8.c3, NULLIF(t6.c4, 41)) = t2.c4 OR t6.c4 IS NOT NULL OR t11.c0 <> t2.c0 THEN t5.c3
       WHEN t5.c2 = t4.c0 THEN subq0.c10
       WHEN t1.c4 = subq0.c13 THEN t11.c3
       WHEN EXISTS (
   SELECT t21.c3 AS c5, t21.c2 AS c6, t21.c4 AS c7, t21.c2 AS c8, t21.c1 AS c9
    FROM t0 AS t21
    WHERE true
    ORDER BY c9
    LIMIT 2136352105139913993 OFFSET 5766267915185007341
   ) THEN t5.c3
       WHEN t1.c1 = t8.c4 THEN t1.c3
       ELSE COALESCE(subq0.c10, subq0.c11, t8.c4, subq0.c11, CAST('text67' AS TEXT), t7.c3)
  END AND t8.c3 = t11.c3 OR COALESCE(
   CASE WHEN t6.c0 <> t7.c1 THEN t7.c2
        ELSE t2.c2
   END, t7.c3, t5.c3, t2.c1) <> t11.c0 AND t2.c1 = t1.c0 AND true OR t1.c2 = COALESCE(t8.c1, t4.c3, t1.c3, t8.c1) THEN t7.c1
      WHEN subq0.c6 = t1.c0 AND subq0.c10 IS NOT NULL THEN t4.c4
      WHEN t6.c0 <> 
  CASE subq0.c5 WHEN t7.c2 = CAST(t7.c4 AS INTEGER) THEN t6.c0
       WHEN t3.c0 <> FALSE THEN t3.c4
       WHEN t2.c3 = t5.c3 THEN NULLIF(t7.c2, t1.c4)
       WHEN t1.c1 IS NOT NULL THEN COALESCE(t6.c1, 
    CASE t5.c4 WHEN false THEN FALSE
         WHEN t3.c4 <> CAST(t11.c0 AS INTEGER) THEN t3.c4
         ELSE t8.c4
    END, t8.c2, t4.c2, subq0.c11, NULLIF(t11.c3, subq0.c9))
       WHEN t4.c2 <> t11.c2 THEN t4.c1
       WHEN TRUE <> t6.c2 THEN 
   CASE WHEN t6.c4 <> t5.c4 THEN subq0.c13
        ELSE CAST(t4.c1 AS INTEGER)
   END
       WHEN subq0.c8 <> t2.c0 THEN t1.c4
       WHEN EXISTS (
   SELECT t22.c1 AS c5, t22.c1 AS c6, t22.c3 AS c7, t22.c3 AS c8
    FROM t0 AS t22
    WHERE t22.c4 = t22.c1
    ORDER BY c5
    LIMIT 5220738318729146011 OFFSET 6435989798047802236
   ) AND nullif('text26',29) IS NULL OR t4.c2 IS NOT NULL OR t3.c4 = subq0.c13 AND 
   CASE t8.c2 WHEN t1.c4 = t11.c4 THEN t1.c2
        WHEN t7.c3 <> subq0.c10 THEN FALSE
        WHEN t6.c0 IS NULL THEN t11.c1
        ELSE t6.c2
   END <> t4.c1 OR true AND t2.c4 <> t4.c4 OR t4.c3 IS NULL OR t4.c3 <> t11.c3 AND t11.c3 <> t3.c3 AND t7.c3 <> subq0.c10 THEN 
   CASE t2.c2 WHEN 
    CASE WHEN t8.c3 = 
     CASE subq0.c11 WHEN t3.c3 <> subq0.c11 THEN subq0.c10
          WHEN t6.c3 <> t7.c3 THEN t6.c3
          WHEN false THEN t1.c3
          WHEN EXISTS (
      SELECT t23.c1 AS c5, t23.c0 AS c6, NULL AS c7
       FROM t0 AS t23
       WHERE t23.c0 = t23.c1
       ORDER BY c5
       LIMIT 8627486127834449064 OFFSET 3258382185645726630
      ) THEN t2.c3
          WHEN EXISTS (
      SELECT t24.c3 AS c5, t24.c2 AS c6, t24.c2 AS c7, t24.c3 AS c8, t24.c4 AS c9, t24.c0 AS c10, t24.c1 AS c11, t24.c1 AS c12, t24.c2 AS c13
       FROM t0 AS t24
       WHERE TRUE <> t24.c1
       ORDER BY c10, c7, c6 COLLATE RTRIM DESC
       LIMIT 7903937682531544462 OFFSET 8971397600546931821
      ) OR t1.c2 IS NULL THEN t8.c3
          WHEN 
      CASE WHEN subq0.c8 <> t6.c4 THEN t1.c0
           ELSE NULL
      END IS NULL THEN t11.c3
          WHEN t2.c4 = t7.c1 AND t2.c1 <> t11.c2 THEN t6.c3
          WHEN t3.c2 <> t2.c1 OR subq0.c8 = FALSE THEN t1.c3
          WHEN true OR t4.c3 <> t8.c3 THEN t6.c3
          WHEN false THEN t4.c3
          WHEN t11.c4 = t4.c0 THEN 
      CASE t7.c3 WHEN t1.c1 = t5.c4 OR t11.c4 IS NULL THEN NULL
           ELSE t3.c3
      END
          ELSE subq0.c10
     END THEN subq0.c5
         ELSE t11.c4
    END <> t6.c1 THEN t6.c1
        WHEN 
    CASE WHEN t5.c0 <> t2.c4 OR t2.c4 <> t2.c0 AND t4.c3 = subq0.c11 OR 
     CASE t8.c3 WHEN t4.c3 = 
      CASE WHEN t1.c4 = t11.c1 THEN t3.c3
           ELSE t11.c3
      END THEN t11.c3
          WHEN true THEN t4.c4
          WHEN t1.c0 = t5.c2 THEN 'text52'
          WHEN subq0.c7 <> t6.c4 THEN t7.c4
          WHEN subq0.c5 <> t5.c4 THEN t6.c0
          WHEN false THEN t6.c1
          WHEN t7.c0 = subq0.c12 THEN t7.c0
          WHEN t5.c0 = t3.c4 THEN subq0.c8
          WHEN t2.c3 = t2.c3 THEN t2.c4
          WHEN t8.c0 IS NOT NULL THEN t11.c0
          WHEN subq0.c8 = subq0.c7 OR t7.c4 <> t11.c1 AND t7.c4 = t5.c4 THEN t6.c1
          WHEN subq0.c9 <> t2.c3 THEN t5.c0
          ELSE t3.c0
     END IS NULL AND t1.c0 <> subq0.c5 OR subq0.c11 <> t7.c3 OR t11.c2 <> t1.c1 OR t6.c1 IS NULL AND true OR t11.c4 <> subq0.c5 OR true OR t7.c1 = t4.c4 THEN NULL
         ELSE subq0.c11
    END = t8.c3 THEN t5.c1
        WHEN t5.c4 = t4.c4 THEN t8.c1
        WHEN t8.c1 <> t1.c0 AND t5.c1 IS NOT NULL OR t3.c4 <> subq0.c12 OR true THEN t2.c1
        ELSE t6.c0
   END
       WHEN t3.c2 = t4.c0 THEN t5.c1
       WHEN CAST(t2.c0 AS BOOLEAN) <> t8.c1 THEN t8.c1
       WHEN t2.c0 = t4.c4 THEN t8.c0
       ELSE t1.c0
  END THEN subq0.c8
      WHEN t8.c4 = CAST(t8.c0 AS INTEGER) THEN t3.c2
      WHEN t2.c4 <> COALESCE(t6.c4, t3.c3, t11.c4) THEN NULLIF(subq0.c5, t11.c1)
      WHEN subq0.c10 = 
  CASE t7.c3 WHEN subq0.c6 = subq0.c12 THEN t3.c3
       WHEN t5.c2 <> 
   CASE t6.c2 WHEN EXISTS (
    SELECT t25.c0 AS c5, t25.c1 AS c6, t25.c1 AS c7, t25.c3 AS c8, t25.c0 AS c9, t25.c3 AS c10, t25.c4 AS c11, t25.c0 AS c12, t25.c3 AS c13
     FROM t0 AS t25
     WHERE true
     ORDER BY c8, c13 COLLATE BINARY
     LIMIT 6047317623282215837 OFFSET 2330633870601150565
    ) AND EXISTS (
    SELECT CAST(t26.c3 AS INTEGER) AS c5, t26.c1 AS c6, t26.c4 AS c7, t26.c0 AS c8, TRUE AS c9, t26.c3 AS c10, t26.c2 AS c11, t26.c2 AS c12, t26.c0 AS c13, t26.c0 AS c14, t26.c1 AS c15, FALSE AS c16, t26.c3 AS c17, t26.c0 AS c18, t26.c3 AS c19
     FROM t0 AS t26
     WHERE EXISTS (
      SELECT t27.c0 AS c5, t28.c0 AS c6, t27.c2 AS c7, t27.c0 AS c8, t27.c0 AS c9, t27.c1 AS c10, t28.c0 AS c11, t27.c0 AS c12, FALSE AS c13, t27.c3 AS c14, t27.c0 AS c15, t27.c3 AS c16, t28.c4 AS c17, t27.c4 AS c18, t27.c0 AS c19, t27.c4 AS c20, t28.c2 AS c21, t28.c4 AS c22, t28.c4 AS c23, t27.c1 AS c24, t28.c2 AS c25, t28.c0 AS c26, t27.c3 AS c27
       FROM t0 AS t27
         CROSS JOIN t0 AS t28         
          ON (t27.c3 = t28.c3)
       WHERE true
       ORDER BY c22 ASC, c25, c9
       LIMIT 6025685548398862100 OFFSET 8597601891515994316
      )
     ORDER BY c9
     LIMIT 3948916950865278934 
    ) THEN t6.c4
        WHEN t11.c2 <> t8.c2 THEN t4.c0
        WHEN t4.c1 <> subq0.c7 THEN TRUE
        WHEN t7.c0 = FALSE THEN t7.c1
        WHEN t5.c0 = t5.c2 THEN t11.c2
        WHEN false THEN 
    CASE WHEN t6.c2 = t7.c0 AND subq0.c7 = t1.c2 THEN t5.c0
         ELSE t5.c0
    END
        ELSE t6.c4
   END THEN 
   CASE WHEN t8.c3 = t7.c3 THEN t6.c3
        ELSE t2.c3
   END
       ELSE t7.c3
  END THEN subq0.c12
      WHEN subq0.c9 = subq0.c11 THEN t7.c1
      ELSE t6.c2
 END
ORDER BY c18, c17, c16;
SELECT CAST(NULL AS INTEGER) AS c5
FROM t0 AS t1
WHERE t1.c0 <> t1.c0 AND t1.c2 = 
 CASE WHEN t1.c0 = t1.c1 THEN t1.c1
      ELSE TRUE
 END AND 
 CASE WHEN max(54,NULL,86) IS NULL AND false THEN t1.c0
      ELSE t1.c1
 END = t1.c2 AND FALSE <> t1.c4 OR IFNULL(t1.c0, t1.c4) IS NULL AND TRUE <> t1.c1 AND t1.c1 IS NOT NULL
ORDER BY c5 COLLATE BINARY, c5 ASC, c5, c5
LIMIT 9129948605025028567 ;
SELECT t1.c3 AS c5, 
 CASE WHEN t1.c3 IS NOT NULL THEN COALESCE(t1.c1, 
   CASE t1.c2 WHEN true THEN 55
        WHEN t1.c0 <> t1.c2 AND t1.c4 = t1.c2 AND t1.c0 = t1.c1 OR t1.c4 = t1.c1 AND t1.c1 <> t1.c4 THEN t1.c2
        ELSE t1.c2
   END, t1.c2)
      ELSE t1.c4
 END AS c6
FROM t0 AS t1
WHERE t1.c4 <> t1.c0
ORDER BY c6 COLLATE BINARY;
SELECT subq0.c16 AS c19, subq0.c6 AS c20, subq0.c12 AS c21, subq0.c15 AS c22, subq0.c10 AS c23, subq0.c8 AS c24, 
 CASE subq0.c17 WHEN NULLIF(CAST(subq0.c10 AS TEXT), subq0.c7) = subq0.c16 THEN FALSE
      WHEN COALESCE(subq0.c9, subq0.c10) <> subq0.c6 AND 
  CASE subq0.c13 WHEN subq0.c10 IS NOT NULL THEN subq0.c7
       WHEN 
   CASE WHEN subq0.c15 = subq0.c7 AND subq0.c5 = subq0.c16 THEN subq0.c18
        ELSE subq0.c18
   END = subq0.c18 THEN subq0.c14
       WHEN subq0.c8 <> subq0.c8 THEN subq0.c16
       WHEN EXISTS (
   SELECT t2.c1 AS c5, t2.c0 AS c6, t2.c3 AS c7, t2.c2 AS c8, t2.c2 AS c9, t2.c4 AS c10, t2.c2 AS c11, t2.c2 AS c12, t2.c4 AS c13, t2.c0 AS c14, t2.c0 AS c15, t2.c2 AS c16
    FROM t0 AS t2
    WHERE t2.c3 <> t2.c3
    ORDER BY c9 ASC
    LIMIT 8092666349076482621 OFFSET 655518705019291861
   ) THEN FALSE
       WHEN false THEN subq0.c6
       WHEN subq0.c6 <> subq0.c7 AND subq0.c9 = subq0.c18 OR like(TRUE,48) IS NULL OR subq0.c7 = subq0.c16 AND subq0.c13 <> subq0.c12 THEN CAST(subq0.c17 AS BOOLEAN)
       WHEN subq0.c10 = subq0.c18 AND subq0.c13 <> subq0.c11 THEN subq0.c5
       WHEN 
   CASE WHEN subq0.c7 <> subq0.c6 THEN 
    CASE WHEN subq0.c10 <> subq0.c18 THEN subq0.c16
         ELSE subq0.c16
    END
        ELSE subq0.c5
   END = subq0.c16 THEN subq0.c5
       WHEN subq0.c7 <> 
   CASE subq0.c6 WHEN subq0.c16 IS NULL THEN subq0.c17
        WHEN subq0.c18 = subq0.c9 AND subq0.c14 = subq0.c15 THEN subq0.c15
        WHEN subq0.c16 <> subq0.c17 THEN COALESCE(subq0.c6, subq0.c12, subq0.c14, subq0.c9)
        WHEN subq0.c11 = subq0.c14 THEN subq0.c15
        WHEN subq0.c6 IS NULL THEN subq0.c13
        WHEN subq0.c14 <> subq0.c5 THEN subq0.c16
        WHEN FALSE = subq0.c14 THEN subq0.c16
        WHEN EXISTS (
    SELECT t3.c0 AS c5, t4.c3 AS c6, t3.c3 AS c7
     FROM t0 AS t3
       LEFT JOIN t0 AS t4       
        ON (t4.c0 <> FALSE)
     WHERE true
     ORDER BY c6
    ) THEN 
    CASE WHEN subq0.c15 IS NOT NULL AND 
     CASE subq0.c12 WHEN false THEN subq0.c16
          ELSE subq0.c16
     END = subq0.c11 OR subq0.c13 <> FALSE AND subq0.c15 = subq0.c12 AND subq0.c6 = subq0.c11 THEN subq0.c17
         ELSE subq0.c14
    END
        WHEN FALSE = subq0.c5 THEN subq0.c7
        WHEN subq0.c13 = subq0.c8 THEN subq0.c16
        WHEN subq0.c8 <> subq0.c12 THEN subq0.c7
        WHEN subq0.c6 = subq0.c13 THEN TRUE
        ELSE subq0.c5
   END THEN subq0.c7
       ELSE subq0.c16
  END = subq0.c17 AND subq0.c18 = 
  CASE WHEN subq0.c17 <> subq0.c12 THEN subq0.c18
       ELSE subq0.c18
  END THEN subq0.c8
      WHEN NULLIF(subq0.c18, last_insert_rowid()) IS NOT NULL AND subq0.c7 = subq0.c6 OR subq0.c8 = subq0.c13 THEN subq0.c15
      WHEN subq0.c8 = subq0.c6 AND subq0.c13 = subq0.c8 AND subq0.c6 <> subq0.c7 OR 
  CASE WHEN subq0.c13 = COALESCE(subq0.c6, subq0.c16, subq0.c7) OR subq0.c16 = subq0.c11 THEN subq0.c16
       ELSE subq0.c5
  END <> subq0.c8 THEN subq0.c14
      WHEN subq0.c12 = subq0.c7 THEN subq0.c5
      WHEN subq0.c12 = subq0.c12 AND subq0.c15 = subq0.c17 THEN subq0.c14
      WHEN subq0.c10 = NULL THEN subq0.c6
      WHEN subq0.c17 IS NOT NULL OR subq0.c15 = subq0.c17 THEN subq0.c6
      WHEN subq0.c17 = 
  CASE WHEN IFNULL(subq0.c13, subq0.c17) IS NOT NULL THEN subq0.c17
       ELSE subq0.c5
  END THEN subq0.c11
      WHEN CAST(subq0.c12 AS INTEGER) <> subq0.c11 AND subq0.c17 = subq0.c6 THEN subq0.c7
      WHEN subq0.c17 <> subq0.c11 THEN subq0.c13
      WHEN subq0.c17 <> subq0.c12 THEN subq0.c6
      ELSE TRUE
 END AS c8, NULL AS c9, subq0.c12 AS c10, subq0.c10 AS c11, subq0.c6 AS c12, subq0.c7 AS c13, subq0.c9 AS c14
FROM (SELECT t1.c1 AS c5, t1.c1 AS c6, t1.c1 AS c7, t1.c2 AS c8, t1.c3 AS c9, t1.c3 AS c10, t1.c0 AS c11, t1.c0 AS c12, t1.c0 AS c13, t1.c0 AS c14, t1.c0 AS c15, t1.c1 AS c16, t1.c4 AS c17, t1.c3 AS c18
   FROM t0 AS t1
   WHERE true
   ORDER BY c12) as subq0
WHERE 
 CASE WHEN true THEN CAST(CAST(subq0.c7 AS TEXT) AS BOOLEAN)
      ELSE subq0.c9
 END = subq0.c9
ORDER BY c22, c9;
SELECT subq0.c5 AS c9, subq0.c5 AS c10, subq0.c8 AS c11, subq0.c6 AS c12, subq0.c7 AS c13, subq0.c7 AS c14, subq0.c7 AS c15, subq0.c8 AS c16, subq0.c5 AS c17, 
 CASE subq0.c8 WHEN subq0.c6 <> subq0.c7 THEN subq0.c8
      WHEN subq0.c5 = subq0.c8 THEN subq0.c6
      WHEN subq0.c7 IS NULL THEN FALSE
      WHEN subq0.c7 = 
  CASE WHEN subq0.c6 <> subq0.c6 THEN subq0.c5
       ELSE subq0.c8
  END THEN subq0.c5
      WHEN subq0.c7 = TRUE THEN subq0.c5
      WHEN EXISTS (
  SELECT COALESCE(t5.c3, subq1.c8, t5.c4, t5.c0, CAST(subq1.c8 AS TEXT)) AS c9, t5.c2 AS c10, t5.c4 AS c11, subq1.c8 AS c12, t5.c2 AS c13, subq1.c8 AS c14, COALESCE(t5.c3, t5.c0, NULL) AS c15, subq1.c8 AS c16, t5.c4 AS c17, subq1.c6 AS c18, 
    CASE WHEN t5.c3 <> NULL THEN subq1.c8
         ELSE subq1.c6
    END AS c19, subq1.c7 AS c20, t5.c0 AS c21, t5.c4 AS c22, subq1.c5 AS c23, NULLIF(subq1.c7, t5.c2) AS c24, subq1.c8 AS c25, t5.c2 AS c26, subq1.c6 AS c27, subq1.c8 AS c28, subq1.c8 AS c29, t5.c4 AS c30, subq1.c6 AS c31, subq1.c7 AS c32, COALESCE(t5.c1, subq1.c8, t5.c2, subq1.c8, t5.c3, t5.c1) AS c33
   FROM t0 AS t5
     LEFT JOIN (SELECT t6.c2 AS c5, t6.c0 AS c6, t6.c2 AS c7, t6.c2 AS c8
       FROM t0 AS t6
       WHERE t6.c2 = t6.c1
       ORDER BY c5 DESC, c6 ASC, c8) as subq1     
      ON (t5.c3 = t5.c3 AND t5.c0 <> t5.c1 AND t5.c4 <> t5.c2 OR subq1.c7 = subq1.c7)
   WHERE subq1.c6 IS NULL OR subq1.c8 = t5.c2 AND t5.c1 IS NOT NULL OR 
    CASE t5.c4 WHEN t5.c3 IS NOT NULL THEN t5.c0
         WHEN 
     CASE WHEN true AND subq1.c8 <> t5.c1 AND t5.c1 IS NULL THEN subq1.c8
          ELSE subq1.c8
     END <> t5.c2 THEN subq1.c6
         WHEN subq1.c7 <> TRUE THEN t5.c0
         WHEN t5.c1 = t5.c4 THEN subq1.c6
         WHEN true OR EXISTS (
     SELECT t7.c4 AS c5, t7.c2 AS c6, t7.c4 AS c7, t7.c4 AS c8, TRUE AS c9
      FROM t0 AS t7
      WHERE EXISTS (
       SELECT t8.c0 AS c5, t8.c4 AS c6, t8.c4 AS c7, t8.c0 AS c8, t8.c3 AS c9, t8.c4 AS c10, t8.c3 AS c11, t8.c4 AS c12, t8.c4 AS c13, t8.c4 AS c14, t8.c3 AS c15, t8.c4 AS c16, t8.c1 AS c17, t8.c3 AS c18, t8.c1 AS c19, t8.c3 AS c20, t8.c2 AS c21, t8.c4 AS c22, FALSE AS c23, FALSE AS c24, t8.c0 AS c25
        FROM t0 AS t8
        WHERE t8.c4 IS NOT NULL AND t8.c4 <> t8.c1 AND t8.c4 = t8.c2 OR t8.c0 = t8.c2
        ORDER BY c24 COLLATE NOCASE DESC, c22 DESC, c23
        LIMIT 3179102365151382579 OFFSET 3725863306534793420
       )
      ORDER BY c9, c6 ASC, c8 ASC
     ) THEN subq1.c5
         WHEN subq1.c8 <> t5.c0 THEN subq1.c7
         WHEN false THEN t5.c3
         WHEN subq1.c5 <> t5.c0 AND t5.c4 <> subq1.c7 THEN subq1.c8
         WHEN t5.c1 <> t5.c2 THEN t5.c0
         WHEN subq1.c8 IS NULL THEN subq1.c6
         WHEN NULLIF(subq1.c6, subq1.c6) <> t5.c4 THEN t5.c0
         ELSE t5.c2
    END IS NOT NULL
   ORDER BY c16 COLLATE RTRIM, c28 COLLATE RTRIM
   LIMIT 2191938096911567980 
  ) THEN subq0.c5
      WHEN subq0.c5 <> subq0.c5 THEN subq0.c5
      ELSE subq0.c5
 END AS c26, subq0.c7 AS c27, subq0.c8 AS c28, subq0.c6 AS c29
FROM (SELECT t1.c0 AS c5, t1.c0 AS c6, FALSE AS c7, t4.c1 AS c8
   FROM t0 AS t1
      INNER JOIN t0 AS t2      
       ON (t2.c1 = t2.c4 AND true AND true AND t1.c2 IS NULL OR true AND t1.c2 = t1.c0 OR t2.c4 = t2.c4 AND EXISTS (
        SELECT t3.c0 AS c5, t3.c0 AS c6, t3.c1 AS c7, t3.c2 AS c8, t3.c4 AS c9, t3.c0 AS c10, t3.c2 AS c11, t3.c2 AS c12, t3.c1 AS c13, t3.c0 AS c14
         FROM t0 AS t3
         WHERE t3.c2 = t3.c4 AND true
         ORDER BY c5 COLLATE BINARY
         LIMIT 7027837024114780038 OFFSET 3745299517886390381
        ))
     INNER JOIN t0 AS t4     
      ON (t1.c3 <> t2.c3 OR t2.c0 <> t4.c0)
   WHERE NULL = t2.c3 AND t1.c0 <> 
    CASE t2.c0 WHEN t4.c4 <> t4.c1 THEN t2.c2
         WHEN COALESCE(t1.c0, t4.c0, t4.c3, t4.c3) <> t4.c4 THEN t1.c0
         WHEN false THEN t4.c4
         WHEN t1.c1 <> t4.c4 THEN t1.c1
         ELSE t1.c0
    END AND FALSE IS NULL AND NULLIF(t4.c1, t1.c0) IS NULL OR t4.c0 <> t1.c1
   ORDER BY c6 ASC, c8) as subq0
WHERE subq0.c7 IS NOT NULL
ORDER BY c17 DESC
LIMIT 6397331995978273016 OFFSET 6576966710524688807;
SELECT TRUE AS c6
FROM (SELECT t1.c1 AS c5
   FROM t0 AS t1
   WHERE t1.c4 = t1.c1
   ORDER BY c5 ASC
   LIMIT 9138493561022644835 ) as subq0
WHERE subq0.c5 IS NOT NULL
ORDER BY c6 ASC, c6 COLLATE RTRIM, c6 COLLATE RTRIM ASC, c6 ASC
LIMIT 825629310544339900 ;
SELECT subq1.c8 AS c11, subq1.c8 AS c12, subq1.c23 AS c13, 
 CASE subq1.c18 WHEN CAST(subq1.c16 AS TEXT) <> subq1.c15 THEN subq1.c20
      WHEN replace(NULL,'text86',NULL) IS NOT NULL OR subq1.c16 <> subq1.c16 THEN subq1.c22
      WHEN EXISTS (
  SELECT t4.c2 AS c5, t5.c2 AS c6, t7.c2 AS c7, t6.c2 AS c8, t5.c3 AS c9, t5.c3 AS c10
   FROM t0 AS t4
     INNER JOIN (
     t0 AS t5
      INNER JOIN (
      t0 AS t6
       INNER JOIN t0 AS t7       
        ON (t6.c4 = t7.c4 OR t6.c1 = t6.c2)      )
       ON (t7.c2 <> TRUE)     )
      ON (t7.c4 = t5.c1)
   WHERE t6.c2 IS NULL
   ORDER BY c6, c7 ASC, c5 ASC
   LIMIT 8190069677885531893 OFFSET 7955928956126160601
  ) THEN subq1.c20
      WHEN EXISTS (
  SELECT 
    CASE t9.c4 WHEN t9.c4 <> t9.c2 THEN t9.c1
         WHEN 
     CASE t9.c1 WHEN t8.c4 = t9.c4 AND t9.c3 = t8.c3 THEN t8.c4
          WHEN t8.c0 = t8.c4 THEN t9.c4
          WHEN t9.c3 = t8.c3 OR TRUE <> t8.c4 OR t8.c4 <> t8.c2 AND t8.c1 = t8.c0 THEN t9.c1
          ELSE t9.c4
     END = t9.c4 THEN t9.c2
         WHEN t9.c2 IS NOT NULL THEN t8.c2
         WHEN EXISTS (
     SELECT t10.c2 AS c5, t10.c4 AS c6, t10.c1 AS c7
      FROM t0 AS t10
      WHERE true
      ORDER BY c5, c6 ASC
      LIMIT 8447028863694351935 
     ) THEN t9.c4
         WHEN 
     CASE t8.c0 WHEN false THEN t8.c2
          WHEN t8.c0 <> t9.c2 AND t8.c2 <> t8.c2 OR t9.c1 <> t8.c4 THEN t8.c4
          ELSE t9.c2
     END = CAST(t9.c3 AS TEXT) AND t9.c3 = t8.c3 OR t9.c0 = t9.c2 THEN t9.c4
         WHEN t9.c0 <> t9.c2 AND t8.c3 <> t8.c3 THEN t8.c4
         WHEN t8.c2 <> t9.c4 THEN t8.c4
         WHEN false THEN t8.c4
         WHEN t8.c3 IS NOT NULL THEN t9.c1
         WHEN t8.c4 = t8.c4 THEN t8.c4
         ELSE t8.c0
    END AS c8, t8.c0 AS c9, t9.c2 AS c10
   FROM t0 AS t8
     INNER JOIN t0 AS t9     
      ON (t9.c1 = t9.c2)
   WHERE EXISTS (
    SELECT t11.c0 AS c5, t11.c0 AS c6, t11.c2 AS c7, t11.c2 AS c8, t11.c1 AS c9, t11.c3 AS c10, t11.c2 AS c11, t11.c2 AS c12, t11.c0 AS c13, t11.c3 AS c14, t11.c2 AS c15, t11.c2 AS c16, t11.c4 AS c17, t11.c3 AS c18, t11.c4 AS c19
     FROM t0 AS t11
     WHERE EXISTS (
      SELECT t12.c3 AS c5
       FROM t0 AS t12
       WHERE t12.c3 <> t12.c3
       ORDER BY c5 ASC, c5 ASC, c5 COLLATE NOCASE, c5
      ) AND EXISTS (
      SELECT t13.c2 AS c5, FALSE AS c6, t13.c3 AS c7, t13.c0 AS c8, t13.c0 AS c9, t13.c3 AS c10, t13.c4 AS c11, t13.c0 AS c12, t13.c2 AS c13
       FROM t0 AS t13
       WHERE t13.c4 IS NULL OR t13.c3 <> t13.c3 OR false AND t13.c3 <> t13.c3 OR t13.c4 <> t13.c1
       ORDER BY c6
      ) OR t11.c1 <> t11.c2 OR t11.c0 <> t11.c1 OR t11.c2 <> t11.c2 AND t11.c0 <> t11.c1
     ORDER BY c16 DESC, c6 DESC, c16
     LIMIT 2488614322545673251 OFFSET 8186312745583813397
    )
   ORDER BY c8 ASC, c8 COLLATE RTRIM ASC, c9
   LIMIT 8852300224466591057 OFFSET 1375727001509368824
  ) THEN subq1.c16
      WHEN subq1.c19 <> subq1.c19 THEN NULL
      ELSE subq1.c12
 END AS c14, subq1.c17 AS c15, subq1.c15 AS c16, subq1.c16 AS c17
FROM (SELECT subq0.c5 AS c8, subq0.c6 AS c9, 
    CASE subq0.c7 WHEN subq0.c7 <> subq0.c7 THEN subq0.c7
         WHEN subq0.c6 = subq0.c6 THEN subq0.c7
         WHEN TRUE = subq0.c5 OR subq0.c5 <> subq0.c5 THEN subq0.c7
         WHEN subq0.c7 = subq0.c7 THEN subq0.c7
         WHEN EXISTS (
     SELECT t2.c4 AS c5, t2.c1 AS c6, t2.c3 AS c7, t2.c3 AS c8, t2.c3 AS c9, t2.c1 AS c10, t2.c1 AS c11
      FROM t0 AS t2
      WHERE false
      ORDER BY c5, c5 ASC, c5 ASC
      LIMIT 8160780888367313199 
     ) THEN subq0.c7
         WHEN true THEN subq0.c7
         ELSE subq0.c7
    END AS c12, COALESCE(subq0.c5, instr('text97',FALSE), subq0.c5, subq0.c7, subq0.c5, subq0.c6) AS c13, 
    CASE WHEN subq0.c6 = subq0.c6 OR subq0.c6 IS NOT NULL THEN subq0.c7
         ELSE subq0.c7
    END AS c14, TRUE AS c15, subq0.c7 AS c16, subq0.c6 AS c17, subq0.c7 AS c18, subq0.c7 AS c19, subq0.c7 AS c20, 
    CASE WHEN subq0.c5 = subq0.c5 AND subq0.c7 <> subq0.c7 AND true AND subq0.c7 IS NULL OR subq0.c5 <> subq0.c6 THEN subq0.c6
         ELSE subq0.c6
    END AS c21, NULL AS c22, subq0.c6 AS c23, 
    CASE subq0.c5 WHEN subq0.c5 = subq0.c6 THEN subq0.c6
         WHEN subq0.c5 = subq0.c6 THEN subq0.c5
         WHEN EXISTS (
     SELECT t3.c2 AS c5, t3.c4 AS c6, t3.c1 AS c7
      FROM t0 AS t3
      WHERE t3.c2 = t3.c2
      ORDER BY c6, c5, c7 COLLATE RTRIM
      LIMIT 6833184680195132842 OFFSET 7794660735299495993
     ) THEN subq0.c6
         WHEN subq0.c7 <> subq0.c7 THEN subq0.c5
         WHEN subq0.c7 = subq0.c7 THEN subq0.c6
         WHEN subq0.c6 = subq0.c5 THEN subq0.c6
         WHEN true THEN subq0.c6
         ELSE subq0.c5
    END AS c8, subq0.c5 AS c9, subq0.c5 AS c10
   FROM (SELECT t1.c4 AS c5, t1.c1 AS c6, t1.c3 AS c7
      FROM t0 AS t1
      WHERE t1.c1 = t1.c1
      ORDER BY c5, c7
      LIMIT 6986650299178021932 OFFSET 1957833868893705250) as subq0
   WHERE subq0.c5 <> subq0.c5
   ORDER BY c9 DESC, c13 COLLATE NOCASE) as subq1
WHERE true
ORDER BY c16, c16
LIMIT 7217052593023191747 ;
SELECT CAST(t1.c4 AS INTEGER) AS c5, t2.c4 AS c6, t2.c0 AS c7, CAST(nullif(NULL,TRUE) AS TEXT) AS c8
FROM t0 AS t1
  INNER JOIN (
  t0 AS t2
   LEFT JOIN t0 AS t3   
    ON (t2.c2 = t3.c0)  )
   ON (IFNULL(t2.c0, t3.c1) <> t2.c0 AND t1.c0 <> t2.c4)
WHERE t2.c0 = COALESCE(COALESCE(
   CASE WHEN t2.c0 <> t1.c2 THEN like(TRUE,53,'򃏒')
        ELSE t2.c0
   END, t1.c2, t3.c3, t2.c3, t2.c2), changes(), t1.c0, t2.c4) OR t1.c4 <> t2.c2
ORDER BY c8 ASC
LIMIT 4660051973442689040 OFFSET 5130609385403992168;
SELECT t1.c2 AS c5, t1.c4 AS c6, t1.c1 AS c7, t1.c4 AS c8, t1.c1 AS c9, 
 CASE t1.c3 WHEN EXISTS (
  SELECT CAST(t2.c2 AS BOOLEAN) AS c5, t2.c2 AS c6
   FROM t0 AS t2
     INNER JOIN t0 AS t3     
      ON (t3.c1 <> t2.c4)
   WHERE t2.c3 <> t3.c3
   ORDER BY c6 ASC
   LIMIT 6421186858572944931 OFFSET 1619844355595981402
  ) OR t1.c0 = IFNULL(t1.c0, t1.c4) THEN t1.c3
      WHEN t1.c0 <> t1.c1 THEN 
  CASE t1.c3 WHEN EXISTS (
   SELECT t4.c1 AS c5, t4.c0 AS c6, t4.c3 AS c7, COALESCE(t4.c3, t4.c3, t4.c0) AS c8, t4.c2 AS c9, t4.c4 AS c10
    FROM t0 AS t4
    WHERE t4.c2 <> t4.c0
    ORDER BY c8 COLLATE BINARY ASC, c9 ASC
    LIMIT 2497474371909031192 
   ) THEN t1.c3
       WHEN false THEN t1.c3
       WHEN 
   CASE WHEN t1.c3 <> t1.c3 THEN NULLIF(t1.c2, t1.c0)
        ELSE t1.c1
   END <> t1.c0 THEN t1.c3
       WHEN t1.c0 <> t1.c4 OR t1.c2 = t1.c0 THEN t1.c3
       ELSE NULLIF(t1.c3, t1.c3)
  END
      WHEN t1.c1 = t1.c4 OR t1.c1 = t1.c2 THEN t1.c3
      WHEN 
  CASE WHEN t1.c2 = t1.c0 THEN t1.c4
       ELSE t1.c1
  END = t1.c0 THEN t1.c3
      WHEN t1.c0 = t1.c1 THEN 
  CASE WHEN t1.c2 = 
   CASE t1.c1 WHEN t1.c0 <> t1.c0 THEN t1.c2
        WHEN t1.c1 <> t1.c4 THEN t1.c0
        WHEN t1.c0 = 
    CASE WHEN FALSE IS NOT NULL THEN t1.c4
         ELSE TRUE
    END THEN t1.c1
        WHEN t1.c4 = t1.c4 THEN t1.c4
        ELSE t1.c0
   END THEN t1.c3
       ELSE t1.c3
  END
      WHEN t1.c4 = t1.c0 THEN 
  CASE WHEN ltrim( FALSE) IS NULL THEN t1.c3
       ELSE t1.c3
  END
      WHEN t1.c2 <> CAST(t1.c3 AS BOOLEAN) THEN t1.c3
      WHEN t1.c0 <> t1.c2 AND t1.c0 <> t1.c4 AND false OR NULLIF(t1.c4, FALSE) = t1.c0 THEN t1.c3
      WHEN t1.c1 = t1.c2 THEN t1.c3
      ELSE t1.c3
 END AS c11, 
 CASE WHEN t1.c0 <> t1.c0 THEN t1.c2
      ELSE t1.c2
 END AS c12, FALSE AS c13, FALSE AS c14
FROM t0 AS t1
WHERE t1.c1 = t1.c0 OR t1.c0 = t1.c0
ORDER BY c14 COLLATE RTRIM, c11 ASC
LIMIT 5757538757133904659 OFFSET 1418398010565386076;
SELECT 
 CASE t1.c3 WHEN t1.c1 = 
  CASE WHEN t1.c3 = t1.c3 THEN t1.c1
       ELSE t1.c0
  END THEN t1.c3
      WHEN t1.c2 = t1.c1 THEN t1.c3
      WHEN t1.c3 <> NULLIF(t1.c3, t1.c3) THEN t1.c3
      WHEN t1.c4 IS NOT NULL THEN t1.c3
      WHEN true AND CAST(t1.c1 AS BOOLEAN) IS NOT NULL OR EXISTS (
  SELECT t8.c4 AS c5, t5.c2 AS c6, t3.c3 AS c7, t4.c0 AS c8, 
    CASE t2.c2 WHEN t2.c3 <> t6.c3 THEN t4.c2
         WHEN t8.c4 IS NULL THEN t6.c2
         WHEN t3.c2 = t8.c4 THEN t3.c0
         WHEN t3.c2 <> t3.c4 OR t3.c0 IS NOT NULL THEN t5.c2
         WHEN true THEN t5.c1
         WHEN EXISTS (
     SELECT t9.c4 AS c5, t9.c2 AS c6, t9.c3 AS c7, t9.c3 AS c8, t9.c3 AS c9, t9.c0 AS c10, t9.c2 AS c11, t9.c2 AS c12, t9.c2 AS c13, t9.c0 AS c14
      FROM t0 AS t9
      WHERE false
      ORDER BY c12 DESC, c9
     ) THEN FALSE
         WHEN t4.c2 <> t3.c1 THEN IFNULL(t3.c0, t8.c2)
         ELSE t5.c0
    END AS c15, t3.c4 AS c16, t6.c0 AS c17, t5.c2 AS c18, t6.c4 AS c19, t3.c0 AS c20, t3.c4 AS c21, NULLIF(
     CASE t8.c3 WHEN t8.c4 <> t8.c1 THEN t6.c3
          WHEN EXISTS (
      SELECT t10.c0 AS c5
       FROM t0 AS t10
       WHERE t10.c4 <> t10.c1 OR false
       ORDER BY c5, c5 ASC, c5, c5 COLLATE RTRIM ASC
       LIMIT 7784237889573323286 OFFSET 5420123432071777847
      ) THEN t8.c3
          WHEN t4.c4 <> t2.c2 THEN t4.c3
          WHEN t2.c3 <> t4.c3 OR t2.c2 = 
      CASE t6.c0 WHEN true THEN t2.c0
           WHEN t8.c0 = t5.c0 THEN t5.c1
           WHEN true THEN t5.c2
           WHEN t8.c0 IS NULL THEN t8.c1
           WHEN t5.c3 <> t3.c3 AND t6.c2 IS NULL THEN t5.c2
           WHEN t2.c4 <> t8.c0 OR t8.c2 <> t2.c0 AND t4.c4 <> t5.c1 OR t5.c2 = t4.c2 THEN t5.c0
           WHEN t2.c2 <> t8.c0 THEN t6.c2
           WHEN t6.c3 IS NOT NULL THEN t8.c0
           WHEN t3.c2 <> t6.c0 OR t6.c0 <> t6.c1 OR t3.c2 = t8.c1 OR t2.c1 <> FALSE OR t5.c3 = t6.c3 OR t2.c1 = t4.c0 THEN FALSE
           WHEN t6.c3 <> t8.c3 THEN TRUE
           WHEN false AND t3.c2 <> t8.c1 THEN t6.c0
           ELSE t3.c4
      END AND t8.c0 = t3.c1 THEN t6.c3
          WHEN t4.c2 = t3.c4 THEN t4.c3
          WHEN NULLIF(t2.c1, t2.c1) <> t8.c0 THEN t2.c3
          WHEN t4.c4 IS NOT NULL THEN t6.c3
          WHEN t8.c2 IS NOT NULL THEN t6.c3
          WHEN t6.c0 = t4.c4 THEN t4.c3
          WHEN t2.c1 <> t2.c4 THEN NULL
          WHEN t3.c4 <> t2.c0 THEN t6.c3
          WHEN t4.c2 IS NOT NULL THEN t6.c3
          ELSE t4.c3
     END, t3.c3) AS c6, IFNULL(t4.c1, t2.c0) AS c7, t6.c1 AS c8, t2.c0 AS c9, t3.c4 AS c10, t4.c2 AS c11, t3.c3 AS c12, t8.c0 AS c13, t4.c3 AS c14, t2.c3 AS c15, NULLIF(t5.c4, t5.c4) AS c16, t8.c1 AS c17, t3.c3 AS c18, t3.c4 AS c19
   FROM t0 AS t2
       LEFT OUTER JOIN t0 AS t3       
        ON (true OR t2.c4 <> t2.c1 AND false AND t3.c3 = t3.c3 OR t3.c3 <> t3.c3 OR t2.c1 <> t3.c0)
      LEFT JOIN (
      t0 AS t4
        LEFT OUTER JOIN t0 AS t5        
         ON (true AND t4.c4 <> t5.c2)
       LEFT JOIN t0 AS t6       
        ON (EXISTS (
         SELECT t7.c0 AS c5
          FROM t0 AS t7
          WHERE false
          ORDER BY c5, c5, c5, c5
          LIMIT 1112576047287702053 OFFSET 2284674334813969277
         ) AND t6.c2 <> t5.c4 AND false OR t4.c3 = t6.c3)      )
       ON (t2.c3 <> t2.c3)
     LEFT JOIN t0 AS t8     
      ON (t8.c4 = t5.c1)
   WHERE 
    CASE t3.c2 WHEN EXISTS (
     SELECT t11.c1 AS c5, t11.c1 AS c6
      FROM t0 AS t11
      WHERE EXISTS (
       SELECT t12.c4 AS c5, t12.c1 AS c6, t12.c0 AS c7, t12.c0 AS c8, t12.c3 AS c9, t12.c0 AS c10, t12.c0 AS c11, t12.c3 AS c12, t12.c3 AS c13, t12.c0 AS c14, t12.c2 AS c15, t12.c2 AS c16, t12.c2 AS c17, t12.c4 AS c18, t12.c3 AS c19
        FROM t0 AS t12
        WHERE t12.c2 IS NULL
        ORDER BY c15, c13 COLLATE NOCASE, c6 DESC
       ) AND true OR t11.c4 <> t11.c0
      ORDER BY c6, c5 ASC, c5, c5
      LIMIT 1429918908859556151 OFFSET 7110365763799505033
     ) AND t2.c1 <> t8.c2 AND t3.c2 <> t8.c0 OR t4.c0 = t4.c0 THEN t6.c1
         WHEN t4.c1 <> t4.c4 THEN t6.c0
         WHEN t3.c1 IS NULL THEN t8.c1
         WHEN t2.c1 <> t3.c2 THEN t5.c0
         ELSE t2.c0
    END <> t5.c0
   ORDER BY c7, c17 DESC
   LIMIT 4819972491395393718 
  ) AND 
  CASE t1.c0 WHEN t1.c0 <> t1.c0 THEN t1.c2
       WHEN t1.c1 IS NULL THEN t1.c4
       WHEN 
   CASE t1.c0 WHEN EXISTS (
    SELECT t13.c4 AS c5, t13.c0 AS c6, t13.c3 AS c7
     FROM t0 AS t13
     WHERE t13.c2 <> t13.c2
     ORDER BY c7, c6
     LIMIT 4419669646520015638 OFFSET 1972548673007983187
    ) THEN t1.c4
        WHEN false OR t1.c0 = t1.c2 THEN t1.c1
        WHEN t1.c0 IS NOT NULL THEN t1.c1
        WHEN EXISTS (
    SELECT t14.c1 AS c5, t14.c4 AS c6, COALESCE(t14.c3, t14.c3) AS c7, t14.c4 AS c8, TRUE AS c9, t14.c0 AS c10, t14.c1 AS c11, t14.c1 AS c12, t14.c4 AS c13, FALSE AS c14, t14.c1 AS c15, t14.c2 AS c16
     FROM t0 AS t14
     WHERE t14.c1 = t14.c1
     ORDER BY c8
    ) THEN t1.c4
        ELSE t1.c1
   END <> 
   CASE t1.c4 WHEN t1.c3 IS NULL THEN t1.c4
        WHEN 42 IS NULL THEN t1.c1
        WHEN EXISTS (
    SELECT t15.c2 AS c5
     FROM t0 AS t15
     WHERE FALSE <> t15.c0 OR t15.c0 <> t15.c4
     ORDER BY c5 COLLATE NOCASE, c5, c5 ASC, c5 COLLATE NOCASE
     LIMIT 5994853927547657609 
    ) THEN t1.c2
        WHEN t1.c2 <> t1.c2 THEN FALSE
        WHEN t1.c1 <> t1.c1 OR 
    CASE WHEN t1.c2 = t1.c1 AND t1.c3 = t1.c3 THEN t1.c0
         ELSE FALSE
    END = t1.c2 THEN CAST(t1.c1 AS INTEGER)
        WHEN t1.c3 = t1.c3 OR t1.c1 <> t1.c0 AND t1.c2 = t1.c0 AND t1.c0 = t1.c0 AND t1.c2 <> COALESCE(t1.c3, t1.c4) THEN t1.c1
        ELSE t1.c1
   END AND t1.c4 = t1.c1 THEN t1.c1
       WHEN t1.c4 IS NULL AND EXISTS (
   SELECT TRUE AS c8, t16.c0 AS c9, t16.c1 AS c10
    FROM t0 AS t16
      INNER JOIN t0 AS t17      
       ON (EXISTS (
        SELECT t18.c0 AS c5, t18.c1 AS c6, t18.c2 AS c7
         FROM t0 AS t18
         WHERE t18.c0 <> t18.c0
         ORDER BY c7
         LIMIT 79863893643966641 OFFSET 8147371069745079689
        ))
    WHERE t16.c0 <> CAST(t16.c1 AS BOOLEAN)
    ORDER BY c9, c8 DESC, c8
    LIMIT 23840680065567968 OFFSET 3112566001836980842
   ) THEN t1.c2
       WHEN t1.c4 <> 
   CASE t1.c2 WHEN false AND t1.c3 = t1.c3 THEN t1.c4
        WHEN t1.c3 = t1.c3 OR t1.c1 <> 
    CASE WHEN t1.c2 = t1.c1 THEN t1.c4
         ELSE TRUE
    END OR t1.c2 = t1.c4 THEN t1.c1
        WHEN t1.c0 <> t1.c1 THEN t1.c1
        WHEN upper( 'text80') IS NULL OR t1.c2 = t1.c2 THEN t1.c2
        WHEN 
    CASE WHEN FALSE <> FALSE THEN t1.c2
         ELSE t1.c2
    END = IFNULL(t1.c2, t1.c4) OR t1.c3 <> t1.c3 THEN t1.c2
        WHEN t1.c3 <> CAST(t1.c4 AS BOOLEAN) AND t1.c1 = t1.c4 THEN t1.c0
        WHEN t1.c4 = t1.c2 THEN 
    CASE t1.c1 WHEN t1.c2 = t1.c0 THEN t1.c4
         WHEN 
     CASE t1.c3 WHEN EXISTS (
      SELECT t19.c4 AS c5, t19.c2 AS c6, t19.c4 AS c7
       FROM t0 AS t19
       WHERE t19.c2 IS NOT NULL
       ORDER BY c6 DESC
       LIMIT 3400298393515898984 OFFSET 2670060333696768284
      ) THEN t1.c3
          ELSE 'text10'
     END IS NOT NULL THEN t1.c2
         WHEN t1.c4 = t1.c4 THEN t1.c4
         WHEN t1.c1 IS NULL THEN t1.c0
         ELSE t1.c4
    END
        WHEN t1.c0 = 
    CASE WHEN t1.c4 = t1.c4 THEN t1.c1
         ELSE t1.c2
    END THEN t1.c2
        WHEN typeof( 'text64') IS NULL THEN t1.c4
        ELSE t1.c2
   END AND false AND t1.c2 IS NOT NULL OR t1.c3 = t1.c3 OR t1.c2 = t1.c4 THEN t1.c0
       WHEN hex( TRUE) IS NULL OR false AND COALESCE(t1.c2, t1.c4) = t1.c4 OR t1.c2 = t1.c0 THEN t1.c2
       WHEN likelihood(TRUE,0.949523) IS NULL OR t1.c4 IS NOT NULL THEN 
   CASE t1.c0 WHEN true OR t1.c3 = t1.c3 THEN t1.c1
        WHEN t1.c2 <> t1.c2 OR EXISTS (
    SELECT t20.c1 AS c5, t20.c2 AS c6
     FROM t0 AS t20
     WHERE t20.c0 = t20.c0
     ORDER BY c6, c6 ASC, c5 COLLATE NOCASE ASC, c5
     LIMIT 7536196319269242212 
    ) AND t1.c4 = t1.c0 THEN t1.c2
        WHEN t1.c1 <> t1.c0 THEN t1.c1
        ELSE t1.c4
   END
       ELSE t1.c0
  END <> t1.c4 THEN t1.c3
      WHEN false OR t1.c1 <> 
  CASE WHEN false OR t1.c4 IS NULL THEN 
   CASE t1.c4 WHEN false AND t1.c0 IS NULL AND t1.c1 IS NULL THEN t1.c1
        WHEN t1.c3 <> t1.c3 OR t1.c4 IS NOT NULL OR t1.c2 IS NULL THEN CAST(t1.c1 AS INTEGER)
        WHEN t1.c0 <> t1.c2 THEN t1.c1
        WHEN t1.c4 <> t1.c1 THEN t1.c1
        WHEN 
    CASE WHEN t1.c3 = t1.c3 THEN t1.c3
         ELSE 
     CASE WHEN t1.c3 IS NOT NULL THEN t1.c3
          ELSE t1.c3
     END
    END <> t1.c3 OR t1.c3 IS NULL THEN t1.c4
        WHEN t1.c2 <> t1.c1 THEN t1.c4
        ELSE t1.c0
   END
       ELSE t1.c0
  END THEN t1.c3
      WHEN t1.c1 = t1.c0 THEN t1.c3
      WHEN t1.c2 <> t1.c0 THEN t1.c3
      ELSE t1.c3
 END AS c7, t1.c2 AS c8, t1.c2 AS c9, t1.c2 AS c10, COALESCE(
  CASE WHEN t1.c1 IS NOT NULL THEN t1.c1
       ELSE COALESCE(t1.c3, 
    CASE WHEN t1.c3 = t1.c3 THEN t1.c1
         ELSE t1.c3
    END, t1.c3, t1.c3)
  END, 
  CASE t1.c3 WHEN t1.c4 <> t1.c1 THEN NULL
       WHEN t1.c3 IS NULL THEN t1.c3
       WHEN t1.c0 <> t1.c2 OR t1.c4 <> t1.c1 THEN t1.c3
       WHEN t1.c3 = t1.c3 AND true OR t1.c0 = 
   CASE WHEN t1.c1 = t1.c0 THEN t1.c4
        ELSE t1.c4
   END THEN t1.c3
       WHEN t1.c2 IS NOT NULL THEN t1.c3
       WHEN 
   CASE WHEN trim(24,TRUE) IS NOT NULL THEN t1.c1
        ELSE t1.c0
   END = t1.c0 THEN t1.c3
       WHEN t1.c3 = t1.c3 THEN NULLIF(t1.c3, t1.c3)
       WHEN t1.c4 <> t1.c2 AND t1.c0 <> t1.c1 AND t1.c2 <> t1.c4 THEN t1.c3
       ELSE CAST(t1.c4 AS TEXT)
  END, t1.c3, t1.c0, t1.c0, t1.c0) AS c11
FROM t0 AS t1
WHERE CAST(t1.c1 AS INTEGER) IS NULL
ORDER BY c9 DESC, c10 ASC, c8 COLLATE NOCASE
LIMIT 6524415081436830756 OFFSET 8974316330235316679;
INSERT INTO t0 VALUES (TRUE, TRUE, FALSE, NULL, TRUE);
SELECT subq0.c10 AS c13, subq0.c6 AS c14, subq0.c12 AS c15, subq0.c5 AS c16
FROM (SELECT t2.c0 AS c5, t1.c0 AS c6, t2.c3 AS c7, t3.c4 AS c8, t4.c0 AS c9, t3.c0 AS c10, t1.c4 AS c11, t2.c2 AS c12
   FROM t0 AS t1
       INNER JOIN t0 AS t2       
        ON (t2.c4 IS NULL)
      LEFT JOIN t0 AS t3      
       ON (false)
     LEFT JOIN t0 AS t4     
      ON (true)
   WHERE t4.c4 = CAST(t4.c2 AS TEXT)
   ORDER BY c6 COLLATE RTRIM DESC
   LIMIT 4339039501116809916 ) as subq0
WHERE subq0.c5 = subq0.c12
ORDER BY c13 COLLATE NOCASE DESC, c13, c16
LIMIT 7701240380609567352 OFFSET 6062542394582981957;
SELECT subq0.c5 AS c10, subq0.c9 AS c11, subq0.c8 AS c12, subq0.c6 AS c13
FROM (SELECT t1.c3 AS c5, t1.c0 AS c6, t1.c3 AS c7, t1.c1 AS c8, t1.c0 AS c9
   FROM t0 AS t1
   WHERE t1.c2 = CAST(t1.c4 AS TEXT)
   ORDER BY c7
   LIMIT 6937536879641773356 OFFSET 1288081267646996483) as subq0
WHERE subq0.c6 = COALESCE(TRUE, subq0.c7, subq0.c7, subq0.c7, subq0.c5)
ORDER BY c11 DESC, c12 COLLATE NOCASE DESC
LIMIT 4958563531914704813 OFFSET 3845421372727715935;
SELECT t1.c1 AS c5, t1.c0 AS c6, t1.c0 AS c7, t1.c2 AS c8, t1.c3 AS c9
FROM t0 AS t1
WHERE EXISTS (
 SELECT subq0.c5 AS c7, subq0.c6 AS c8, 
   CASE subq0.c6 WHEN subq0.c5 <> subq0.c5 THEN subq0.c6
        WHEN subq0.c6 <> subq0.c5 THEN TRUE
        ELSE subq0.c6
   END AS c9, subq0.c6 AS c10, subq0.c5 AS c11, subq0.c6 AS c12
  FROM (SELECT t2.c1 AS c5, t2.c2 AS c6
     FROM t0 AS t2
     WHERE t2.c1 <> COALESCE(t2.c1, t2.c2, t2.c3, t2.c4)
     ORDER BY c5, c6
     LIMIT 2344054724609529394 ) as subq0
  WHERE rtrim( FALSE) IS NULL OR EXISTS (
   SELECT subq1.c5 AS c15, subq1.c9 AS c16, subq1.c8 AS c17
    FROM (SELECT t3.c0 AS c5, t3.c2 AS c6, t3.c4 AS c7, t3.c2 AS c8, t3.c3 AS c9, t3.c3 AS c10, t3.c2 AS c11, t3.c2 AS c12, t3.c4 AS c13, t3.c4 AS c14
       FROM t0 AS t3
       WHERE t3.c0 = t3.c0 OR t3.c4 = t3.c0
       ORDER BY c10, c6, c13 ASC
       LIMIT 6393567116974181105 ) as subq1
    WHERE subq1.c12 = subq1.c12 OR subq1.c11 <> subq1.c7
    ORDER BY c17, c17 COLLATE RTRIM
    LIMIT 2059702721700457711 
   ) AND true
  ORDER BY c10 ASC, c10, c12
 )
ORDER BY c7, c6 ASC, c8 ASC
LIMIT 5339464769191641215 OFFSET 8733928884966204982;
SELECT subq0.c16 AS c17, subq0.c15 AS c18
FROM (SELECT t1.c4 AS c14, TRUE AS c15, t1.c0 AS c16
   FROM t0 AS t1
     INNER JOIN t0 AS t2     
      ON (false OR EXISTS (
       SELECT t3.c2 AS c5, t3.c1 AS c6, t3.c2 AS c7, t3.c1 AS c8, t3.c1 AS c9, t3.c4 AS c10, t3.c3 AS c11, t3.c4 AS c12, t3.c3 AS c13
        FROM t0 AS t3
        WHERE t3.c0 = t3.c0
        ORDER BY c12, c10, c6
       ))
   WHERE t2.c1 <> 
    CASE WHEN t2.c1 IS NOT NULL THEN t2.c2
         ELSE t1.c1
    END
   ORDER BY c15) as subq0
WHERE subq0.c14 IS NULL OR subq0.c15 IS NULL AND EXISTS (
 SELECT t5.c3 AS c7, t4.c4 AS c8, subq1.c5 AS c9, t4.c4 AS c10, t5.c1 AS c11
  FROM t0 AS t4
     LEFT JOIN t0 AS t5     
      ON (t4.c0 = t5.c1)
    LEFT OUTER JOIN (SELECT t6.c2 AS c5, t6.c4 AS c6
      FROM t0 AS t6
      WHERE t6.c4 = TRUE
      ORDER BY c6 COLLATE RTRIM, c6 DESC
      LIMIT 2871198361254202110 OFFSET 5455437622971804605) as subq1    
     ON (t4.c4 = t5.c4)
  WHERE t5.c2 = t4.c2
  ORDER BY c7 ASC, c8, c9 ASC
  LIMIT 7159761237025388141 OFFSET 4270182018513914909
 ) OR subq0.c14 = subq0.c15 AND subq0.c15 <> subq0.c16 AND subq0.c15 <> subq0.c15
ORDER BY c17 COLLATE BINARY, c18, c17 COLLATE NOCASE ASC, c17 COLLATE NOCASE;
SELECT t1.c4 AS c5, t1.c3 AS c6, t1.c2 AS c7, t1.c0 AS c8, t1.c1 AS c9, t1.c4 AS c10, t1.c2 AS c11, t1.c4 AS c12, t1.c2 AS c13, t1.c0 AS c14
FROM t0 AS t1
WHERE t1.c2 <> t1.c4
ORDER BY c11 ASC, c7
LIMIT 4847509908338574431 OFFSET 7147060204877741255;
