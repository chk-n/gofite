CREATE TABLE t0 (
    c0 TEXT,
    c1 NULL,
    c2 BOOLEAN,
    c3 TEXT,
    c4 TEXT,
    c5 NULL,
    c6 BOOLEAN,
    c7 INTEGER
);

WITH cte0 AS (
SELECT 
  CASE WHEN EXISTS (
   SELECT t2.c4 AS c8
    FROM t0 AS t2
      LEFT JOIN t0 AS t3      
       ON (NULL = t2.c1)
    WHERE t3.c2 = t3.c2
    ORDER BY c8
    LIMIT 2732271809365475031 OFFSET 8065274908147696687
   ) THEN t1.c5
       ELSE t1.c5
  END AS c9, 
  CASE t1.c0 WHEN t1.c4 <> t1.c0 OR t1.c0 < ltrim('text5','text93') AND t1.c6 <> t1.c6 THEN t1.c0
       WHEN t1.c5 IS NOT NULL THEN t1.c4
       WHEN true THEN t1.c3
       WHEN t1.c0 IS NOT NULL AND t1.c6 <> t1.c6 THEN t1.c0
       WHEN EXISTS (
   SELECT t4.c1 AS c8, t4.c2 AS c9, t4.c3 AS c10, CAST(t4.c1 AS BOOLEAN) AS c11
    FROM t0 AS t4
    WHERE t4.c3 IS NOT NULL OR max(NULL,82,5) IS NOT NULL
    ORDER BY c9 DESC, c8
   ) THEN 'text32'
       WHEN t1.c5 = t1.c5 THEN 
   CASE WHEN t1.c7 < t1.c7 THEN t1.c3
        ELSE t1.c4
   END
       WHEN t1.c5 <> t1.c5 THEN 'text39'
       WHEN t1.c2 = t1.c6 THEN t1.c3
       WHEN t1.c4 >= ifnull(NULL,82) THEN typeof( NULL)
       WHEN t1.c5 = COALESCE(t1.c1, t1.c5, t1.c1, t1.c1, t1.c5) THEN t1.c3
       WHEN quote( NULL) = t1.c3 THEN CAST(NULL AS TEXT)
       ELSE t1.c0
  END AS c12, 
  CASE WHEN CAST(t1.c4 AS TEXT) = t1.c2 AND t1.c5 = 
   CASE t1.c5 WHEN t1.c0 = t1.c0 AND false AND t1.c3 IS NOT NULL AND EXISTS (
    SELECT t5.c6 AS c8, t5.c3 AS c9
     FROM t0 AS t5
       INNER JOIN t0 AS t6       
        ON (t5.c1 = t6.c1)
     WHERE t5.c6 IS NULL
     ORDER BY c8, c8, c8 COLLATE RTRIM, c8
     LIMIT 4430408424371183424 OFFSET 7713122189875057214
    ) OR t1.c2 <> NULLIF(t1.c2, t1.c2) OR EXISTS (
    SELECT t8.c5 AS c8, t7.c6 AS c9, t8.c4 AS c10, t8.c3 AS c11
     FROM t0 AS t7
       INNER JOIN t0 AS t8       
        ON (t7.c1 <> t8.c1 AND t8.c0 < t8.c3)
     WHERE t8.c6 <> t8.c2 OR t7.c5 <> t7.c1 OR t8.c1 <> NULL
     ORDER BY c11 ASC, c11
    ) OR EXISTS (
    SELECT t9.c5 AS c8, t9.c3 AS c9
     FROM t0 AS t9
     WHERE t9.c3 <= t9.c0
     ORDER BY c9
     LIMIT 5524278908800799315 OFFSET 4584826905595593271
    ) OR t1.c5 = t1.c5 OR t1.c3 >= 'text7' THEN t1.c5
        WHEN t1.c7 > t1.c7 THEN t1.c5
        WHEN t1.c7 <> t1.c7 THEN 
    CASE WHEN t1.c0 IS NULL THEN t1.c5
         ELSE t1.c1
    END
        WHEN t1.c6 <> t1.c2 THEN t1.c1
        WHEN EXISTS (
    SELECT t10.c4 AS c8
     FROM t0 AS t10
     WHERE t10.c0 <= t10.c0
     ORDER BY c8, c8, c8 ASC, c8 ASC
     LIMIT 4464302466973236097 OFFSET 4852176971185561996
    ) THEN 
    CASE t1.c5 WHEN 
     CASE t1.c7 WHEN t1.c1 <> t1.c5 THEN t1.c7
          WHEN t1.c1 <> t1.c1 THEN t1.c7
          WHEN t1.c6 = t1.c6 THEN t1.c7
          WHEN t1.c5 IS NULL THEN t1.c7
          WHEN t1.c6 <> t1.c6 THEN t1.c7
          WHEN t1.c5 <> t1.c1 THEN t1.c7
          WHEN EXISTS (
      SELECT t11.c2 AS c8, t11.c7 AS c9, t11.c0 AS c10, t11.c2 AS c11, 'text67' AS c12, t11.c2 AS c13, t11.c1 AS c14, t11.c3 AS c15, t11.c1 AS c16, FALSE AS c17, t11.c5 AS c18, t11.c4 AS c19, t11.c3 AS c20, t11.c0 AS c21, t11.c6 AS c22, t11.c1 AS c23, t11.c1 AS c24
       FROM t0 AS t11
       WHERE false
       ORDER BY c16 COLLATE NOCASE, c21
       LIMIT 8429908046015370496 
      ) OR false AND t1.c4 <= 
      CASE WHEN t1.c3 = t1.c0 OR t1.c6 IS NOT NULL THEN t1.c4
           ELSE t1.c0
      END THEN t1.c7
          WHEN t1.c3 IS NOT NULL THEN 90
          WHEN 'text38' > t1.c0 THEN 48
          ELSE t1.c7
     END > t1.c7 AND t1.c1 <> t1.c1 THEN t1.c5
         WHEN t1.c0 = t1.c0 THEN t1.c5
         WHEN EXISTS (
     SELECT t13.c2 AS c8, t14.c7 AS c9, t12.c0 AS c10, t12.c6 AS c11, t12.c2 AS c12, TRUE AS c13, t12.c5 AS c14, FALSE AS c15, t14.c5 AS c16
      FROM t0 AS t12
        LEFT JOIN (
        t0 AS t13
         LEFT JOIN t0 AS t14         
          ON (t13.c5 <> t13.c1 OR t14.c6 <> FALSE)        )
         ON (t13.c5 <> t13.c5)
      WHERE t13.c6 IS NOT NULL
      ORDER BY c16, c13
      LIMIT 510122546580020229 OFFSET 6105113863616093701
     ) THEN t1.c5
         WHEN t1.c7 <> t1.c7 THEN t1.c5
         WHEN t1.c5 = t1.c1 AND false AND t1.c1 <> t1.c1 THEN t1.c5
         WHEN t1.c0 <> t1.c3 THEN t1.c1
         WHEN t1.c7 <> t1.c7 THEN t1.c5
         WHEN t1.c2 = t1.c2 THEN 
     CASE t1.c5 WHEN t1.c5 = t1.c5 AND t1.c1 = t1.c1 THEN t1.c5
          WHEN true THEN t1.c5
          WHEN EXISTS (
      SELECT t15.c2 AS c8, t16.c0 AS c9
       FROM t0 AS t15
         LEFT JOIN t0 AS t16         
          ON (t16.c6 = t16.c2)
       WHERE t15.c1 = t15.c1
       ORDER BY c9 ASC, c8 COLLATE RTRIM DESC, c9, c8
       LIMIT 275461146984239711 
      ) THEN t1.c5
          WHEN COALESCE(t1.c5, NULL) <> 
      CASE WHEN EXISTS (
       SELECT t17.c6 AS c8, t17.c0 AS c9, t17.c3 AS c10, t17.c4 AS c11
        FROM t0 AS t17
        WHERE t17.c2 <> t17.c2
        ORDER BY c10, c10
       ) OR t1.c6 <> t1.c6 THEN t1.c1
           ELSE t1.c5
      END AND t1.c4 IS NULL THEN t1.c1
          WHEN CAST(t1.c7 AS INTEGER) < t1.c7 OR false THEN t1.c5
          WHEN t1.c7 = t1.c7 THEN t1.c5
          WHEN EXISTS (
      SELECT t18.c0 AS c8, t18.c7 AS c9, t18.c7 AS c10, t18.c7 AS c11, t18.c3 AS c12, t18.c6 AS c13
       FROM t0 AS t18
       WHERE t18.c2 = t18.c6 AND t18.c5 = t18.c1
       ORDER BY c13
       LIMIT 7252020656349922156 OFFSET 6619309803129901829
      ) THEN t1.c1
          WHEN t1.c7 >= t1.c7 THEN t1.c5
          ELSE t1.c1
     END
         ELSE 
     CASE t1.c1 WHEN t1.c2 <> t1.c6 THEN t1.c5
          WHEN t1.c0 IS NOT NULL THEN t1.c5
          WHEN t1.c2 <> t1.c6 AND t1.c1 <> t1.c1 THEN t1.c5
          ELSE t1.c1
     END
    END
        WHEN t1.c3 <= t1.c3 THEN 
    CASE WHEN t1.c3 IS NULL THEN t1.c1
         ELSE t1.c1
    END
        ELSE t1.c1
   END OR t1.c1 = t1.c5 AND t1.c7 IS NULL THEN t1.c1
       ELSE 
   CASE t1.c5 WHEN 
    CASE t1.c0 WHEN t1.c7 <= t1.c7 THEN t1.c0
         WHEN FALSE <> t1.c2 THEN t1.c4
         WHEN t1.c4 > t1.c3 THEN t1.c4
         WHEN true OR likelihood(14,0.489518) = 
     CASE WHEN t1.c5 = t1.c1 THEN CAST(t1.c5 AS BOOLEAN)
          ELSE t1.c7
     END THEN t1.c3
         WHEN t1.c6 = t1.c6 OR t1.c3 IS NOT NULL THEN t1.c0
         WHEN COALESCE(t1.c7, t1.c2, t1.c1, t1.c5) IS NULL THEN t1.c0
         ELSE t1.c3
    END <= t1.c4 THEN t1.c5
        WHEN t1.c5 <> t1.c1 THEN t1.c5
        WHEN t1.c2 <> t1.c2 THEN t1.c1
        WHEN t1.c4 IS NOT NULL THEN t1.c1
        WHEN t1.c5 = t1.c5 THEN t1.c1
        WHEN t1.c5 <> t1.c5 THEN t1.c5
        WHEN TRUE <> t1.c6 THEN t1.c1
        WHEN EXISTS (
    SELECT t19.c4 AS c8, t19.c6 AS c9, t19.c0 AS c10, t19.c4 AS c11
     FROM t0 AS t19
     WHERE t19.c7 > t19.c7
     ORDER BY c10, c8 DESC, c11 COLLATE BINARY DESC
     LIMIT 6179429661123803300 OFFSET 6835757741201627144
    ) THEN t1.c1
        WHEN coalesce(NULL,FALSE,FALSE) < 
    CASE WHEN 
     CASE t1.c4 WHEN t1.c2 = TRUE THEN 'text90'
          WHEN t1.c7 IS NULL THEN t1.c4
          WHEN t1.c6 = t1.c6 THEN t1.c4
          ELSE t1.c0
     END <> t1.c4 THEN t1.c4
         ELSE t1.c0
    END THEN t1.c1
        WHEN t1.c6 = t1.c2 THEN t1.c5
        WHEN false THEN 
    CASE t1.c1 WHEN t1.c5 IS NULL THEN t1.c5
         WHEN 
     CASE t1.c0 WHEN t1.c6 IS NOT NULL OR t1.c4 <> t1.c3 THEN t1.c0
          WHEN false THEN t1.c4
          WHEN t1.c7 IS NOT NULL THEN t1.c4
          WHEN t1.c7 <= t1.c7 THEN t1.c3
          WHEN t1.c1 <> t1.c5 THEN t1.c4
          WHEN true THEN t1.c3
          ELSE 'text28'
     END < t1.c4 THEN t1.c1
         WHEN 38 IS NOT NULL OR t1.c0 = t1.c0 AND t1.c3 > t1.c0 THEN t1.c1
         WHEN IFNULL(t1.c3, t1.c2) IS NULL AND t1.c6 = t1.c2 AND t1.c2 <> t1.c6 OR 46 <= t1.c7 OR 
     CASE WHEN t1.c3 <= substr(TRUE,72) THEN t1.c7
          ELSE t1.c7
     END = t1.c7 THEN t1.c1
         WHEN t1.c7 < t1.c7 THEN 
     CASE t1.c1 WHEN t1.c5 <> t1.c1 THEN t1.c5
          WHEN t1.c1 = t1.c1 AND t1.c4 IS NOT NULL THEN t1.c5
          WHEN t1.c2 <> t1.c6 THEN t1.c1
          WHEN t1.c2 <> t1.c6 THEN t1.c5
          ELSE t1.c1
     END
         ELSE t1.c1
    END
        ELSE t1.c5
   END
  END AS c12, t1.c4 AS c13, t1.c0 AS c14, t1.c7 AS c15, t1.c4 AS c16, t1.c3 AS c17, t1.c3 AS c18
 FROM t0 AS t1
 WHERE t1.c2 = IFNULL(t1.c6, t1.c6)
 ORDER BY c15 ASC, c13
 LIMIT 7316806189137119130 OFFSET 4114105128781716344
)SELECT subq1.c24 AS c25
 FROM (SELECT FALSE AS c24
    FROM (SELECT t20.c2 AS c8, t20.c5 AS c9, t20.c0 AS c10, t20.c4 AS c11, t20.c3 AS c12, t20.c4 AS c13, t20.c6 AS c14, t20.c6 AS c15, t20.c3 AS c16, t20.c4 AS c17, t20.c4 AS c18, t20.c3 AS c19, t20.c5 AS c20, t20.c7 AS c21, t20.c0 AS c22, t20.c3 AS c23
       FROM t0 AS t20
       WHERE t20.c6 <> t20.c2
       ORDER BY c8, c23 COLLATE BINARY DESC
       LIMIT 1561416906132401041 ) as subq0
    WHERE subq0.c9 = subq0.c20
    ORDER BY c24 ASC, c24 ASC, c24 DESC, c24 ASC) as subq1
 WHERE 
  CASE subq1.c24 WHEN subq1.c24 <> subq1.c24 THEN subq1.c24
       WHEN subq1.c24 <> subq1.c24 THEN TRUE
       WHEN subq1.c24 = subq1.c24 THEN subq1.c24
       WHEN true THEN subq1.c24
       WHEN subq1.c24 = subq1.c24 OR subq1.c24 <> subq1.c24 THEN subq1.c24
       WHEN true THEN subq1.c24
       WHEN subq1.c24 = subq1.c24 THEN 
   CASE WHEN subq1.c24 <> NULLIF(subq1.c24, subq1.c24) THEN subq1.c24
        ELSE subq1.c24
   END
       ELSE subq1.c24
  END <> subq1.c24
 ORDER BY c25
 LIMIT 7061218854019488207 OFFSET 7463588813308587062;