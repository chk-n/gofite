/* -----------Error-----------
Both errored. Old_Err: [Old] stdout closed or error during query. Query: 'CREATE TABLE t0 (
    c0 INTEGER,
    c1 INTEGER,
    c2 INTEGER
);
INSERT INTO t0 VALUES (19, 81, 21)
;INSERT INTO t0 VALUES (95, 21, 65)
;UPDATE t0 
SET c0 = 
  CASE WHEN EXISTS (
   SELECT t8.c0 AS c3
    FROM t0 AS t8
      LEFT JOIN t0 AS t9      
       ON (t9.c0 <> t8.c1)
    WHERE EXISTS (
     SELECT t10.c2 AS c3
      FROM t0 AS t10
      WHERE t10.c1 IS NOT NULL
      ORDER BY c3, c3 DESC, c3 COLLATE RTRIM DESC, c3 DESC
      LIMIT 2677442517286923954 
     )
    ORDER BY c3 ASC, c3 COLLATE RTRIM ASC, c3, c3 DESC
    LIMIT 7036772214222974869 OFFSET 6687813507938298738
   ) THEN t0.c1
       ELSE t0.c2
  END, c1 = t0.c0, c2 = t0.c2
WHERE 
 CASE t0.c0 WHEN t0.c2 <> t0.c2 THEN 
  CASE t0.c0 WHEN instr(TRUE,FALSE) < COALESCE(t0.c0, t0.c2, t0.c0) AND t0.c2 <= t0.c2 THEN t0.c1
       WHEN t0.c1 < t0.c1 THEN t0.c0
       WHEN 
   CASE t0.c0 WHEN t0.c2 <> t0.c0 THEN t0.c1
        WHEN t0.c1 <> t0.c2 THEN 
    CASE t0.c1 WHEN t0.c1 > t0.c2 THEN t0.c2
         WHEN t0.c1 < t0.c2 THEN t0.c2
         WHEN t0.c1 <= t0.c2 AND t0.c1 >= t0.c1 THEN t0.c0
         WHEN t0.c0 > t0.c0 THEN t0.c1
         WHEN t0.c1 IS NULL AND t0.c1 < t0.c0 AND t0.c0 <= t0.c0 THEN t0.c1
         WHEN false THEN t0.c1
         WHEN t0.c0 <> t0.c2 THEN t0.c2
         WHEN CAST(t0.c1 AS INTEGER) = t0.c2 THEN t0.c2
         WHEN t0.c1 IS NULL THEN t0.c1
         WHEN 100 < t0.c0 THEN t0.c1
         WHEN t0.c2 > t0.c0 THEN t0.c2
         ELSE t0.c1
    END
        WHEN false THEN t0.c2
        WHEN 61 > 
    CASE WHEN t0.c0 >= t0.c0 THEN t0.c2
         ELSE t0.c1
    END THEN t0.c2
        WHEN t0.c1 <= t0.c1 AND t0.c2 >= t0.c1 THEN t0.c0
        WHEN EXISTS (
    SELECT t1.c0 AS c3
     FROM t0 AS t1
     WHERE t1.c2 <> t1.c0 AND false OR true AND 2 < t1.c0
     ORDER BY c3 DESC, c3 DESC, c3 ASC, c3 DESC
     LIMIT 6762697295006785572 OFFSET 4729063675704457289
    ) THEN t0.c1
        ELSE t0.c0
   END = t0.c2 THEN t0.c0
       WHEN 
   CASE t0.c2 WHEN t0.c0 <> t0.c2 OR 96 <> t0.c0 OR likelihood(44,0.199812) = t0.c0 AND t0.c0 IS NOT NULL OR t0.c1 > t0.c2 AND EXISTS (
    SELECT t2.c0 AS c3, t3.c2 AS c4
     FROM t0 AS t2
       LEFT JOIN t0 AS t3       
        ON (t2.c1 > t2.c0)
     WHERE t2.c1 <= t2.c0
     ORDER BY c4, c4, c4, c3
     LIMIT 6416942882541240727 OFFSET 3720268184672545332
    ) AND t0.c2 < t0.c2 THEN t0.c1
        WHEN t0.c0 > COALESCE(t0.c0, CAST(t0.c1 AS INTEGER), t0.c1, t0.c1, t0.c2) THEN t0.c1
        ELSE t0.c1
   END <> t0.c0 THEN t0.c2
       WHEN EXISTS (
   SELECT t4.c2 AS c3
    FROM t0 AS t4
    WHERE t4.c1 <= 87 AND t4.c1 IS NULL
    ORDER BY c3 ASC, c3, c3 ASC, c3
    LIMIT 570778347399353432 OFFSET 5942707441056583449
   ) THEN t0.c0
       WHEN t0.c1 >= t0.c2 OR t0.c2 IS NULL THEN CAST(t0.c2 AS INTEGER)
       ELSE t0.c2
  END
      ELSE 
  CASE WHEN true THEN 
   CASE t0.c0 WHEN t0.c1 <= t0.c1 AND t0.c2 > t0.c1 OR t0.c2 <= t0.c2 AND t0.c2 <= t0.c1 AND t0.c1 > t0.c2 THEN t0.c1
        WHEN EXISTS (
    SELECT t6.c0 AS c3, t5.c0 AS c4, t5.c1 AS c5, t5.c2 AS c6, t6.c1 AS c7, t6.c1 AS c8, t5.c0 AS c9
     FROM t0 AS t5
       INNER JOIN t0 AS t6       
        ON (t6.c0 <= t5.c2)
     WHERE t5.c2 > t6.c0 OR EXISTS (
      SELECT t7.c0 AS c3, t7.c1 AS c4, t7.c2 AS c5, t7.c1 AS c6
       FROM t0 AS t7
       WHERE t7.c2 >= t7.c0
       ORDER BY c3
       LIMIT 6165430212152119037 OFFSET 6552845807515212585
      ) AND t6.c2 IS NOT NULL
     ORDER BY c8 COLLATE RTRIM DESC
     LIMIT 5301382324900358665 OFFSET 829978465547744223
    ) THEN t0.c0
        WHEN t0.c0 >= t0.c0 THEN t0.c1
        WHEN t0.c2 > t0.c1 THEN t0.c0
        ELSE t0.c1
   END
       ELSE t0.c1
  END
 END <= t0.c0 OR t0.c2 IS NULL
;UPDATE t0 
SET c1 = t0.c2
WHERE t0.c1 >= 
 CASE WHEN false THEN t0.c0
      ELSE t0.c0
 END
;SELECT 
 CASE WHEN CAST(t1.c2 AS INTEGER) = t1.c2 OR t1.c0 < t1.c0 AND EXISTS (
  SELECT t2.c1 AS c3, t2.c1 AS c4, t2.c2 AS c5, t2.c1 AS c6, t2.c0 AS c7, t2.c1 AS c8, t2.c2 AS c9, t2.c1 AS c10
   FROM t0 AS t2
   WHERE t2.c1 > t2.c0
   ORDER BY c10, c8
   LIMIT 6157879496364428470 OFFSET 4403540287545001640
  ) THEN 
  CASE WHEN 53 > 
   CASE t1.c1 WHEN true THEN 
    CASE WHEN false AND t1.c1 <> t1.c1 AND t1.c2 >= t1.c0 OR t1.c2 <> 39 AND t1.c0 <= t1.c0 OR true OR t1.c0 = t1.c2 OR t1.c1 = t1.c0 THEN t1.c2
         ELSE t1.c1
    END
        WHEN true AND t1.c1 <> t1.c1 OR t1.c0 >= t1.c2 THEN CAST(t1.c2 AS TEXT)
        WHEN true THEN t1.c2
        WHEN t1.c0 >= t1.c2 OR 
    CASE t1.c2 WHEN t1.c1 < likely( 71) THEN t1.c1
         WHEN t1.c2 < t1.c0 THEN t1.c1
         WHEN false THEN t1.c1
         WHEN t1.c2 IS NULL THEN t1.c1
         WHEN t1.c0 > t1.c1 THEN t1.c2
         WHEN t1.c0 = NULLIF(t1.c1, t1.c0) THEN max(FALSE,TRUE,FALSE)
         WHEN true THEN t1.c2
         ELSE t1.c0
    END IS NOT NULL THEN t1.c2
        ELSE COALESCE(t1.c2, NULL, 'text75', t1.c0)
   END THEN IFNULL(t1.c2, t1.c0)
       ELSE t1.c2
  END
      ELSE t1.c1
 END AS c11
FROM t0 AS t1
WHERE t1.c1 <= t1.c1
ORDER BY c11, c11, c11 ASC, c11 ASC
LIMIT 6491297460195068633 
;SELECT subq0.c3 AS c6, 
 CASE WHEN subq0.c3 <= subq0.c3 THEN instr(TRUE,23)
      ELSE COALESCE(subq0.c3, subq0.c3)
 END AS c7, subq0.c3 AS c8, 
 CASE WHEN subq0.c3 <= subq0.c3 THEN subq0.c3
      ELSE subq0.c3
 END AS c9, subq0.c3 AS c10, subq0.c3 AS c11, subq0.c3 AS c12
FROM (SELECT t5.c0 AS c3
   FROM t0 AS t1
     LEFT JOIN (
     t0 AS t2
       LEFT JOIN t0 AS t3       
        ON (false AND t3.c0 > t3.c1)
      INNER JOIN (
      t0 AS t4
       INNER JOIN t0 AS t5       
        ON (t5.c1 IS NULL)      )
       ON (true)     )
      ON (t4.c1 < t2.c0)
   WHERE t1.c2 <> 
    CASE t2.c2 WHEN EXISTS (
     SELECT t6.c1 AS c3, t6.c1 AS c4, t6.c1 AS c5
      FROM t0 AS t6
      WHERE t6.c2 > 1
      ORDER BY c4 DESC, c3
     ) THEN t4.c0
         WHEN EXISTS (
     SELECT 67 AS c3
      FROM t0 AS t7
      WHERE EXISTS (
       SELECT t8.c2 AS c3
        FROM t0 AS t8
        WHERE EXISTS (
         SELECT t9.c1 AS c3, t9.c2 AS c4, t9.c0 AS c5, t9.c2 AS c6, t9.c2 AS c7
          FROM t0 AS t9
          WHERE t9.c1 <> t9.c1 AND t9.c2 IS NOT NULL
          ORDER BY c3 DESC, c6 DESC, c3 COLLATE BINARY ASC
          LIMIT 4784615958650652980 
         )
        ORDER BY c3, c3, c3 COLLATE NOCASE, c3 ASC
        LIMIT 5098120254219508225 OFFSET 4168303359204239760
       )
      ORDER BY c3 DESC
      LIMIT 1673097955509636658 OFFSET 2785821683344652432
     ) OR EXISTS (
     SELECT t10.c2 AS c3
      FROM t0 AS t10
      WHERE true
      ORDER BY c3 ASC, c3, c3, c3 COLLATE BINARY
      LIMIT 5999098682123867497 OFFSET 3323781460927049757
     ) THEN t5.c1
         WHEN 
     CASE WHEN EXISTS (
      SELECT t11.c0 AS c3, t11.c1 AS c4, t11.c2 AS c5, t11.c2 AS c6, t11.c1 AS c7, t11.c2 AS c8, t11.c0 AS c9, t11.c0 AS c10, t11.c0 AS c11, 85 AS c12, t11.c2 AS c13, t11.c0 AS c14
       FROM t0 AS t11
       WHERE t11.c2 IS NOT NULL AND t11.c0 > t11.c1 AND t11.c1 < t11.c1 OR t11.c1 >= t11.c2 OR t11.c2 < t11.c1
       ORDER BY c8, c9 COLLATE BINARY
      ) THEN t4.c0
          ELSE t3.c0
     END <= t3.c0 THEN t2.c0
         WHEN t3.c0 < t4.c0 THEN t5.c1
         WHEN 
     CASE t2.c2 WHEN EXISTS (
      SELECT t12.c2 AS c3, t12.c2 AS c4, t12.c1 AS c5
       FROM t0 AS t12
       WHERE t12.c2 = t12.c0
       ORDER BY c3
       LIMIT 930752782945227019 OFFSET 1792037147979176149
      ) THEN t4.c2
          WHEN t4.c1 > t3.c0 THEN t4.c1
          WHEN t2.c2 > t3.c2 AND true THEN t5.c0
          WHEN t4.c2 = t3.c1 THEN t2.c2
          WHEN t5.c1 <= t4.c0 THEN t5.c2
          WHEN t3.c0 > t5.c1 THEN t3.c1
          ELSE t1.c1
     END <= t1.c1 THEN t4.c0
         ELSE t2.c1
    END
   ORDER BY c3 COLLATE NOCASE
   LIMIT 6627331045491233774 OFFSET 4291536856113572894) as subq0
WHERE subq0.c3 IS NOT NULL
ORDER BY c6 DESC, c9 DESC, c6 DESC
LIMIT 7250784748444163441 
;SELECT subq0.c3 AS c5, subq0.c3 AS c6, subq0.c4 AS c7, 51 AS c8, subq0.c3 AS c9, subq0.c4 AS c10, subq0.c4 AS c11, subq0.c3 AS c12
FROM (SELECT t1.c1 AS c3, t1.c1 AS c4
   FROM t0 AS t1
   WHERE t1.c2 = t1.c0
   ORDER BY c3 COLLATE BINARY DESC, c4
   LIMIT 1608897487467529052 OFFSET 3857608057129460595) as subq0
WHERE IFNULL(CAST(subq0.c4 AS INTEGER), subq0.c3) = subq0.c3 AND EXISTS (
 SELECT t2.c2 AS c3, t2.c0 AS c4
  FROM t0 AS t2
  WHERE t2.c2 < CAST(t2.c0 AS BOOLEAN)
  ORDER BY c3, c3 ASC, c3, c4 ASC
  LIMIT 7476553162831668021 OFFSET 6263412331367657553
 )
ORDER BY c11
LIMIT 1031370516391230919 OFFSET 273434339085575069
;SELECT subq0.c19 AS c10, subq0.c16 AS c11, subq0.c11 AS c12, subq0.c17 AS c13, subq0.c3 AS c14, subq0.c5 AS c15, subq0.c17 AS c16, subq0.c8 AS c17
FROM (SELECT t1.c1 AS c3, t1.c1 AS c4, t1.c2 AS c5, t1.c2 AS c6, t1.c0 AS c7, t1.c0 AS c8, t1.c2 AS c9, t1.c1 AS c10, t1.c0 AS c11, t1.c0 AS c12, t1.c2 AS c13, t1.c0 AS c14, t1.c1 AS c15, t1.c0 AS c16, t1.c0 AS c17, t1.c2 AS c18, t1.c1 AS c19, t1.c0 AS c20
    FROM t0 AS t1
    WHERE t1.c2 <= t1.c0 OR true
    ORDER BY c12 COLLATE RTRIM, c14, c6 COLLATE NOCASE DESC
    LIMIT 68212523453563207 OFFSET 50216049631412064) as subq0
  LEFT JOIN (SELECT t2.c1 AS c3
    FROM t0 AS t2
      LEFT JOIN t0 AS t3      
       ON (t3.c0 IS NULL)
    WHERE EXISTS (
     SELECT t4.c0 AS c3, t4.c1 AS c4, t4.c2 AS c5, t4.c0 AS c6, t4.c2 AS c7, t4.c1 AS c8, t4.c1 AS c9
      FROM t0 AS t4
      WHERE t4.c0 > t4.c1
      ORDER BY c6
      LIMIT 7046322600512516860 OFFSET 5657209217892327065
     ) OR t2.c1 < 47
    ORDER BY c3 DESC
    LIMIT 4586345019382744905 ) as subq1  
   ON (subq0.c13 >= 46)
WHERE EXISTS (
 SELECT subq2.c5 AS c6, subq2.c3 AS c7, subq2.c4 AS c8, 
   CASE WHEN 94 < subq2.c5 AND subq2.c4 IS NOT NULL AND subq2.c3 >= subq2.c4 AND subq2.c5 > 94 THEN subq2.c4
        ELSE subq2.c3
   END AS c9, IFNULL(subq2.c3, IFNULL(subq2.c5, subq2.c5)) AS c10
  FROM (SELECT t5.c0 AS c3, t5.c0 AS c4, t5.c2 AS c5
     FROM t0 AS t5
     WHERE t5.c1 <> t5.c1
     ORDER BY c5 ASC) as subq2
  WHERE subq2.c3 IS NOT NULL
  ORDER BY c9 COLLATE RTRIM
 )
ORDER BY c13 DESC
;SELECT last_insert_rowid() AS c5
FROM (SELECT t1.c2 AS c3, t1.c1 AS c4, COALESCE(t1.c0, NULL, t1.c2, t1.c1) AS c5, t1.c2 AS c6, t1.c0 AS c7, t1.c1 AS c8, 
     CASE WHEN t1.c2 >= t1.c2 THEN t1.c2
          ELSE COALESCE(t1.c0, t1.c2, t1.c0, t1.c2)
     END AS c9, t1.c2 AS c10, t1.c0 AS c11, t1.c1 AS c12, t1.c1 AS c13, t1.c0 AS c14, t1.c1 AS c15, t1.c1 AS c16
    FROM t0 AS t1
    WHERE t1.c1 <= t1.c0
    ORDER BY c13 DESC, c11
    LIMIT 5645242707067002874 ) as subq0
  INNER JOIN (
  t0 AS t2
     INNER JOIN (
     t0 AS t3
      INNER JOIN (
      t0 AS t4
       INNER JOIN t0 AS t5       
        ON (t4.c0 >= t5.c0)      )
       ON (t3.c1 = t5.c0)     )
      ON (t2.c2 = t3.c0)
    LEFT JOIN (
    t0 AS t6
      INNER JOIN t0 AS t7      
       ON (t7.c1 <= t7.c1)
     LEFT JOIN t0 AS t8     
      ON (t6.c2 < t7.c1)    )
     ON (t5.c1 > t3.c0 AND false AND t3.c1 <= t8.c1)
   INNER JOIN (SELECT t9.c2 AS c3, t9.c0 AS c4
     FROM t0 AS t9
     WHERE t9.c2 = t9.c2 OR t9.c1 IS NULL
     ORDER BY c4 COLLATE BINARY ASC, c3
     LIMIT 416450946358914963 OFFSET 3734703072409029615) as subq1   
    ON (t2.c0 < t5.c2)  )
   ON (false OR subq0.c3 > subq0.c8 OR t2.c1 > subq0.c13 AND t2.c0 <= subq0.c11)
WHERE t5.c1 IS NOT NULL
ORDER BY c5, c5 COLLATE RTRIM DESC, c5 DESC, c5
;SELECT subq0.c6 AS c7, 28 AS c8, subq0.c4 AS c9, subq0.c4 AS c10, 
 CASE WHEN subq0.c3 >= 
  CASE WHEN subq0.c3 IS NOT NULL THEN subq0.c4
       ELSE subq0.c3
  END THEN subq0.c4
      ELSE 40
 END AS c11
FROM (SELECT t1.c0 AS c3, t1.c2 AS c4, t2.c0 AS c5, t2.c0 AS c6
   FROM t0 AS t1
     LEFT OUTER JOIN t0 AS t2     
      ON (t2.c1 = t2.c2)
   WHERE 
    CASE WHEN t2.c2 >= t2.c2 OR true OR t2.c1 <= t1.c1 AND t1.c0 < t1.c0 AND false THEN t1.c0
         ELSE t2.c2
    END <= t2.c2
   ORDER BY c6 ASC, c5 ASC, c3
   LIMIT 2821206708184855032 OFFSET 3783644847483066801) as subq0
WHERE 
 CASE WHEN subq0.c5 <> subq0.c6 THEN subq0.c4
      ELSE subq0.c4
 END > subq0.c4 AND 
 CASE WHEN last_insert_rowid() > subq0.c3 THEN CAST(changes() AS TEXT)
      ELSE subq0.c5
 END <= subq0.c4
ORDER BY c10, c9 ASC
LIMIT 5227514973560982209 
;SELECT subq1.c11 AS c14
FROM (SELECT 33 AS c8, subq0.c5 AS c9, subq0.c4 AS c10, 
    CASE subq0.c3 WHEN EXISTS (
     SELECT t3.c2 AS c7, t3.c0 AS c8, t4.c2 AS c9, t2.c0 AS c10
      FROM t0 AS t2
         INNER JOIN t0 AS t3         
          ON (t3.c0 >= t3.c1)
        LEFT JOIN t0 AS t4        
         ON (t4.c1 < t4.c1 OR EXISTS (
          SELECT t5.c0 AS c3, t5.c1 AS c4, 37 AS c5, 31 AS c6
           FROM t0 AS t5
           WHERE t5.c1 = t5.c0
           ORDER BY c3, c6 DESC, c3
           LIMIT 7542752239335546965 OFFSET 1233075861959121651
          ) OR t4.c2 >= t2.c0 OR t4.c0 IS NOT NULL AND false)
      WHERE t3.c1 < t3.c1 AND t3.c0 >= t2.c2
      ORDER BY c9 DESC, c9 ASC
     ) THEN subq0.c3
         WHEN subq0.c6 = subq0.c4 THEN subq0.c4
         WHEN subq0.c4 >= subq0.c7 OR subq0.c5 > COALESCE(subq0.c5, subq0.c3, subq0.c6, subq0.c3) THEN subq0.c4
         WHEN subq0.c7 IS NOT NULL AND subq0.c5 < subq0.c4 THEN subq0.c3
         WHEN subq0.c5 <> subq0.c3 THEN subq0.c7
         WHEN subq0.c4 < subq0.c5 THEN subq0.c5
         WHEN subq0.c3 <> subq0.c5 THEN subq0.c3
         WHEN subq0.c6 >= subq0.c7 AND subq0.c7 <> 24 AND subq0.c6 > subq0.c6 AND subq0.c7 <= subq0.c3 OR 60 >= subq0.c5 THEN subq0.c4
         WHEN subq0.c5 > subq0.c3 THEN subq0.c5
         WHEN subq0.c3 > subq0.c3 AND subq0.c7 IS NULL THEN CAST(subq0.c3 AS INTEGER)
         WHEN subq0.c7 < subq0.c7 THEN subq0.c5
         WHEN subq0.c6 >= subq0.c5 THEN subq0.c5
         ELSE subq0.c6
    END AS c11, CAST(subq0.c4 AS INTEGER) AS c12, subq0.c5 AS c13
   FROM (SELECT t1.c0 AS c3, t1.c0 AS c4, t1.c0 AS c5, t1.c2 AS c6, t1.c2 AS c7
      FROM t0 AS t1
      WHERE t1.c1 > t1.c1
      ORDER BY c6 ASC, c4 COLLATE RTRIM
      LIMIT 6522569292217280099 OFFSET 1237520594437263588) as subq0
   WHERE subq0.c3 < subq0.c6
   ORDER BY c12, c10, c8
   LIMIT 1632364376395603912 ) as subq1
WHERE subq1.c10 <= changes()
ORDER BY c14, c14, c14, c14 COLLATE RTRIM
;SELECT 
 CASE WHEN EXISTS (
  SELECT subq3.c3 AS c4, subq3.c3 AS c5, subq3.c3 AS c6, 
    CASE subq3.c3 WHEN subq3.c3 IS NOT NULL AND subq3.c3 = subq3.c3 AND subq3.c3 > subq3.c3 THEN subq3.c3
         WHEN subq3.c3 > subq3.c3 THEN subq3.c3
         WHEN subq3.c3 = subq3.c3 THEN subq3.c3
         WHEN 39 < subq3.c3 THEN subq3.c3
         WHEN subq3.c3 = subq3.c3 THEN subq3.c3
         WHEN subq3.c3 <= subq3.c3 THEN subq3.c3
         WHEN subq3.c3 = subq3.c3 AND subq3.c3 = subq3.c3 AND EXISTS (
     SELECT t6.c0 AS c3, t6.c2 AS c4, t6.c2 AS c5, t6.c0 AS c6
      FROM t0 AS t6
      WHERE t6.c0 >= t6.c0
      ORDER BY c5 ASC
     ) OR subq3.c3 IS NULL OR subq3.c3 > subq3.c3 OR subq3.c3 >= subq3.c3 THEN subq3.c3
         WHEN subq3.c3 = subq3.c3 THEN subq3.c3
         WHEN subq3.c3 > subq3.c3 THEN subq3.c3
         WHEN subq3.c3 >= subq3.c3 THEN subq3.c3
         WHEN subq3.c3 = subq3.c3 THEN subq3.c3
         ELSE subq3.c3
    END AS c7, subq3.c3 AS c8, subq3.c3 AS c9, 
    CASE subq3.c3 WHEN subq3.c3 > subq3.c3 THEN subq3.c3
         WHEN subq3.c3 IS NOT NULL THEN subq3.c3
         WHEN 41 <= subq3.c3 THEN CAST(subq3.c3 AS BOOLEAN)
         WHEN subq3.c3 <> subq3.c3 OR subq3.c3 = subq3.c3 THEN subq3.c3
         ELSE subq3.c3
    END AS c10, subq3.c3 AS c11, subq3.c3 AS c12, subq3.c3 AS c13
   FROM (SELECT t4.c0 AS c3
      FROM t0 AS t4
        INNER JOIN t0 AS t5        
         ON (t5.c1 IS NULL AND t5.c0 = t5.c0)
      WHERE t5.c2 IS NOT NULL OR t5.c0 <= t5.c1
      ORDER BY c3, c3, c3, c3 ASC
      LIMIT 5013014815569183757 OFFSET 3459258609591098596) as subq3
   WHERE subq3.c3 = subq3.c3
   ORDER BY c13, c4 DESC
   LIMIT 1451705794071713095 OFFSET 7194166096009297928
  ) AND subq2.c4 IS NULL THEN subq1.c4
      ELSE 
  CASE WHEN subq2.c4 >= subq0.c3 THEN subq0.c3
       ELSE NULLIF(subq0.c3, subq2.c7)
  END
 END AS c14, subq2.c5 AS c15, subq1.c3 AS c16
FROM (SELECT t1.c0 AS c3
    FROM t0 AS t1
    WHERE t1.c1 >= t1.c0
    ORDER BY c3 COLLATE BINARY, c3, c3 COLLATE BINARY, c3 COLLATE NOCASE
    LIMIT 8177710901880788207 ) as subq0
  LEFT JOIN (
  (SELECT t2.c0 AS c3, t2.c1 AS c4
     FROM t0 AS t2
     WHERE 83 = t2.c0
     ORDER BY c3 ASC
     LIMIT 1010027496604988600 ) as subq1
   LEFT JOIN (SELECT t3.c1 AS c3, t3.c1 AS c4, t3.c2 AS c5, t3.c2 AS c6, t3.c0 AS c7, t3.c2 AS c8
     FROM t0 AS t3
     WHERE t3.c2 <= t3.c2 OR t3.c2 IS NULL OR t3.c1 IS NULL AND t3.c0 = t3.c1
     ORDER BY c5 ASC
     LIMIT 1178382877416597621 ) as subq2   
    ON (subq2.c6 IS NOT NULL)  )
   ON (subq1.c3 >= subq2.c4)
WHERE subq2.c5 < 
 CASE subq2.c4 WHEN true THEN subq1.c3
      WHEN 69 > subq2.c3 THEN subq2.c4
      WHEN subq2.c8 <> subq2.c8 THEN subq1.c4
      WHEN subq2.c8 <= 
  CASE WHEN COALESCE(COALESCE(subq1.c3, subq1.c3, subq0.c3), subq2.c7, subq0.c3) > subq2.c3 THEN subq1.c4
       ELSE subq2.c3
  END AND subq2.c5 IS NULL THEN subq2.c4
      WHEN 
  CASE WHEN EXISTS (
   SELECT t7.c0 AS c3
    FROM t0 AS t7
      INNER JOIN t0 AS t8      
       ON (t8.c0 <= t8.c1)
    WHERE t8.c0 < t7.c0
    ORDER BY c3 COLLATE NOCASE, c3, c3, c3
    LIMIT 8057054922809899055 OFFSET 4068738926021425500
   ) THEN subq0.c3
       ELSE subq2.c6
  END IS NOT NULL THEN 
  CASE subq1.c3 WHEN EXISTS (
   SELECT t9.c2 AS c3, t9.c2 AS c4, t9.c1 AS c5, t9.c1 AS c6, t9.c0 AS c7
    FROM t0 AS t9
    WHERE t9.c0 <= 87
    ORDER BY c5 ASC
   ) THEN subq2.c5
       WHEN 
   CASE WHEN subq1.c3 IS NOT NULL THEN subq1.c3
        ELSE subq2.c3
   END >= subq2.c4 THEN subq2.c3
       WHEN subq2.c6 > length( 'text82') OR true THEN subq2.c8
       WHEN CAST(subq1.c4 AS INTEGER) <> subq2.c7 THEN subq2.c8
       WHEN subq2.c5 <> subq2.c4 AND COALESCE(subq0.c3, subq1.c4, subq0.c3, subq1.c4) >= subq2.c6 THEN subq2.c6
       WHEN subq2.c4 > subq2.c7 THEN subq0.c3
       WHEN EXISTS (
   SELECT t10.c2 AS c3
    FROM t0 AS t10
    WHERE t10.c0 < t10.c2
    ORDER BY c3, c3 COLLATE NOCASE ASC, c3, c3
    LIMIT 4123506880156190429 
   ) THEN subq2.c8
       WHEN subq0.c3 IS NOT NULL AND EXISTS (
   SELECT t11.c1 AS c3, t11.c2 AS c4
    FROM t0 AS t11
    WHERE t11.c2 >= t11.c1 AND false
    ORDER BY c4 COLLATE BINARY
   ) AND EXISTS (
   SELECT subq4.c3 AS c5, subq4.c3 AS c6, subq4.c4 AS c7, subq4.c3 AS c8, subq4.c3 AS c9
    FROM (SELECT 96 AS c3, t12.c1 AS c4
       FROM t0 AS t12
       WHERE t12.c1 >= t12.c2
       ORDER BY c4, c3 DESC
       LIMIT 5237690221962020207 ) as subq4
    WHERE subq4.c3 < subq4.c3
    ORDER BY c9 ASC, c8
   ) THEN subq1.c3
       WHEN subq2.c7 <> subq2.c4 THEN subq1.c4
       WHEN 
   CASE subq2.c3 WHEN EXISTS (
    SELECT t13.c0 AS c3
     FROM t0 AS t13
     WHERE EXISTS (
      SELECT t14.c0 AS c3, t14.c2 AS c4, t14.c1 AS c5, t14.c2 AS c6, t14.c0 AS c7, t14.c1 AS c8, t14.c0 AS c9, t14.c2 AS c10, t14.c1 AS c11, t14.c0 AS c12, t14.c0 AS c13, t14.c1 AS c14, t14.c2 AS c15
       FROM t0 AS t14
       WHERE t14.c0 > t14.c2
       ORDER BY c10 COLLATE NOCASE ASC, c3 ASC, c6
       LIMIT 4537336944482934757 
      )
     ORDER BY c3 ASC, c3 DESC, c3, c3
     LIMIT 3340884772284470598 
    ) OR subq2.c7 >= subq1.c4 THEN subq2.c8
        WHEN subq1.c3 >= subq2.c4 THEN subq2.c3
        WHEN subq1.c3 < subq2.c4 THEN subq2.c3
        WHEN COALESCE(IFNULL(subq2.c3, subq1.c3), subq1.c4, subq1.c3, 
     CASE WHEN subq2.c6 > subq2.c8 THEN NULL
          ELSE NULL
     END, subq0.c3, subq1.c3) = subq2.c3 THEN subq2.c3
        WHEN subq1.c4 = subq2.c6 THEN subq2.c6
        WHEN subq2.c8 < CAST(subq2.c5 AS TEXT) THEN COALESCE(subq1.c3, subq2.c6, subq2.c8, subq1.c3, 71)
        ELSE subq2.c8
   END = subq1.c3 THEN subq2.c4
       WHEN subq2.c5 < subq2.c8 THEN subq1.c4
       ELSE 
   CASE subq2.c6 WHEN subq2.c4 <> subq1.c4 THEN subq2.c5
        WHEN 
    CASE subq2.c4 WHEN false THEN subq0.c3
         WHEN true AND 81 >= subq2.c5 THEN subq2.c8
         ELSE subq0.c3
    END >= 14 AND subq2.c8 <> subq2.c8 THEN 76
        WHEN subq2.c4 < subq1.c3 THEN subq0.c3
        WHEN subq0.c3 <= subq2.c5 OR EXISTS (
    SELECT t15.c2 AS c3, t15.c0 AS c4
     FROM t0 AS t15
     WHERE t15.c1 < t15.c2
     ORDER BY c4 ASC
     LIMIT 629692545000824 
    ) THEN subq2.c7
        WHEN subq1.c4 = subq2.c6 OR EXISTS (
    SELECT t16.c0 AS c3
     FROM t0 AS t16
     WHERE t16.c1 = t16.c0
     ORDER BY c3 DESC
    ) OR subq1.c4 IS NOT NULL THEN subq2.c8
        WHEN true THEN subq2.c3
        WHEN true AND subq0.c3 IS NOT NULL THEN subq2.c7
        WHEN subq2.c8 < subq0.c3 THEN subq2.c5
        WHEN subq2.c3 > subq0.c3 OR subq2.c5 < subq2.c5 OR subq0.c3 IS NOT NULL AND subq2.c6 > subq2.c5 THEN subq2.c3
        WHEN EXISTS (
    SELECT t17.c2 AS c3, t17.c0 AS c4, t17.c2 AS c5, t17.c1 AS c6, t17.c1 AS c7, t17.c1 AS c8, t17.c1 AS c9
     FROM t0 AS t17
     WHERE t17.c1 = t17.c1 OR EXISTS (
      SELECT t18.c2 AS c3
       FROM t0 AS t18
       WHERE t18.c1 <= t18.c2
       ORDER BY c3 COLLATE BINARY ASC
       LIMIT 6768299184943081780 
      )
     ORDER BY c3 DESC, c3
    ) THEN subq2.c4
        WHEN last_insert_rowid() <> subq1.c3 THEN NULLIF(subq2.c4, subq2.c5)
        WHEN subq1.c4 > subq1.c4 THEN subq2.c3
        ELSE 
    CASE subq0.c3 WHEN subq0.c3 <> 1 AND subq2.c7 = subq2.c6 AND subq2.c7 >= subq0.c3 THEN subq2.c4
         WHEN true OR false THEN subq2.c6
         WHEN EXISTS (
     SELECT t19.c0 AS c3
      FROM t0 AS t19
      WHERE t19.c0 IS NOT NULL
      ORDER BY c3 DESC, c3, c3, c3 DESC
     ) THEN subq1.c3
         WHEN subq2.c6 <= subq2.c7 AND EXISTS (
     SELECT t20.c2 AS c3, t20.c0 AS c4, t20.c1 AS c5, t20.c2 AS c6, t20.c1 AS c7, t20.c1 AS c8, t20.c1 AS c9, t20.c1 AS c10, t20.c0 AS c11, t20.c0 AS c12, t20.c0 AS c13, 53 AS c14, t20.c2 AS c15, t20.c1 AS c16, t20.c2 AS c17, 6 AS c18
      FROM t0 AS t20
      WHERE t20.c1 > t20.c0 OR t20.c2 >= t20.c2
      ORDER BY c17 COLLATE BINARY ASC
     ) THEN subq0.c3
         WHEN subq0.c3 < subq2.c6 AND subq0.c3 IS NOT NULL THEN subq0.c3
         ELSE subq1.c3
    END
   END
  END
      WHEN subq2.c8 > subq1.c4 THEN subq2.c7
      ELSE subq1.c3
 END
ORDER BY c15, c16 COLLATE NOCASE, c16
;SELECT t3.c1 AS c20, CAST(TRUE AS TEXT) AS c21
FROM t0 AS t1
  LEFT JOIN (
  t0 AS t2
     INNER JOIN t0 AS t3     
      ON (EXISTS (
       SELECT t4.c2 AS c3
        FROM t0 AS t4
        WHERE EXISTS (
         SELECT t5.c0 AS c3, t5.c0 AS c4, t5.c1 AS c5, t5.c1 AS c6
          FROM t0 AS t5
          WHERE t5.c2 < t5.c1
          ORDER BY c4 COLLATE NOCASE DESC, c3, c4
          LIMIT 2115605959175629345 
         )
        ORDER BY c3, c3, c3 ASC, c3 ASC
        LIMIT 1699379409876363820 OFFSET 1258317719537176100
       ) AND true)
    INNER JOIN (
    t0 AS t6
     INNER JOIN t0 AS t7     
      ON (t6.c2 IS NOT NULL)    )
     ON (t3.c2 <> t3.c2)
   INNER JOIN t0 AS t8   
    ON (99 <= 
     CASE t6.c2 WHEN t2.c1 IS NOT NULL THEN t3.c2
          WHEN t2.c0 < t7.c0 THEN t6.c0
          WHEN t2.c2 < t7.c1 OR t3.c1 = t6.c0 THEN t2.c2
          WHEN t8.c1 <> t2.c1 THEN t3.c2
          WHEN EXISTS (
      SELECT t9.c2 AS c3, t9.c1 AS c4, t9.c2 AS c5, t9.c2 AS c6, t9.c1 AS c7, t9.c1 AS c8, t9.c2 AS c9, t9.c0 AS c10, t9.c0 AS c11, 90 AS c12, t9.c2 AS c13, t9.c0 AS c14, t9.c0 AS c15, t9.c2 AS c16, t9.c1 AS c17, t9.c0 AS c18, t9.c2 AS c19, t9.c0 AS c20, t9.c1 AS c21, t9.c0 AS c22, t9.c1 AS c23, t9.c1 AS c24, t9.c0 AS c25, t9.c0 AS c26, t9.c0 AS c27, t9.c1 AS c28
       FROM t0 AS t9
       WHERE t9.c1 < t9.c0
       ORDER BY c27, c12 COLLATE RTRIM
      ) THEN t2.c2
          WHEN t7.c2 >= t3.c0 THEN t6.c1
          WHEN true THEN t8.c0
          ELSE t7.c0
     END)  )
   ON (t7.c2 <> t3.c1 OR t2.c1 >= 
    CASE WHEN t6.c2 = t1.c0 THEN t2.c0
         ELSE 
     CASE t2.c2 WHEN EXISTS (
      SELECT t10.c0 AS c3, t10.c1 AS c4
       FROM t0 AS t10
       WHERE t10.c1 = t10.c2
       ORDER BY c4, c4 COLLATE BINARY DESC, c3, c4 COLLATE RTRIM DESC
      ) THEN t3.c2
          WHEN t3.c2 >= t6.c0 THEN t3.c2
          WHEN t8.c2 > t6.c2 THEN t2.c1
          WHEN t2.c0 = t3.c1 THEN t6.c1
          WHEN t6.c0 IS NOT NULL OR t7.c0 <= t8.c2 THEN t7.c1
          WHEN t8.c1 < 
      CASE t8.c2 WHEN t1.c0 > t6.c1 THEN t8.c1
           WHEN false THEN t6.c0
           WHEN t3.c1 <= t8.c0 AND t2.c1 <= t1.c2 OR t8.c1 = t2.c0 THEN t1.c2
           WHEN t8.c2 <> t6.c2 THEN t8.c0
           WHEN false THEN t6.c1
           WHEN t6.c1 = t3.c1 THEN t2.c0
           WHEN t1.c1 IS NOT NULL AND t7.c2 = t7.c0 AND t2.c1 <> t2.c1 THEN t3.c1
           WHEN t3.c1 IS NOT NULL AND t8.c2 IS NOT NULL THEN t2.c2
           WHEN EXISTS (
       SELECT t11.c1 AS c3
        FROM t0 AS t11
        WHERE false
        ORDER BY c3, c3 COLLATE RTRIM ASC, c3 COLLATE NOCASE, c3 COLLATE BINARY ASC
        LIMIT 1785781569118132495 OFFSET 2549543235866442217
       ) AND t8.c1 IS NOT NULL THEN t7.c0
           WHEN t1.c0 > t2.c0 THEN t7.c1
           WHEN t2.c1 > t8.c0 AND EXISTS (
       SELECT t12.c1 AS c3, t12.c0 AS c4, t12.c1 AS c5, t12.c1 AS c6, t12.c1 AS c7, t12.c2 AS c8, t12.c2 AS c9, t12.c2 AS c10, t12.c0 AS c11, t12.c0 AS c12, t12.c2 AS c13, t12.c1 AS c14, t12.c0 AS c15, t12.c1 AS c16, t12.c2 AS c17, t12.c1 AS c18, t12.c1 AS c19, t12.c0 AS c20, t12.c1 AS c21
        FROM t0 AS t12
        WHERE t12.c2 < t12.c0
        ORDER BY c5, c14 DESC
       ) THEN t3.c1
           WHEN t6.c0 <> t2.c1 THEN t8.c0
           ELSE t7.c2
      END OR t1.c0 <> t7.c0 THEN t1.c2
          WHEN t3.c2 = t7.c1 THEN t8.c2
          WHEN EXISTS (
      SELECT t14.c2 AS c3, t13.c1 AS c4, t13.c0 AS c5, t14.c2 AS c6
       FROM t0 AS t13
         INNER JOIN t0 AS t14         
          ON (t13.c2 IS NOT NULL OR t14.c2 IS NULL AND true)
       WHERE t14.c0 > t13.c1
       ORDER BY c4 ASC
      ) THEN t1.c1
          ELSE t2.c0
     END
    END AND t1.c0 > t6.c0 OR EXISTS (
    SELECT 31 AS c3, t15.c1 AS c4, t15.c0 AS c5, t15.c2 AS c6, t15.c2 AS c7, t15.c0 AS c8, t15.c0 AS c9, t15.c1 AS c10, t15.c1 AS c11, t15.c2 AS c12, t15.c1 AS c13, t15.c1 AS c14, t15.c1 AS c15, 60 AS c16, t15.c0 AS c17, t15.c1 AS c18, t15.c2 AS c19
     FROM t0 AS t15
     WHERE t15.c2 < t15.c0
     ORDER BY c16 ASC
     LIMIT 5283604627537072417 OFFSET 547328072764694060
    ) AND t7.c1 <> t2.c0 OR t8.c2 = t1.c0 AND t8.c1 IS NULL AND t7.c2 IS NULL AND CAST(t8.c0 AS INTEGER) IS NULL AND true AND CAST(t1.c0 AS TEXT) = t1.c2 AND t8.c2 <> t2.c0 OR false OR false OR t6.c1 <> CAST(t1.c1 AS BOOLEAN) OR t7.c0 IS NULL AND false)
WHERE 
 CASE t8.c2 WHEN false OR t7.c0 IS NOT NULL THEN 48
      WHEN t2.c1 < 
  CASE WHEN false THEN t3.c0
       ELSE t6.c1
  END THEN t2.c0
      WHEN t8.c2 < t7.c1 THEN t1.c0
      WHEN false THEN t6.c0
      WHEN t2.c2 < t2.c2 THEN t8.c1
      WHEN 
  CASE WHEN t7.c0 <= t2.c1 THEN last_insert_rowid()
       ELSE t8.c1
  END > t1.c1 THEN 
  CASE WHEN 16 = t7.c0 THEN 
   CASE t8.c0 WHEN 90 <= t2.c0 THEN t1.c0
        WHEN t7.c1 IS NULL THEN COALESCE(t2.c1, changes(), t7.c1, t6.c2)
        WHEN true THEN t6.c0
        WHEN t3.c1 < t1.c1 THEN t8.c1
        WHEN 
    CASE t6.c2 WHEN t6.c2 <> t3.c1 THEN t7.c0
         ELSE 
     CASE WHEN t6.c2 <= 20 THEN 
      CASE t7.c1 WHEN t7.c1 >= t7.c2 THEN t1.c0
           WHEN t8.c0 IS NOT NULL THEN 98
           WHEN true THEN t8.c0
           WHEN t8.c2 IS NULL THEN t8.c0
           WHEN t1.c1 IS NULL THEN t3.c1
           WHEN EXISTS (
       SELECT t16.c1 AS c3, t16.c0 AS c4, t16.c2 AS c5
        FROM t0 AS t16
        WHERE t16.c2 < t16.c2
        ORDER BY c5 COLLATE RTRIM, c4 COLLATE NOCASE ASC, c3 DESC
       ) THEN t7.c2
           WHEN t6.c0 <= t3.c0 THEN t8.c1
           WHEN false AND t7.c2 < t2.c0 THEN t1.c2
           WHEN t6.c2 <= 2 THEN t1.c0
           WHEN t2.c1 > t8.c0 OR t1.c1 > t3.c1 OR false AND t6.c1 < t1.c0 AND EXISTS (
       SELECT t17.c0 AS c3, t17.c2 AS c4, t17.c0 AS c5, t17.c0 AS c6, t17.c0 AS c7, t17.c0 AS c8, t17.c1 AS c9, t17.c0 AS c10, t17.c2 AS c11, 96 AS c12, t17.c1 AS c13, t17.c2 AS c14, t17.c2 AS c15, 54 AS c16, t17.c1 AS c17
        FROM t0 AS t17
        WHERE t17.c0 > t17.c1 OR t17.c0 <= t17.c0 AND false
        ORDER BY c4, c15 DESC
        LIMIT 3063679127442267631 
       ) AND EXISTS (
       SELECT t18.c1 AS c3, t18.c0 AS c4, t18.c1 AS c5, t18.c2 AS c6, t18.c1 AS c7, t18.c0 AS c8
        FROM t0 AS t18
        WHERE EXISTS (
         SELECT t19.c2 AS c3
          FROM t0 AS t19
          WHERE EXISTS (
           SELECT t20.c1 AS c3, t20.c0 AS c4, t20.c2 AS c5, 17 AS c6, t20.c2 AS c7, t20.c2 AS c8
            FROM t0 AS t20
            WHERE t20.c1 >= t20.c1 AND EXISTS (
             SELECT t21.c0 AS c3, t21.c2 AS c4, t21.c2 AS c5, t21.c2 AS c6, 68 AS c7, t21.c1 AS c8, t21.c2 AS c9, t21.c0 AS c10
              FROM t0 AS t21
              WHERE t21.c0 > t21.c0
              ORDER BY c10 COLLATE BINARY, c5 ASC, c5 DESC
              LIMIT 673751636816284836 
             ) AND false OR t20.c0 <= t20.c1 OR 19 IS NULL AND EXISTS (
             SELECT 18 AS c3
              FROM t0 AS t22
              WHERE EXISTS (
               SELECT t23.c2 AS c3, t23.c0 AS c4, t23.c2 AS c5, t23.c0 AS c6, t23.c0 AS c7, t23.c0 AS c8, t23.c2 AS c9, t23.c0 AS c10, t23.c0 AS c11
                FROM t0 AS t23
                WHERE true
                ORDER BY c9 COLLATE RTRIM ASC, c8 COLLATE NOCASE
                LIMIT 6910508694064046465 
               ) OR false OR t22.c2 = t22.c1 AND EXISTS (
               SELECT 94 AS c3, t24.c1 AS c4, t24.c2 AS c5, t24.c1 AS c6, t24.c1 AS c7, t24.c2 AS c8, t24.c2 AS c9, t24.c2 AS c10, t24.c0 AS c11, t24.c2 AS c12, t24.c2 AS c13, t24.c0 AS c14, t24.c0 AS c15, t24.c0 AS c16, t24.c0 AS c17, t24.c0 AS c18, t24.c1 AS c19, t24.c1 AS c20, t24.c1 AS c21, t24.c2 AS c22, t24.c0 AS c23, t24.c1 AS c24
                FROM t0 AS t24
                WHERE EXISTS (
                 SELECT t25.c1 AS c3
                  FROM t0 AS t25
                  WHERE EXISTS (
                   SELECT t26.c0 AS c3
                    FROM t0 AS t26
                    WHERE t26.c2 = t26.c1
                    ORDER BY c3 COLLATE NOCASE, c3 COLLATE BINARY DESC, c3, c3
                    LIMIT 5862082376516271264 OFFSET 4962656674873620728
                   )
                  ORDER BY c3, c3, c3, c3
                 )
                ORDER BY c18, c19 ASC, c6
                LIMIT 322053428242421995 
               ) OR t22.c0 = t22.c0
              ORDER BY c3, c3, c3 ASC, c3
             ) OR t20.c2 IS NOT NULL OR t20.c1 IS NOT NULL OR false OR EXISTS (
             SELECT t27.c2 AS c3, t27.c0 AS c4, t27.c0 AS c5
              FROM t0 AS t27
              WHERE t27.c1 >= t27.c1
              ORDER BY c3 DESC
              LIMIT 8642695129301063720 OFFSET 2680357424042724229
             ) AND t20.c0 = t20.c2 OR t20.c2 <= t20.c1
            ORDER BY c4 ASC
           )
          ORDER BY c3, c3, c3 COLLATE BINARY, c3
          LIMIT 5307149828729629953 
         )
        ORDER BY c4, c5 COLLATE BINARY DESC
       ) THEN t2.c1
           ELSE t7.c0
      END
          ELSE t3.c0
     END
    END = t3.c1 THEN t3.c1
        ELSE t2.c2
   END
       ELSE t3.c2
  END
      WHEN 
  CASE t8.c1 WHEN t7.c0 IS NOT NULL THEN t1.c0
       WHEN t1.c0 <= t2.c0 AND EXISTS (
   SELECT t29.c1 AS c3, t29.c1 AS c4, t29.c0 AS c5, t29.c1 AS c6, t29.c0 AS c7, 10 AS c8, t29.c1 AS c9, t29.c2 AS c10, t29.c1 AS c11, t28.c2 AS c12, t28.c1 AS c13, t28.c0 AS c14, t28.c1 AS c15, 
     CASE WHEN t28.c0 IS NOT NULL THEN t28.c1
          ELSE t28.c1
     END AS c16, t29.c2 AS c17, t28.c1 AS c18, t28.c0 AS c19, t29.c0 AS c20, t28.c0 AS c21, t29.c1 AS c22, 99 AS c23
    FROM t0 AS t28
      LEFT JOIN t0 AS t29      
       ON (t28.c2 = t29.c0)
    WHERE EXISTS (
     SELECT t30.c2 AS c3
      FROM t0 AS t30
      WHERE t30.c2 >= t30.c1
      ORDER BY c3 COLLATE NOCASE, c3 ASC, c3 DESC, c3
      LIMIT 1267400527604964012 
     )
    ORDER BY c10 ASC, c3
    LIMIT 983171290604300186 OFFSET 4192016263445029331
   ) AND t7.c2 <= t1.c2 THEN 6
       WHEN max(FALSE,FALSE,TRUE) IS NULL THEN t1.c2
       ELSE t1.c0
  END <> t1.c1 THEN 98
      ELSE t6.c1
 END < t8.c2
ORDER BY c20, c21 COLLATE BINARY ASC
LIMIT 939389489912683829 
;SELECT t1.c0 AS c3
FROM t0 AS t1
WHERE t1.c2 IS NULL
ORDER BY c3, c3 COLLATE BINARY ASC, c3 DESC, c3
;SELECT subq0.c10 AS c3
FROM (SELECT t2.c2 AS c3, t1.c2 AS c4, 58 AS c5, t2.c1 AS c6, t3.c0 AS c7, t2.c0 AS c8, t3.c1 AS c9, t2.c2 AS c10, t3.c1 AS c11, 56 AS c12
      FROM t0 AS t1
         LEFT JOIN t0 AS t2         
          ON (t1.c0 < t1.c0)
        LEFT JOIN t0 AS t3        
         ON (true OR t2.c1 <= t3.c0)
      WHERE t3.c0 IS NULL AND t2.c0 = t3.c0 OR t3.c2 = t3.c1 AND t2.c1 > t3.c2
      ORDER BY c6 ASC, c3, c5
      LIMIT 5438130326362709709 OFFSET 5470299365503177836) as subq0
    LEFT JOIN t0 AS t4    
     ON (subq0.c8 >= subq0.c9)
   LEFT JOIN t0 AS t5   
    ON (t5.c2 IS NULL)
  INNER JOIN t0 AS t6  
   ON (t4.c0 IS NOT NULL)
WHERE false
ORDER BY c3 ASC
;; SELECT * FROM t0; DROP TABLE t0;'. Collected Stderr: Error: near line 53256863: parser stack overflow || New_Err: [New] stdout closed or error during query. Query: 'CREATE TABLE t0 (
    c0 INTEGER,
    c1 INTEGER,
    c2 INTEGER
);
INSERT INTO t0 VALUES (19, 81, 21)
;INSERT INTO t0 VALUES (95, 21, 65)
;UPDATE t0 
SET c0 = 
  CASE WHEN EXISTS (
   SELECT t8.c0 AS c3
    FROM t0 AS t8
      LEFT JOIN t0 AS t9      
       ON (t9.c0 <> t8.c1)
    WHERE EXISTS (
     SELECT t10.c2 AS c3
      FROM t0 AS t10
      WHERE t10.c1 IS NOT NULL
      ORDER BY c3, c3 DESC, c3 COLLATE RTRIM DESC, c3 DESC
      LIMIT 2677442517286923954 
     )
    ORDER BY c3 ASC, c3 COLLATE RTRIM ASC, c3, c3 DESC
    LIMIT 7036772214222974869 OFFSET 6687813507938298738
   ) THEN t0.c1
       ELSE t0.c2
  END, c1 = t0.c0, c2 = t0.c2
WHERE 
 CASE t0.c0 WHEN t0.c2 <> t0.c2 THEN 
  CASE t0.c0 WHEN instr(TRUE,FALSE) < COALESCE(t0.c0, t0.c2, t0.c0) AND t0.c2 <= t0.c2 THEN t0.c1
       WHEN t0.c1 < t0.c1 THEN t0.c0
       WHEN 
   CASE t0.c0 WHEN t0.c2 <> t0.c0 THEN t0.c1
        WHEN t0.c1 <> t0.c2 THEN 
    CASE t0.c1 WHEN t0.c1 > t0.c2 THEN t0.c2
         WHEN t0.c1 < t0.c2 THEN t0.c2
         WHEN t0.c1 <= t0.c2 AND t0.c1 >= t0.c1 THEN t0.c0
         WHEN t0.c0 > t0.c0 THEN t0.c1
         WHEN t0.c1 IS NULL AND t0.c1 < t0.c0 AND t0.c0 <= t0.c0 THEN t0.c1
         WHEN false THEN t0.c1
         WHEN t0.c0 <> t0.c2 THEN t0.c2
         WHEN CAST(t0.c1 AS INTEGER) = t0.c2 THEN t0.c2
         WHEN t0.c1 IS NULL THEN t0.c1
         WHEN 100 < t0.c0 THEN t0.c1
         WHEN t0.c2 > t0.c0 THEN t0.c2
         ELSE t0.c1
    END
        WHEN false THEN t0.c2
        WHEN 61 > 
    CASE WHEN t0.c0 >= t0.c0 THEN t0.c2
         ELSE t0.c1
    END THEN t0.c2
        WHEN t0.c1 <= t0.c1 AND t0.c2 >= t0.c1 THEN t0.c0
        WHEN EXISTS (
    SELECT t1.c0 AS c3
     FROM t0 AS t1
     WHERE t1.c2 <> t1.c0 AND false OR true AND 2 < t1.c0
     ORDER BY c3 DESC, c3 DESC, c3 ASC, c3 DESC
     LIMIT 6762697295006785572 OFFSET 4729063675704457289
    ) THEN t0.c1
        ELSE t0.c0
   END = t0.c2 THEN t0.c0
       WHEN 
   CASE t0.c2 WHEN t0.c0 <> t0.c2 OR 96 <> t0.c0 OR likelihood(44,0.199812) = t0.c0 AND t0.c0 IS NOT NULL OR t0.c1 > t0.c2 AND EXISTS (
    SELECT t2.c0 AS c3, t3.c2 AS c4
     FROM t0 AS t2
       LEFT JOIN t0 AS t3       
        ON (t2.c1 > t2.c0)
     WHERE t2.c1 <= t2.c0
     ORDER BY c4, c4, c4, c3
     LIMIT 6416942882541240727 OFFSET 3720268184672545332
    ) AND t0.c2 < t0.c2 THEN t0.c1
        WHEN t0.c0 > COALESCE(t0.c0, CAST(t0.c1 AS INTEGER), t0.c1, t0.c1, t0.c2) THEN t0.c1
        ELSE t0.c1
   END <> t0.c0 THEN t0.c2
       WHEN EXISTS (
   SELECT t4.c2 AS c3
    FROM t0 AS t4
    WHERE t4.c1 <= 87 AND t4.c1 IS NULL
    ORDER BY c3 ASC, c3, c3 ASC, c3
    LIMIT 570778347399353432 OFFSET 5942707441056583449
   ) THEN t0.c0
       WHEN t0.c1 >= t0.c2 OR t0.c2 IS NULL THEN CAST(t0.c2 AS INTEGER)
       ELSE t0.c2
  END
      ELSE 
  CASE WHEN true THEN 
   CASE t0.c0 WHEN t0.c1 <= t0.c1 AND t0.c2 > t0.c1 OR t0.c2 <= t0.c2 AND t0.c2 <= t0.c1 AND t0.c1 > t0.c2 THEN t0.c1
        WHEN EXISTS (
    SELECT t6.c0 AS c3, t5.c0 AS c4, t5.c1 AS c5, t5.c2 AS c6, t6.c1 AS c7, t6.c1 AS c8, t5.c0 AS c9
     FROM t0 AS t5
       INNER JOIN t0 AS t6       
        ON (t6.c0 <= t5.c2)
     WHERE t5.c2 > t6.c0 OR EXISTS (
      SELECT t7.c0 AS c3, t7.c1 AS c4, t7.c2 AS c5, t7.c1 AS c6
       FROM t0 AS t7
       WHERE t7.c2 >= t7.c0
       ORDER BY c3
       LIMIT 6165430212152119037 OFFSET 6552845807515212585
      ) AND t6.c2 IS NOT NULL
     ORDER BY c8 COLLATE RTRIM DESC
     LIMIT 5301382324900358665 OFFSET 829978465547744223
    ) THEN t0.c0
        WHEN t0.c0 >= t0.c0 THEN t0.c1
        WHEN t0.c2 > t0.c1 THEN t0.c0
        ELSE t0.c1
   END
       ELSE t0.c1
  END
 END <= t0.c0 OR t0.c2 IS NULL
;UPDATE t0 
SET c1 = t0.c2
WHERE t0.c1 >= 
 CASE WHEN false THEN t0.c0
      ELSE t0.c0
 END
;SELECT 
 CASE WHEN CAST(t1.c2 AS INTEGER) = t1.c2 OR t1.c0 < t1.c0 AND EXISTS (
  SELECT t2.c1 AS c3, t2.c1 AS c4, t2.c2 AS c5, t2.c1 AS c6, t2.c0 AS c7, t2.c1 AS c8, t2.c2 AS c9, t2.c1 AS c10
   FROM t0 AS t2
   WHERE t2.c1 > t2.c0
   ORDER BY c10, c8
   LIMIT 6157879496364428470 OFFSET 4403540287545001640
  ) THEN 
  CASE WHEN 53 > 
   CASE t1.c1 WHEN true THEN 
    CASE WHEN false AND t1.c1 <> t1.c1 AND t1.c2 >= t1.c0 OR t1.c2 <> 39 AND t1.c0 <= t1.c0 OR true OR t1.c0 = t1.c2 OR t1.c1 = t1.c0 THEN t1.c2
         ELSE t1.c1
    END
        WHEN true AND t1.c1 <> t1.c1 OR t1.c0 >= t1.c2 THEN CAST(t1.c2 AS TEXT)
        WHEN true THEN t1.c2
        WHEN t1.c0 >= t1.c2 OR 
    CASE t1.c2 WHEN t1.c1 < likely( 71) THEN t1.c1
         WHEN t1.c2 < t1.c0 THEN t1.c1
         WHEN false THEN t1.c1
         WHEN t1.c2 IS NULL THEN t1.c1
         WHEN t1.c0 > t1.c1 THEN t1.c2
         WHEN t1.c0 = NULLIF(t1.c1, t1.c0) THEN max(FALSE,TRUE,FALSE)
         WHEN true THEN t1.c2
         ELSE t1.c0
    END IS NOT NULL THEN t1.c2
        ELSE COALESCE(t1.c2, NULL, 'text75', t1.c0)
   END THEN IFNULL(t1.c2, t1.c0)
       ELSE t1.c2
  END
      ELSE t1.c1
 END AS c11
FROM t0 AS t1
WHERE t1.c1 <= t1.c1
ORDER BY c11, c11, c11 ASC, c11 ASC
LIMIT 6491297460195068633 
;SELECT subq0.c3 AS c6, 
 CASE WHEN subq0.c3 <= subq0.c3 THEN instr(TRUE,23)
      ELSE COALESCE(subq0.c3, subq0.c3)
 END AS c7, subq0.c3 AS c8, 
 CASE WHEN subq0.c3 <= subq0.c3 THEN subq0.c3
      ELSE subq0.c3
 END AS c9, subq0.c3 AS c10, subq0.c3 AS c11, subq0.c3 AS c12
FROM (SELECT t5.c0 AS c3
   FROM t0 AS t1
     LEFT JOIN (
     t0 AS t2
       LEFT JOIN t0 AS t3       
        ON (false AND t3.c0 > t3.c1)
      INNER JOIN (
      t0 AS t4
       INNER JOIN t0 AS t5       
        ON (t5.c1 IS NULL)      )
       ON (true)     )
      ON (t4.c1 < t2.c0)
   WHERE t1.c2 <> 
    CASE t2.c2 WHEN EXISTS (
     SELECT t6.c1 AS c3, t6.c1 AS c4, t6.c1 AS c5
      FROM t0 AS t6
      WHERE t6.c2 > 1
      ORDER BY c4 DESC, c3
     ) THEN t4.c0
         WHEN EXISTS (
     SELECT 67 AS c3
      FROM t0 AS t7
      WHERE EXISTS (
       SELECT t8.c2 AS c3
        FROM t0 AS t8
        WHERE EXISTS (
         SELECT t9.c1 AS c3, t9.c2 AS c4, t9.c0 AS c5, t9.c2 AS c6, t9.c2 AS c7
          FROM t0 AS t9
          WHERE t9.c1 <> t9.c1 AND t9.c2 IS NOT NULL
          ORDER BY c3 DESC, c6 DESC, c3 COLLATE BINARY ASC
          LIMIT 4784615958650652980 
         )
        ORDER BY c3, c3, c3 COLLATE NOCASE, c3 ASC
        LIMIT 5098120254219508225 OFFSET 4168303359204239760
       )
      ORDER BY c3 DESC
      LIMIT 1673097955509636658 OFFSET 2785821683344652432
     ) OR EXISTS (
     SELECT t10.c2 AS c3
      FROM t0 AS t10
      WHERE true
      ORDER BY c3 ASC, c3, c3, c3 COLLATE BINARY
      LIMIT 5999098682123867497 OFFSET 3323781460927049757
     ) THEN t5.c1
         WHEN 
     CASE WHEN EXISTS (
      SELECT t11.c0 AS c3, t11.c1 AS c4, t11.c2 AS c5, t11.c2 AS c6, t11.c1 AS c7, t11.c2 AS c8, t11.c0 AS c9, t11.c0 AS c10, t11.c0 AS c11, 85 AS c12, t11.c2 AS c13, t11.c0 AS c14
       FROM t0 AS t11
       WHERE t11.c2 IS NOT NULL AND t11.c0 > t11.c1 AND t11.c1 < t11.c1 OR t11.c1 >= t11.c2 OR t11.c2 < t11.c1
       ORDER BY c8, c9 COLLATE BINARY
      ) THEN t4.c0
          ELSE t3.c0
     END <= t3.c0 THEN t2.c0
         WHEN t3.c0 < t4.c0 THEN t5.c1
         WHEN 
     CASE t2.c2 WHEN EXISTS (
      SELECT t12.c2 AS c3, t12.c2 AS c4, t12.c1 AS c5
       FROM t0 AS t12
       WHERE t12.c2 = t12.c0
       ORDER BY c3
       LIMIT 930752782945227019 OFFSET 1792037147979176149
      ) THEN t4.c2
          WHEN t4.c1 > t3.c0 THEN t4.c1
          WHEN t2.c2 > t3.c2 AND true THEN t5.c0
          WHEN t4.c2 = t3.c1 THEN t2.c2
          WHEN t5.c1 <= t4.c0 THEN t5.c2
          WHEN t3.c0 > t5.c1 THEN t3.c1
          ELSE t1.c1
     END <= t1.c1 THEN t4.c0
         ELSE t2.c1
    END
   ORDER BY c3 COLLATE NOCASE
   LIMIT 6627331045491233774 OFFSET 4291536856113572894) as subq0
WHERE subq0.c3 IS NOT NULL
ORDER BY c6 DESC, c9 DESC, c6 DESC
LIMIT 7250784748444163441 
;SELECT subq0.c3 AS c5, subq0.c3 AS c6, subq0.c4 AS c7, 51 AS c8, subq0.c3 AS c9, subq0.c4 AS c10, subq0.c4 AS c11, subq0.c3 AS c12
FROM (SELECT t1.c1 AS c3, t1.c1 AS c4
   FROM t0 AS t1
   WHERE t1.c2 = t1.c0
   ORDER BY c3 COLLATE BINARY DESC, c4
   LIMIT 1608897487467529052 OFFSET 3857608057129460595) as subq0
WHERE IFNULL(CAST(subq0.c4 AS INTEGER), subq0.c3) = subq0.c3 AND EXISTS (
 SELECT t2.c2 AS c3, t2.c0 AS c4
  FROM t0 AS t2
  WHERE t2.c2 < CAST(t2.c0 AS BOOLEAN)
  ORDER BY c3, c3 ASC, c3, c4 ASC
  LIMIT 7476553162831668021 OFFSET 6263412331367657553
 )
ORDER BY c11
LIMIT 1031370516391230919 OFFSET 273434339085575069
;SELECT subq0.c19 AS c10, subq0.c16 AS c11, subq0.c11 AS c12, subq0.c17 AS c13, subq0.c3 AS c14, subq0.c5 AS c15, subq0.c17 AS c16, subq0.c8 AS c17
FROM (SELECT t1.c1 AS c3, t1.c1 AS c4, t1.c2 AS c5, t1.c2 AS c6, t1.c0 AS c7, t1.c0 AS c8, t1.c2 AS c9, t1.c1 AS c10, t1.c0 AS c11, t1.c0 AS c12, t1.c2 AS c13, t1.c0 AS c14, t1.c1 AS c15, t1.c0 AS c16, t1.c0 AS c17, t1.c2 AS c18, t1.c1 AS c19, t1.c0 AS c20
    FROM t0 AS t1
    WHERE t1.c2 <= t1.c0 OR true
    ORDER BY c12 COLLATE RTRIM, c14, c6 COLLATE NOCASE DESC
    LIMIT 68212523453563207 OFFSET 50216049631412064) as subq0
  LEFT JOIN (SELECT t2.c1 AS c3
    FROM t0 AS t2
      LEFT JOIN t0 AS t3      
       ON (t3.c0 IS NULL)
    WHERE EXISTS (
     SELECT t4.c0 AS c3, t4.c1 AS c4, t4.c2 AS c5, t4.c0 AS c6, t4.c2 AS c7, t4.c1 AS c8, t4.c1 AS c9
      FROM t0 AS t4
      WHERE t4.c0 > t4.c1
      ORDER BY c6
      LIMIT 7046322600512516860 OFFSET 5657209217892327065
     ) OR t2.c1 < 47
    ORDER BY c3 DESC
    LIMIT 4586345019382744905 ) as subq1  
   ON (subq0.c13 >= 46)
WHERE EXISTS (
 SELECT subq2.c5 AS c6, subq2.c3 AS c7, subq2.c4 AS c8, 
   CASE WHEN 94 < subq2.c5 AND subq2.c4 IS NOT NULL AND subq2.c3 >= subq2.c4 AND subq2.c5 > 94 THEN subq2.c4
        ELSE subq2.c3
   END AS c9, IFNULL(subq2.c3, IFNULL(subq2.c5, subq2.c5)) AS c10
  FROM (SELECT t5.c0 AS c3, t5.c0 AS c4, t5.c2 AS c5
     FROM t0 AS t5
     WHERE t5.c1 <> t5.c1
     ORDER BY c5 ASC) as subq2
  WHERE subq2.c3 IS NOT NULL
  ORDER BY c9 COLLATE RTRIM
 )
ORDER BY c13 DESC
;SELECT last_insert_rowid() AS c5
FROM (SELECT t1.c2 AS c3, t1.c1 AS c4, COALESCE(t1.c0, NULL, t1.c2, t1.c1) AS c5, t1.c2 AS c6, t1.c0 AS c7, t1.c1 AS c8, 
     CASE WHEN t1.c2 >= t1.c2 THEN t1.c2
          ELSE COALESCE(t1.c0, t1.c2, t1.c0, t1.c2)
     END AS c9, t1.c2 AS c10, t1.c0 AS c11, t1.c1 AS c12, t1.c1 AS c13, t1.c0 AS c14, t1.c1 AS c15, t1.c1 AS c16
    FROM t0 AS t1
    WHERE t1.c1 <= t1.c0
    ORDER BY c13 DESC, c11
    LIMIT 5645242707067002874 ) as subq0
  INNER JOIN (
  t0 AS t2
     INNER JOIN (
     t0 AS t3
      INNER JOIN (
      t0 AS t4
       INNER JOIN t0 AS t5       
        ON (t4.c0 >= t5.c0)      )
       ON (t3.c1 = t5.c0)     )
      ON (t2.c2 = t3.c0)
    LEFT JOIN (
    t0 AS t6
      INNER JOIN t0 AS t7      
       ON (t7.c1 <= t7.c1)
     LEFT JOIN t0 AS t8     
      ON (t6.c2 < t7.c1)    )
     ON (t5.c1 > t3.c0 AND false AND t3.c1 <= t8.c1)
   INNER JOIN (SELECT t9.c2 AS c3, t9.c0 AS c4
     FROM t0 AS t9
     WHERE t9.c2 = t9.c2 OR t9.c1 IS NULL
     ORDER BY c4 COLLATE BINARY ASC, c3
     LIMIT 416450946358914963 OFFSET 3734703072409029615) as subq1   
    ON (t2.c0 < t5.c2)  )
   ON (false OR subq0.c3 > subq0.c8 OR t2.c1 > subq0.c13 AND t2.c0 <= subq0.c11)
WHERE t5.c1 IS NOT NULL
ORDER BY c5, c5 COLLATE RTRIM DESC, c5 DESC, c5
;SELECT subq0.c6 AS c7, 28 AS c8, subq0.c4 AS c9, subq0.c4 AS c10, 
 CASE WHEN subq0.c3 >= 
  CASE WHEN subq0.c3 IS NOT NULL THEN subq0.c4
       ELSE subq0.c3
  END THEN subq0.c4
      ELSE 40
 END AS c11
FROM (SELECT t1.c0 AS c3, t1.c2 AS c4, t2.c0 AS c5, t2.c0 AS c6
   FROM t0 AS t1
     LEFT OUTER JOIN t0 AS t2     
      ON (t2.c1 = t2.c2)
   WHERE 
    CASE WHEN t2.c2 >= t2.c2 OR true OR t2.c1 <= t1.c1 AND t1.c0 < t1.c0 AND false THEN t1.c0
         ELSE t2.c2
    END <= t2.c2
   ORDER BY c6 ASC, c5 ASC, c3
   LIMIT 2821206708184855032 OFFSET 3783644847483066801) as subq0
WHERE 
 CASE WHEN subq0.c5 <> subq0.c6 THEN subq0.c4
      ELSE subq0.c4
 END > subq0.c4 AND 
 CASE WHEN last_insert_rowid() > subq0.c3 THEN CAST(changes() AS TEXT)
      ELSE subq0.c5
 END <= subq0.c4
ORDER BY c10, c9 ASC
LIMIT 5227514973560982209 
;SELECT subq1.c11 AS c14
FROM (SELECT 33 AS c8, subq0.c5 AS c9, subq0.c4 AS c10, 
    CASE subq0.c3 WHEN EXISTS (
     SELECT t3.c2 AS c7, t3.c0 AS c8, t4.c2 AS c9, t2.c0 AS c10
      FROM t0 AS t2
         INNER JOIN t0 AS t3         
          ON (t3.c0 >= t3.c1)
        LEFT JOIN t0 AS t4        
         ON (t4.c1 < t4.c1 OR EXISTS (
          SELECT t5.c0 AS c3, t5.c1 AS c4, 37 AS c5, 31 AS c6
           FROM t0 AS t5
           WHERE t5.c1 = t5.c0
           ORDER BY c3, c6 DESC, c3
           LIMIT 7542752239335546965 OFFSET 1233075861959121651
          ) OR t4.c2 >= t2.c0 OR t4.c0 IS NOT NULL AND false)
      WHERE t3.c1 < t3.c1 AND t3.c0 >= t2.c2
      ORDER BY c9 DESC, c9 ASC
     ) THEN subq0.c3
         WHEN subq0.c6 = subq0.c4 THEN subq0.c4
         WHEN subq0.c4 >= subq0.c7 OR subq0.c5 > COALESCE(subq0.c5, subq0.c3, subq0.c6, subq0.c3) THEN subq0.c4
         WHEN subq0.c7 IS NOT NULL AND subq0.c5 < subq0.c4 THEN subq0.c3
         WHEN subq0.c5 <> subq0.c3 THEN subq0.c7
         WHEN subq0.c4 < subq0.c5 THEN subq0.c5
         WHEN subq0.c3 <> subq0.c5 THEN subq0.c3
         WHEN subq0.c6 >= subq0.c7 AND subq0.c7 <> 24 AND subq0.c6 > subq0.c6 AND subq0.c7 <= subq0.c3 OR 60 >= subq0.c5 THEN subq0.c4
         WHEN subq0.c5 > subq0.c3 THEN subq0.c5
         WHEN subq0.c3 > subq0.c3 AND subq0.c7 IS NULL THEN CAST(subq0.c3 AS INTEGER)
         WHEN subq0.c7 < subq0.c7 THEN subq0.c5
         WHEN subq0.c6 >= subq0.c5 THEN subq0.c5
         ELSE subq0.c6
    END AS c11, CAST(subq0.c4 AS INTEGER) AS c12, subq0.c5 AS c13
   FROM (SELECT t1.c0 AS c3, t1.c0 AS c4, t1.c0 AS c5, t1.c2 AS c6, t1.c2 AS c7
      FROM t0 AS t1
      WHERE t1.c1 > t1.c1
      ORDER BY c6 ASC, c4 COLLATE RTRIM
      LIMIT 6522569292217280099 OFFSET 1237520594437263588) as subq0
   WHERE subq0.c3 < subq0.c6
   ORDER BY c12, c10, c8
   LIMIT 1632364376395603912 ) as subq1
WHERE subq1.c10 <= changes()
ORDER BY c14, c14, c14, c14 COLLATE RTRIM
;SELECT 
 CASE WHEN EXISTS (
  SELECT subq3.c3 AS c4, subq3.c3 AS c5, subq3.c3 AS c6, 
    CASE subq3.c3 WHEN subq3.c3 IS NOT NULL AND subq3.c3 = subq3.c3 AND subq3.c3 > subq3.c3 THEN subq3.c3
         WHEN subq3.c3 > subq3.c3 THEN subq3.c3
         WHEN subq3.c3 = subq3.c3 THEN subq3.c3
         WHEN 39 < subq3.c3 THEN subq3.c3
         WHEN subq3.c3 = subq3.c3 THEN subq3.c3
         WHEN subq3.c3 <= subq3.c3 THEN subq3.c3
         WHEN subq3.c3 = subq3.c3 AND subq3.c3 = subq3.c3 AND EXISTS (
     SELECT t6.c0 AS c3, t6.c2 AS c4, t6.c2 AS c5, t6.c0 AS c6
      FROM t0 AS t6
      WHERE t6.c0 >= t6.c0
      ORDER BY c5 ASC
     ) OR subq3.c3 IS NULL OR subq3.c3 > subq3.c3 OR subq3.c3 >= subq3.c3 THEN subq3.c3
         WHEN subq3.c3 = subq3.c3 THEN subq3.c3
         WHEN subq3.c3 > subq3.c3 THEN subq3.c3
         WHEN subq3.c3 >= subq3.c3 THEN subq3.c3
         WHEN subq3.c3 = subq3.c3 THEN subq3.c3
         ELSE subq3.c3
    END AS c7, subq3.c3 AS c8, subq3.c3 AS c9, 
    CASE subq3.c3 WHEN subq3.c3 > subq3.c3 THEN subq3.c3
         WHEN subq3.c3 IS NOT NULL THEN subq3.c3
         WHEN 41 <= subq3.c3 THEN CAST(subq3.c3 AS BOOLEAN)
         WHEN subq3.c3 <> subq3.c3 OR subq3.c3 = subq3.c3 THEN subq3.c3
         ELSE subq3.c3
    END AS c10, subq3.c3 AS c11, subq3.c3 AS c12, subq3.c3 AS c13
   FROM (SELECT t4.c0 AS c3
      FROM t0 AS t4
        INNER JOIN t0 AS t5        
         ON (t5.c1 IS NULL AND t5.c0 = t5.c0)
      WHERE t5.c2 IS NOT NULL OR t5.c0 <= t5.c1
      ORDER BY c3, c3, c3, c3 ASC
      LIMIT 5013014815569183757 OFFSET 3459258609591098596) as subq3
   WHERE subq3.c3 = subq3.c3
   ORDER BY c13, c4 DESC
   LIMIT 1451705794071713095 OFFSET 7194166096009297928
  ) AND subq2.c4 IS NULL THEN subq1.c4
      ELSE 
  CASE WHEN subq2.c4 >= subq0.c3 THEN subq0.c3
       ELSE NULLIF(subq0.c3, subq2.c7)
  END
 END AS c14, subq2.c5 AS c15, subq1.c3 AS c16
FROM (SELECT t1.c0 AS c3
    FROM t0 AS t1
    WHERE t1.c1 >= t1.c0
    ORDER BY c3 COLLATE BINARY, c3, c3 COLLATE BINARY, c3 COLLATE NOCASE
    LIMIT 8177710901880788207 ) as subq0
  LEFT JOIN (
  (SELECT t2.c0 AS c3, t2.c1 AS c4
     FROM t0 AS t2
     WHERE 83 = t2.c0
     ORDER BY c3 ASC
     LIMIT 1010027496604988600 ) as subq1
   LEFT JOIN (SELECT t3.c1 AS c3, t3.c1 AS c4, t3.c2 AS c5, t3.c2 AS c6, t3.c0 AS c7, t3.c2 AS c8
     FROM t0 AS t3
     WHERE t3.c2 <= t3.c2 OR t3.c2 IS NULL OR t3.c1 IS NULL AND t3.c0 = t3.c1
     ORDER BY c5 ASC
     LIMIT 1178382877416597621 ) as subq2   
    ON (subq2.c6 IS NOT NULL)  )
   ON (subq1.c3 >= subq2.c4)
WHERE subq2.c5 < 
 CASE subq2.c4 WHEN true THEN subq1.c3
      WHEN 69 > subq2.c3 THEN subq2.c4
      WHEN subq2.c8 <> subq2.c8 THEN subq1.c4
      WHEN subq2.c8 <= 
  CASE WHEN COALESCE(COALESCE(subq1.c3, subq1.c3, subq0.c3), subq2.c7, subq0.c3) > subq2.c3 THEN subq1.c4
       ELSE subq2.c3
  END AND subq2.c5 IS NULL THEN subq2.c4
      WHEN 
  CASE WHEN EXISTS (
   SELECT t7.c0 AS c3
    FROM t0 AS t7
      INNER JOIN t0 AS t8      
       ON (t8.c0 <= t8.c1)
    WHERE t8.c0 < t7.c0
    ORDER BY c3 COLLATE NOCASE, c3, c3, c3
    LIMIT 8057054922809899055 OFFSET 4068738926021425500
   ) THEN subq0.c3
       ELSE subq2.c6
  END IS NOT NULL THEN 
  CASE subq1.c3 WHEN EXISTS (
   SELECT t9.c2 AS c3, t9.c2 AS c4, t9.c1 AS c5, t9.c1 AS c6, t9.c0 AS c7
    FROM t0 AS t9
    WHERE t9.c0 <= 87
    ORDER BY c5 ASC
   ) THEN subq2.c5
       WHEN 
   CASE WHEN subq1.c3 IS NOT NULL THEN subq1.c3
        ELSE subq2.c3
   END >= subq2.c4 THEN subq2.c3
       WHEN subq2.c6 > length( 'text82') OR true THEN subq2.c8
       WHEN CAST(subq1.c4 AS INTEGER) <> subq2.c7 THEN subq2.c8
       WHEN subq2.c5 <> subq2.c4 AND COALESCE(subq0.c3, subq1.c4, subq0.c3, subq1.c4) >= subq2.c6 THEN subq2.c6
       WHEN subq2.c4 > subq2.c7 THEN subq0.c3
       WHEN EXISTS (
   SELECT t10.c2 AS c3
    FROM t0 AS t10
    WHERE t10.c0 < t10.c2
    ORDER BY c3, c3 COLLATE NOCASE ASC, c3, c3
    LIMIT 4123506880156190429 
   ) THEN subq2.c8
       WHEN subq0.c3 IS NOT NULL AND EXISTS (
   SELECT t11.c1 AS c3, t11.c2 AS c4
    FROM t0 AS t11
    WHERE t11.c2 >= t11.c1 AND false
    ORDER BY c4 COLLATE BINARY
   ) AND EXISTS (
   SELECT subq4.c3 AS c5, subq4.c3 AS c6, subq4.c4 AS c7, subq4.c3 AS c8, subq4.c3 AS c9
    FROM (SELECT 96 AS c3, t12.c1 AS c4
       FROM t0 AS t12
       WHERE t12.c1 >= t12.c2
       ORDER BY c4, c3 DESC
       LIMIT 5237690221962020207 ) as subq4
    WHERE subq4.c3 < subq4.c3
    ORDER BY c9 ASC, c8
   ) THEN subq1.c3
       WHEN subq2.c7 <> subq2.c4 THEN subq1.c4
       WHEN 
   CASE subq2.c3 WHEN EXISTS (
    SELECT t13.c0 AS c3
     FROM t0 AS t13
     WHERE EXISTS (
      SELECT t14.c0 AS c3, t14.c2 AS c4, t14.c1 AS c5, t14.c2 AS c6, t14.c0 AS c7, t14.c1 AS c8, t14.c0 AS c9, t14.c2 AS c10, t14.c1 AS c11, t14.c0 AS c12, t14.c0 AS c13, t14.c1 AS c14, t14.c2 AS c15
       FROM t0 AS t14
       WHERE t14.c0 > t14.c2
       ORDER BY c10 COLLATE NOCASE ASC, c3 ASC, c6
       LIMIT 4537336944482934757 
      )
     ORDER BY c3 ASC, c3 DESC, c3, c3
     LIMIT 3340884772284470598 
    ) OR subq2.c7 >= subq1.c4 THEN subq2.c8
        WHEN subq1.c3 >= subq2.c4 THEN subq2.c3
        WHEN subq1.c3 < subq2.c4 THEN subq2.c3
        WHEN COALESCE(IFNULL(subq2.c3, subq1.c3), subq1.c4, subq1.c3, 
     CASE WHEN subq2.c6 > subq2.c8 THEN NULL
          ELSE NULL
     END, subq0.c3, subq1.c3) = subq2.c3 THEN subq2.c3
        WHEN subq1.c4 = subq2.c6 THEN subq2.c6
        WHEN subq2.c8 < CAST(subq2.c5 AS TEXT) THEN COALESCE(subq1.c3, subq2.c6, subq2.c8, subq1.c3, 71)
        ELSE subq2.c8
   END = subq1.c3 THEN subq2.c4
       WHEN subq2.c5 < subq2.c8 THEN subq1.c4
       ELSE 
   CASE subq2.c6 WHEN subq2.c4 <> subq1.c4 THEN subq2.c5
        WHEN 
    CASE subq2.c4 WHEN false THEN subq0.c3
         WHEN true AND 81 >= subq2.c5 THEN subq2.c8
         ELSE subq0.c3
    END >= 14 AND subq2.c8 <> subq2.c8 THEN 76
        WHEN subq2.c4 < subq1.c3 THEN subq0.c3
        WHEN subq0.c3 <= subq2.c5 OR EXISTS (
    SELECT t15.c2 AS c3, t15.c0 AS c4
     FROM t0 AS t15
     WHERE t15.c1 < t15.c2
     ORDER BY c4 ASC
     LIMIT 629692545000824 
    ) THEN subq2.c7
        WHEN subq1.c4 = subq2.c6 OR EXISTS (
    SELECT t16.c0 AS c3
     FROM t0 AS t16
     WHERE t16.c1 = t16.c0
     ORDER BY c3 DESC
    ) OR subq1.c4 IS NOT NULL THEN subq2.c8
        WHEN true THEN subq2.c3
        WHEN true AND subq0.c3 IS NOT NULL THEN subq2.c7
        WHEN subq2.c8 < subq0.c3 THEN subq2.c5
        WHEN subq2.c3 > subq0.c3 OR subq2.c5 < subq2.c5 OR subq0.c3 IS NOT NULL AND subq2.c6 > subq2.c5 THEN subq2.c3
        WHEN EXISTS (
    SELECT t17.c2 AS c3, t17.c0 AS c4, t17.c2 AS c5, t17.c1 AS c6, t17.c1 AS c7, t17.c1 AS c8, t17.c1 AS c9
     FROM t0 AS t17
     WHERE t17.c1 = t17.c1 OR EXISTS (
      SELECT t18.c2 AS c3
       FROM t0 AS t18
       WHERE t18.c1 <= t18.c2
       ORDER BY c3 COLLATE BINARY ASC
       LIMIT 6768299184943081780 
      )
     ORDER BY c3 DESC, c3
    ) THEN subq2.c4
        WHEN last_insert_rowid() <> subq1.c3 THEN NULLIF(subq2.c4, subq2.c5)
        WHEN subq1.c4 > subq1.c4 THEN subq2.c3
        ELSE 
    CASE subq0.c3 WHEN subq0.c3 <> 1 AND subq2.c7 = subq2.c6 AND subq2.c7 >= subq0.c3 THEN subq2.c4
         WHEN true OR false THEN subq2.c6
         WHEN EXISTS (
     SELECT t19.c0 AS c3
      FROM t0 AS t19
      WHERE t19.c0 IS NOT NULL
      ORDER BY c3 DESC, c3, c3, c3 DESC
     ) THEN subq1.c3
         WHEN subq2.c6 <= subq2.c7 AND EXISTS (
     SELECT t20.c2 AS c3, t20.c0 AS c4, t20.c1 AS c5, t20.c2 AS c6, t20.c1 AS c7, t20.c1 AS c8, t20.c1 AS c9, t20.c1 AS c10, t20.c0 AS c11, t20.c0 AS c12, t20.c0 AS c13, 53 AS c14, t20.c2 AS c15, t20.c1 AS c16, t20.c2 AS c17, 6 AS c18
      FROM t0 AS t20
      WHERE t20.c1 > t20.c0 OR t20.c2 >= t20.c2
      ORDER BY c17 COLLATE BINARY ASC
     ) THEN subq0.c3
         WHEN subq0.c3 < subq2.c6 AND subq0.c3 IS NOT NULL THEN subq0.c3
         ELSE subq1.c3
    END
   END
  END
      WHEN subq2.c8 > subq1.c4 THEN subq2.c7
      ELSE subq1.c3
 END
ORDER BY c15, c16 COLLATE NOCASE, c16
;SELECT t3.c1 AS c20, CAST(TRUE AS TEXT) AS c21
FROM t0 AS t1
  LEFT JOIN (
  t0 AS t2
     INNER JOIN t0 AS t3     
      ON (EXISTS (
       SELECT t4.c2 AS c3
        FROM t0 AS t4
        WHERE EXISTS (
         SELECT t5.c0 AS c3, t5.c0 AS c4, t5.c1 AS c5, t5.c1 AS c6
          FROM t0 AS t5
          WHERE t5.c2 < t5.c1
          ORDER BY c4 COLLATE NOCASE DESC, c3, c4
          LIMIT 2115605959175629345 
         )
        ORDER BY c3, c3, c3 ASC, c3 ASC
        LIMIT 1699379409876363820 OFFSET 1258317719537176100
       ) AND true)
    INNER JOIN (
    t0 AS t6
     INNER JOIN t0 AS t7     
      ON (t6.c2 IS NOT NULL)    )
     ON (t3.c2 <> t3.c2)
   INNER JOIN t0 AS t8   
    ON (99 <= 
     CASE t6.c2 WHEN t2.c1 IS NOT NULL THEN t3.c2
          WHEN t2.c0 < t7.c0 THEN t6.c0
          WHEN t2.c2 < t7.c1 OR t3.c1 = t6.c0 THEN t2.c2
          WHEN t8.c1 <> t2.c1 THEN t3.c2
          WHEN EXISTS (
      SELECT t9.c2 AS c3, t9.c1 AS c4, t9.c2 AS c5, t9.c2 AS c6, t9.c1 AS c7, t9.c1 AS c8, t9.c2 AS c9, t9.c0 AS c10, t9.c0 AS c11, 90 AS c12, t9.c2 AS c13, t9.c0 AS c14, t9.c0 AS c15, t9.c2 AS c16, t9.c1 AS c17, t9.c0 AS c18, t9.c2 AS c19, t9.c0 AS c20, t9.c1 AS c21, t9.c0 AS c22, t9.c1 AS c23, t9.c1 AS c24, t9.c0 AS c25, t9.c0 AS c26, t9.c0 AS c27, t9.c1 AS c28
       FROM t0 AS t9
       WHERE t9.c1 < t9.c0
       ORDER BY c27, c12 COLLATE RTRIM
      ) THEN t2.c2
          WHEN t7.c2 >= t3.c0 THEN t6.c1
          WHEN true THEN t8.c0
          ELSE t7.c0
     END)  )
   ON (t7.c2 <> t3.c1 OR t2.c1 >= 
    CASE WHEN t6.c2 = t1.c0 THEN t2.c0
         ELSE 
     CASE t2.c2 WHEN EXISTS (
      SELECT t10.c0 AS c3, t10.c1 AS c4
       FROM t0 AS t10
       WHERE t10.c1 = t10.c2
       ORDER BY c4, c4 COLLATE BINARY DESC, c3, c4 COLLATE RTRIM DESC
      ) THEN t3.c2
          WHEN t3.c2 >= t6.c0 THEN t3.c2
          WHEN t8.c2 > t6.c2 THEN t2.c1
          WHEN t2.c0 = t3.c1 THEN t6.c1
          WHEN t6.c0 IS NOT NULL OR t7.c0 <= t8.c2 THEN t7.c1
          WHEN t8.c1 < 
      CASE t8.c2 WHEN t1.c0 > t6.c1 THEN t8.c1
           WHEN false THEN t6.c0
           WHEN t3.c1 <= t8.c0 AND t2.c1 <= t1.c2 OR t8.c1 = t2.c0 THEN t1.c2
           WHEN t8.c2 <> t6.c2 THEN t8.c0
           WHEN false THEN t6.c1
           WHEN t6.c1 = t3.c1 THEN t2.c0
           WHEN t1.c1 IS NOT NULL AND t7.c2 = t7.c0 AND t2.c1 <> t2.c1 THEN t3.c1
           WHEN t3.c1 IS NOT NULL AND t8.c2 IS NOT NULL THEN t2.c2
           WHEN EXISTS (
       SELECT t11.c1 AS c3
        FROM t0 AS t11
        WHERE false
        ORDER BY c3, c3 COLLATE RTRIM ASC, c3 COLLATE NOCASE, c3 COLLATE BINARY ASC
        LIMIT 1785781569118132495 OFFSET 2549543235866442217
       ) AND t8.c1 IS NOT NULL THEN t7.c0
           WHEN t1.c0 > t2.c0 THEN t7.c1
           WHEN t2.c1 > t8.c0 AND EXISTS (
       SELECT t12.c1 AS c3, t12.c0 AS c4, t12.c1 AS c5, t12.c1 AS c6, t12.c1 AS c7, t12.c2 AS c8, t12.c2 AS c9, t12.c2 AS c10, t12.c0 AS c11, t12.c0 AS c12, t12.c2 AS c13, t12.c1 AS c14, t12.c0 AS c15, t12.c1 AS c16, t12.c2 AS c17, t12.c1 AS c18, t12.c1 AS c19, t12.c0 AS c20, t12.c1 AS c21
        FROM t0 AS t12
        WHERE t12.c2 < t12.c0
        ORDER BY c5, c14 DESC
       ) THEN t3.c1
           WHEN t6.c0 <> t2.c1 THEN t8.c0
           ELSE t7.c2
      END OR t1.c0 <> t7.c0 THEN t1.c2
          WHEN t3.c2 = t7.c1 THEN t8.c2
          WHEN EXISTS (
      SELECT t14.c2 AS c3, t13.c1 AS c4, t13.c0 AS c5, t14.c2 AS c6
       FROM t0 AS t13
         INNER JOIN t0 AS t14         
          ON (t13.c2 IS NOT NULL OR t14.c2 IS NULL AND true)
       WHERE t14.c0 > t13.c1
       ORDER BY c4 ASC
      ) THEN t1.c1
          ELSE t2.c0
     END
    END AND t1.c0 > t6.c0 OR EXISTS (
    SELECT 31 AS c3, t15.c1 AS c4, t15.c0 AS c5, t15.c2 AS c6, t15.c2 AS c7, t15.c0 AS c8, t15.c0 AS c9, t15.c1 AS c10, t15.c1 AS c11, t15.c2 AS c12, t15.c1 AS c13, t15.c1 AS c14, t15.c1 AS c15, 60 AS c16, t15.c0 AS c17, t15.c1 AS c18, t15.c2 AS c19
     FROM t0 AS t15
     WHERE t15.c2 < t15.c0
     ORDER BY c16 ASC
     LIMIT 5283604627537072417 OFFSET 547328072764694060
    ) AND t7.c1 <> t2.c0 OR t8.c2 = t1.c0 AND t8.c1 IS NULL AND t7.c2 IS NULL AND CAST(t8.c0 AS INTEGER) IS NULL AND true AND CAST(t1.c0 AS TEXT) = t1.c2 AND t8.c2 <> t2.c0 OR false OR false OR t6.c1 <> CAST(t1.c1 AS BOOLEAN) OR t7.c0 IS NULL AND false)
WHERE 
 CASE t8.c2 WHEN false OR t7.c0 IS NOT NULL THEN 48
      WHEN t2.c1 < 
  CASE WHEN false THEN t3.c0
       ELSE t6.c1
  END THEN t2.c0
      WHEN t8.c2 < t7.c1 THEN t1.c0
      WHEN false THEN t6.c0
      WHEN t2.c2 < t2.c2 THEN t8.c1
      WHEN 
  CASE WHEN t7.c0 <= t2.c1 THEN last_insert_rowid()
       ELSE t8.c1
  END > t1.c1 THEN 
  CASE WHEN 16 = t7.c0 THEN 
   CASE t8.c0 WHEN 90 <= t2.c0 THEN t1.c0
        WHEN t7.c1 IS NULL THEN COALESCE(t2.c1, changes(), t7.c1, t6.c2)
        WHEN true THEN t6.c0
        WHEN t3.c1 < t1.c1 THEN t8.c1
        WHEN 
    CASE t6.c2 WHEN t6.c2 <> t3.c1 THEN t7.c0
         ELSE 
     CASE WHEN t6.c2 <= 20 THEN 
      CASE t7.c1 WHEN t7.c1 >= t7.c2 THEN t1.c0
           WHEN t8.c0 IS NOT NULL THEN 98
           WHEN true THEN t8.c0
           WHEN t8.c2 IS NULL THEN t8.c0
           WHEN t1.c1 IS NULL THEN t3.c1
           WHEN EXISTS (
       SELECT t16.c1 AS c3, t16.c0 AS c4, t16.c2 AS c5
        FROM t0 AS t16
        WHERE t16.c2 < t16.c2
        ORDER BY c5 COLLATE RTRIM, c4 COLLATE NOCASE ASC, c3 DESC
       ) THEN t7.c2
           WHEN t6.c0 <= t3.c0 THEN t8.c1
           WHEN false AND t7.c2 < t2.c0 THEN t1.c2
           WHEN t6.c2 <= 2 THEN t1.c0
           WHEN t2.c1 > t8.c0 OR t1.c1 > t3.c1 OR false AND t6.c1 < t1.c0 AND EXISTS (
       SELECT t17.c0 AS c3, t17.c2 AS c4, t17.c0 AS c5, t17.c0 AS c6, t17.c0 AS c7, t17.c0 AS c8, t17.c1 AS c9, t17.c0 AS c10, t17.c2 AS c11, 96 AS c12, t17.c1 AS c13, t17.c2 AS c14, t17.c2 AS c15, 54 AS c16, t17.c1 AS c17
        FROM t0 AS t17
        WHERE t17.c0 > t17.c1 OR t17.c0 <= t17.c0 AND false
        ORDER BY c4, c15 DESC
        LIMIT 3063679127442267631 
       ) AND EXISTS (
       SELECT t18.c1 AS c3, t18.c0 AS c4, t18.c1 AS c5, t18.c2 AS c6, t18.c1 AS c7, t18.c0 AS c8
        FROM t0 AS t18
        WHERE EXISTS (
         SELECT t19.c2 AS c3
          FROM t0 AS t19
          WHERE EXISTS (
           SELECT t20.c1 AS c3, t20.c0 AS c4, t20.c2 AS c5, 17 AS c6, t20.c2 AS c7, t20.c2 AS c8
            FROM t0 AS t20
            WHERE t20.c1 >= t20.c1 AND EXISTS (
             SELECT t21.c0 AS c3, t21.c2 AS c4, t21.c2 AS c5, t21.c2 AS c6, 68 AS c7, t21.c1 AS c8, t21.c2 AS c9, t21.c0 AS c10
              FROM t0 AS t21
              WHERE t21.c0 > t21.c0
              ORDER BY c10 COLLATE BINARY, c5 ASC, c5 DESC
              LIMIT 673751636816284836 
             ) AND false OR t20.c0 <= t20.c1 OR 19 IS NULL AND EXISTS (
             SELECT 18 AS c3
              FROM t0 AS t22
              WHERE EXISTS (
               SELECT t23.c2 AS c3, t23.c0 AS c4, t23.c2 AS c5, t23.c0 AS c6, t23.c0 AS c7, t23.c0 AS c8, t23.c2 AS c9, t23.c0 AS c10, t23.c0 AS c11
                FROM t0 AS t23
                WHERE true
                ORDER BY c9 COLLATE RTRIM ASC, c8 COLLATE NOCASE
                LIMIT 6910508694064046465 
               ) OR false OR t22.c2 = t22.c1 AND EXISTS (
               SELECT 94 AS c3, t24.c1 AS c4, t24.c2 AS c5, t24.c1 AS c6, t24.c1 AS c7, t24.c2 AS c8, t24.c2 AS c9, t24.c2 AS c10, t24.c0 AS c11, t24.c2 AS c12, t24.c2 AS c13, t24.c0 AS c14, t24.c0 AS c15, t24.c0 AS c16, t24.c0 AS c17, t24.c0 AS c18, t24.c1 AS c19, t24.c1 AS c20, t24.c1 AS c21, t24.c2 AS c22, t24.c0 AS c23, t24.c1 AS c24
                FROM t0 AS t24
                WHERE EXISTS (
                 SELECT t25.c1 AS c3
                  FROM t0 AS t25
                  WHERE EXISTS (
                   SELECT t26.c0 AS c3
                    FROM t0 AS t26
                    WHERE t26.c2 = t26.c1
                    ORDER BY c3 COLLATE NOCASE, c3 COLLATE BINARY DESC, c3, c3
                    LIMIT 5862082376516271264 OFFSET 4962656674873620728
                   )
                  ORDER BY c3, c3, c3, c3
                 )
                ORDER BY c18, c19 ASC, c6
                LIMIT 322053428242421995 
               ) OR t22.c0 = t22.c0
              ORDER BY c3, c3, c3 ASC, c3
             ) OR t20.c2 IS NOT NULL OR t20.c1 IS NOT NULL OR false OR EXISTS (
             SELECT t27.c2 AS c3, t27.c0 AS c4, t27.c0 AS c5
              FROM t0 AS t27
              WHERE t27.c1 >= t27.c1
              ORDER BY c3 DESC
              LIMIT 8642695129301063720 OFFSET 2680357424042724229
             ) AND t20.c0 = t20.c2 OR t20.c2 <= t20.c1
            ORDER BY c4 ASC
           )
          ORDER BY c3, c3, c3 COLLATE BINARY, c3
          LIMIT 5307149828729629953 
         )
        ORDER BY c4, c5 COLLATE BINARY DESC
       ) THEN t2.c1
           ELSE t7.c0
      END
          ELSE t3.c0
     END
    END = t3.c1 THEN t3.c1
        ELSE t2.c2
   END
       ELSE t3.c2
  END
      WHEN 
  CASE t8.c1 WHEN t7.c0 IS NOT NULL THEN t1.c0
       WHEN t1.c0 <= t2.c0 AND EXISTS (
   SELECT t29.c1 AS c3, t29.c1 AS c4, t29.c0 AS c5, t29.c1 AS c6, t29.c0 AS c7, 10 AS c8, t29.c1 AS c9, t29.c2 AS c10, t29.c1 AS c11, t28.c2 AS c12, t28.c1 AS c13, t28.c0 AS c14, t28.c1 AS c15, 
     CASE WHEN t28.c0 IS NOT NULL THEN t28.c1
          ELSE t28.c1
     END AS c16, t29.c2 AS c17, t28.c1 AS c18, t28.c0 AS c19, t29.c0 AS c20, t28.c0 AS c21, t29.c1 AS c22, 99 AS c23
    FROM t0 AS t28
      LEFT JOIN t0 AS t29      
       ON (t28.c2 = t29.c0)
    WHERE EXISTS (
     SELECT t30.c2 AS c3
      FROM t0 AS t30
      WHERE t30.c2 >= t30.c1
      ORDER BY c3 COLLATE NOCASE, c3 ASC, c3 DESC, c3
      LIMIT 1267400527604964012 
     )
    ORDER BY c10 ASC, c3
    LIMIT 983171290604300186 OFFSET 4192016263445029331
   ) AND t7.c2 <= t1.c2 THEN 6
       WHEN max(FALSE,FALSE,TRUE) IS NULL THEN t1.c2
       ELSE t1.c0
  END <> t1.c1 THEN 98
      ELSE t6.c1
 END < t8.c2
ORDER BY c20, c21 COLLATE BINARY ASC
LIMIT 939389489912683829 
;SELECT t1.c0 AS c3
FROM t0 AS t1
WHERE t1.c2 IS NULL
ORDER BY c3, c3 COLLATE BINARY ASC, c3 DESC, c3
;SELECT subq0.c10 AS c3
FROM (SELECT t2.c2 AS c3, t1.c2 AS c4, 58 AS c5, t2.c1 AS c6, t3.c0 AS c7, t2.c0 AS c8, t3.c1 AS c9, t2.c2 AS c10, t3.c1 AS c11, 56 AS c12
      FROM t0 AS t1
         LEFT JOIN t0 AS t2         
          ON (t1.c0 < t1.c0)
        LEFT JOIN t0 AS t3        
         ON (true OR t2.c1 <= t3.c0)
      WHERE t3.c0 IS NULL AND t2.c0 = t3.c0 OR t3.c2 = t3.c1 AND t2.c1 > t3.c2
      ORDER BY c6 ASC, c3, c5
      LIMIT 5438130326362709709 OFFSET 5470299365503177836) as subq0
    LEFT JOIN t0 AS t4    
     ON (subq0.c8 >= subq0.c9)
   LEFT JOIN t0 AS t5   
    ON (t5.c2 IS NULL)
  INNER JOIN t0 AS t6  
   ON (t4.c0 IS NOT NULL)
WHERE false
ORDER BY c3 ASC
;; SELECT * FROM t0; DROP TABLE t0;'. Collected Stderr: Parse error near line 53256863: parser stack overflow-----------/Error----------- */
CREATE TABLE t0 (
    c0 INTEGER,
    c1 INTEGER,
    c2 INTEGER
);
INSERT INTO t0 VALUES (19, 81, 21);
INSERT INTO t0 VALUES (95, 21, 65);
UPDATE t0 
SET c0 = 
  CASE WHEN EXISTS (
   SELECT t8.c0 AS c3
    FROM t0 AS t8
      LEFT JOIN t0 AS t9      
       ON (t9.c0 <> t8.c1)
    WHERE EXISTS (
     SELECT t10.c2 AS c3
      FROM t0 AS t10
      WHERE t10.c1 IS NOT NULL
      ORDER BY c3, c3 DESC, c3 COLLATE RTRIM DESC, c3 DESC
      LIMIT 2677442517286923954 
     )
    ORDER BY c3 ASC, c3 COLLATE RTRIM ASC, c3, c3 DESC
    LIMIT 7036772214222974869 OFFSET 6687813507938298738
   ) THEN t0.c1
       ELSE t0.c2
  END, c1 = t0.c0, c2 = t0.c2
WHERE 
 CASE t0.c0 WHEN t0.c2 <> t0.c2 THEN 
  CASE t0.c0 WHEN instr(TRUE,FALSE) < COALESCE(t0.c0, t0.c2, t0.c0) AND t0.c2 <= t0.c2 THEN t0.c1
       WHEN t0.c1 < t0.c1 THEN t0.c0
       WHEN 
   CASE t0.c0 WHEN t0.c2 <> t0.c0 THEN t0.c1
        WHEN t0.c1 <> t0.c2 THEN 
    CASE t0.c1 WHEN t0.c1 > t0.c2 THEN t0.c2
         WHEN t0.c1 < t0.c2 THEN t0.c2
         WHEN t0.c1 <= t0.c2 AND t0.c1 >= t0.c1 THEN t0.c0
         WHEN t0.c0 > t0.c0 THEN t0.c1
         WHEN t0.c1 IS NULL AND t0.c1 < t0.c0 AND t0.c0 <= t0.c0 THEN t0.c1
         WHEN false THEN t0.c1
         WHEN t0.c0 <> t0.c2 THEN t0.c2
         WHEN CAST(t0.c1 AS INTEGER) = t0.c2 THEN t0.c2
         WHEN t0.c1 IS NULL THEN t0.c1
         WHEN 100 < t0.c0 THEN t0.c1
         WHEN t0.c2 > t0.c0 THEN t0.c2
         ELSE t0.c1
    END
        WHEN false THEN t0.c2
        WHEN 61 > 
    CASE WHEN t0.c0 >= t0.c0 THEN t0.c2
         ELSE t0.c1
    END THEN t0.c2
        WHEN t0.c1 <= t0.c1 AND t0.c2 >= t0.c1 THEN t0.c0
        WHEN EXISTS (
    SELECT t1.c0 AS c3
     FROM t0 AS t1
     WHERE t1.c2 <> t1.c0 AND false OR true AND 2 < t1.c0
     ORDER BY c3 DESC, c3 DESC, c3 ASC, c3 DESC
     LIMIT 6762697295006785572 OFFSET 4729063675704457289
    ) THEN t0.c1
        ELSE t0.c0
   END = t0.c2 THEN t0.c0
       WHEN 
   CASE t0.c2 WHEN t0.c0 <> t0.c2 OR 96 <> t0.c0 OR likelihood(44,0.199812) = t0.c0 AND t0.c0 IS NOT NULL OR t0.c1 > t0.c2 AND EXISTS (
    SELECT t2.c0 AS c3, t3.c2 AS c4
     FROM t0 AS t2
       LEFT JOIN t0 AS t3       
        ON (t2.c1 > t2.c0)
     WHERE t2.c1 <= t2.c0
     ORDER BY c4, c4, c4, c3
     LIMIT 6416942882541240727 OFFSET 3720268184672545332
    ) AND t0.c2 < t0.c2 THEN t0.c1
        WHEN t0.c0 > COALESCE(t0.c0, CAST(t0.c1 AS INTEGER), t0.c1, t0.c1, t0.c2) THEN t0.c1
        ELSE t0.c1
   END <> t0.c0 THEN t0.c2
       WHEN EXISTS (
   SELECT t4.c2 AS c3
    FROM t0 AS t4
    WHERE t4.c1 <= 87 AND t4.c1 IS NULL
    ORDER BY c3 ASC, c3, c3 ASC, c3
    LIMIT 570778347399353432 OFFSET 5942707441056583449
   ) THEN t0.c0
       WHEN t0.c1 >= t0.c2 OR t0.c2 IS NULL THEN CAST(t0.c2 AS INTEGER)
       ELSE t0.c2
  END
      ELSE 
  CASE WHEN true THEN 
   CASE t0.c0 WHEN t0.c1 <= t0.c1 AND t0.c2 > t0.c1 OR t0.c2 <= t0.c2 AND t0.c2 <= t0.c1 AND t0.c1 > t0.c2 THEN t0.c1
        WHEN EXISTS (
    SELECT t6.c0 AS c3, t5.c0 AS c4, t5.c1 AS c5, t5.c2 AS c6, t6.c1 AS c7, t6.c1 AS c8, t5.c0 AS c9
     FROM t0 AS t5
       INNER JOIN t0 AS t6       
        ON (t6.c0 <= t5.c2)
     WHERE t5.c2 > t6.c0 OR EXISTS (
      SELECT t7.c0 AS c3, t7.c1 AS c4, t7.c2 AS c5, t7.c1 AS c6
       FROM t0 AS t7
       WHERE t7.c2 >= t7.c0
       ORDER BY c3
       LIMIT 6165430212152119037 OFFSET 6552845807515212585
      ) AND t6.c2 IS NOT NULL
     ORDER BY c8 COLLATE RTRIM DESC
     LIMIT 5301382324900358665 OFFSET 829978465547744223
    ) THEN t0.c0
        WHEN t0.c0 >= t0.c0 THEN t0.c1
        WHEN t0.c2 > t0.c1 THEN t0.c0
        ELSE t0.c1
   END
       ELSE t0.c1
  END
 END <= t0.c0 OR t0.c2 IS NULL;
UPDATE t0 
SET c1 = t0.c2
WHERE t0.c1 >= 
 CASE WHEN false THEN t0.c0
      ELSE t0.c0
 END;
SELECT 
 CASE WHEN CAST(t1.c2 AS INTEGER) = t1.c2 OR t1.c0 < t1.c0 AND EXISTS (
  SELECT t2.c1 AS c3, t2.c1 AS c4, t2.c2 AS c5, t2.c1 AS c6, t2.c0 AS c7, t2.c1 AS c8, t2.c2 AS c9, t2.c1 AS c10
   FROM t0 AS t2
   WHERE t2.c1 > t2.c0
   ORDER BY c10, c8
   LIMIT 6157879496364428470 OFFSET 4403540287545001640
  ) THEN 
  CASE WHEN 53 > 
   CASE t1.c1 WHEN true THEN 
    CASE WHEN false AND t1.c1 <> t1.c1 AND t1.c2 >= t1.c0 OR t1.c2 <> 39 AND t1.c0 <= t1.c0 OR true OR t1.c0 = t1.c2 OR t1.c1 = t1.c0 THEN t1.c2
         ELSE t1.c1
    END
        WHEN true AND t1.c1 <> t1.c1 OR t1.c0 >= t1.c2 THEN CAST(t1.c2 AS TEXT)
        WHEN true THEN t1.c2
        WHEN t1.c0 >= t1.c2 OR 
    CASE t1.c2 WHEN t1.c1 < likely( 71) THEN t1.c1
         WHEN t1.c2 < t1.c0 THEN t1.c1
         WHEN false THEN t1.c1
         WHEN t1.c2 IS NULL THEN t1.c1
         WHEN t1.c0 > t1.c1 THEN t1.c2
         WHEN t1.c0 = NULLIF(t1.c1, t1.c0) THEN max(FALSE,TRUE,FALSE)
         WHEN true THEN t1.c2
         ELSE t1.c0
    END IS NOT NULL THEN t1.c2
        ELSE COALESCE(t1.c2, NULL, 'text75', t1.c0)
   END THEN IFNULL(t1.c2, t1.c0)
       ELSE t1.c2
  END
      ELSE t1.c1
 END AS c11
FROM t0 AS t1
WHERE t1.c1 <= t1.c1
ORDER BY c11, c11, c11 ASC, c11 ASC
LIMIT 6491297460195068633 ;
SELECT subq0.c3 AS c6, 
 CASE WHEN subq0.c3 <= subq0.c3 THEN instr(TRUE,23)
      ELSE COALESCE(subq0.c3, subq0.c3)
 END AS c7, subq0.c3 AS c8, 
 CASE WHEN subq0.c3 <= subq0.c3 THEN subq0.c3
      ELSE subq0.c3
 END AS c9, subq0.c3 AS c10, subq0.c3 AS c11, subq0.c3 AS c12
FROM (SELECT t5.c0 AS c3
   FROM t0 AS t1
     LEFT JOIN (
     t0 AS t2
       LEFT JOIN t0 AS t3       
        ON (false AND t3.c0 > t3.c1)
      INNER JOIN (
      t0 AS t4
       INNER JOIN t0 AS t5       
        ON (t5.c1 IS NULL)      )
       ON (true)     )
      ON (t4.c1 < t2.c0)
   WHERE t1.c2 <> 
    CASE t2.c2 WHEN EXISTS (
     SELECT t6.c1 AS c3, t6.c1 AS c4, t6.c1 AS c5
      FROM t0 AS t6
      WHERE t6.c2 > 1
      ORDER BY c4 DESC, c3
     ) THEN t4.c0
         WHEN EXISTS (
     SELECT 67 AS c3
      FROM t0 AS t7
      WHERE EXISTS (
       SELECT t8.c2 AS c3
        FROM t0 AS t8
        WHERE EXISTS (
         SELECT t9.c1 AS c3, t9.c2 AS c4, t9.c0 AS c5, t9.c2 AS c6, t9.c2 AS c7
          FROM t0 AS t9
          WHERE t9.c1 <> t9.c1 AND t9.c2 IS NOT NULL
          ORDER BY c3 DESC, c6 DESC, c3 COLLATE BINARY ASC
          LIMIT 4784615958650652980 
         )
        ORDER BY c3, c3, c3 COLLATE NOCASE, c3 ASC
        LIMIT 5098120254219508225 OFFSET 4168303359204239760
       )
      ORDER BY c3 DESC
      LIMIT 1673097955509636658 OFFSET 2785821683344652432
     ) OR EXISTS (
     SELECT t10.c2 AS c3
      FROM t0 AS t10
      WHERE true
      ORDER BY c3 ASC, c3, c3, c3 COLLATE BINARY
      LIMIT 5999098682123867497 OFFSET 3323781460927049757
     ) THEN t5.c1
         WHEN 
     CASE WHEN EXISTS (
      SELECT t11.c0 AS c3, t11.c1 AS c4, t11.c2 AS c5, t11.c2 AS c6, t11.c1 AS c7, t11.c2 AS c8, t11.c0 AS c9, t11.c0 AS c10, t11.c0 AS c11, 85 AS c12, t11.c2 AS c13, t11.c0 AS c14
       FROM t0 AS t11
       WHERE t11.c2 IS NOT NULL AND t11.c0 > t11.c1 AND t11.c1 < t11.c1 OR t11.c1 >= t11.c2 OR t11.c2 < t11.c1
       ORDER BY c8, c9 COLLATE BINARY
      ) THEN t4.c0
          ELSE t3.c0
     END <= t3.c0 THEN t2.c0
         WHEN t3.c0 < t4.c0 THEN t5.c1
         WHEN 
     CASE t2.c2 WHEN EXISTS (
      SELECT t12.c2 AS c3, t12.c2 AS c4, t12.c1 AS c5
       FROM t0 AS t12
       WHERE t12.c2 = t12.c0
       ORDER BY c3
       LIMIT 930752782945227019 OFFSET 1792037147979176149
      ) THEN t4.c2
          WHEN t4.c1 > t3.c0 THEN t4.c1
          WHEN t2.c2 > t3.c2 AND true THEN t5.c0
          WHEN t4.c2 = t3.c1 THEN t2.c2
          WHEN t5.c1 <= t4.c0 THEN t5.c2
          WHEN t3.c0 > t5.c1 THEN t3.c1
          ELSE t1.c1
     END <= t1.c1 THEN t4.c0
         ELSE t2.c1
    END
   ORDER BY c3 COLLATE NOCASE
   LIMIT 6627331045491233774 OFFSET 4291536856113572894) as subq0
WHERE subq0.c3 IS NOT NULL
ORDER BY c6 DESC, c9 DESC, c6 DESC
LIMIT 7250784748444163441 ;
SELECT subq0.c3 AS c5, subq0.c3 AS c6, subq0.c4 AS c7, 51 AS c8, subq0.c3 AS c9, subq0.c4 AS c10, subq0.c4 AS c11, subq0.c3 AS c12
FROM (SELECT t1.c1 AS c3, t1.c1 AS c4
   FROM t0 AS t1
   WHERE t1.c2 = t1.c0
   ORDER BY c3 COLLATE BINARY DESC, c4
   LIMIT 1608897487467529052 OFFSET 3857608057129460595) as subq0
WHERE IFNULL(CAST(subq0.c4 AS INTEGER), subq0.c3) = subq0.c3 AND EXISTS (
 SELECT t2.c2 AS c3, t2.c0 AS c4
  FROM t0 AS t2
  WHERE t2.c2 < CAST(t2.c0 AS BOOLEAN)
  ORDER BY c3, c3 ASC, c3, c4 ASC
  LIMIT 7476553162831668021 OFFSET 6263412331367657553
 )
ORDER BY c11
LIMIT 1031370516391230919 OFFSET 273434339085575069;
SELECT subq0.c19 AS c10, subq0.c16 AS c11, subq0.c11 AS c12, subq0.c17 AS c13, subq0.c3 AS c14, subq0.c5 AS c15, subq0.c17 AS c16, subq0.c8 AS c17
FROM (SELECT t1.c1 AS c3, t1.c1 AS c4, t1.c2 AS c5, t1.c2 AS c6, t1.c0 AS c7, t1.c0 AS c8, t1.c2 AS c9, t1.c1 AS c10, t1.c0 AS c11, t1.c0 AS c12, t1.c2 AS c13, t1.c0 AS c14, t1.c1 AS c15, t1.c0 AS c16, t1.c0 AS c17, t1.c2 AS c18, t1.c1 AS c19, t1.c0 AS c20
    FROM t0 AS t1
    WHERE t1.c2 <= t1.c0 OR true
    ORDER BY c12 COLLATE RTRIM, c14, c6 COLLATE NOCASE DESC
    LIMIT 68212523453563207 OFFSET 50216049631412064) as subq0
  LEFT JOIN (SELECT t2.c1 AS c3
    FROM t0 AS t2
      LEFT JOIN t0 AS t3      
       ON (t3.c0 IS NULL)
    WHERE EXISTS (
     SELECT t4.c0 AS c3, t4.c1 AS c4, t4.c2 AS c5, t4.c0 AS c6, t4.c2 AS c7, t4.c1 AS c8, t4.c1 AS c9
      FROM t0 AS t4
      WHERE t4.c0 > t4.c1
      ORDER BY c6
      LIMIT 7046322600512516860 OFFSET 5657209217892327065
     ) OR t2.c1 < 47
    ORDER BY c3 DESC
    LIMIT 4586345019382744905 ) as subq1  
   ON (subq0.c13 >= 46)
WHERE EXISTS (
 SELECT subq2.c5 AS c6, subq2.c3 AS c7, subq2.c4 AS c8, 
   CASE WHEN 94 < subq2.c5 AND subq2.c4 IS NOT NULL AND subq2.c3 >= subq2.c4 AND subq2.c5 > 94 THEN subq2.c4
        ELSE subq2.c3
   END AS c9, IFNULL(subq2.c3, IFNULL(subq2.c5, subq2.c5)) AS c10
  FROM (SELECT t5.c0 AS c3, t5.c0 AS c4, t5.c2 AS c5
     FROM t0 AS t5
     WHERE t5.c1 <> t5.c1
     ORDER BY c5 ASC) as subq2
  WHERE subq2.c3 IS NOT NULL
  ORDER BY c9 COLLATE RTRIM
 )
ORDER BY c13 DESC;
SELECT last_insert_rowid() AS c5
FROM (SELECT t1.c2 AS c3, t1.c1 AS c4, COALESCE(t1.c0, NULL, t1.c2, t1.c1) AS c5, t1.c2 AS c6, t1.c0 AS c7, t1.c1 AS c8, 
     CASE WHEN t1.c2 >= t1.c2 THEN t1.c2
          ELSE COALESCE(t1.c0, t1.c2, t1.c0, t1.c2)
     END AS c9, t1.c2 AS c10, t1.c0 AS c11, t1.c1 AS c12, t1.c1 AS c13, t1.c0 AS c14, t1.c1 AS c15, t1.c1 AS c16
    FROM t0 AS t1
    WHERE t1.c1 <= t1.c0
    ORDER BY c13 DESC, c11
    LIMIT 5645242707067002874 ) as subq0
  INNER JOIN (
  t0 AS t2
     INNER JOIN (
     t0 AS t3
      INNER JOIN (
      t0 AS t4
       INNER JOIN t0 AS t5       
        ON (t4.c0 >= t5.c0)      )
       ON (t3.c1 = t5.c0)     )
      ON (t2.c2 = t3.c0)
    LEFT JOIN (
    t0 AS t6
      INNER JOIN t0 AS t7      
       ON (t7.c1 <= t7.c1)
     LEFT JOIN t0 AS t8     
      ON (t6.c2 < t7.c1)    )
     ON (t5.c1 > t3.c0 AND false AND t3.c1 <= t8.c1)
   INNER JOIN (SELECT t9.c2 AS c3, t9.c0 AS c4
     FROM t0 AS t9
     WHERE t9.c2 = t9.c2 OR t9.c1 IS NULL
     ORDER BY c4 COLLATE BINARY ASC, c3
     LIMIT 416450946358914963 OFFSET 3734703072409029615) as subq1   
    ON (t2.c0 < t5.c2)  )
   ON (false OR subq0.c3 > subq0.c8 OR t2.c1 > subq0.c13 AND t2.c0 <= subq0.c11)
WHERE t5.c1 IS NOT NULL
ORDER BY c5, c5 COLLATE RTRIM DESC, c5 DESC, c5;
SELECT subq0.c6 AS c7, 28 AS c8, subq0.c4 AS c9, subq0.c4 AS c10, 
 CASE WHEN subq0.c3 >= 
  CASE WHEN subq0.c3 IS NOT NULL THEN subq0.c4
       ELSE subq0.c3
  END THEN subq0.c4
      ELSE 40
 END AS c11
FROM (SELECT t1.c0 AS c3, t1.c2 AS c4, t2.c0 AS c5, t2.c0 AS c6
   FROM t0 AS t1
     LEFT OUTER JOIN t0 AS t2     
      ON (t2.c1 = t2.c2)
   WHERE 
    CASE WHEN t2.c2 >= t2.c2 OR true OR t2.c1 <= t1.c1 AND t1.c0 < t1.c0 AND false THEN t1.c0
         ELSE t2.c2
    END <= t2.c2
   ORDER BY c6 ASC, c5 ASC, c3
   LIMIT 2821206708184855032 OFFSET 3783644847483066801) as subq0
WHERE 
 CASE WHEN subq0.c5 <> subq0.c6 THEN subq0.c4
      ELSE subq0.c4
 END > subq0.c4 AND 
 CASE WHEN last_insert_rowid() > subq0.c3 THEN CAST(changes() AS TEXT)
      ELSE subq0.c5
 END <= subq0.c4
ORDER BY c10, c9 ASC
LIMIT 5227514973560982209 ;
SELECT subq1.c11 AS c14
FROM (SELECT 33 AS c8, subq0.c5 AS c9, subq0.c4 AS c10, 
    CASE subq0.c3 WHEN EXISTS (
     SELECT t3.c2 AS c7, t3.c0 AS c8, t4.c2 AS c9, t2.c0 AS c10
      FROM t0 AS t2
         INNER JOIN t0 AS t3         
          ON (t3.c0 >= t3.c1)
        LEFT JOIN t0 AS t4        
         ON (t4.c1 < t4.c1 OR EXISTS (
          SELECT t5.c0 AS c3, t5.c1 AS c4, 37 AS c5, 31 AS c6
           FROM t0 AS t5
           WHERE t5.c1 = t5.c0
           ORDER BY c3, c6 DESC, c3
           LIMIT 7542752239335546965 OFFSET 1233075861959121651
          ) OR t4.c2 >= t2.c0 OR t4.c0 IS NOT NULL AND false)
      WHERE t3.c1 < t3.c1 AND t3.c0 >= t2.c2
      ORDER BY c9 DESC, c9 ASC
     ) THEN subq0.c3
         WHEN subq0.c6 = subq0.c4 THEN subq0.c4
         WHEN subq0.c4 >= subq0.c7 OR subq0.c5 > COALESCE(subq0.c5, subq0.c3, subq0.c6, subq0.c3) THEN subq0.c4
         WHEN subq0.c7 IS NOT NULL AND subq0.c5 < subq0.c4 THEN subq0.c3
         WHEN subq0.c5 <> subq0.c3 THEN subq0.c7
         WHEN subq0.c4 < subq0.c5 THEN subq0.c5
         WHEN subq0.c3 <> subq0.c5 THEN subq0.c3
         WHEN subq0.c6 >= subq0.c7 AND subq0.c7 <> 24 AND subq0.c6 > subq0.c6 AND subq0.c7 <= subq0.c3 OR 60 >= subq0.c5 THEN subq0.c4
         WHEN subq0.c5 > subq0.c3 THEN subq0.c5
         WHEN subq0.c3 > subq0.c3 AND subq0.c7 IS NULL THEN CAST(subq0.c3 AS INTEGER)
         WHEN subq0.c7 < subq0.c7 THEN subq0.c5
         WHEN subq0.c6 >= subq0.c5 THEN subq0.c5
         ELSE subq0.c6
    END AS c11, CAST(subq0.c4 AS INTEGER) AS c12, subq0.c5 AS c13
   FROM (SELECT t1.c0 AS c3, t1.c0 AS c4, t1.c0 AS c5, t1.c2 AS c6, t1.c2 AS c7
      FROM t0 AS t1
      WHERE t1.c1 > t1.c1
      ORDER BY c6 ASC, c4 COLLATE RTRIM
      LIMIT 6522569292217280099 OFFSET 1237520594437263588) as subq0
   WHERE subq0.c3 < subq0.c6
   ORDER BY c12, c10, c8
   LIMIT 1632364376395603912 ) as subq1
WHERE subq1.c10 <= changes()
ORDER BY c14, c14, c14, c14 COLLATE RTRIM;
SELECT 
 CASE WHEN EXISTS (
  SELECT subq3.c3 AS c4, subq3.c3 AS c5, subq3.c3 AS c6, 
    CASE subq3.c3 WHEN subq3.c3 IS NOT NULL AND subq3.c3 = subq3.c3 AND subq3.c3 > subq3.c3 THEN subq3.c3
         WHEN subq3.c3 > subq3.c3 THEN subq3.c3
         WHEN subq3.c3 = subq3.c3 THEN subq3.c3
         WHEN 39 < subq3.c3 THEN subq3.c3
         WHEN subq3.c3 = subq3.c3 THEN subq3.c3
         WHEN subq3.c3 <= subq3.c3 THEN subq3.c3
         WHEN subq3.c3 = subq3.c3 AND subq3.c3 = subq3.c3 AND EXISTS (
     SELECT t6.c0 AS c3, t6.c2 AS c4, t6.c2 AS c5, t6.c0 AS c6
      FROM t0 AS t6
      WHERE t6.c0 >= t6.c0
      ORDER BY c5 ASC
     ) OR subq3.c3 IS NULL OR subq3.c3 > subq3.c3 OR subq3.c3 >= subq3.c3 THEN subq3.c3
         WHEN subq3.c3 = subq3.c3 THEN subq3.c3
         WHEN subq3.c3 > subq3.c3 THEN subq3.c3
         WHEN subq3.c3 >= subq3.c3 THEN subq3.c3
         WHEN subq3.c3 = subq3.c3 THEN subq3.c3
         ELSE subq3.c3
    END AS c7, subq3.c3 AS c8, subq3.c3 AS c9, 
    CASE subq3.c3 WHEN subq3.c3 > subq3.c3 THEN subq3.c3
         WHEN subq3.c3 IS NOT NULL THEN subq3.c3
         WHEN 41 <= subq3.c3 THEN CAST(subq3.c3 AS BOOLEAN)
         WHEN subq3.c3 <> subq3.c3 OR subq3.c3 = subq3.c3 THEN subq3.c3
         ELSE subq3.c3
    END AS c10, subq3.c3 AS c11, subq3.c3 AS c12, subq3.c3 AS c13
   FROM (SELECT t4.c0 AS c3
      FROM t0 AS t4
        INNER JOIN t0 AS t5        
         ON (t5.c1 IS NULL AND t5.c0 = t5.c0)
      WHERE t5.c2 IS NOT NULL OR t5.c0 <= t5.c1
      ORDER BY c3, c3, c3, c3 ASC
      LIMIT 5013014815569183757 OFFSET 3459258609591098596) as subq3
   WHERE subq3.c3 = subq3.c3
   ORDER BY c13, c4 DESC
   LIMIT 1451705794071713095 OFFSET 7194166096009297928
  ) AND subq2.c4 IS NULL THEN subq1.c4
      ELSE 
  CASE WHEN subq2.c4 >= subq0.c3 THEN subq0.c3
       ELSE NULLIF(subq0.c3, subq2.c7)
  END
 END AS c14, subq2.c5 AS c15, subq1.c3 AS c16
FROM (SELECT t1.c0 AS c3
    FROM t0 AS t1
    WHERE t1.c1 >= t1.c0
    ORDER BY c3 COLLATE BINARY, c3, c3 COLLATE BINARY, c3 COLLATE NOCASE
    LIMIT 8177710901880788207 ) as subq0
  LEFT JOIN (
  (SELECT t2.c0 AS c3, t2.c1 AS c4
     FROM t0 AS t2
     WHERE 83 = t2.c0
     ORDER BY c3 ASC
     LIMIT 1010027496604988600 ) as subq1
   LEFT JOIN (SELECT t3.c1 AS c3, t3.c1 AS c4, t3.c2 AS c5, t3.c2 AS c6, t3.c0 AS c7, t3.c2 AS c8
     FROM t0 AS t3
     WHERE t3.c2 <= t3.c2 OR t3.c2 IS NULL OR t3.c1 IS NULL AND t3.c0 = t3.c1
     ORDER BY c5 ASC
     LIMIT 1178382877416597621 ) as subq2   
    ON (subq2.c6 IS NOT NULL)  )
   ON (subq1.c3 >= subq2.c4)
WHERE subq2.c5 < 
 CASE subq2.c4 WHEN true THEN subq1.c3
      WHEN 69 > subq2.c3 THEN subq2.c4
      WHEN subq2.c8 <> subq2.c8 THEN subq1.c4
      WHEN subq2.c8 <= 
  CASE WHEN COALESCE(COALESCE(subq1.c3, subq1.c3, subq0.c3), subq2.c7, subq0.c3) > subq2.c3 THEN subq1.c4
       ELSE subq2.c3
  END AND subq2.c5 IS NULL THEN subq2.c4
      WHEN 
  CASE WHEN EXISTS (
   SELECT t7.c0 AS c3
    FROM t0 AS t7
      INNER JOIN t0 AS t8      
       ON (t8.c0 <= t8.c1)
    WHERE t8.c0 < t7.c0
    ORDER BY c3 COLLATE NOCASE, c3, c3, c3
    LIMIT 8057054922809899055 OFFSET 4068738926021425500
   ) THEN subq0.c3
       ELSE subq2.c6
  END IS NOT NULL THEN 
  CASE subq1.c3 WHEN EXISTS (
   SELECT t9.c2 AS c3, t9.c2 AS c4, t9.c1 AS c5, t9.c1 AS c6, t9.c0 AS c7
    FROM t0 AS t9
    WHERE t9.c0 <= 87
    ORDER BY c5 ASC
   ) THEN subq2.c5
       WHEN 
   CASE WHEN subq1.c3 IS NOT NULL THEN subq1.c3
        ELSE subq2.c3
   END >= subq2.c4 THEN subq2.c3
       WHEN subq2.c6 > length( 'text82') OR true THEN subq2.c8
       WHEN CAST(subq1.c4 AS INTEGER) <> subq2.c7 THEN subq2.c8
       WHEN subq2.c5 <> subq2.c4 AND COALESCE(subq0.c3, subq1.c4, subq0.c3, subq1.c4) >= subq2.c6 THEN subq2.c6
       WHEN subq2.c4 > subq2.c7 THEN subq0.c3
       WHEN EXISTS (
   SELECT t10.c2 AS c3
    FROM t0 AS t10
    WHERE t10.c0 < t10.c2
    ORDER BY c3, c3 COLLATE NOCASE ASC, c3, c3
    LIMIT 4123506880156190429 
   ) THEN subq2.c8
       WHEN subq0.c3 IS NOT NULL AND EXISTS (
   SELECT t11.c1 AS c3, t11.c2 AS c4
    FROM t0 AS t11
    WHERE t11.c2 >= t11.c1 AND false
    ORDER BY c4 COLLATE BINARY
   ) AND EXISTS (
   SELECT subq4.c3 AS c5, subq4.c3 AS c6, subq4.c4 AS c7, subq4.c3 AS c8, subq4.c3 AS c9
    FROM (SELECT 96 AS c3, t12.c1 AS c4
       FROM t0 AS t12
       WHERE t12.c1 >= t12.c2
       ORDER BY c4, c3 DESC
       LIMIT 5237690221962020207 ) as subq4
    WHERE subq4.c3 < subq4.c3
    ORDER BY c9 ASC, c8
   ) THEN subq1.c3
       WHEN subq2.c7 <> subq2.c4 THEN subq1.c4
       WHEN 
   CASE subq2.c3 WHEN EXISTS (
    SELECT t13.c0 AS c3
     FROM t0 AS t13
     WHERE EXISTS (
      SELECT t14.c0 AS c3, t14.c2 AS c4, t14.c1 AS c5, t14.c2 AS c6, t14.c0 AS c7, t14.c1 AS c8, t14.c0 AS c9, t14.c2 AS c10, t14.c1 AS c11, t14.c0 AS c12, t14.c0 AS c13, t14.c1 AS c14, t14.c2 AS c15
       FROM t0 AS t14
       WHERE t14.c0 > t14.c2
       ORDER BY c10 COLLATE NOCASE ASC, c3 ASC, c6
       LIMIT 4537336944482934757 
      )
     ORDER BY c3 ASC, c3 DESC, c3, c3
     LIMIT 3340884772284470598 
    ) OR subq2.c7 >= subq1.c4 THEN subq2.c8
        WHEN subq1.c3 >= subq2.c4 THEN subq2.c3
        WHEN subq1.c3 < subq2.c4 THEN subq2.c3
        WHEN COALESCE(IFNULL(subq2.c3, subq1.c3), subq1.c4, subq1.c3, 
     CASE WHEN subq2.c6 > subq2.c8 THEN NULL
          ELSE NULL
     END, subq0.c3, subq1.c3) = subq2.c3 THEN subq2.c3
        WHEN subq1.c4 = subq2.c6 THEN subq2.c6
        WHEN subq2.c8 < CAST(subq2.c5 AS TEXT) THEN COALESCE(subq1.c3, subq2.c6, subq2.c8, subq1.c3, 71)
        ELSE subq2.c8
   END = subq1.c3 THEN subq2.c4
       WHEN subq2.c5 < subq2.c8 THEN subq1.c4
       ELSE 
   CASE subq2.c6 WHEN subq2.c4 <> subq1.c4 THEN subq2.c5
        WHEN 
    CASE subq2.c4 WHEN false THEN subq0.c3
         WHEN true AND 81 >= subq2.c5 THEN subq2.c8
         ELSE subq0.c3
    END >= 14 AND subq2.c8 <> subq2.c8 THEN 76
        WHEN subq2.c4 < subq1.c3 THEN subq0.c3
        WHEN subq0.c3 <= subq2.c5 OR EXISTS (
    SELECT t15.c2 AS c3, t15.c0 AS c4
     FROM t0 AS t15
     WHERE t15.c1 < t15.c2
     ORDER BY c4 ASC
     LIMIT 629692545000824 
    ) THEN subq2.c7
        WHEN subq1.c4 = subq2.c6 OR EXISTS (
    SELECT t16.c0 AS c3
     FROM t0 AS t16
     WHERE t16.c1 = t16.c0
     ORDER BY c3 DESC
    ) OR subq1.c4 IS NOT NULL THEN subq2.c8
        WHEN true THEN subq2.c3
        WHEN true AND subq0.c3 IS NOT NULL THEN subq2.c7
        WHEN subq2.c8 < subq0.c3 THEN subq2.c5
        WHEN subq2.c3 > subq0.c3 OR subq2.c5 < subq2.c5 OR subq0.c3 IS NOT NULL AND subq2.c6 > subq2.c5 THEN subq2.c3
        WHEN EXISTS (
    SELECT t17.c2 AS c3, t17.c0 AS c4, t17.c2 AS c5, t17.c1 AS c6, t17.c1 AS c7, t17.c1 AS c8, t17.c1 AS c9
     FROM t0 AS t17
     WHERE t17.c1 = t17.c1 OR EXISTS (
      SELECT t18.c2 AS c3
       FROM t0 AS t18
       WHERE t18.c1 <= t18.c2
       ORDER BY c3 COLLATE BINARY ASC
       LIMIT 6768299184943081780 
      )
     ORDER BY c3 DESC, c3
    ) THEN subq2.c4
        WHEN last_insert_rowid() <> subq1.c3 THEN NULLIF(subq2.c4, subq2.c5)
        WHEN subq1.c4 > subq1.c4 THEN subq2.c3
        ELSE 
    CASE subq0.c3 WHEN subq0.c3 <> 1 AND subq2.c7 = subq2.c6 AND subq2.c7 >= subq0.c3 THEN subq2.c4
         WHEN true OR false THEN subq2.c6
         WHEN EXISTS (
     SELECT t19.c0 AS c3
      FROM t0 AS t19
      WHERE t19.c0 IS NOT NULL
      ORDER BY c3 DESC, c3, c3, c3 DESC
     ) THEN subq1.c3
         WHEN subq2.c6 <= subq2.c7 AND EXISTS (
     SELECT t20.c2 AS c3, t20.c0 AS c4, t20.c1 AS c5, t20.c2 AS c6, t20.c1 AS c7, t20.c1 AS c8, t20.c1 AS c9, t20.c1 AS c10, t20.c0 AS c11, t20.c0 AS c12, t20.c0 AS c13, 53 AS c14, t20.c2 AS c15, t20.c1 AS c16, t20.c2 AS c17, 6 AS c18
      FROM t0 AS t20
      WHERE t20.c1 > t20.c0 OR t20.c2 >= t20.c2
      ORDER BY c17 COLLATE BINARY ASC
     ) THEN subq0.c3
         WHEN subq0.c3 < subq2.c6 AND subq0.c3 IS NOT NULL THEN subq0.c3
         ELSE subq1.c3
    END
   END
  END
      WHEN subq2.c8 > subq1.c4 THEN subq2.c7
      ELSE subq1.c3
 END
ORDER BY c15, c16 COLLATE NOCASE, c16;
SELECT t3.c1 AS c20, CAST(TRUE AS TEXT) AS c21
FROM t0 AS t1
  LEFT JOIN (
  t0 AS t2
     INNER JOIN t0 AS t3     
      ON (EXISTS (
       SELECT t4.c2 AS c3
        FROM t0 AS t4
        WHERE EXISTS (
         SELECT t5.c0 AS c3, t5.c0 AS c4, t5.c1 AS c5, t5.c1 AS c6
          FROM t0 AS t5
          WHERE t5.c2 < t5.c1
          ORDER BY c4 COLLATE NOCASE DESC, c3, c4
          LIMIT 2115605959175629345 
         )
        ORDER BY c3, c3, c3 ASC, c3 ASC
        LIMIT 1699379409876363820 OFFSET 1258317719537176100
       ) AND true)
    INNER JOIN (
    t0 AS t6
     INNER JOIN t0 AS t7     
      ON (t6.c2 IS NOT NULL)    )
     ON (t3.c2 <> t3.c2)
   INNER JOIN t0 AS t8   
    ON (99 <= 
     CASE t6.c2 WHEN t2.c1 IS NOT NULL THEN t3.c2
          WHEN t2.c0 < t7.c0 THEN t6.c0
          WHEN t2.c2 < t7.c1 OR t3.c1 = t6.c0 THEN t2.c2
          WHEN t8.c1 <> t2.c1 THEN t3.c2
          WHEN EXISTS (
      SELECT t9.c2 AS c3, t9.c1 AS c4, t9.c2 AS c5, t9.c2 AS c6, t9.c1 AS c7, t9.c1 AS c8, t9.c2 AS c9, t9.c0 AS c10, t9.c0 AS c11, 90 AS c12, t9.c2 AS c13, t9.c0 AS c14, t9.c0 AS c15, t9.c2 AS c16, t9.c1 AS c17, t9.c0 AS c18, t9.c2 AS c19, t9.c0 AS c20, t9.c1 AS c21, t9.c0 AS c22, t9.c1 AS c23, t9.c1 AS c24, t9.c0 AS c25, t9.c0 AS c26, t9.c0 AS c27, t9.c1 AS c28
       FROM t0 AS t9
       WHERE t9.c1 < t9.c0
       ORDER BY c27, c12 COLLATE RTRIM
      ) THEN t2.c2
          WHEN t7.c2 >= t3.c0 THEN t6.c1
          WHEN true THEN t8.c0
          ELSE t7.c0
     END)  )
   ON (t7.c2 <> t3.c1 OR t2.c1 >= 
    CASE WHEN t6.c2 = t1.c0 THEN t2.c0
         ELSE 
     CASE t2.c2 WHEN EXISTS (
      SELECT t10.c0 AS c3, t10.c1 AS c4
       FROM t0 AS t10
       WHERE t10.c1 = t10.c2
       ORDER BY c4, c4 COLLATE BINARY DESC, c3, c4 COLLATE RTRIM DESC
      ) THEN t3.c2
          WHEN t3.c2 >= t6.c0 THEN t3.c2
          WHEN t8.c2 > t6.c2 THEN t2.c1
          WHEN t2.c0 = t3.c1 THEN t6.c1
          WHEN t6.c0 IS NOT NULL OR t7.c0 <= t8.c2 THEN t7.c1
          WHEN t8.c1 < 
      CASE t8.c2 WHEN t1.c0 > t6.c1 THEN t8.c1
           WHEN false THEN t6.c0
           WHEN t3.c1 <= t8.c0 AND t2.c1 <= t1.c2 OR t8.c1 = t2.c0 THEN t1.c2
           WHEN t8.c2 <> t6.c2 THEN t8.c0
           WHEN false THEN t6.c1
           WHEN t6.c1 = t3.c1 THEN t2.c0
           WHEN t1.c1 IS NOT NULL AND t7.c2 = t7.c0 AND t2.c1 <> t2.c1 THEN t3.c1
           WHEN t3.c1 IS NOT NULL AND t8.c2 IS NOT NULL THEN t2.c2
           WHEN EXISTS (
       SELECT t11.c1 AS c3
        FROM t0 AS t11
        WHERE false
        ORDER BY c3, c3 COLLATE RTRIM ASC, c3 COLLATE NOCASE, c3 COLLATE BINARY ASC
        LIMIT 1785781569118132495 OFFSET 2549543235866442217
       ) AND t8.c1 IS NOT NULL THEN t7.c0
           WHEN t1.c0 > t2.c0 THEN t7.c1
           WHEN t2.c1 > t8.c0 AND EXISTS (
       SELECT t12.c1 AS c3, t12.c0 AS c4, t12.c1 AS c5, t12.c1 AS c6, t12.c1 AS c7, t12.c2 AS c8, t12.c2 AS c9, t12.c2 AS c10, t12.c0 AS c11, t12.c0 AS c12, t12.c2 AS c13, t12.c1 AS c14, t12.c0 AS c15, t12.c1 AS c16, t12.c2 AS c17, t12.c1 AS c18, t12.c1 AS c19, t12.c0 AS c20, t12.c1 AS c21
        FROM t0 AS t12
        WHERE t12.c2 < t12.c0
        ORDER BY c5, c14 DESC
       ) THEN t3.c1
           WHEN t6.c0 <> t2.c1 THEN t8.c0
           ELSE t7.c2
      END OR t1.c0 <> t7.c0 THEN t1.c2
          WHEN t3.c2 = t7.c1 THEN t8.c2
          WHEN EXISTS (
      SELECT t14.c2 AS c3, t13.c1 AS c4, t13.c0 AS c5, t14.c2 AS c6
       FROM t0 AS t13
         INNER JOIN t0 AS t14         
          ON (t13.c2 IS NOT NULL OR t14.c2 IS NULL AND true)
       WHERE t14.c0 > t13.c1
       ORDER BY c4 ASC
      ) THEN t1.c1
          ELSE t2.c0
     END
    END AND t1.c0 > t6.c0 OR EXISTS (
    SELECT 31 AS c3, t15.c1 AS c4, t15.c0 AS c5, t15.c2 AS c6, t15.c2 AS c7, t15.c0 AS c8, t15.c0 AS c9, t15.c1 AS c10, t15.c1 AS c11, t15.c2 AS c12, t15.c1 AS c13, t15.c1 AS c14, t15.c1 AS c15, 60 AS c16, t15.c0 AS c17, t15.c1 AS c18, t15.c2 AS c19
     FROM t0 AS t15
     WHERE t15.c2 < t15.c0
     ORDER BY c16 ASC
     LIMIT 5283604627537072417 OFFSET 547328072764694060
    ) AND t7.c1 <> t2.c0 OR t8.c2 = t1.c0 AND t8.c1 IS NULL AND t7.c2 IS NULL AND CAST(t8.c0 AS INTEGER) IS NULL AND true AND CAST(t1.c0 AS TEXT) = t1.c2 AND t8.c2 <> t2.c0 OR false OR false OR t6.c1 <> CAST(t1.c1 AS BOOLEAN) OR t7.c0 IS NULL AND false)
WHERE 
 CASE t8.c2 WHEN false OR t7.c0 IS NOT NULL THEN 48
      WHEN t2.c1 < 
  CASE WHEN false THEN t3.c0
       ELSE t6.c1
  END THEN t2.c0
      WHEN t8.c2 < t7.c1 THEN t1.c0
      WHEN false THEN t6.c0
      WHEN t2.c2 < t2.c2 THEN t8.c1
      WHEN 
  CASE WHEN t7.c0 <= t2.c1 THEN last_insert_rowid()
       ELSE t8.c1
  END > t1.c1 THEN 
  CASE WHEN 16 = t7.c0 THEN 
   CASE t8.c0 WHEN 90 <= t2.c0 THEN t1.c0
        WHEN t7.c1 IS NULL THEN COALESCE(t2.c1, changes(), t7.c1, t6.c2)
        WHEN true THEN t6.c0
        WHEN t3.c1 < t1.c1 THEN t8.c1
        WHEN 
    CASE t6.c2 WHEN t6.c2 <> t3.c1 THEN t7.c0
         ELSE 
     CASE WHEN t6.c2 <= 20 THEN 
      CASE t7.c1 WHEN t7.c1 >= t7.c2 THEN t1.c0
           WHEN t8.c0 IS NOT NULL THEN 98
           WHEN true THEN t8.c0
           WHEN t8.c2 IS NULL THEN t8.c0
           WHEN t1.c1 IS NULL THEN t3.c1
           WHEN EXISTS (
       SELECT t16.c1 AS c3, t16.c0 AS c4, t16.c2 AS c5
        FROM t0 AS t16
        WHERE t16.c2 < t16.c2
        ORDER BY c5 COLLATE RTRIM, c4 COLLATE NOCASE ASC, c3 DESC
       ) THEN t7.c2
           WHEN t6.c0 <= t3.c0 THEN t8.c1
           WHEN false AND t7.c2 < t2.c0 THEN t1.c2
           WHEN t6.c2 <= 2 THEN t1.c0
           WHEN t2.c1 > t8.c0 OR t1.c1 > t3.c1 OR false AND t6.c1 < t1.c0 AND EXISTS (
       SELECT t17.c0 AS c3, t17.c2 AS c4, t17.c0 AS c5, t17.c0 AS c6, t17.c0 AS c7, t17.c0 AS c8, t17.c1 AS c9, t17.c0 AS c10, t17.c2 AS c11, 96 AS c12, t17.c1 AS c13, t17.c2 AS c14, t17.c2 AS c15, 54 AS c16, t17.c1 AS c17
        FROM t0 AS t17
        WHERE t17.c0 > t17.c1 OR t17.c0 <= t17.c0 AND false
        ORDER BY c4, c15 DESC
        LIMIT 3063679127442267631 
       ) AND EXISTS (
       SELECT t18.c1 AS c3, t18.c0 AS c4, t18.c1 AS c5, t18.c2 AS c6, t18.c1 AS c7, t18.c0 AS c8
        FROM t0 AS t18
        WHERE EXISTS (
         SELECT t19.c2 AS c3
          FROM t0 AS t19
          WHERE EXISTS (
           SELECT t20.c1 AS c3, t20.c0 AS c4, t20.c2 AS c5, 17 AS c6, t20.c2 AS c7, t20.c2 AS c8
            FROM t0 AS t20
            WHERE t20.c1 >= t20.c1 AND EXISTS (
             SELECT t21.c0 AS c3, t21.c2 AS c4, t21.c2 AS c5, t21.c2 AS c6, 68 AS c7, t21.c1 AS c8, t21.c2 AS c9, t21.c0 AS c10
              FROM t0 AS t21
              WHERE t21.c0 > t21.c0
              ORDER BY c10 COLLATE BINARY, c5 ASC, c5 DESC
              LIMIT 673751636816284836 
             ) AND false OR t20.c0 <= t20.c1 OR 19 IS NULL AND EXISTS (
             SELECT 18 AS c3
              FROM t0 AS t22
              WHERE EXISTS (
               SELECT t23.c2 AS c3, t23.c0 AS c4, t23.c2 AS c5, t23.c0 AS c6, t23.c0 AS c7, t23.c0 AS c8, t23.c2 AS c9, t23.c0 AS c10, t23.c0 AS c11
                FROM t0 AS t23
                WHERE true
                ORDER BY c9 COLLATE RTRIM ASC, c8 COLLATE NOCASE
                LIMIT 6910508694064046465 
               ) OR false OR t22.c2 = t22.c1 AND EXISTS (
               SELECT 94 AS c3, t24.c1 AS c4, t24.c2 AS c5, t24.c1 AS c6, t24.c1 AS c7, t24.c2 AS c8, t24.c2 AS c9, t24.c2 AS c10, t24.c0 AS c11, t24.c2 AS c12, t24.c2 AS c13, t24.c0 AS c14, t24.c0 AS c15, t24.c0 AS c16, t24.c0 AS c17, t24.c0 AS c18, t24.c1 AS c19, t24.c1 AS c20, t24.c1 AS c21, t24.c2 AS c22, t24.c0 AS c23, t24.c1 AS c24
                FROM t0 AS t24
                WHERE EXISTS (
                 SELECT t25.c1 AS c3
                  FROM t0 AS t25
                  WHERE EXISTS (
                   SELECT t26.c0 AS c3
                    FROM t0 AS t26
                    WHERE t26.c2 = t26.c1
                    ORDER BY c3 COLLATE NOCASE, c3 COLLATE BINARY DESC, c3, c3
                    LIMIT 5862082376516271264 OFFSET 4962656674873620728
                   )
                  ORDER BY c3, c3, c3, c3
                 )
                ORDER BY c18, c19 ASC, c6
                LIMIT 322053428242421995 
               ) OR t22.c0 = t22.c0
              ORDER BY c3, c3, c3 ASC, c3
             ) OR t20.c2 IS NOT NULL OR t20.c1 IS NOT NULL OR false OR EXISTS (
             SELECT t27.c2 AS c3, t27.c0 AS c4, t27.c0 AS c5
              FROM t0 AS t27
              WHERE t27.c1 >= t27.c1
              ORDER BY c3 DESC
              LIMIT 8642695129301063720 OFFSET 2680357424042724229
             ) AND t20.c0 = t20.c2 OR t20.c2 <= t20.c1
            ORDER BY c4 ASC
           )
          ORDER BY c3, c3, c3 COLLATE BINARY, c3
          LIMIT 5307149828729629953 
         )
        ORDER BY c4, c5 COLLATE BINARY DESC
       ) THEN t2.c1
           ELSE t7.c0
      END
          ELSE t3.c0
     END
    END = t3.c1 THEN t3.c1
        ELSE t2.c2
   END
       ELSE t3.c2
  END
      WHEN 
  CASE t8.c1 WHEN t7.c0 IS NOT NULL THEN t1.c0
       WHEN t1.c0 <= t2.c0 AND EXISTS (
   SELECT t29.c1 AS c3, t29.c1 AS c4, t29.c0 AS c5, t29.c1 AS c6, t29.c0 AS c7, 10 AS c8, t29.c1 AS c9, t29.c2 AS c10, t29.c1 AS c11, t28.c2 AS c12, t28.c1 AS c13, t28.c0 AS c14, t28.c1 AS c15, 
     CASE WHEN t28.c0 IS NOT NULL THEN t28.c1
          ELSE t28.c1
     END AS c16, t29.c2 AS c17, t28.c1 AS c18, t28.c0 AS c19, t29.c0 AS c20, t28.c0 AS c21, t29.c1 AS c22, 99 AS c23
    FROM t0 AS t28
      LEFT JOIN t0 AS t29      
       ON (t28.c2 = t29.c0)
    WHERE EXISTS (
     SELECT t30.c2 AS c3
      FROM t0 AS t30
      WHERE t30.c2 >= t30.c1
      ORDER BY c3 COLLATE NOCASE, c3 ASC, c3 DESC, c3
      LIMIT 1267400527604964012 
     )
    ORDER BY c10 ASC, c3
    LIMIT 983171290604300186 OFFSET 4192016263445029331
   ) AND t7.c2 <= t1.c2 THEN 6
       WHEN max(FALSE,FALSE,TRUE) IS NULL THEN t1.c2
       ELSE t1.c0
  END <> t1.c1 THEN 98
      ELSE t6.c1
 END < t8.c2
ORDER BY c20, c21 COLLATE BINARY ASC
LIMIT 939389489912683829 ;
SELECT t1.c0 AS c3
FROM t0 AS t1
WHERE t1.c2 IS NULL
ORDER BY c3, c3 COLLATE BINARY ASC, c3 DESC, c3;
SELECT subq0.c10 AS c3
FROM (SELECT t2.c2 AS c3, t1.c2 AS c4, 58 AS c5, t2.c1 AS c6, t3.c0 AS c7, t2.c0 AS c8, t3.c1 AS c9, t2.c2 AS c10, t3.c1 AS c11, 56 AS c12
      FROM t0 AS t1
         LEFT JOIN t0 AS t2         
          ON (t1.c0 < t1.c0)
        LEFT JOIN t0 AS t3        
         ON (true OR t2.c1 <= t3.c0)
      WHERE t3.c0 IS NULL AND t2.c0 = t3.c0 OR t3.c2 = t3.c1 AND t2.c1 > t3.c2
      ORDER BY c6 ASC, c3, c5
      LIMIT 5438130326362709709 OFFSET 5470299365503177836) as subq0
    LEFT JOIN t0 AS t4    
     ON (subq0.c8 >= subq0.c9)
   LEFT JOIN t0 AS t5   
    ON (t5.c2 IS NULL)
  INNER JOIN t0 AS t6  
   ON (t4.c0 IS NOT NULL)
WHERE false
ORDER BY c3 ASC;
