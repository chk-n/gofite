/* -----------Error-----------
Old Errored, New Succeeded. Old_Err: [Old] failed to write query: write |1: broken pipe || New_Out: text27|0|text4|text32|text4|text4|1|text4|0|0|1|0|0|1|text27
text58|1|text85|text32|text85|text85|0|text85|0|1|1|1|39|0|text58
1|1
1|1
0|0
0|0
text58
text27
-----------/Error----------- */
CREATE TABLE t0 (
    c0 BOOLEAN,
    c1 BOOLEAN,
    c2 INTEGER,
    c3 TEXT,
    c4 TEXT
);
DELETE FROM t0
WHERE EXISTS (
 SELECT subq0.c5 AS c7, subq0.c5 AS c8, 
   CASE WHEN 
    CASE WHEN EXISTS (
     SELECT t2.c2 AS c5
      FROM t0 AS t2
      WHERE t2.c2 = t2.c2
      ORDER BY c5, c5, c5 DESC, c5 COLLATE BINARY
     ) AND subq0.c5 <> subq0.c5 THEN subq0.c6
         ELSE subq0.c6
    END = subq0.c6 THEN subq0.c5
        ELSE subq0.c5
   END AS c6, TRUE AS c7
  FROM (SELECT t1.c2 AS c5, t1.c1 AS c6
     FROM t0 AS t1
     WHERE t1.c2 IS NOT NULL
     ORDER BY c5
     LIMIT 5039086271344436177 OFFSET 4271205897869681323) as subq0
  WHERE subq0.c6 = subq0.c6 OR subq0.c5 > subq0.c5 OR subq0.c5 >= subq0.c5
  ORDER BY c8 COLLATE RTRIM, c6, c7
  LIMIT 4360110140919215868 
 ) AND t0.c3 IS NULL OR t0.c4 < t0.c4;
UPDATE t0 
SET c0 = FALSE
WHERE trim( 'text68') <> t0.c3 AND t0.c4 < t0.c4 AND true;
INSERT INTO t0 VALUES (FALSE, TRUE, 39, 'text58', 'text85');
INSERT INTO t0 VALUES (TRUE, FALSE, CAST(nullif('text22','text98') AS INTEGER), 'text27', 'text4');
SELECT t1.c3 AS c5, t1.c4 AS c6, t2.c1 AS c7, t1.c3 AS c8, t2.c3 AS c9, t1.c1 AS c10, 
 CASE WHEN t1.c3 IS NULL THEN t2.c0
      ELSE 
  CASE WHEN t2.c2 > t1.c2 OR t1.c2 IS NULL OR t1.c4 IS NOT NULL AND EXISTS (
   SELECT t3.c4 AS c5, t3.c4 AS c6, t3.c2 AS c7, t3.c0 AS c8, t3.c1 AS c9, t3.c2 AS c10, t3.c4 AS c11, t3.c4 AS c12, t3.c1 AS c13, t3.c0 AS c14
    FROM t0 AS t3
    WHERE substr('text3',FALSE,FALSE) IS NOT NULL
    ORDER BY c9 DESC, c8 COLLATE NOCASE, c7
   ) AND t1.c3 IS NOT NULL OR EXISTS (
   SELECT t5.c0 AS c5, t5.c3 AS c6, TRUE AS c7, t5.c2 AS c8, t5.c1 AS c9, 'text44' AS c10, t5.c1 AS c11, t4.c2 AS c12, t5.c1 AS c13, glob(19,11) AS c14, t5.c2 AS c15, t4.c3 AS c16
    FROM t0 AS t4
      CROSS JOIN t0 AS t5      
       ON (t4.c1 IS NOT NULL)
    WHERE t4.c0 = t5.c0
    ORDER BY c6 DESC, c14
    LIMIT 2265263138572011701 OFFSET 5464990707438194871
   ) OR t2.c4 = t1.c3 THEN t2.c1
       ELSE t1.c1
  END
 END AS c17, 
 CASE t2.c3 WHEN false THEN t1.c4
      WHEN t2.c3 >= t2.c4 AND t2.c0 IS NULL THEN t1.c4
      WHEN CAST(t1.c4 AS INTEGER) IS NOT NULL THEN t1.c4
      WHEN t2.c3 = t2.c4 THEN t1.c3
      WHEN t2.c4 < t1.c3 THEN 
  CASE WHEN t2.c4 IS NOT NULL THEN t2.c3
       ELSE t1.c4
  END
      WHEN t1.c0 = 
  CASE t2.c0 WHEN NULLIF(t2.c4, t1.c4) >= t1.c4 THEN t2.c1
       WHEN t2.c3 < t1.c3 THEN t2.c0
       WHEN t1.c3 = t1.c3 THEN t1.c1
       WHEN t1.c2 IS NOT NULL OR t1.c3 = t1.c3 THEN t1.c0
       WHEN t1.c0 <> t2.c1 THEN 
   CASE t1.c0 WHEN t1.c0 IS NOT NULL THEN t2.c0
        WHEN t1.c4 = t1.c3 THEN t1.c0
        WHEN true THEN t2.c1
        WHEN EXISTS (
    SELECT t6.c2 AS c5
     FROM t0 AS t6
     WHERE t6.c4 IS NOT NULL AND false
     ORDER BY c5 COLLATE NOCASE
     LIMIT 322619650895851932 OFFSET 8921922978138214874
    ) THEN t1.c0
        WHEN t2.c2 IS NULL THEN t1.c0
        WHEN t2.c0 = t1.c1 THEN t2.c1
        WHEN CAST(t2.c1 AS BOOLEAN) <> t1.c1 THEN t2.c1
        WHEN t1.c1 = t1.c0 THEN t2.c1
        WHEN 47 <= t2.c2 THEN t1.c0
        WHEN t2.c3 < t1.c3 THEN t2.c1
        WHEN t2.c3 IS NULL THEN t1.c0
        WHEN t2.c0 = t1.c0 THEN t1.c0
        ELSE TRUE
   END
       WHEN EXISTS (
   SELECT t7.c4 AS c5
    FROM t0 AS t7
    WHERE t7.c0 <> t7.c1
    ORDER BY c5, c5 DESC, c5 COLLATE BINARY, c5
    LIMIT 220152999540993056 OFFSET 1827219365896423470
   ) THEN t2.c0
       WHEN t1.c4 = t1.c4 THEN t1.c1
       WHEN t2.c1 = t1.c1 AND t2.c0 = TRUE THEN t2.c1
       ELSE t2.c1
  END THEN t1.c3
      WHEN t1.c2 = t1.c2 AND false THEN t2.c4
      WHEN t1.c3 >= t2.c3 AND t1.c3 = t2.c4 AND t2.c3 >= t1.c4 AND FALSE = t2.c0 AND t1.c0 = t1.c0 THEN t1.c4
      WHEN t1.c3 IS NULL THEN t1.c3
      ELSE t2.c4
 END AS c6, t2.c3 AS c7
FROM t0 AS t1
  INNER JOIN t0 AS t2  
   ON (t2.c2 = 100)
WHERE t1.c4 >= NULLIF(t2.c4, t1.c3) AND t2.c1 IS NULL
ORDER BY c10 COLLATE NOCASE ASC, c6 COLLATE BINARY, c5 ASC
LIMIT 5171633250482256543 OFFSET 8012875326478234165;
SELECT 
 CASE t1.c3 WHEN glob(FALSE,'text57') IS NULL THEN t1.c4
      WHEN t1.c2 < t1.c2 THEN t1.c4
      WHEN t1.c2 > COALESCE(CAST(t1.c4 AS BOOLEAN), t1.c2) THEN t1.c4
      WHEN t1.c1 <> t1.c1 THEN t1.c3
      WHEN false AND t1.c2 <> t1.c2 THEN t1.c4
      ELSE t1.c3
 END AS c5, 
 CASE WHEN t1.c2 IS NOT NULL THEN t1.c1
      ELSE t1.c0
 END AS c6, t1.c4 AS c7, printf('text32',TRUE) AS c8, t1.c4 AS c9, t1.c4 AS c10, t1.c0 AS c11, t1.c4 AS c12, FALSE AS c13, t1.c1 AS c14, TRUE AS c15, t1.c1 AS c16, t1.c2 AS c17, t1.c0 AS c18, t1.c3 AS c19
FROM t0 AS t1
WHERE 'text65' IS NOT NULL
ORDER BY c16;
SELECT t2.c1 AS c5, t2.c1 AS c6
FROM t0 AS t1
  INNER JOIN t0 AS t2  
   ON (true)
WHERE t1.c2 > 
 CASE t2.c2 WHEN COALESCE(t1.c4, t2.c1, FALSE) = t2.c0 THEN t2.c2
      WHEN t2.c1 IS NULL THEN t2.c2
      WHEN t1.c0 <> t2.c0 THEN unlikely( TRUE)
      WHEN false THEN t1.c2
      WHEN t1.c0 = t2.c0 THEN t2.c2
      WHEN false THEN t1.c2
      ELSE t2.c2
 END AND t2.c4 <> t1.c3 AND t2.c3 IS NULL OR t1.c3 = t1.c3 OR EXISTS (
 SELECT subq0.c5 AS c7, subq0.c5 AS c8
  FROM (SELECT t4.c4 AS c5, t4.c3 AS c6
     FROM t0 AS t3
       LEFT JOIN t0 AS t4       
        ON (t3.c2 IS NOT NULL)
     WHERE t3.c3 <= t4.c3
     ORDER BY c6 COLLATE NOCASE DESC, c6 ASC
     LIMIT 4753795827888648855 ) as subq0
  WHERE subq0.c5 <= subq0.c6 OR subq0.c6 >= subq0.c6 AND subq0.c6 <> subq0.c6
  ORDER BY c8 DESC, c8 ASC, c7 DESC, c7 DESC
  LIMIT 474324417825047116 OFFSET 7099866290307779890
 ) OR CAST(CAST(t1.c0 AS TEXT) AS TEXT) IS NULL OR t1.c0 <> t1.c0 AND false OR false
ORDER BY c5 DESC, c6, c6, c5 COLLATE NOCASE
LIMIT 3147813796640645410 ;
SELECT t1.c2 AS c5, 30 AS c6
FROM t0 AS t1
WHERE false
ORDER BY c6, c6
LIMIT 433903485415630339 OFFSET 5002253598276470073;
SELECT t3.c1 AS c11, t7.c2 AS c12, 
 CASE t3.c2 WHEN t3.c1 <> 
  CASE WHEN COALESCE(t7.c3, t6.c4, t7.c1) < t6.c3 THEN t3.c0
       ELSE t6.c0
  END THEN t4.c2
      WHEN typeof( 'text79') IS NULL THEN t3.c2
      WHEN t3.c2 < t7.c2 OR t7.c1 <> t5.c0 AND true OR t5.c3 <> t6.c4 AND t4.c1 IS NOT NULL AND zeroblob( 13) IS NULL THEN t3.c2
      WHEN 'text31' < t6.c3 THEN subq0.c6
      WHEN t3.c1 <> t5.c0 THEN 40
      WHEN NULLIF(t7.c2, COALESCE(t6.c2, subq0.c6, 'text65', t3.c2)) >= CAST(subq0.c6 AS INTEGER) THEN t7.c2
      WHEN t3.c2 > t7.c2 THEN t7.c2
      WHEN t4.c0 = FALSE THEN t6.c2
      WHEN t4.c2 IS NULL THEN t7.c2
      ELSE t4.c2
 END AS c13
FROM (SELECT t2.c0 AS c5, t1.c2 AS c6
     FROM t0 AS t1
       INNER JOIN t0 AS t2       
        ON (t1.c0 = t1.c1)
     WHERE t2.c2 < t2.c2
     ORDER BY c6 ASC) as subq0
   LEFT JOIN (
   t0 AS t3
     LEFT JOIN t0 AS t4     
      ON (t4.c1 <> t4.c0)
    LEFT JOIN t0 AS t5    
     ON (t4.c1 = t5.c0 OR t3.c3 IS NOT NULL)   )
    ON ('text79' <> 
     CASE t3.c4 WHEN 
      CASE WHEN true THEN TRUE
           ELSE t3.c0
      END = t3.c0 THEN t4.c4
          WHEN t3.c0 = t5.c1 THEN t3.c3
          WHEN true THEN t4.c4
          WHEN t3.c1 <> subq0.c5 AND subq0.c5 = t4.c0 THEN t4.c3
          WHEN t5.c4 IS NULL THEN t3.c3
          WHEN t4.c3 >= t5.c3 THEN CAST(t3.c1 AS TEXT)
          ELSE t5.c4
     END)
  LEFT JOIN (
  t0 AS t6
   LEFT JOIN t0 AS t7   
    ON (t7.c4 > t6.c4 OR EXISTS (
     SELECT t8.c3 AS c5, t8.c4 AS c6, t8.c3 AS c7, t8.c3 AS c8, FALSE AS c9, t8.c1 AS c10
      FROM t0 AS t8
      WHERE t8.c0 IS NOT NULL
      ORDER BY c8 COLLATE BINARY DESC
     ))  )
   ON (t6.c1 IS NOT NULL)
WHERE 'text28' < rtrim( TRUE)
ORDER BY c12, c12 COLLATE RTRIM
LIMIT 4211853514885137388 OFFSET 5519906484245677212;
SELECT t1.c3 AS c5
FROM t0 AS t1
WHERE true
ORDER BY c5 DESC, c5 ASC, c5 DESC, c5 COLLATE RTRIM
LIMIT 9066337471857568747 ;
SELECT subq0.c5 AS c6, subq0.c5 AS c7, subq0.c5 AS c8, 69 AS c9
FROM (SELECT t2.c2 AS c5
   FROM t0 AS t1
     INNER JOIN (
     t0 AS t2
       INNER JOIN t0 AS t3       
        ON (t3.c0 IS NOT NULL OR t3.c2 = t3.c2)
      CROSS JOIN t0 AS t4      
       ON (t3.c2 < t2.c2 AND true)     )
      ON (t4.c1 = t2.c1)
   WHERE EXISTS (
    SELECT t5.c1 AS c5, t5.c2 AS c6, t5.c3 AS c7, t5.c0 AS c8, 
      CASE WHEN EXISTS (
       SELECT t6.c3 AS c5, t6.c0 AS c6, t6.c1 AS c7
        FROM t0 AS t6
        WHERE t6.c2 = t6.c2 AND t6.c1 <> t6.c1 OR true
        ORDER BY c7 COLLATE BINARY
        LIMIT 5012954859193557039 OFFSET 6619220656982829453
       ) AND FALSE <> t5.c0 THEN t5.c0
           ELSE t5.c0
      END AS c8, t5.c0 AS c9
     FROM t0 AS t5
     WHERE EXISTS (
      SELECT t7.c4 AS c5
       FROM t0 AS t7
       WHERE t7.c4 < t7.c3
       ORDER BY c5 COLLATE BINARY
       LIMIT 2465938234907877376 OFFSET 3508264563876308150
      )
     ORDER BY c6
     LIMIT 8959143712356824526 
    )
   ORDER BY c5 ASC, c5, c5 COLLATE NOCASE ASC, c5
   LIMIT 6970873735121920221 OFFSET 2767412325276298776) as subq0
WHERE subq0.c5 > subq0.c5
ORDER BY c8 ASC
LIMIT 6398951227164009782 ;
SELECT IFNULL(subq0.c5, 'text70') AS c7, subq0.c9 AS c8, 'text85' AS c9, 
 CASE WHEN subq0.c5 <> subq0.c7 THEN subq0.c6
      ELSE subq0.c6
 END AS c10, subq0.c8 AS c11, 
 CASE WHEN subq0.c9 <> subq0.c9 THEN subq0.c5
      ELSE subq0.c5
 END AS c12
FROM (SELECT 'text84' AS c5, t2.c2 AS c6, t2.c3 AS c7, t1.c3 AS c8, t2.c0 AS c9
   FROM t0 AS t1
     INNER JOIN t0 AS t2     
      ON (t1.c3 IS NOT NULL)
   WHERE EXISTS (
    SELECT TRUE AS c5, t4.c4 AS c6
     FROM t0 AS t3
       INNER JOIN t0 AS t4       
        ON (t4.c1 = t3.c1)
     WHERE false OR t4.c0 <> t3.c0 OR t3.c3 > t3.c4
     ORDER BY c6 COLLATE RTRIM
     LIMIT 569496558993185238 
    )
   ORDER BY c7
   LIMIT 681165158340155793 ) as subq0
WHERE subq0.c9 = FALSE OR subq0.c5 > subq0.c8 OR typeof( 32) > subq0.c8 OR false OR subq0.c8 = subq0.c5 AND subq0.c5 <> subq0.c5 AND subq0.c9 = subq0.c9 OR subq0.c7 > subq0.c5 AND EXISTS (
 SELECT t5.c2 AS c5
  FROM t0 AS t5
  WHERE t5.c0 IS NULL
  ORDER BY c5 COLLATE NOCASE ASC, c5, c5, c5 ASC
 )
ORDER BY c7, c9;
SELECT 
 CASE subq0.c7 WHEN CAST(subq0.c8 AS TEXT) = subq0.c6 THEN subq0.c6
      WHEN subq0.c8 = subq0.c8 THEN subq0.c7
      ELSE subq0.c7
 END AS c6, subq0.c6 AS c7, subq0.c6 AS c8, subq0.c5 AS c9, subq0.c7 AS c10, subq0.c8 AS c11, subq0.c5 AS c12, 
 CASE subq0.c10 WHEN subq0.c8 > subq0.c8 THEN subq0.c7
      WHEN subq0.c6 = subq0.c7 OR subq0.c5 < subq0.c5 OR subq1.c5 IS NOT NULL THEN subq0.c10
      WHEN EXISTS (
  SELECT t6.c0 AS c5
   FROM (SELECT t5.c2 AS c5, t5.c0 AS c6, t5.c2 AS c7, t5.c1 AS c8, TRUE AS c9, t5.c1 AS c10, t5.c4 AS c11, t5.c3 AS c12, t5.c3 AS c13, t5.c1 AS c14, t5.c1 AS c15
       FROM t0 AS t5
       WHERE t5.c4 <> t5.c3
       ORDER BY c5, c14 DESC, c14 COLLATE NOCASE ASC
       LIMIT 3188140309856927074 OFFSET 4779436548070440606) as subq2
     LEFT OUTER JOIN t0 AS t6     
      ON (subq2.c14 = subq2.c15)
   WHERE true
   ORDER BY c5 DESC, c5 COLLATE RTRIM DESC, c5 COLLATE RTRIM, c5 DESC
   LIMIT 4003140478572345791 
  ) OR subq0.c10 = FALSE AND 
  CASE subq1.c5 WHEN subq1.c5 = COALESCE(subq1.c5, subq1.c5, subq0.c10) THEN subq1.c5
       WHEN subq1.c5 IS NOT NULL THEN subq1.c5
       WHEN false THEN 
   CASE subq1.c5 WHEN substr(NULL,NULL) IS NOT NULL THEN 'text55'
        WHEN subq0.c7 = subq0.c6 OR subq1.c5 IS NOT NULL AND subq1.c5 IS NOT NULL THEN subq1.c5
        WHEN subq1.c5 >= lower( 'text67') THEN subq0.c8
        WHEN subq0.c6 <> FALSE THEN subq1.c5
        WHEN subq1.c5 IS NULL THEN subq0.c8
        WHEN unicode( NULL) IS NULL AND 'text7' IS NOT NULL THEN subq1.c5
        WHEN true THEN subq0.c8
        WHEN 
    CASE subq0.c8 WHEN subq0.c6 IS NOT NULL THEN subq0.c8
         WHEN subq1.c5 IS NOT NULL THEN subq1.c5
         ELSE subq0.c8
    END = subq1.c5 OR COALESCE(
     CASE WHEN TRUE = subq0.c7 OR false AND subq0.c7 = subq0.c7 THEN subq0.c8
          ELSE subq0.c8
     END, subq0.c5, subq0.c10, unlikely( NULL), subq0.c6, subq1.c5) < subq0.c8 THEN subq0.c8
        WHEN EXISTS (
    SELECT t7.c4 AS c5, t7.c1 AS c6, t7.c4 AS c7, 
      CASE WHEN t7.c4 <= t7.c3 THEN t7.c3
           ELSE t7.c3
      END AS c8, t7.c0 AS c9, t7.c2 AS c10
     FROM t0 AS t7
     WHERE true
     ORDER BY c6 ASC, c8 ASC, c9
     LIMIT 6986999048271762207 
    ) THEN subq0.c8
        WHEN subq0.c8 < subq1.c5 THEN subq1.c5
        WHEN true THEN subq1.c5
        ELSE subq0.c8
   END
       WHEN subq0.c7 IS NOT NULL THEN subq0.c8
       ELSE subq0.c8
  END < subq0.c8 THEN FALSE
      ELSE subq0.c10
 END AS c11, subq1.c5 AS c12, 
 CASE WHEN hex( TRUE) <= subq0.c8 THEN subq0.c10
      ELSE subq0.c10
 END AS c13, subq0.c6 AS c14, subq0.c10 AS c15, subq0.c5 AS c16, subq0.c5 AS c17, subq0.c10 AS c18, subq0.c8 AS c19, subq0.c8 AS c20, subq0.c6 AS c21
FROM (SELECT t1.c2 AS c5, 
     CASE WHEN 43 > t1.c2 OR t1.c0 IS NULL THEN t1.c0
          ELSE t1.c1
     END AS c6, t1.c0 AS c7, t1.c4 AS c8, 
     CASE t1.c1 WHEN t1.c0 = t1.c0 THEN t1.c0
          WHEN t1.c3 <= t1.c3 THEN t1.c0
          WHEN t1.c3 <> t1.c4 THEN t1.c0
          WHEN substr(34,FALSE) > t1.c3 THEN t1.c0
          WHEN EXISTS (
      SELECT t2.c1 AS c5, t2.c3 AS c6, t2.c4 AS c7, t2.c1 AS c8, t2.c3 AS c9
       FROM t0 AS t2
       WHERE t2.c3 <= t2.c3
       ORDER BY c9, c6 DESC, c5
      ) THEN t1.c1
          WHEN NULLIF(t1.c0, t1.c3) IS NULL AND t1.c3 >= t1.c3 THEN t1.c1
          WHEN 
      CASE t1.c3 WHEN false THEN t1.c4
           WHEN t1.c1 = t1.c0 OR t1.c0 = t1.c1 AND t1.c1 <> t1.c1 THEN t1.c3
           WHEN t1.c0 <> t1.c1 AND t1.c3 IS NULL THEN t1.c3
           WHEN t1.c1 IS NOT NULL THEN t1.c3
           WHEN t1.c0 <> t1.c0 THEN t1.c4
           ELSE t1.c3
      END > t1.c3 OR true AND t1.c0 = t1.c0 THEN t1.c1
          WHEN t1.c3 < t1.c3 THEN t1.c0
          WHEN true THEN IFNULL(t1.c1, t1.c0)
          WHEN t1.c2 > t1.c2 THEN t1.c1
          WHEN t1.c2 <= t1.c2 THEN t1.c1
          ELSE t1.c0
     END AS c10
    FROM t0 AS t1
    WHERE t1.c1 IS NULL
    ORDER BY c7
    LIMIT 4130552354556479657 ) as subq0
  LEFT OUTER JOIN (SELECT t3.c3 AS c5
    FROM t0 AS t3
      LEFT JOIN t0 AS t4      
       ON (t3.c0 = t3.c0)
    WHERE t4.c2 <> t3.c2 OR t4.c2 < t4.c2 AND t3.c2 <> t3.c2 AND t4.c0 <> t4.c0
    ORDER BY c5 COLLATE BINARY DESC, c5 ASC, c5 DESC, c5 ASC
    LIMIT 1963382691819251229 OFFSET 664819907297512413) as subq1  
   ON (subq0.c10 = subq0.c6)
WHERE CAST(CAST(length( 97) AS INTEGER) AS INTEGER) IS NOT NULL OR subq0.c10 = 
 CASE subq0.c10 WHEN true AND subq1.c5 IS NOT NULL THEN subq0.c10
      WHEN subq1.c5 > subq1.c5 THEN subq0.c10
      ELSE subq0.c10
 END
ORDER BY c8 COLLATE BINARY ASC, c9 COLLATE BINARY
LIMIT 7825710648903208062 OFFSET 3414055461917608134;
SELECT subq0.c21 AS c24, subq0.c7 AS c25, subq0.c12 AS c26, subq0.c13 AS c27, subq0.c19 AS c28
FROM (SELECT t1.c2 AS c5, t1.c0 AS c6, t2.c2 AS c7, t1.c4 AS c8, t1.c4 AS c9, t2.c2 AS c10, t2.c1 AS c11, t1.c1 AS c12, t2.c4 AS c13, t1.c1 AS c14, t1.c2 AS c15, t1.c3 AS c16, t1.c2 AS c17, FALSE AS c18, t1.c2 AS c19, t1.c3 AS c20, TRUE AS c21, t2.c4 AS c22, t1.c1 AS c23
   FROM t0 AS t1
     INNER JOIN t0 AS t2     
      ON (t1.c3 > t1.c3)
   WHERE t2.c2 > t1.c2
   ORDER BY c15 ASC, c22 DESC, c18 DESC
   LIMIT 4322368144556648834 OFFSET 6666918505460196269) as subq0
WHERE subq0.c14 = subq0.c11
ORDER BY c28 ASC, c27 DESC
LIMIT 6440892780226517548 OFFSET 4245776271792135300;
SELECT 'text76' AS c5
FROM t0 AS t1
      INNER JOIN t0 AS t2      
       ON (t1.c2 < t2.c2 AND t2.c2 >= t1.c2)
     LEFT JOIN t0 AS t3     
      ON (t1.c1 = t3.c0)
    LEFT JOIN t0 AS t4    
     ON (t3.c1 IS NULL OR t1.c4 < t3.c3 AND t3.c4 <> t3.c4)
   INNER JOIN t0 AS t5   
    ON (t3.c2 > t3.c2)
  LEFT OUTER JOIN (
  (SELECT t6.c4 AS c5, t6.c4 AS c6, t6.c0 AS c7, t6.c0 AS c8, t6.c0 AS c9, t6.c0 AS c10
     FROM t0 AS t6
     WHERE t6.c1 <> t6.c1
     ORDER BY c9
     LIMIT 2668407671350353094 ) as subq0
   CROSS JOIN t0 AS t7   
    ON (t7.c0 IS NULL)  )
   ON (subq0.c5 >= t5.c3 AND false OR subq0.c9 = t4.c0)
WHERE true
ORDER BY c5 ASC
LIMIT 4611848753413286550 ;
SELECT subq0.c14 AS c6, subq0.c13 AS c7, subq0.c6 AS c8, IFNULL(subq0.c8, 
  CASE subq0.c13 WHEN subq0.c6 > subq0.c11 THEN subq0.c8
       WHEN subq0.c10 = subq0.c14 THEN subq0.c13
       WHEN subq0.c14 <> subq0.c14 THEN subq0.c9
       WHEN 29 <= subq0.c8 THEN subq0.c8
       WHEN subq0.c12 IS NOT NULL THEN subq0.c9
       WHEN subq0.c5 <= subq0.c5 THEN subq0.c13
       WHEN subq0.c5 <> subq0.c6 AND subq0.c13 <= subq0.c13 THEN subq0.c8
       WHEN subq0.c14 IS NULL AND subq0.c9 IS NOT NULL OR subq0.c10 IS NULL THEN subq0.c13
       WHEN subq0.c12 <> subq0.c14 AND subq0.c12 <> subq0.c12 OR subq0.c12 IS NULL THEN subq0.c8
       WHEN subq0.c13 = subq0.c13 THEN subq0.c13
       WHEN subq0.c8 IS NULL THEN subq0.c13
       ELSE subq0.c13
  END) AS c9, subq0.c6 AS c10, subq0.c10 AS c11, char( '񨺒') AS c12, subq0.c7 AS c13, subq0.c6 AS c14
FROM (SELECT 
    CASE WHEN t1.c0 IS NULL THEN t1.c3
         ELSE t1.c4
    END AS c5, t1.c3 AS c6, IFNULL(t1.c1, t1.c1) AS c7, t1.c2 AS c8, t1.c2 AS c9, t1.c0 AS c10, IFNULL(t1.c4, t1.c4) AS c11, t1.c0 AS c12, t1.c2 AS c13, t1.c0 AS c14
   FROM t0 AS t1
   WHERE EXISTS (
    SELECT TRUE AS c5
     FROM t0 AS t2
     WHERE t2.c3 IS NOT NULL
     ORDER BY c5 ASC, c5, c5 COLLATE RTRIM, c5
    )
   ORDER BY c13 ASC, c11 ASC
   LIMIT 8123722963516939015 OFFSET 6185760069501604067) as subq0
WHERE 
 CASE subq0.c8 WHEN rtrim( TRUE) <= subq0.c6 THEN subq0.c13
      WHEN subq0.c13 >= subq0.c8 THEN subq0.c8
      WHEN subq0.c10 <> subq0.c14 THEN 
  CASE subq0.c13 WHEN 
   CASE subq0.c14 WHEN subq0.c14 <> 
    CASE subq0.c12 WHEN subq0.c8 IS NULL OR subq0.c6 >= 'text4' THEN subq0.c14
         WHEN subq0.c7 <> subq0.c10 THEN subq0.c7
         WHEN EXISTS (
     SELECT t3.c1 AS c5, t3.c2 AS c6, 'text46' AS c7, t3.c2 AS c8, t3.c3 AS c9, t3.c3 AS c10, t3.c3 AS c11, t3.c4 AS c12, t3.c3 AS c13
      FROM t0 AS t3
      WHERE t3.c3 >= t3.c4 OR t3.c4 >= t3.c4
      ORDER BY c11 COLLATE RTRIM ASC, c7 COLLATE RTRIM
      LIMIT 4329136063312715065 
     ) THEN subq0.c14
         WHEN subq0.c12 IS NULL THEN subq0.c7
         WHEN subq0.c14 <> subq0.c7 THEN subq0.c14
         WHEN subq0.c8 = subq0.c9 AND subq0.c13 IS NOT NULL OR subq0.c7 <> subq0.c12 AND subq0.c5 < subq0.c6 OR subq0.c7 <> subq0.c12 OR false THEN subq0.c14
         WHEN subq0.c7 <> subq0.c12 THEN subq0.c7
         ELSE subq0.c10
    END THEN subq0.c7
        WHEN subq0.c8 = 
    CASE WHEN true THEN subq0.c9
         ELSE subq0.c13
    END THEN subq0.c14
        WHEN subq0.c6 >= subq0.c5 AND rtrim('text10','text52') = subq0.c5 THEN subq0.c7
        WHEN subq0.c13 <= subq0.c9 THEN subq0.c7
        WHEN subq0.c14 = subq0.c14 THEN subq0.c10
        WHEN 98 IS NULL THEN subq0.c12
        WHEN EXISTS (
    SELECT t5.c3 AS c5, t5.c1 AS c6, t4.c2 AS c7, t5.c1 AS c8, t5.c0 AS c9, t5.c0 AS c10, t4.c3 AS c11, t4.c3 AS c12, t4.c0 AS c13
     FROM t0 AS t4
       INNER JOIN t0 AS t5       
        ON (t5.c1 = t4.c1 OR t5.c0 = t4.c0 OR t5.c3 IS NOT NULL AND true)
     WHERE t5.c4 < t5.c3
     ORDER BY c13 COLLATE BINARY, c8, c6
    ) THEN subq0.c14
        WHEN subq0.c10 IS NULL THEN subq0.c10
        WHEN 
    CASE subq0.c11 WHEN subq0.c13 = subq0.c8 AND EXISTS (
     SELECT t6.c4 AS c5, t6.c1 AS c6, t6.c3 AS c7, t6.c3 AS c8, t6.c0 AS c9, t6.c0 AS c10, t6.c1 AS c11, t6.c1 AS c12, t6.c1 AS c13, t6.c4 AS c14
      FROM t0 AS t6
      WHERE t6.c0 <> t6.c1
      ORDER BY c7 ASC, c9
      LIMIT 7251656706372903176 OFFSET 826377646569586950
     ) THEN printf('text92',FALSE)
         WHEN subq0.c12 = subq0.c7 THEN subq0.c5
         WHEN subq0.c13 <= 
     CASE WHEN subq0.c9 >= subq0.c9 THEN subq0.c13
          ELSE subq0.c13
     END OR subq0.c10 <> subq0.c14 AND subq0.c8 < subq0.c9 THEN subq0.c11
         WHEN subq0.c13 IS NULL AND EXISTS (
     SELECT t7.c4 AS c5, t7.c4 AS c6, t7.c0 AS c7, t7.c2 AS c8, t7.c1 AS c9, t7.c1 AS c10, t7.c2 AS c11, t7.c0 AS c12, t7.c4 AS c13, t7.c0 AS c14, t7.c2 AS c15, t7.c1 AS c16, t7.c4 AS c17, t7.c0 AS c18
      FROM t0 AS t7
      WHERE t7.c3 IS NULL
      ORDER BY c11
      LIMIT 1173122478075755131 OFFSET 2128618854579486009
     ) AND subq0.c10 <> subq0.c12 AND subq0.c11 <> subq0.c11 THEN subq0.c11
         WHEN subq0.c9 > subq0.c8 THEN subq0.c11
         WHEN subq0.c14 <> subq0.c10 AND 
     CASE subq0.c6 WHEN 
      CASE WHEN subq0.c5 <= subq0.c5 OR false THEN 'text64'
           ELSE subq0.c11
      END IS NOT NULL THEN subq0.c11
          WHEN false THEN subq0.c6
          WHEN subq0.c9 <> subq0.c8 THEN subq0.c6
          WHEN subq0.c11 > subq0.c5 THEN subq0.c11
          WHEN subq0.c7 IS NOT NULL THEN subq0.c6
          WHEN subq0.c10 = subq0.c14 AND subq0.c11 = subq0.c11 AND subq0.c10 <> subq0.c7 THEN subq0.c11
          WHEN subq0.c5 <= subq0.c6 THEN subq0.c11
          WHEN subq0.c12 IS NULL THEN subq0.c5
          ELSE subq0.c5
     END = subq0.c5 THEN subq0.c6
         WHEN subq0.c12 = subq0.c7 THEN subq0.c5
         WHEN subq0.c10 = subq0.c12 AND subq0.c11 IS NOT NULL AND 35 IS NULL THEN subq0.c6
         WHEN subq0.c10 IS NULL AND subq0.c12 = subq0.c10 THEN subq0.c6
         ELSE subq0.c5
    END < subq0.c11 OR subq0.c11 >= subq0.c6 THEN subq0.c7
        WHEN subq0.c11 > subq0.c6 THEN subq0.c7
        WHEN TRUE <> 
    CASE subq0.c12 WHEN true THEN subq0.c10
         WHEN subq0.c6 IS NULL AND subq0.c9 <= subq0.c9 THEN subq0.c12
         WHEN subq0.c14 IS NULL OR CAST(subq0.c5 AS INTEGER) <> subq0.c12 AND subq0.c11 >= 
     CASE subq0.c6 WHEN true OR subq0.c8 IS NOT NULL THEN subq0.c11
          WHEN coalesce(TRUE,NULL,'text21') IS NULL THEN subq0.c6
          WHEN subq0.c14 IS NULL OR subq0.c6 = subq0.c6 THEN subq0.c6
          WHEN EXISTS (
      SELECT TRUE AS c5, t8.c3 AS c6, t8.c4 AS c7, t8.c4 AS c8, t8.c2 AS c9, t8.c3 AS c10, t8.c4 AS c11, t8.c3 AS c12, t8.c3 AS c13, t8.c2 AS c14, t8.c4 AS c15, t8.c0 AS c16, t8.c1 AS c17, t8.c4 AS c18, t8.c2 AS c19, t8.c0 AS c20, t8.c3 AS c21, t8.c2 AS c22, t8.c1 AS c23
       FROM t0 AS t8
       WHERE t8.c1 IS NOT NULL
       ORDER BY c15 ASC, c19 COLLATE BINARY ASC
       LIMIT 3906884261236592686 
      ) OR EXISTS (
      SELECT t9.c2 AS c5, t9.c2 AS c6
       FROM t0 AS t9
       WHERE t9.c0 = t9.c0
       ORDER BY c6, c6 ASC, c6 COLLATE NOCASE, c6
      ) THEN subq0.c6
          WHEN false THEN subq0.c6
          WHEN subq0.c5 < subq0.c11 THEN coalesce(46,69,70)
          WHEN false THEN subq0.c6
          WHEN subq0.c13 > subq0.c9 THEN 'text11'
          WHEN false THEN subq0.c11
          WHEN subq0.c5 >= subq0.c5 THEN subq0.c11
          WHEN 'text81' = subq0.c5 THEN subq0.c6
          WHEN subq0.c11 > subq0.c6 AND FALSE = subq0.c7 OR false THEN subq0.c5
          ELSE subq0.c6
     END THEN subq0.c7
         WHEN subq0.c13 <= subq0.c8 THEN subq0.c10
         WHEN true OR subq0.c12 IS NULL THEN 
     CASE subq0.c14 WHEN subq0.c7 IS NULL OR true AND subq0.c10 <> subq0.c12 THEN subq0.c7
          WHEN subq0.c10 IS NULL AND false THEN subq0.c7
          ELSE subq0.c12
     END
         WHEN subq0.c6 > subq0.c11 THEN subq0.c12
         WHEN subq0.c13 <= 
     CASE subq0.c9 WHEN subq0.c14 = subq0.c10 THEN 
      CASE WHEN subq0.c5 >= subq0.c6 THEN subq0.c13
           ELSE subq0.c9
      END
          WHEN subq0.c10 <> subq0.c12 THEN subq0.c9
          WHEN subq0.c14 IS NULL AND subq0.c9 >= subq0.c13 AND subq0.c5 IS NULL OR subq0.c6 < subq0.c6 AND subq0.c11 <= subq0.c5 AND subq0.c13 <= subq0.c9 THEN subq0.c9
          ELSE subq0.c9
     END OR subq0.c13 IS NOT NULL THEN subq0.c12
         WHEN subq0.c11 = subq0.c11 THEN subq0.c12
         WHEN subq0.c14 = subq0.c10 AND false AND subq0.c9 >= subq0.c8 THEN 
     CASE WHEN 
      CASE WHEN subq0.c10 IS NULL AND subq0.c12 <> subq0.c7 THEN subq0.c10
           ELSE subq0.c10
      END = subq0.c10 THEN FALSE
          ELSE subq0.c7
     END
         WHEN subq0.c12 <> subq0.c14 THEN subq0.c7
         WHEN subq0.c7 = subq0.c14 THEN subq0.c10
         WHEN subq0.c14 IS NOT NULL THEN subq0.c12
         ELSE subq0.c7
    END THEN subq0.c12
        ELSE subq0.c14
   END <> subq0.c12 THEN subq0.c9
       WHEN 
   CASE WHEN subq0.c14 <> subq0.c10 AND 
    CASE subq0.c12 WHEN subq0.c11 = 
     CASE WHEN false THEN subq0.c11
          ELSE subq0.c5
     END THEN subq0.c12
         WHEN subq0.c7 IS NOT NULL THEN subq0.c10
         WHEN true THEN FALSE
         WHEN EXISTS (
     SELECT t10.c2 AS c5, t10.c4 AS c6, t10.c0 AS c7, t10.c1 AS c8, t10.c2 AS c9, t10.c1 AS c10, t10.c2 AS c11, t10.c2 AS c12, t10.c1 AS c13, t10.c2 AS c14, t10.c4 AS c15, t10.c4 AS c16, t10.c3 AS c17, t10.c2 AS c18, t10.c4 AS c19, t10.c4 AS c20, t10.c2 AS c21, t10.c2 AS c22, t10.c1 AS c23, t10.c0 AS c24, t10.c4 AS c25, t10.c1 AS c26, t10.c3 AS c27, t10.c3 AS c28, t10.c0 AS c29
      FROM t0 AS t10
      WHERE true
      ORDER BY c23, c9 COLLATE BINARY, c28 COLLATE BINARY
      LIMIT 6427775574114523116 OFFSET 255937419386850721
     ) THEN subq0.c10
         WHEN subq0.c14 = subq0.c12 THEN subq0.c7
         WHEN substr('text42',FALSE,61) IS NULL THEN subq0.c7
         WHEN subq0.c5 < subq0.c6 THEN FALSE
         WHEN subq0.c5 = subq0.c6 AND subq0.c5 > subq0.c6 THEN subq0.c14
         WHEN subq0.c11 <> subq0.c5 THEN TRUE
         WHEN false THEN subq0.c7
         WHEN subq0.c5 IS NOT NULL THEN subq0.c14
         ELSE subq0.c7
    END = CAST(subq0.c11 AS BOOLEAN) OR 43 < subq0.c9 OR 16 <= 
    CASE WHEN subq0.c7 = subq0.c10 THEN subq0.c8
         ELSE subq0.c8
    END THEN subq0.c9
        ELSE subq0.c13
   END < subq0.c13 OR EXISTS (
   SELECT t11.c2 AS c5, t11.c1 AS c6, t11.c3 AS c7, t11.c1 AS c8, CAST(t11.c0 AS TEXT) AS c9
    FROM t0 AS t11
    WHERE EXISTS (
     SELECT t12.c0 AS c5, t12.c3 AS c6, t12.c0 AS c7, t12.c3 AS c8, t12.c4 AS c9, t12.c0 AS c10, t12.c1 AS c11, 'text27' AS c12, t12.c4 AS c13, t12.c0 AS c14, t12.c3 AS c15, TRUE AS c16
      FROM t0 AS t12
      WHERE t12.c3 IS NULL
      ORDER BY c13 ASC, c13, c5 DESC
      LIMIT 2464692059234162114 OFFSET 8601005130636955026
     )
    ORDER BY c7 ASC, c8 DESC, c6 DESC
    LIMIT 5279338231446071643 
   ) OR subq0.c9 < subq0.c8 THEN subq0.c9
       WHEN subq0.c12 <> subq0.c12 THEN subq0.c8
       WHEN subq0.c11 = trim( 'text38') THEN subq0.c9
       WHEN 
   CASE subq0.c5 WHEN FALSE <> subq0.c10 OR subq0.c6 < nullif(NULL,'text61') OR subq0.c10 <> subq0.c14 THEN subq0.c6
        WHEN EXISTS (
    SELECT t13.c4 AS c5, 'text48' AS c6
     FROM t0 AS t13
     WHERE t13.c1 = t13.c0 OR t13.c3 > t13.c3
     ORDER BY c5, c6, c6 ASC, c5 ASC
     LIMIT 6237570386992790415 
    ) THEN subq0.c11
        WHEN true THEN subq0.c11
        WHEN subq0.c11 <= subq0.c5 THEN hex( 95)
        WHEN TRUE = subq0.c12 THEN subq0.c11
        ELSE subq0.c6
   END <> subq0.c5 THEN subq0.c8
       ELSE subq0.c9
  END
      WHEN subq0.c11 IS NULL THEN 
  CASE WHEN true OR subq0.c14 <> subq0.c14 OR subq0.c10 = subq0.c7 OR 
   CASE subq0.c13 WHEN EXISTS (
    SELECT t14.c4 AS c5, t14.c1 AS c6
     FROM t0 AS t14
     WHERE t14.c3 IS NOT NULL AND t14.c0 = t14.c1 AND t14.c1 IS NOT NULL OR t14.c3 < t14.c4
     ORDER BY c6 DESC, c6 COLLATE RTRIM DESC
     LIMIT 5530976303074029093 
    ) THEN subq0.c9
        WHEN true THEN likelihood('text9',0.185892)
        WHEN subq0.c6 >= subq0.c5 THEN subq0.c13
        WHEN FALSE = subq0.c14 THEN subq0.c13
        WHEN subq0.c7 = subq0.c14 AND subq0.c11 >= subq0.c6 THEN subq0.c9
        WHEN subq0.c7 <> subq0.c10 THEN subq0.c8
        WHEN true OR subq0.c13 <= subq0.c13 THEN subq0.c9
        WHEN subq0.c13 > subq0.c8 AND true OR subq0.c5 <= subq0.c6 AND subq0.c12 = FALSE THEN 
    CASE WHEN subq0.c10 IS NULL THEN subq0.c8
         ELSE subq0.c9
    END
        WHEN subq0.c10 IS NULL THEN subq0.c8
        ELSE subq0.c13
   END <> 98 OR false AND subq0.c5 IS NULL THEN subq0.c13
       ELSE subq0.c9
  END
      WHEN subq0.c12 <> subq0.c12 AND subq0.c11 < subq0.c6 THEN subq0.c13
      WHEN subq0.c13 <> 
  CASE subq0.c9 WHEN subq0.c8 IS NULL THEN 
   CASE WHEN subq0.c14 IS NOT NULL THEN subq0.c9
        ELSE subq0.c8
   END
       ELSE subq0.c9
  END THEN subq0.c9
      WHEN subq0.c7 = CAST(subq0.c8 AS INTEGER) THEN subq0.c8
      WHEN subq0.c11 IS NULL THEN subq0.c8
      ELSE subq0.c9
 END <= subq0.c9
ORDER BY c14 DESC
LIMIT 8344155499457245482 OFFSET 5715992636175823905;
SELECT t1.c3 AS c5, t1.c2 AS c6
FROM t0 AS t1
WHERE length( TRUE) IS NULL
ORDER BY c5, c6 DESC, c5, c5;
UPDATE t0 
SET c1 = t0.c0, c2 = likely( TRUE)
WHERE EXISTS (
 SELECT IFNULL(likelihood('text30',0.899882), subq0.c8) AS c13, subq0.c6 AS c14, subq0.c10 AS c15, subq0.c7 AS c16, subq0.c10 AS c17, subq0.c6 AS c18, subq0.c12 AS c19
  FROM (SELECT t1.c0 AS c5, FALSE AS c6, t2.c2 AS c7, t1.c2 AS c8, t1.c3 AS c9, t2.c1 AS c10, t2.c0 AS c11, t2.c1 AS c12
     FROM t0 AS t1
       LEFT JOIN t0 AS t2       
        ON (TRUE = t1.c1 AND t2.c0 IS NULL)
     WHERE false
     ORDER BY c7 COLLATE RTRIM ASC, c10 COLLATE NOCASE, c12
     LIMIT 1252746676905954152 ) as subq0
  WHERE subq0.c7 IS NULL
  ORDER BY c16 ASC, c13
  LIMIT 7589646395114856677 OFFSET 8758225684127148516
 );
UPDATE t0 
SET c0 = t0.c1, c1 = t0.c0, c4 = t0.c3
WHERE 
 CASE t0.c1 WHEN t0.c3 = t0.c3 THEN t0.c0
      ELSE t0.c0
 END <> t0.c0;
SELECT subq0.c6 AS c5, 
 CASE subq0.c5 WHEN subq0.c17 = subq0.c17 OR TRUE IS NOT NULL THEN subq0.c9
      WHEN subq0.c7 <> subq0.c7 THEN subq0.c8
      WHEN subq0.c9 <= 
  CASE WHEN false THEN ltrim( 62)
       ELSE t2.c4
  END THEN trim( FALSE)
      WHEN subq0.c7 <> 
  CASE t2.c2 WHEN subq0.c6 = subq0.c6 AND subq0.c15 >= t2.c3 OR subq0.c18 >= subq0.c9 AND subq0.c10 <> 
   CASE subq0.c14 WHEN 
    CASE WHEN t2.c2 IS NOT NULL THEN subq0.c10
         ELSE NULLIF(t2.c1, subq0.c12)
    END = subq0.c13 THEN subq0.c6
        WHEN CAST(t2.c0 AS INTEGER) IS NULL THEN subq0.c12
        WHEN subq0.c10 <> 
    CASE WHEN subq0.c16 >= subq0.c17 AND subq0.c17 < subq0.c8 THEN t2.c0
         ELSE subq0.c6
    END THEN subq0.c12
        WHEN subq0.c15 = t2.c3 THEN TRUE
        WHEN t2.c0 <> subq0.c14 THEN subq0.c14
        WHEN subq0.c17 > t2.c4 THEN t2.c1
        ELSE subq0.c10
   END THEN t2.c2
       WHEN t2.c0 IS NULL OR t2.c0 <> subq0.c10 OR COALESCE(subq0.c15, subq0.c9, subq0.c16, subq0.c18, 
    CASE t2.c3 WHEN subq0.c14 = FALSE THEN subq0.c17
         WHEN true THEN t2.c0
         WHEN subq0.c16 < subq0.c18 THEN 
     CASE t2.c2 WHEN subq0.c8 <> subq0.c15 OR t2.c3 IS NOT NULL THEN t2.c3
          WHEN subq0.c14 IS NULL THEN subq0.c7
          WHEN false THEN t2.c1
          WHEN t2.c1 = subq0.c11 THEN t2.c0
          WHEN t2.c1 IS NULL THEN t2.c2
          WHEN subq0.c13 = subq0.c12 THEN 
      CASE WHEN true THEN t2.c2
           ELSE subq0.c11
      END
          WHEN EXISTS (
      SELECT t3.c0 AS c5, t3.c1 AS c6, t3.c0 AS c7, t3.c3 AS c8, t3.c2 AS c9, t3.c0 AS c10, t3.c0 AS c11, t3.c3 AS c12, t3.c2 AS c13
       FROM t0 AS t3
       WHERE t3.c3 <> t3.c3
       ORDER BY c6 DESC, c11 COLLATE RTRIM DESC, c9 DESC
       LIMIT 1289427185424740492 
      ) THEN t2.c1
          WHEN subq0.c9 <= ltrim( NULL) THEN t2.c2
          WHEN true THEN TRUE
          WHEN subq0.c16 IS NULL THEN subq0.c6
          WHEN subq0.c12 = subq0.c14 THEN subq0.c16
          ELSE coalesce(TRUE,12,'text47')
     END
         WHEN subq0.c12 = t2.c1 THEN like('text94',NULL,'輎')
         WHEN subq0.c10 = subq0.c11 THEN t2.c3
         ELSE subq0.c6
    END) > subq0.c8 AND t2.c1 IS NULL OR printf('text53',77) = IFNULL(subq0.c5, t2.c3) OR subq0.c16 >= 
   CASE subq0.c5 WHEN 
    CASE WHEN subq0.c7 < subq0.c7 OR subq0.c11 = subq0.c13 THEN subq0.c14
         ELSE t2.c1
    END <> subq0.c13 AND subq0.c5 <> subq0.c15 OR subq0.c16 IS NOT NULL OR t2.c2 <= t2.c2 THEN subq0.c5
        WHEN subq0.c8 IS NOT NULL THEN subq0.c17
        WHEN t2.c1 <> t2.c0 OR subq0.c17 <> subq0.c5 THEN subq0.c16
        WHEN EXISTS (
    SELECT t4.c3 AS c5
     FROM t0 AS t4
     WHERE t4.c0 = TRUE
     ORDER BY c5 COLLATE NOCASE
     LIMIT 2327426680624576387 
    ) THEN subq0.c5
        WHEN subq0.c12 <> t2.c1 THEN subq0.c17
        WHEN t2.c1 <> subq0.c12 OR t2.c4 > subq0.c16 OR subq0.c10 <> t2.c0 THEN CAST('text43' AS INTEGER)
        WHEN subq0.c14 <> subq0.c10 THEN subq0.c5
        WHEN subq0.c5 = subq0.c9 THEN subq0.c9
        WHEN subq0.c6 <> subq0.c10 THEN 
    CASE WHEN false AND t2.c4 = subq0.c9 AND t2.c2 >= subq0.c7 THEN COALESCE(t2.c3, subq0.c10, subq0.c5, subq0.c7)
         ELSE subq0.c15
    END
        WHEN t2.c2 <= subq0.c7 THEN subq0.c18
        WHEN subq0.c14 = subq0.c14 THEN subq0.c18
        WHEN subq0.c13 = subq0.c11 THEN subq0.c5
        ELSE subq0.c5
   END OR subq0.c10 = t2.c0 OR subq0.c14 = t2.c0 OR CAST(subq0.c5 AS INTEGER) > subq0.c7 AND t2.c3 IS NOT NULL THEN t2.c2
       WHEN hex( NULL) IS NULL THEN subq0.c7
       ELSE 
   CASE t2.c2 WHEN CAST(t2.c2 AS INTEGER) >= t2.c3 THEN subq0.c7
        WHEN subq0.c13 = t2.c1 THEN subq0.c7
        WHEN false THEN subq0.c7
        ELSE subq0.c7
   END
  END THEN subq0.c9
      ELSE coalesce(2,45,'text48')
 END AS c6, TRUE AS c7, replace(NULL,NULL,27) AS c8
FROM (SELECT t1.c4 AS c5, t1.c0 AS c6, 38 AS c7, t1.c4 AS c8, t1.c3 AS c9, t1.c1 AS c10, t1.c1 AS c11, t1.c0 AS c12, t1.c1 AS c13, t1.c0 AS c14, t1.c3 AS c15, t1.c4 AS c16, t1.c4 AS c17, t1.c4 AS c18
    FROM t0 AS t1
    WHERE t1.c2 IS NULL
    ORDER BY c8 DESC, c18) as subq0
  INNER JOIN t0 AS t2  
   ON (subq0.c6 <> subq0.c11 AND t2.c4 >= subq0.c17)
WHERE subq0.c10 = COALESCE(subq0.c9, t2.c1, subq0.c17, subq0.c6, t2.c0, subq0.c11)
ORDER BY c8, c5 COLLATE BINARY ASC
LIMIT 5813631281538205583 OFFSET 8170303150994242595;
SELECT subq1.c11 AS c12, COALESCE(subq1.c9, subq1.c10, 'text50', TRUE, subq1.c10) AS c13, subq1.c10 AS c14, subq1.c9 AS c15, subq1.c11 AS c16, 
 CASE subq1.c10 WHEN subq1.c9 <> subq1.c9 THEN subq1.c11
      WHEN subq1.c9 = subq1.c10 THEN subq1.c9
      WHEN subq1.c10 = subq1.c9 THEN subq1.c11
      WHEN subq1.c9 <> subq1.c9 THEN subq1.c9
      WHEN subq1.c9 = subq1.c9 THEN subq1.c9
      WHEN printf('text26','text87') IS NOT NULL THEN subq1.c9
      WHEN 
  CASE WHEN 
   CASE subq1.c11 WHEN 41 IS NOT NULL AND subq1.c11 <> subq1.c9 OR subq1.c11 = subq1.c10 THEN subq1.c10
        WHEN subq1.c10 <> subq1.c9 OR subq1.c10 IS NULL THEN subq1.c10
        WHEN subq1.c10 IS NULL AND subq1.c10 <> subq1.c11 THEN subq1.c11
        WHEN EXISTS (
    SELECT t2.c0 AS c5, t2.c0 AS c6, t2.c0 AS c7, t2.c0 AS c8, t2.c0 AS c9, t2.c0 AS c10, t2.c4 AS c11, t2.c2 AS c12, t2.c3 AS c13
     FROM t0 AS t2
     WHERE t2.c0 IS NOT NULL
     ORDER BY c13 ASC, c11
    ) AND subq1.c10 = subq1.c9 THEN subq1.c10
        ELSE subq1.c11
   END <> subq1.c11 THEN subq1.c9
       ELSE subq1.c11
  END = subq1.c9 OR subq1.c10 <> CAST(upper( FALSE) AS BOOLEAN) THEN subq1.c9
      WHEN subq1.c9 = subq1.c10 THEN subq1.c9
      WHEN subq1.c9 <> subq1.c11 THEN subq1.c10
      WHEN subq1.c10 <> subq1.c11 THEN subq1.c9
      ELSE subq1.c11
 END AS c14, subq1.c10 AS c15, 
 CASE subq1.c10 WHEN true AND false AND subq1.c10 = 
  CASE WHEN subq1.c9 IS NOT NULL THEN TRUE
       ELSE subq1.c10
  END AND 
  CASE subq1.c11 WHEN TRUE <> subq1.c11 THEN 
   CASE WHEN coalesce(88,'text21','text26') IS NOT NULL AND subq1.c11 = subq1.c9 AND subq1.c10 <> subq1.c11 OR EXISTS (
    SELECT t4.c0 AS c9, printf('text3',FALSE) AS c10
     FROM t0 AS t3
       INNER JOIN (
       t0 AS t4
        INNER JOIN t0 AS t5        
         ON (EXISTS (
          SELECT t6.c2 AS c5, t6.c3 AS c6, t6.c4 AS c7, t6.c3 AS c8
           FROM t0 AS t6
           WHERE t6.c2 > 59
           ORDER BY c6 DESC, c7, c6
           LIMIT 6592531991354708250 OFFSET 6631974685079363399
          ))       )
        ON (t4.c4 > t3.c4)
     WHERE t5.c0 <> t5.c1 AND t3.c2 >= t5.c2
     ORDER BY c9 DESC
     LIMIT 1540867213723926278 OFFSET 5990456202668098107
    ) THEN subq1.c10
        ELSE subq1.c9
   END
       WHEN FALSE <> subq1.c9 THEN subq1.c11
       WHEN subq1.c11 = subq1.c10 OR subq1.c9 IS NOT NULL THEN subq1.c9
       WHEN subq1.c11 <> subq1.c10 AND subq1.c9 = subq1.c11 THEN subq1.c11
       WHEN subq1.c11 = subq1.c10 OR false AND subq1.c10 <> subq1.c10 OR false OR subq1.c11 <> subq1.c10 AND subq1.c10 <> subq1.c9 THEN subq1.c11
       WHEN subq1.c11 = COALESCE(IFNULL(subq1.c11, subq1.c11), subq1.c11, subq1.c10, subq1.c11) THEN subq1.c9
       WHEN 
   CASE subq1.c10 WHEN subq1.c9 <> subq1.c10 THEN subq1.c10
        WHEN subq1.c9 = subq1.c11 THEN subq1.c11
        WHEN EXISTS (
    SELECT t8.c2 AS c5, t7.c2 AS c6
     FROM t0 AS t7
       INNER JOIN t0 AS t8       
        ON (t8.c3 = t7.c3)
     WHERE t7.c0 <> COALESCE(t7.c1, t8.c1)
     ORDER BY c5 ASC, c6 ASC
     LIMIT 4851480375944146541 OFFSET 2817313434585459636
    ) THEN subq1.c11
        WHEN EXISTS (
    SELECT 91 AS c5
     FROM t0 AS t9
     WHERE instr(56,TRUE) IS NOT NULL
     ORDER BY c5
     LIMIT 3457341182486746258 OFFSET 152003838940458892
    ) THEN subq1.c10
        WHEN subq1.c10 = subq1.c9 THEN subq1.c10
        WHEN true OR TRUE <> subq1.c10 THEN subq1.c10
        WHEN subq1.c11 <> subq1.c10 THEN subq1.c10
        WHEN subq1.c10 <> subq1.c10 THEN subq1.c11
        WHEN subq1.c11 <> subq1.c11 THEN subq1.c9
        WHEN EXISTS (
    SELECT t10.c1 AS c5
     FROM t0 AS t10
     WHERE t10.c3 >= t10.c4
     ORDER BY c5 COLLATE BINARY DESC, c5 COLLATE RTRIM ASC, c5, c5
    ) THEN subq1.c9
        WHEN subq1.c9 = subq1.c11 THEN 
    CASE subq1.c9 WHEN FALSE = subq1.c9 THEN subq1.c10
         WHEN subq1.c10 = subq1.c9 THEN subq1.c11
         WHEN subq1.c9 = subq1.c9 THEN subq1.c10
         WHEN subq1.c11 <> 
     CASE subq1.c10 WHEN subq1.c10 = 
      CASE WHEN subq1.c10 <> TRUE THEN subq1.c11
           ELSE subq1.c9
      END THEN subq1.c10
          WHEN subq1.c10 <> subq1.c11 THEN subq1.c9
          ELSE subq1.c10
     END AND subq1.c11 <> subq1.c9 THEN subq1.c11
         ELSE subq1.c11
    END
        WHEN subq1.c10 = subq1.c10 THEN subq1.c9
        ELSE subq1.c10
   END <> subq1.c10 THEN subq1.c10
       WHEN subq1.c9 = 
   CASE subq1.c11 WHEN subq1.c10 <> subq1.c10 THEN subq1.c11
        WHEN subq1.c11 <> subq1.c11 THEN subq1.c11
        WHEN subq1.c11 = subq1.c9 THEN CAST(subq1.c9 AS BOOLEAN)
        WHEN subq1.c10 <> subq1.c10 THEN subq1.c10
        WHEN subq1.c9 = subq1.c11 OR 
    CASE WHEN subq1.c10 IS NOT NULL THEN subq1.c11
         ELSE trim(FALSE,86)
    END IS NOT NULL THEN subq1.c11
        WHEN 'text86' IS NOT NULL THEN subq1.c11
        WHEN subq1.c10 <> subq1.c10 THEN subq1.c9
        WHEN subq1.c9 <> CAST(subq1.c9 AS BOOLEAN) AND subq1.c10 <> subq1.c11 OR FALSE <> subq1.c11 THEN subq1.c11
        WHEN subq1.c10 <> subq1.c10 THEN subq1.c10
        WHEN subq1.c11 = TRUE THEN subq1.c10
        WHEN subq1.c10 <> subq1.c9 THEN subq1.c11
        ELSE subq1.c11
   END THEN subq1.c11
       ELSE subq1.c11
  END <> subq1.c10 OR 
  CASE WHEN 
   CASE WHEN subq1.c9 = subq1.c11 THEN subq1.c10
        ELSE subq1.c11
   END <> subq1.c10 OR subq1.c9 = subq1.c11 OR subq1.c11 <> subq1.c9 OR subq1.c9 = subq1.c10 OR subq1.c11 <> subq1.c11 THEN subq1.c10
       ELSE subq1.c9
  END = subq1.c10 AND true OR 
  CASE subq1.c11 WHEN true THEN subq1.c10
       ELSE subq1.c10
  END = subq1.c11 OR subq1.c9 = subq1.c11 OR subq1.c9 IS NULL OR TRUE <> subq1.c10 THEN subq1.c10
      WHEN 'text99' IS NULL OR EXISTS (
  SELECT t11.c0 AS c5, t11.c2 AS c6, t11.c4 AS c7, t11.c4 AS c8, t11.c1 AS c9, t11.c4 AS c10
   FROM t0 AS t11
   WHERE t11.c0 IS NULL
   ORDER BY c5, c5
   LIMIT 3213060100888450184 OFFSET 2986167939824443778
  ) THEN subq1.c11
      WHEN subq1.c11 <> subq1.c10 AND subq1.c9 <> subq1.c9 OR subq1.c10 = subq1.c11 THEN subq1.c10
      WHEN subq1.c9 IS NOT NULL THEN subq1.c9
      WHEN subq1.c10 <> subq1.c10 THEN subq1.c10
      WHEN true THEN subq1.c11
      WHEN 
  CASE WHEN false THEN subq1.c9
       ELSE subq1.c11
  END <> 
  CASE WHEN EXISTS (
   SELECT subq2.c6 AS c8, subq2.c5 AS c9, subq2.c6 AS c10, subq2.c7 AS c11, 
     CASE subq2.c7 WHEN subq2.c5 <> subq2.c5 THEN subq2.c6
          WHEN subq2.c6 = subq2.c5 OR subq2.c6 = subq2.c7 THEN subq2.c6
          ELSE subq2.c7
     END AS c12, subq2.c6 AS c13, subq2.c7 AS c14, subq2.c6 AS c15, subq2.c6 AS c16, subq2.c6 AS c17, subq2.c7 AS c18, subq2.c6 AS c19, subq2.c5 AS c20, subq2.c7 AS c21, TRUE AS c22
    FROM (SELECT t12.c1 AS c5, t12.c1 AS c6, t12.c1 AS c7
       FROM t0 AS t12
       WHERE t12.c2 >= t12.c2
       ORDER BY c5 COLLATE BINARY
       LIMIT 8065273913053970015 OFFSET 3621815976088871805) as subq2
    WHERE subq2.c5 <> subq2.c6 AND subq2.c7 = subq2.c5
    ORDER BY c22
   ) THEN TRUE
       ELSE subq1.c10
  END THEN FALSE
      WHEN subq1.c10 <> subq1.c10 THEN subq1.c11
      ELSE subq1.c9
 END AS c23, subq1.c11 AS c24, 
 CASE WHEN subq1.c9 <> 
  CASE subq1.c10 WHEN subq1.c10 = subq1.c9 THEN subq1.c9
       WHEN EXISTS (
   SELECT substr(77,NULL) AS c5
    FROM t0 AS t13
      LEFT JOIN t0 AS t14      
       ON (t14.c1 IS NOT NULL)
    WHERE t14.c1 <> t13.c1 AND t14.c4 IS NOT NULL
    ORDER BY c5 COLLATE NOCASE ASC
    LIMIT 8920295477380427365 OFFSET 7279801076175504035
   ) THEN subq1.c9
       WHEN subq1.c11 <> subq1.c11 THEN subq1.c9
       WHEN subq1.c11 <> subq1.c9 THEN TRUE
       WHEN subq1.c9 = subq1.c11 THEN subq1.c10
       WHEN 
   CASE subq1.c10 WHEN length( FALSE) IS NULL THEN subq1.c11
        WHEN subq1.c10 <> subq1.c9 THEN subq1.c10
        WHEN subq1.c11 IS NOT NULL THEN subq1.c9
        ELSE subq1.c9
   END <> subq1.c9 THEN subq1.c10
       WHEN 
   CASE WHEN subq1.c11 <> subq1.c11 THEN subq1.c9
        ELSE subq1.c10
   END <> 
   CASE subq1.c10 WHEN subq1.c9 <> subq1.c10 THEN subq1.c11
        WHEN subq1.c9 = subq1.c9 THEN subq1.c11
        WHEN subq1.c11 <> COALESCE(subq1.c9, subq1.c11, subq1.c9) AND true OR subq1.c10 = subq1.c11 THEN subq1.c11
        WHEN subq1.c9 IS NULL THEN subq1.c11
        WHEN false THEN subq1.c10
        WHEN EXISTS (
    SELECT t15.c4 AS c5
     FROM t0 AS t15
     WHERE t15.c0 = t15.c1
     ORDER BY c5, c5 ASC, c5 DESC, c5 DESC
     LIMIT 3595009328337613047 OFFSET 4851663137515838253
    ) THEN subq1.c10
        ELSE subq1.c9
   END OR subq1.c10 IS NULL AND subq1.c10 = subq1.c11 THEN subq1.c11
       WHEN subq1.c10 <> subq1.c9 THEN subq1.c9
       WHEN subq1.c11 <> subq1.c10 THEN subq1.c10
       WHEN false OR subq1.c10 = subq1.c11 THEN COALESCE(subq1.c9, subq1.c11)
       ELSE subq1.c9
  END THEN subq1.c11
      ELSE subq1.c10
 END AS c6, subq1.c11 AS c7, 
 CASE subq1.c10 WHEN subq1.c10 = subq1.c9 OR EXISTS (
  SELECT t16.c4 AS c5
   FROM t0 AS t16
   WHERE t16.c3 > t16.c4
   ORDER BY c5, c5, c5, c5 ASC
   LIMIT 8230609269745419205 OFFSET 6329592125977473821
  ) AND subq1.c9 <> subq1.c9 AND subq1.c9 = subq1.c10 AND subq1.c10 = subq1.c11 AND subq1.c10 = subq1.c11 THEN 
  CASE WHEN subq1.c10 <> subq1.c10 THEN subq1.c10
       ELSE subq1.c11
  END
      WHEN subq1.c11 = subq1.c11 THEN COALESCE(subq1.c10, COALESCE(subq1.c10, subq1.c11, subq1.c9, subq1.c10, subq1.c9), subq1.c9)
      WHEN subq1.c9 <> subq1.c10 THEN subq1.c11
      WHEN subq1.c10 <> subq1.c11 THEN subq1.c11
      WHEN subq1.c9 = subq1.c9 THEN subq1.c9
      WHEN subq1.c9 IS NULL THEN subq1.c10
      WHEN COALESCE(subq1.c10, subq1.c10) <> subq1.c11 THEN NULLIF(subq1.c9, subq1.c10)
      WHEN subq1.c9 = subq1.c11 THEN FALSE
      WHEN EXISTS (
  SELECT t17.c0 AS c5, 
    CASE WHEN t18.c3 <> t17.c4 THEN t18.c3
         ELSE t18.c4
    END AS c6
   FROM t0 AS t17
     INNER JOIN t0 AS t18     
      ON (t17.c1 = t18.c0)
   WHERE true
   ORDER BY c6 DESC, c6, c5, c5
   LIMIT 8383351166348162534 OFFSET 4462305595243193722
  ) AND FALSE IS NOT NULL AND subq1.c11 <> 
  CASE WHEN subq1.c11 <> subq1.c10 THEN subq1.c10
       ELSE subq1.c10
  END THEN subq1.c9
      WHEN subq1.c9 = subq1.c11 THEN subq1.c9
      WHEN EXISTS (
  SELECT subq3.c5 AS c5, t20.c0 AS c6, 
    CASE WHEN t20.c2 = subq3.c5 THEN CAST(t20.c4 AS TEXT)
         ELSE t20.c2
    END AS c7, subq3.c5 AS c8, t20.c0 AS c9, NULLIF(t20.c0, t20.c0) AS c10, t20.c1 AS c11, 
    CASE t20.c4 WHEN t20.c2 <= subq3.c5 THEN t20.c3
         WHEN false THEN t20.c3
         WHEN subq3.c5 <= CAST(
      CASE WHEN false THEN subq3.c5
           ELSE subq3.c5
      END AS TEXT) THEN 'text1'
         WHEN true THEN t20.c3
         WHEN t20.c1 <> t20.c0 THEN t20.c4
         WHEN t20.c0 = t20.c0 THEN t20.c3
         WHEN t20.c0 = t20.c0 THEN t20.c4
         ELSE t20.c3
    END AS c12, t20.c2 AS c13, t20.c3 AS c14, t20.c2 AS c15, t20.c4 AS c16, t20.c0 AS c17, t20.c1 AS c18, t20.c0 AS c19, subq3.c5 AS c20, 37 AS c21, t20.c2 AS c22, subq3.c5 AS c23, t20.c4 AS c24, t20.c4 AS c25, t20.c1 AS c26, subq3.c5 AS c27, t20.c0 AS c28, t20.c2 AS c29, subq3.c5 AS c30
   FROM (SELECT t19.c2 AS c5
       FROM t0 AS t19
       WHERE FALSE IS NULL
       ORDER BY c5 ASC, c5 ASC, c5, c5 DESC
       LIMIT 1954130863615671135 OFFSET 4514467806563076909) as subq3
     INNER JOIN t0 AS t20     
      ON (t20.c2 >= subq3.c5)
   WHERE t20.c3 = t20.c4 OR t20.c4 IS NULL OR coalesce(66,93,90) IS NOT NULL
   ORDER BY c26
   LIMIT 7767692814948757289 OFFSET 1690870882092652075
  ) AND subq1.c9 <> subq1.c10 OR subq1.c9 IS NULL AND subq1.c9 IS NOT NULL THEN 
  CASE subq1.c11 WHEN subq1.c10 = subq1.c11 AND subq1.c10 = subq1.c9 AND subq1.c9 IS NOT NULL THEN CAST(subq1.c9 AS BOOLEAN)
       WHEN subq1.c10 IS NULL AND CAST(subq1.c10 AS TEXT) IS NOT NULL THEN subq1.c9
       WHEN EXISTS (
   SELECT t21.c4 AS c5, t21.c2 AS c6, COALESCE(t21.c4, t21.c4, t21.c0, t21.c0) AS c7, t21.c2 AS c8, TRUE AS c9, t21.c3 AS c10, t21.c2 AS c11, 
     CASE WHEN IFNULL(t21.c1, t21.c1) <> t21.c0 THEN t21.c4
          ELSE t21.c4
     END AS c12, t21.c4 AS c13, t21.c0 AS c14, t21.c1 AS c15, t21.c1 AS c16, t21.c4 AS c17, t21.c0 AS c18, 'text51' AS c19, t21.c2 AS c20, t21.c4 AS c21, t21.c0 AS c22
    FROM t0 AS t21
    WHERE true
    ORDER BY c21, c11
   ) THEN subq1.c11
       WHEN subq1.c11 <> subq1.c10 THEN subq1.c9
       WHEN subq1.c11 IS NULL THEN TRUE
       WHEN EXISTS (
   SELECT t22.c0 AS c5, IFNULL(
      CASE WHEN t22.c4 = t22.c4 THEN t22.c3
           ELSE t22.c4
      END, t22.c3) AS c6, t22.c2 AS c7, t22.c2 AS c8
    FROM t0 AS t22
    WHERE 
     CASE t22.c2 WHEN t22.c2 = t22.c2 THEN t22.c2
          WHEN t22.c0 IS NULL THEN t22.c2
          WHEN EXISTS (
      SELECT t23.c2 AS c5, t24.c2 AS c6, t24.c4 AS c7, t24.c2 AS c8, t23.c0 AS c9, t24.c1 AS c10, t23.c3 AS c11, t23.c0 AS c12, t24.c3 AS c13, 99 AS c14, t23.c1 AS c15, t24.c4 AS c16, t23.c3 AS c17, t23.c0 AS c18, t23.c0 AS c19
       FROM t0 AS t23
         INNER JOIN t0 AS t24         
          ON (t24.c2 <> t24.c2)
       WHERE false
       ORDER BY c10 ASC, c8 ASC, c8 ASC
       LIMIT 5242334270010727584 OFFSET 625989018467266223
      ) THEN t22.c2
          WHEN t22.c3 = t22.c3 THEN t22.c2
          WHEN t22.c4 >= t22.c3 THEN t22.c2
          ELSE t22.c2
     END <> t22.c2
    ORDER BY c8, c7, c7 DESC
   ) OR IFNULL(subq1.c11, subq1.c10) <> subq1.c11 THEN subq1.c9
       WHEN subq1.c10 IS NULL OR subq1.c9 <> subq1.c9 AND EXISTS (
   SELECT t25.c3 AS c5, t25.c1 AS c6, t25.c2 AS c7, t25.c3 AS c8, t25.c4 AS c9, t25.c2 AS c10, t25.c2 AS c11, t25.c1 AS c12, t25.c0 AS c13
    FROM t0 AS t25
    WHERE EXISTS (
     SELECT TRUE AS c5, t26.c1 AS c6
      FROM t0 AS t26
      WHERE t26.c3 < t26.c3
      ORDER BY c5 DESC
      LIMIT 1313345122777741225 OFFSET 3990592907939177569
     ) OR t25.c1 = t25.c1 OR t25.c4 <= hex( 'text7') AND t25.c2 <= t25.c2
    ORDER BY c12 DESC, c10 DESC
   ) OR subq1.c10 = subq1.c9 THEN subq1.c10
       ELSE subq1.c11
  END
      WHEN subq1.c10 <> subq1.c10 AND subq1.c11 <> subq1.c10 THEN subq1.c9
      ELSE TRUE
 END AS c7
FROM (SELECT 
    CASE WHEN subq0.c7 >= subq0.c7 THEN subq0.c5
         ELSE subq0.c5
    END AS c9, subq0.c6 AS c10, 
    CASE WHEN subq0.c5 <> subq0.c6 THEN TRUE
         ELSE subq0.c5
    END AS c11
   FROM (SELECT t1.c1 AS c5, t1.c1 AS c6, t1.c2 AS c7, t1.c4 AS c8
      FROM t0 AS t1
      WHERE t1.c3 >= t1.c4
      ORDER BY c6) as subq0
   WHERE true
   ORDER BY c11, c10
   LIMIT 2902835261836446853 OFFSET 4644386924159621858) as subq1
WHERE subq1.c10 IS NULL
ORDER BY c7 COLLATE RTRIM
LIMIT 829555864867716224 OFFSET 6453672991267790424;
DELETE FROM t0
WHERE t0.c4 >= t0.c3;
SELECT t1.c0 AS c11, t2.c0 AS c12, t2.c0 AS c13, t1.c0 AS c14, t1.c0 AS c15, t1.c0 AS c16, t1.c2 AS c17, 'text21' AS c18, t1.c1 AS c19, t1.c0 AS c20, t2.c0 AS c21, t1.c2 AS c22
FROM t0 AS t1
  INNER JOIN t0 AS t2  
   ON (t2.c2 > t2.c2 OR t1.c4 <= t1.c4 AND EXISTS (
    SELECT t3.c4 AS c5, t3.c0 AS c6, IFNULL(t3.c4, 'text4') AS c7, t3.c3 AS c8, t3.c3 AS c9, t3.c3 AS c10
     FROM t0 AS t3
     WHERE t3.c2 >= t3.c2 AND t3.c2 = t3.c2
     ORDER BY c10 DESC, c10 ASC, c5
    ))
WHERE t1.c0 IS NULL
ORDER BY c16, c19 DESC;
SELECT 
 CASE t4.c2 WHEN t4.c1 <> subq1.c17 THEN t4.c2
      WHEN CAST(subq1.c15 AS TEXT) IS NULL THEN t4.c2
      WHEN substr(43,TRUE) IS NULL THEN t4.c2
      WHEN subq1.c16 <> 
  CASE subq1.c16 WHEN 
   CASE t4.c2 WHEN t4.c0 = subq1.c19 THEN t4.c2
        WHEN subq1.c14 IS NULL THEN t4.c2
        WHEN true THEN t4.c2
        WHEN EXISTS (
    SELECT t5.c4 AS c5, t5.c3 AS c6, t5.c3 AS c7, t5.c3 AS c8, t5.c4 AS c9, 51 AS c10, t5.c3 AS c11, t5.c0 AS c12, t5.c0 AS c13, t5.c2 AS c14
     FROM t0 AS t5
     WHERE t5.c3 >= t5.c4
     ORDER BY c9 ASC, c5 ASC, c13
    ) THEN t4.c2
        WHEN EXISTS (
    SELECT t6.c3 AS c5, t6.c2 AS c6
     FROM t0 AS t6
     WHERE t6.c2 IS NOT NULL
     ORDER BY c6 COLLATE BINARY ASC
     LIMIT 2735420622157738369 
    ) THEN t4.c2
        WHEN true THEN t4.c2
        WHEN subq1.c20 IS NULL THEN t4.c2
        WHEN t4.c4 <= t4.c3 THEN t4.c2
        ELSE 16
   END <> t4.c2 THEN subq1.c21
       WHEN t4.c4 <= t4.c3 THEN subq1.c15
       WHEN EXISTS (
   SELECT t7.c3 AS c5
    FROM t0 AS t7
    WHERE t7.c0 <> t7.c0
    ORDER BY c5, c5 COLLATE NOCASE, c5, c5
    LIMIT 4182391042335674559 
   ) THEN subq1.c21
       WHEN subq1.c20 IS NOT NULL THEN subq1.c17
       WHEN subq1.c16 IS NOT NULL THEN subq1.c18
       ELSE subq1.c16
  END AND COALESCE(t4.c3, trim(TRUE,FALSE), 
   CASE subq1.c15 WHEN t4.c1 = subq1.c15 THEN likely( FALSE)
        WHEN t4.c4 > t4.c3 THEN IFNULL(t4.c0, t4.c4)
        WHEN 
    CASE WHEN EXISTS (
     SELECT t9.c2 AS c5, t9.c2 AS c6, t9.c1 AS c7, t9.c2 AS c8, t8.c0 AS c9, t8.c2 AS c10, t9.c0 AS c11, t8.c1 AS c12, t10.c2 AS c13, 61 AS c14, t9.c3 AS c15, t8.c0 AS c16
      FROM t0 AS t8
         LEFT JOIN t0 AS t9         
          ON (t9.c1 <> t9.c1)
        LEFT JOIN t0 AS t10        
         ON (t9.c3 <= t8.c3)
      WHERE t8.c4 > t8.c3
      ORDER BY c6 COLLATE NOCASE DESC, c12 ASC
     ) AND true THEN t4.c0
         ELSE t4.c3
    END IS NULL THEN subq1.c20
        WHEN subq1.c18 IS NULL THEN subq1.c20
        WHEN subq1.c18 <> subq1.c16 THEN 43
        WHEN t4.c2 > t4.c2 THEN t4.c1
        WHEN t4.c4 <> t4.c3 THEN subq1.c16
        ELSE t4.c0
   END, subq1.c15, subq1.c17, NULLIF(subq1.c16, subq1.c21)) IS NULL THEN t4.c2
      WHEN subq1.c15 <> subq1.c19 THEN t4.c2
      WHEN subq1.c18 <> subq1.c16 THEN t4.c2
      WHEN subq1.c17 IS NOT NULL THEN t4.c2
      WHEN t4.c0 IS NOT NULL OR EXISTS (
  SELECT t11.c2 AS c5, t11.c1 AS c6, t11.c3 AS c7, t11.c0 AS c8
   FROM t0 AS t11
   WHERE t11.c1 <> t11.c0
   ORDER BY c7, c8 ASC, c6 DESC
   LIMIT 8539877096397801533 
  ) THEN t4.c2
      ELSE t4.c2
 END AS c9, COALESCE(subq1.c19, COALESCE(subq1.c19, subq1.c21, substr(NULL,TRUE)), COALESCE(subq1.c19, t4.c4, t4.c3), t4.c3) AS c10, subq1.c19 AS c11
FROM (SELECT subq0.c5 AS c14, subq0.c5 AS c15, 
     CASE subq0.c5 WHEN subq0.c5 = subq0.c5 THEN subq0.c5
          WHEN subq0.c5 <> subq0.c5 THEN subq0.c5
          WHEN subq0.c5 = subq0.c5 THEN subq0.c5
          WHEN subq0.c5 <> subq0.c5 THEN subq0.c5
          WHEN subq0.c5 = subq0.c5 THEN subq0.c5
          WHEN subq0.c5 = subq0.c5 THEN subq0.c5
          WHEN subq0.c5 = subq0.c5 OR FALSE <> subq0.c5 AND subq0.c5 <> subq0.c5 AND subq0.c5 = subq0.c5 THEN subq0.c5
          ELSE subq0.c5
     END AS c16, subq0.c5 AS c17, FALSE AS c18, subq0.c5 AS c19, subq0.c5 AS c20, subq0.c5 AS c21
    FROM (SELECT t1.c0 AS c5
       FROM t0 AS t1
       WHERE EXISTS (
        SELECT t2.c1 AS c5, t2.c2 AS c6, t2.c3 AS c7, t2.c0 AS c8, t2.c1 AS c9, t2.c0 AS c10
         FROM t0 AS t2
         WHERE t2.c3 >= t2.c4
         ORDER BY c5
         LIMIT 7262345704001821708 
        ) OR EXISTS (
        SELECT t3.c0 AS c5, t3.c1 AS c6, t3.c1 AS c7, t3.c0 AS c8, t3.c1 AS c9, t3.c2 AS c10, t3.c4 AS c11, t3.c1 AS c12, t3.c2 AS c13
         FROM t0 AS t3
         WHERE t3.c0 IS NOT NULL
         ORDER BY c9
        )
       ORDER BY c5, c5, c5 ASC, c5 DESC
       LIMIT 8263169489833524398 ) as subq0
    WHERE subq0.c5 = subq0.c5
    ORDER BY c18 ASC, c18, c14 DESC) as subq1
  INNER JOIN t0 AS t4  
   ON (subq1.c16 IS NOT NULL)
WHERE false
ORDER BY c10, c9 DESC
LIMIT 5076146608971041288 OFFSET 3486085492812694244;
SELECT t3.c0 AS c5, subq1.c9 AS c6, t3.c0 AS c7, TRUE AS c8, subq1.c9 AS c9, subq1.c12 AS c10, 
 CASE subq1.c9 WHEN subq1.c8 = subq1.c10 THEN t3.c1
      WHEN false THEN t3.c1
      WHEN t3.c3 > t3.c4 THEN subq1.c8
      WHEN EXISTS (
  SELECT t4.c2 AS c5
   FROM t0 AS t4
   WHERE t4.c3 IS NOT NULL AND t4.c1 <> t4.c1
   ORDER BY c5 ASC, c5, c5 DESC, c5
  ) AND subq1.c9 <> t3.c1 AND t3.c4 <> 'text98' THEN IFNULL(subq1.c9, subq1.c8)
      WHEN t3.c0 = subq1.c9 THEN subq1.c11
      WHEN t3.c2 >= t3.c2 THEN subq1.c12
      WHEN t3.c3 <> t3.c3 AND 'text86' < hex( FALSE) THEN COALESCE(t3.c3, t3.c0)
      ELSE NULLIF(subq1.c9, t3.c0)
 END AS c6
FROM (SELECT 
     CASE subq0.c7 WHEN EXISTS (
      SELECT t2.c4 AS c5, t2.c0 AS c6, FALSE AS c7
       FROM t0 AS t2
       WHERE t2.c2 >= t2.c2
       ORDER BY c6, c6
       LIMIT 1090621521293502929 
      ) THEN subq0.c6
          WHEN subq0.c7 = subq0.c5 THEN subq0.c6
          WHEN FALSE IS NOT NULL THEN subq0.c5
          ELSE subq0.c6
     END AS c8, COALESCE(subq0.c5, subq0.c6, subq0.c5, subq0.c5) AS c9, subq0.c6 AS c10, subq0.c6 AS c11, subq0.c5 AS c12
    FROM (SELECT t1.c0 AS c5, t1.c0 AS c6, t1.c0 AS c7
       FROM t0 AS t1
       WHERE t1.c3 < t1.c4
       ORDER BY c5 COLLATE NOCASE, c5
       LIMIT 8090113779087919463 ) as subq0
    WHERE false
    ORDER BY c11
    LIMIT 2043729455847884581 OFFSET 6746643218285516475) as subq1
  LEFT OUTER JOIN t0 AS t3  
   ON (t3.c3 <= t3.c4)
WHERE COALESCE(subq1.c9, t3.c0) = subq1.c10
ORDER BY c8, c5 COLLATE BINARY ASC
LIMIT 3137844993057698581 OFFSET 8657601115442591420;
SELECT CAST(t1.c1 AS INTEGER) AS c5, t1.c2 AS c6, t1.c4 AS c7, 
 CASE t1.c2 WHEN t1.c1 = t1.c1 AND CAST(
   CASE t1.c2 WHEN t1.c4 > t1.c4 THEN t1.c1
        WHEN true AND t1.c4 <= t1.c3 THEN COALESCE(t1.c2, NULL, 'text84', t1.c1, t1.c3, t1.c3)
        WHEN t1.c0 <> t1.c0 THEN t1.c1
        WHEN t1.c3 > t1.c4 THEN t1.c0
        WHEN t1.c2 < t1.c2 AND t1.c2 IS NULL OR t1.c1 <> CAST(t1.c4 AS TEXT) THEN t1.c1
        ELSE t1.c3
   END AS TEXT) > t1.c3 THEN t1.c2
      WHEN t1.c0 <> 
  CASE WHEN t1.c3 IS NULL THEN 
   CASE WHEN t1.c0 <> t1.c0 THEN t1.c1
        ELSE t1.c0
   END
       ELSE 
   CASE t1.c0 WHEN false AND t1.c2 < 
    CASE WHEN t1.c0 <> t1.c1 THEN t1.c2
         ELSE t1.c2
    END AND t1.c1 = t1.c1 OR 
    CASE WHEN t1.c1 <> t1.c0 THEN t1.c4
         ELSE t1.c3
    END > 
    CASE WHEN t1.c2 < 
     CASE t1.c2 WHEN false THEN t1.c2
          ELSE 11
     END THEN t1.c3
         ELSE 
     CASE t1.c3 WHEN true THEN t1.c4
          WHEN t1.c3 <> t1.c4 THEN t1.c3
          WHEN t1.c0 = t1.c1 THEN t1.c4
          WHEN t1.c4 > t1.c3 THEN t1.c3
          WHEN t1.c0 <> t1.c0 THEN t1.c4
          WHEN EXISTS (
      SELECT t2.c3 AS c5
       FROM t0 AS t2
       WHERE t2.c0 = t2.c1
       ORDER BY c5
       LIMIT 794230721902653730 
      ) THEN t1.c4
          ELSE t1.c4
     END
    END AND true THEN t1.c0
        WHEN t1.c3 <> t1.c3 OR t1.c4 >= t1.c4 OR true AND t1.c1 = CAST(t1.c2 AS INTEGER) OR t1.c2 > t1.c2 THEN TRUE
        WHEN t1.c1 IS NOT NULL THEN t1.c1
        WHEN true THEN t1.c1
        WHEN EXISTS (
    SELECT 
      CASE t3.c3 WHEN t3.c0 <> t3.c0 THEN t3.c3
           WHEN t3.c0 <> t3.c1 THEN t3.c3
           WHEN t3.c4 <> t3.c4 THEN t3.c4
           WHEN t3.c2 IS NOT NULL THEN t3.c3
           WHEN t3.c4 >= t3.c4 THEN t3.c3
           WHEN t3.c3 IS NOT NULL AND t3.c4 = t3.c4 AND t3.c3 = t3.c3 OR t3.c0 = t3.c1 AND t3.c3 IS NULL OR t3.c2 <> t3.c2 OR false OR TRUE = t3.c0 OR t3.c4 >= t3.c3 AND t3.c0 = t3.c1 OR EXISTS (
       SELECT t4.c3 AS c5
        FROM t0 AS t4
        WHERE false
        ORDER BY c5, c5 ASC, c5, c5
       ) AND t3.c0 = t3.c1 THEN t3.c4
           ELSE t3.c3
      END AS c6
     FROM t0 AS t3
     WHERE t3.c3 <= t3.c3
     ORDER BY c6 COLLATE RTRIM ASC, c6, c6, c6
     LIMIT 1230461098439287319 OFFSET 8586536503297962864
    ) OR FALSE <> t1.c1 THEN t1.c0
        WHEN t1.c4 > t1.c4 THEN t1.c0
        ELSE t1.c0
   END
  END THEN t1.c2
      WHEN t1.c1 <> t1.c0 THEN t1.c2
      ELSE t1.c2
 END AS c7, t1.c1 AS c8, substr(15,NULL) AS c9, t1.c1 AS c10
FROM t0 AS t1
WHERE t1.c1 <> t1.c0
ORDER BY c9;
SELECT CAST(subq0.c6 AS TEXT) AS c7, 
 CASE subq0.c5 WHEN subq0.c6 = subq0.c6 THEN subq0.c5
      WHEN subq0.c6 = subq0.c6 THEN subq0.c5
      WHEN subq0.c5 >= subq0.c5 THEN subq0.c5
      WHEN CAST(subq0.c5 AS INTEGER) <= subq0.c5 THEN subq0.c5
      ELSE 12
 END AS c8, subq0.c5 AS c9, subq0.c6 AS c10, CAST(lower( TRUE) AS BOOLEAN) AS c11, subq0.c5 AS c12, subq0.c6 AS c13, subq0.c5 AS c14, subq0.c6 AS c15, COALESCE(99, subq0.c6, abs( NULL), subq0.c5, last_insert_rowid(), 
  CASE WHEN subq0.c6 <> subq0.c6 THEN NULL
       ELSE NULL
  END) AS c16, subq0.c6 AS c17
FROM (SELECT t1.c2 AS c5, t1.c1 AS c6
   FROM t0 AS t1
   WHERE t1.c1 = t1.c1
   ORDER BY c6, c6, c6 ASC, c6 ASC
   LIMIT 6754164548706404828 OFFSET 6839011353366307571) as subq0
WHERE EXISTS (
 SELECT subq1.c6 AS c10, subq1.c7 AS c11, subq1.c5 AS c12, subq1.c9 AS c13, subq1.c9 AS c14, subq1.c8 AS c15
  FROM (SELECT t2.c2 AS c5, t2.c0 AS c6, t2.c4 AS c7, t2.c4 AS c8, t2.c4 AS c9
     FROM t0 AS t2
     WHERE t2.c0 IS NOT NULL
     ORDER BY c8, c8 COLLATE NOCASE ASC
     LIMIT 276186641555892341 OFFSET 4701814940548150004) as subq1
  WHERE subq1.c8 >= subq1.c9
  ORDER BY c12 COLLATE BINARY ASC, c12
  LIMIT 38451933834403085 OFFSET 2197452812277886529
 ) AND subq0.c6 <> 
 CASE WHEN false OR subq0.c5 IS NULL AND 
  CASE subq0.c5 WHEN false OR subq0.c6 <> subq0.c6 THEN subq0.c6
       WHEN subq0.c5 >= subq0.c5 THEN subq0.c5
       ELSE subq0.c5
  END IS NULL OR subq0.c6 = 
  CASE WHEN subq0.c5 < 
   CASE subq0.c5 WHEN subq0.c6 <> subq0.c6 OR subq0.c6 IS NULL OR subq0.c5 = subq0.c5 AND subq0.c5 <= subq0.c5 AND COALESCE(subq0.c5, subq0.c6, subq0.c5, subq0.c5, subq0.c5, subq0.c5) < subq0.c5 OR true THEN subq0.c5
        WHEN subq0.c6 <> subq0.c6 THEN subq0.c5
        WHEN subq0.c6 IS NOT NULL THEN subq0.c5
        WHEN 'text69' IS NOT NULL THEN subq0.c5
        ELSE subq0.c5
   END AND 23 <> subq0.c5 THEN subq0.c6
       ELSE subq0.c6
  END AND subq0.c6 <> subq0.c6 THEN subq0.c6
      ELSE subq0.c6
 END
ORDER BY c12 COLLATE RTRIM
LIMIT 3304748103993063280 ;
SELECT subq0.c8 AS c9, subq0.c6 AS c10, subq0.c8 AS c11, subq0.c7 AS c12, subq0.c6 AS c13
FROM (SELECT t1.c0 AS c5, t1.c0 AS c6, t1.c0 AS c7, t1.c1 AS c8
   FROM t0 AS t1
   WHERE t1.c1 = t1.c1
   ORDER BY c5 COLLATE BINARY ASC, c6, c7 COLLATE NOCASE ASC) as subq0
WHERE subq0.c5 = IFNULL(subq0.c8, subq0.c6)
ORDER BY c9 ASC, c9
LIMIT 2710532800828410193 OFFSET 1409653904574721995;
SELECT CAST(subq0.c8 AS TEXT) AS c10, subq0.c7 AS c11, subq0.c7 AS c12, subq0.c8 AS c13, CAST(
  CASE WHEN subq0.c7 <= subq0.c7 OR 'text84' <= subq0.c9 OR subq0.c6 < subq0.c7 AND subq0.c5 = 
   CASE subq0.c5 WHEN subq0.c7 < subq0.c8 THEN subq0.c5
        WHEN false THEN subq0.c5
        WHEN IFNULL(subq0.c7, subq0.c5) IS NOT NULL AND true AND subq0.c8 IS NOT NULL THEN subq0.c5
        WHEN subq0.c5 <> subq0.c5 THEN subq0.c5
        WHEN subq0.c9 = subq0.c9 THEN subq0.c5
        WHEN subq0.c7 IS NULL THEN subq0.c5
        ELSE subq0.c5
   END OR subq0.c5 <> subq0.c5 THEN subq0.c6
       ELSE subq0.c7
  END AS BOOLEAN) AS c14, subq0.c5 AS c15
FROM (SELECT TRUE AS c5, t1.c2 AS c6, t1.c2 AS c7, t1.c2 AS c8, quote( NULL) AS c9
   FROM t0 AS t1
   WHERE t1.c1 = t1.c0
   ORDER BY c8 COLLATE NOCASE
   LIMIT 2090743834725953725 ) as subq0
WHERE subq0.c8 <> subq0.c6
ORDER BY c15 DESC
LIMIT 471828602573946994 OFFSET 409428886126958221;
WITH cte0 AS (
SELECT t1.c1 AS c5
 FROM t0 AS t1
 WHERE t1.c2 <> t1.c2
 ORDER BY c5, c5 ASC, c5, c5
 LIMIT 3790011255687810270 OFFSET 5932974748774366004
), cte1 AS (
SELECT 
  CASE WHEN subq0.c11 < t4.c2 THEN t5.c0
       ELSE subq0.c15
  END AS c5, subq0.c6 AS c6, NULLIF(subq0.c15, t5.c1) AS c7, subq0.c7 AS c8, 
  CASE WHEN 8 >= t4.c2 THEN NULLIF(t5.c2, 25)
       ELSE subq0.c10
  END AS c9, t5.c2 AS c10
 FROM (SELECT t2.c2 AS c5, TRUE AS c6, t2.c2 AS c7, 
      CASE t2.c2 WHEN t2.c3 <= t2.c4 THEN t2.c2
           WHEN t2.c2 >= t2.c2 THEN t2.c2
           WHEN t2.c2 < t2.c2 THEN 30
           WHEN t2.c2 <> t2.c2 THEN t2.c2
           WHEN EXISTS (
       SELECT t3.c1 AS c5, t3.c2 AS c6, t3.c3 AS c7, t3.c3 AS c8, t3.c4 AS c9
        FROM t0 AS t3
        WHERE false
        ORDER BY c6, c7 ASC, c8
       ) OR false THEN t2.c2
           WHEN t2.c4 IS NOT NULL THEN t2.c2
           WHEN t2.c4 IS NOT NULL THEN t2.c2
           WHEN t2.c2 IS NOT NULL THEN t2.c2
           ELSE t2.c2
      END AS c10, t2.c2 AS c11, t2.c4 AS c12, t2.c3 AS c13, t2.c0 AS c14, t2.c0 AS c15, t2.c3 AS c16
     FROM t0 AS t2
     WHERE t2.c1 IS NULL
     ORDER BY c16 ASC, c10 ASC, c7) as subq0
   INNER JOIN (
   t0 AS t4
    INNER JOIN t0 AS t5    
     ON (t4.c3 <> t4.c4)   )
    ON (subq0.c16 = t5.c3)
 WHERE subq0.c13 < COALESCE(t5.c3, 
   CASE t4.c4 WHEN t5.c3 = t4.c3 AND t5.c1 <> t4.c0 OR subq0.c16 < rtrim(FALSE,FALSE) OR subq0.c7 >= t4.c2 AND subq0.c14 <> FALSE AND t5.c1 = t4.c1 AND subq0.c10 >= subq0.c10 AND t4.c4 <> t5.c4 THEN t5.c3
        WHEN t5.c3 IS NULL AND t4.c0 IS NULL AND true THEN subq0.c13
        WHEN t4.c4 <> t5.c4 THEN t4.c4
        WHEN t5.c0 = subq0.c6 AND t4.c3 >= subq0.c12 THEN subq0.c12
        WHEN t4.c4 <> subq0.c16 THEN subq0.c12
        WHEN subq0.c14 = t5.c0 THEN t4.c3
        WHEN 
    CASE WHEN t4.c4 < subq0.c16 OR t5.c0 <> subq0.c14 AND CAST(subq0.c14 AS INTEGER) <> 
     CASE subq0.c15 WHEN t5.c2 IS NOT NULL THEN 
      CASE WHEN subq0.c12 <= t4.c3 THEN subq0.c14
           ELSE subq0.c14
      END
          WHEN subq0.c15 = t4.c0 THEN subq0.c15
          WHEN true THEN t4.c1
          ELSE t5.c0
     END OR 
     CASE WHEN subq0.c7 <= subq0.c7 THEN 58
          ELSE subq0.c11
     END < subq0.c10 THEN subq0.c15
         ELSE subq0.c15
    END <> t4.c0 THEN IFNULL(t5.c3, t4.c3)
        WHEN subq0.c14 <> t4.c0 THEN t5.c3
        WHEN t4.c2 IS NOT NULL AND t4.c4 = subq0.c16 OR t4.c4 <= t4.c3 THEN t4.c4
        WHEN false AND 
    CASE t5.c1 WHEN t5.c0 = subq0.c6 THEN t4.c0
         WHEN t5.c2 IS NULL THEN subq0.c6
         WHEN t5.c1 <> t5.c0 THEN subq0.c6
         WHEN t4.c3 IS NOT NULL THEN t4.c0
         WHEN instr(NULL,7) <> subq0.c7 OR true THEN t4.c0
         WHEN t4.c4 <= subq0.c13 AND false THEN t4.c0
         WHEN subq0.c11 > subq0.c5 OR t5.c1 IS NULL THEN t5.c1
         WHEN true THEN subq0.c14
         WHEN t4.c2 <> t5.c2 THEN t5.c1
         ELSE subq0.c14
    END = t5.c1 AND t5.c1 = t4.c0 OR 
    CASE WHEN EXISTS (
     SELECT t6.c0 AS c5, t6.c1 AS c6
      FROM t0 AS t6
      WHERE t6.c4 >= t6.c4 AND false
      ORDER BY c5, c5 COLLATE BINARY
     ) THEN subq0.c11
         ELSE t4.c2
    END IS NULL OR subq0.c16 IS NOT NULL THEN t5.c4
        ELSE t5.c3
   END, typeof( 92), t5.c2, subq0.c5, 
   CASE WHEN t4.c2 <> CAST(
     CASE t4.c2 WHEN t4.c0 IS NULL OR subq0.c13 > t4.c4 THEN t5.c1
          WHEN t4.c2 IS NOT NULL THEN subq0.c15
          WHEN EXISTS (
      SELECT t7.c4 AS c5, t7.c4 AS c6, t7.c1 AS c7, t7.c0 AS c8, t7.c3 AS c9, t7.c0 AS c10, t7.c3 AS c11, t7.c1 AS c12, t7.c1 AS c13, t7.c1 AS c14
       FROM t0 AS t7
       WHERE t7.c4 IS NULL AND t7.c0 = t7.c0
       ORDER BY c10
       LIMIT 1428521094520620705 
      ) THEN t4.c2
          WHEN subq0.c16 <> subq0.c13 THEN subq0.c16
          WHEN false THEN t5.c2
          WHEN subq0.c11 < t4.c2 THEN subq0.c6
          WHEN subq0.c10 <= t4.c2 THEN t4.c2
          WHEN t5.c1 = t5.c1 THEN subq0.c15
          WHEN t5.c3 < t4.c3 THEN subq0.c16
          WHEN t4.c3 >= subq0.c13 OR subq0.c15 <> subq0.c15 AND t4.c4 <= 'text41' OR t5.c4 IS NULL THEN t4.c3
          WHEN t5.c1 IS NOT NULL THEN 
      CASE WHEN subq0.c11 >= subq0.c5 THEN subq0.c13
           ELSE NULL
      END
          WHEN false THEN t4.c1
          ELSE t4.c2
     END AS BOOLEAN) THEN COALESCE(t4.c4, t5.c1, subq0.c10, t5.c4)
        ELSE 
    CASE WHEN t4.c3 IS NOT NULL THEN NULL
         ELSE NULL
    END
   END) AND CAST(subq0.c10 AS INTEGER) < subq0.c16
 ORDER BY c8, c7, c8
)SELECT t8.c4 AS c5, t8.c4 AS c6, t8.c4 AS c7
 FROM t0 AS t8
 WHERE t8.c3 IS NULL AND t8.c4 > t8.c3
 ORDER BY c6 DESC
 LIMIT 4316124246654101140 ;
SELECT t1.c1 AS c5, TRUE AS c6, t1.c1 AS c7, t1.c4 AS c8, t2.c2 AS c9, t1.c3 AS c10
FROM t0 AS t1
   LEFT JOIN t0 AS t2   
    ON (EXISTS (
     SELECT t3.c3 AS c5, t3.c3 AS c6, t3.c2 AS c7, t3.c3 AS c8, t3.c1 AS c9
      FROM t0 AS t3
      WHERE EXISTS (
       SELECT ALL t4.c0 AS c5, t4.c2 AS c6, t4.c1 AS c7, t4.c0 AS c8, t4.c2 AS c9, t4.c4 AS c10, t4.c2 AS c11, t4.c1 AS c12
        FROM t0 AS t4
        WHERE t4.c1 <> t4.c1
        ORDER BY c7 DESC, c12, c9
        LIMIT 7048425694182846976 OFFSET 457781720831855735
       )
      ORDER BY c7
      LIMIT 97340848285977460 
     ))
  LEFT OUTER JOIN t0 AS t5  
   ON (t2.c1 = t1.c1 AND t2.c3 IS NOT NULL AND t5.c2 < t5.c2)
WHERE 
 CASE WHEN t1.c1 <> t2.c0 THEN 
  CASE WHEN EXISTS (
   SELECT t6.c1 AS c5
    FROM t0 AS t6
    WHERE EXISTS (
     SELECT t7.c0 AS c5, t7.c1 AS c6, t7.c2 AS c7, t7.c4 AS c8, t7.c1 AS c9, t7.c4 AS c10, t7.c3 AS c11, t7.c3 AS c12, t7.c4 AS c13
      FROM t0 AS t7
      WHERE t7.c0 = t7.c1 AND t7.c3 IS NOT NULL
      ORDER BY c8, c9, c5
      LIMIT 4517867186070399075 OFFSET 3880879157583702952
     )
    ORDER BY c5, c5, c5 ASC, c5
    LIMIT 5532740837721511925 
   ) THEN t5.c0
       ELSE t2.c1
  END
      ELSE t1.c0
 END = t1.c0
ORDER BY c10 ASC, c5
LIMIT 5807633437121188390 OFFSET 8998816603382051290;
DELETE FROM t0
WHERE EXISTS (
 SELECT quote( 'text51') AS c7
  FROM (SELECT t1.c3 AS c5, 'text39' AS c6
     FROM t0 AS t1
     WHERE t1.c2 IS NOT NULL
     ORDER BY c6, c5, c5, c6) as subq0
  WHERE subq0.c5 <= subq0.c6
  ORDER BY c7, c7 ASC, c7 COLLATE BINARY, c7 COLLATE NOCASE
  LIMIT 7112683413065807209 
 ) OR t0.c0 = t0.c0;
SELECT CAST(lower( NULL) AS INTEGER) AS c7
FROM (SELECT t1.c0 AS c5, t1.c1 AS c6
   FROM t0 AS t1
   WHERE t1.c4 = t1.c4
   ORDER BY c6, c6 DESC
   LIMIT 2227732767090729960 OFFSET 575055864228350083) as subq0
WHERE subq0.c6 = subq0.c6
ORDER BY c7 ASC, c7 DESC, c7, c7
LIMIT 4164321484508779978 OFFSET 6974549946418558141;
SELECT subq1.c10 AS c6, subq1.c11 AS c7
FROM (SELECT 
    CASE WHEN t3.c0 = t1.c1 THEN subq0.c8
         ELSE subq0.c5
    END AS c9, t2.c4 AS c10, t2.c2 AS c11, t2.c2 AS c12
   FROM t0 AS t1
      LEFT JOIN (
      t0 AS t2
       LEFT JOIN t0 AS t3       
        ON (t2.c2 > t3.c2)      )
       ON (t3.c4 >= t2.c4 OR t3.c4 <> t2.c4 OR t3.c2 >= t2.c2 AND true AND t1.c0 <> t1.c1 AND false OR t1.c0 IS NULL)
     LEFT JOIN (SELECT t4.c0 AS c5, t4.c0 AS c6, t4.c3 AS c7, t4.c0 AS c8
       FROM t0 AS t4
       WHERE t4.c4 <> t4.c3 AND t4.c4 <= t4.c4
       ORDER BY c6 DESC, c7 COLLATE NOCASE) as subq0     
      ON (EXISTS (
       SELECT t5.c2 AS c5, 40 AS c6, t5.c2 AS c7, t5.c4 AS c8
        FROM t0 AS t5
        WHERE t5.c1 = FALSE
        ORDER BY c5 COLLATE NOCASE
       ))
   WHERE 
    CASE subq0.c6 WHEN t1.c1 = t2.c1 THEN subq0.c6
         WHEN EXISTS (
     SELECT t6.c0 AS c5, t6.c4 AS c6, t6.c2 AS c7, t6.c2 AS c8, t6.c1 AS c9, t6.c4 AS c10
      FROM t0 AS t6
      WHERE t6.c2 <> t6.c2
      ORDER BY c7, c8 ASC, c6 DESC
      LIMIT 3041061174696440709 OFFSET 3992156216925335185
     ) THEN t3.c1
         WHEN subq0.c5 <> t1.c1 THEN 
     CASE t1.c1 WHEN t2.c3 >= t2.c4 THEN subq0.c5
          WHEN t1.c0 <> t2.c1 THEN subq0.c6
          WHEN t2.c3 IS NULL OR t2.c2 < t2.c2 AND t3.c3 <= t3.c3 THEN subq0.c6
          WHEN t1.c1 <> t3.c1 AND t1.c0 IS NULL THEN t3.c1
          WHEN false THEN subq0.c8
          WHEN true THEN t2.c1
          WHEN t3.c0 <> t2.c1 AND t3.c0 IS NULL AND 
      CASE t1.c0 WHEN true THEN t1.c0
           WHEN true THEN subq0.c7
           WHEN subq0.c5 = subq0.c8 THEN t1.c0
           ELSE t2.c0
      END IS NULL THEN t3.c0
          WHEN t3.c0 = subq0.c5 THEN t3.c1
          WHEN subq0.c7 > t1.c4 AND t1.c2 IS NOT NULL AND true AND true OR false AND t3.c2 = t3.c2 THEN t3.c0
          WHEN t1.c2 <> t3.c2 THEN t3.c1
          WHEN t2.c2 <> t2.c2 THEN t3.c0
          ELSE t3.c0
     END
         WHEN EXISTS (
     SELECT ALL t7.c1 AS c5, t7.c0 AS c6, t7.c2 AS c7, t7.c3 AS c8, t7.c4 AS c9, t7.c2 AS c10
      FROM t0 AS t7
      WHERE t7.c2 <> t7.c2
      ORDER BY c8, c9
     ) THEN t2.c0
         WHEN subq0.c5 <> t3.c1 THEN subq0.c8
         WHEN t2.c0 = t2.c0 OR t2.c1 <> t1.c0 AND subq0.c5 <> subq0.c5 THEN subq0.c6
         WHEN COALESCE(subq0.c8, 43, t1.c2, t1.c0) = subq0.c6 THEN 
     CASE subq0.c8 WHEN t1.c3 > t3.c3 THEN t3.c1
          WHEN t3.c3 > 'text31' THEN subq0.c8
          WHEN true THEN t2.c0
          WHEN t1.c3 IS NOT NULL THEN subq0.c5
          WHEN true THEN subq0.c5
          WHEN subq0.c8 <> subq0.c6 OR t2.c3 = trim(NULL,TRUE) THEN t3.c0
          WHEN t1.c2 <= 82 THEN t1.c1
          WHEN true THEN t1.c1
          WHEN t1.c2 = t1.c2 THEN t2.c1
          WHEN t1.c3 IS NOT NULL THEN t1.c0
          ELSE t2.c0
     END
         WHEN subq0.c5 <> subq0.c5 THEN t3.c0
         WHEN t1.c3 IS NOT NULL OR t2.c4 = 'text43' THEN t1.c0
         WHEN false THEN t2.c0
         WHEN EXISTS (
     SELECT DISTINCT t8.c1 AS c5
      FROM t0 AS t8
      WHERE t8.c4 IS NULL
      ORDER BY c5, c5 COLLATE BINARY, c5 DESC, c5
     ) OR 
     CASE t3.c0 WHEN t1.c2 > 14 AND t2.c4 >= t1.c4 AND t3.c1 <> t2.c0 AND t1.c4 IS NOT NULL OR t3.c1 <> t3.c0 THEN t1.c0
          WHEN EXISTS (
      SELECT t9.c2 AS c5, t9.c4 AS c6, t9.c4 AS c7, t9.c0 AS c8, t9.c2 AS c9, t9.c2 AS c10, t9.c3 AS c11
       FROM t0 AS t9
       WHERE EXISTS (
        SELECT t10.c3 AS c5, t10.c1 AS c6, t10.c1 AS c7, t10.c2 AS c8, t10.c1 AS c9
         FROM t0 AS t10
         WHERE false AND t10.c1 = t10.c0 AND t10.c0 IS NULL
         ORDER BY c6 COLLATE BINARY ASC
        )
       ORDER BY c11, c5 ASC
       LIMIT 147521786855495516 OFFSET 7429086997343332547
      ) THEN FALSE
          WHEN subq0.c8 = subq0.c5 AND 
      CASE WHEN t3.c1 = t2.c0 THEN subq0.c8
           ELSE subq0.c5
      END IS NOT NULL AND t2.c4 = t3.c4 AND EXISTS (
      SELECT t11.c4 AS c5
       FROM t0 AS t11
       WHERE t11.c1 = t11.c1
       ORDER BY c5
      ) THEN t3.c1
          ELSE subq0.c8
     END = t3.c0 OR t3.c2 IS NULL THEN t1.c0
         WHEN t1.c2 < t2.c2 THEN 
     CASE subq0.c6 WHEN t3.c1 = subq0.c8 THEN t1.c1
          ELSE subq0.c6
     END
         ELSE t3.c1
    END = t2.c1
   ORDER BY c9, c11, c9 COLLATE RTRIM DESC
   LIMIT 1946582347719105861 ) as subq1
WHERE TRUE IS NOT NULL OR subq1.c10 <> subq1.c10
ORDER BY c7 COLLATE NOCASE ASC, c7
LIMIT 7435951095309237612 ;
SELECT subq0.c9 AS c6, subq0.c8 AS c7, subq0.c11 AS c8, 62 AS c9, subq0.c12 AS c10, subq0.c7 AS c11
FROM (SELECT t2.c2 AS c5, t2.c4 AS c6, t2.c2 AS c7, t1.c2 AS c8, t2.c3 AS c9, COALESCE(t1.c2, t2.c1) AS c10, t2.c2 AS c11, t2.c3 AS c12
    FROM t0 AS t1
      LEFT JOIN t0 AS t2      
       ON (TRUE = TRUE)
    WHERE t1.c0 = t2.c0
    ORDER BY c12
    LIMIT 2075172969198975793 OFFSET 761878778578385925) as subq0
  LEFT JOIN (SELECT t3.c3 AS c5
    FROM t0 AS t3
    WHERE false OR t3.c3 IS NULL
    ORDER BY c5 ASC, c5, c5, c5 ASC
    LIMIT 4626675112618616553 OFFSET 6490227576189908727) as subq1  
   ON (subq0.c9 <> 'text38')
WHERE true AND subq0.c10 = subq0.c10 OR subq0.c9 >= subq1.c5 AND subq0.c5 <= subq0.c8 OR nullif('text94','text75') = 'text88' AND subq0.c11 <> subq0.c7 OR false AND subq0.c9 <> subq0.c6 AND subq0.c8 <= subq0.c8 AND subq0.c12 <> rtrim( NULL) AND subq0.c5 <> subq0.c11 OR subq0.c9 <= subq1.c5 AND COALESCE(subq0.c12, subq0.c12, subq0.c6) <= subq0.c9
ORDER BY c7, c6, c10 ASC
LIMIT 6760070715367907530 OFFSET 8217980331912323102;
SELECT t3.c4 AS c5, t3.c3 AS c6, t2.c1 AS c7, t3.c2 AS c8
FROM (SELECT t1.c2 AS c5
     FROM t0 AS t1
     WHERE t1.c3 <> t1.c4
     ORDER BY c5
     LIMIT 6629133661092554895 OFFSET 3079795329042213727) as subq0
   LEFT JOIN t0 AS t2   
    ON (t2.c0 = t2.c0)
  LEFT JOIN t0 AS t3  
   ON (t3.c3 >= t3.c4)
WHERE t2.c4 <> t2.c3 AND true OR CAST(t2.c0 AS INTEGER) IS NOT NULL
ORDER BY c6, c8 COLLATE NOCASE
LIMIT 6597878581015297058 ;
SELECT subq1.c22 AS c24, subq0.c13 AS c25, TRUE AS c26, subq0.c9 AS c27, subq0.c11 AS c28
FROM (SELECT t3.c3 AS c5, t1.c1 AS c6, t3.c2 AS c7, t3.c0 AS c8, t3.c3 AS c9, t2.c1 AS c10, 'text71' AS c11, t2.c0 AS c12, t2.c2 AS c13, t3.c2 AS c14, t3.c3 AS c15, t3.c0 AS c16, t3.c1 AS c17
    FROM t0 AS t1
       CROSS JOIN t0 AS t2       
        ON (t1.c0 = t2.c0)
      LEFT JOIN t0 AS t3      
       ON (true OR t3.c0 <> FALSE)
    WHERE t2.c4 = t3.c4
    ORDER BY c11, c9 COLLATE NOCASE DESC
    LIMIT 1697502363803212240 OFFSET 4067346641764579464) as subq0
  LEFT JOIN (SELECT t5.c1 AS c5, t5.c3 AS c6, 
     CASE t4.c2 WHEN t4.c3 IS NULL THEN t5.c2
          WHEN t5.c0 IS NOT NULL THEN t5.c2
          WHEN t4.c2 <= t5.c2 OR t5.c4 IS NOT NULL THEN t4.c2
          WHEN t5.c4 IS NOT NULL OR t5.c0 = t4.c0 THEN t5.c2
          WHEN t5.c2 = t4.c2 THEN t5.c2
          ELSE t4.c2
     END AS c7, t4.c2 AS c8, t4.c0 AS c9, t5.c1 AS c10, t4.c0 AS c11, t4.c4 AS c12, t4.c3 AS c13, t4.c1 AS c14, t5.c0 AS c15, t4.c3 AS c16, t5.c4 AS c17, t4.c1 AS c18, t4.c1 AS c19, t4.c0 AS c20, t4.c1 AS c21, t4.c1 AS c22, t5.c4 AS c23
    FROM t0 AS t4
      LEFT JOIN t0 AS t5      
       ON (t4.c1 <> t5.c0)
    WHERE COALESCE(t4.c0, min(NULL,NULL,92), t5.c0, t5.c4, t4.c0) IS NOT NULL
    ORDER BY c15, c6 ASC, c14 ASC
    LIMIT 548679856788735105 ) as subq1  
   ON (subq0.c13 = subq1.c7)
WHERE subq1.c13 <> substr(NULL,'text52',NULL)
ORDER BY c26 COLLATE BINARY
LIMIT 3183790333712701251 OFFSET 7888121754905640805;
SELECT COALESCE(subq1.c17, subq1.c17, CAST(subq1.c18 AS TEXT), subq1.c18, subq1.c17, subq1.c17) AS c17, subq1.c17 AS c18, subq1.c18 AS c19
FROM (SELECT ALL 
    CASE WHEN 
     CASE WHEN EXISTS (
      SELECT t6.c4 AS c5, t6.c3 AS c6, t7.c0 AS c7, t7.c0 AS c8, t6.c1 AS c9, t7.c0 AS c10, t6.c4 AS c11, t7.c3 AS c12, t6.c4 AS c13, t7.c2 AS c14, t7.c4 AS c15, 'text32' AS c16
       FROM t0 AS t6
         INNER JOIN t0 AS t7         
          ON (t6.c4 >= t6.c3)
       WHERE t6.c4 > t6.c4
       ORDER BY c5
       LIMIT 5648069009789878509 OFFSET 2176475757784826403
      ) THEN t2.c3
          ELSE subq0.c12
     END <> t4.c3 THEN t3.c1
         ELSE t4.c0
    END AS c17, t1.c2 AS c18
   FROM t0 AS t1
       INNER JOIN (
       t0 AS t2
        LEFT JOIN t0 AS t3        
         ON (t2.c3 > t3.c3)       )
        ON (t1.c2 = t3.c2)
      LEFT JOIN t0 AS t4      
       ON (t2.c4 < t1.c3)
     INNER JOIN (SELECT t5.c3 AS c5, t5.c4 AS c6, t5.c0 AS c7, t5.c1 AS c8, t5.c0 AS c9, t5.c0 AS c10, t5.c0 AS c11, 'text18' AS c12, t5.c0 AS c13, t5.c1 AS c14, t5.c3 AS c15, t5.c4 AS c16, t5.c3 AS c17, TRUE AS c18, t5.c2 AS c19, t5.c4 AS c20, t5.c0 AS c21, t5.c4 AS c22, t5.c0 AS c23, t5.c3 AS c24, t5.c4 AS c25, t5.c3 AS c26, t5.c1 AS c27, t5.c4 AS c28, t5.c4 AS c29, t5.c2 AS c30, t5.c1 AS c31
       FROM t0 AS t5
       WHERE t5.c4 < t5.c4
       ORDER BY c29 COLLATE RTRIM DESC, c16
       LIMIT 7388580477254343163 ) as subq0     
      ON (subq0.c26 <= subq0.c6)
   WHERE EXISTS (
    SELECT NULLIF(t8.c4, t8.c3) AS c5, t8.c3 AS c6, t8.c0 AS c7, t8.c2 AS c8, t8.c3 AS c9, t8.c3 AS c10, t8.c0 AS c11, t8.c3 AS c12, t8.c2 AS c13, t8.c3 AS c14, t8.c1 AS c15, t8.c4 AS c16
     FROM t0 AS t8
     WHERE t8.c2 <> t8.c2
     ORDER BY c10 ASC
     LIMIT 2847399804083054570 OFFSET 5157546006864751789
    )
   ORDER BY c18, c18 COLLATE NOCASE ASC, c17 ASC, c18) as subq1
WHERE subq1.c17 <> subq1.c17 AND 44 >= subq1.c18
ORDER BY c18, c19;
SELECT t5.c4 AS c8, t4.c3 AS c9, t1.c0 AS c10, t9.c1 AS c11, t7.c4 AS c12
FROM t0 AS t1
    INNER JOIN (
    t0 AS t2
      INNER JOIN t0 AS t3      
       ON (t3.c0 = t3.c1)
     INNER JOIN t0 AS t4     
      ON (t2.c2 = t4.c2)    )
     ON (t3.c0 = TRUE)
   INNER JOIN t0 AS t5   
    ON (t4.c2 IS NOT NULL)
  LEFT JOIN (
  t0 AS t6
     LEFT JOIN t0 AS t7     
      ON (t6.c0 = t7.c0)
    INNER JOIN t0 AS t8    
     ON (t6.c4 > t8.c4 AND t7.c0 <> t7.c1)
   INNER JOIN (
   t0 AS t9
    LEFT JOIN (SELECT t10.c0 AS c5, t10.c0 AS c6, t10.c0 AS c7, t10.c0 AS c8, t10.c3 AS c9, t10.c0 AS c10, t10.c0 AS c11, t10.c3 AS c12, t10.c0 AS c13, t10.c3 AS c14
      FROM t0 AS t10
      WHERE EXISTS (
       SELECT t11.c4 AS c5, t11.c1 AS c6, t11.c4 AS c7, t11.c2 AS c8
        FROM t0 AS t11
        WHERE EXISTS (
         SELECT t12.c4 AS c5, t12.c0 AS c6, t12.c1 AS c7
          FROM t0 AS t12
          WHERE t12.c3 = t12.c4
          ORDER BY c7 COLLATE BINARY
          LIMIT 5759844485189133300 
         )
        ORDER BY c6 DESC, c5 ASC, c5 ASC
        LIMIT 8195667784724015315 OFFSET 1965771051302459385
       ) OR t10.c0 = t10.c1
      ORDER BY c8, c9 ASC, c5 ASC
      LIMIT 302790615023351098 OFFSET 8082718954741890298) as subq0    
     ON (true)   )
    ON (subq0.c12 > coalesce(TRUE,TRUE,TRUE))  )
   ON (t7.c3 > subq0.c9 OR t4.c3 = t5.c3 OR t3.c4 IS NOT NULL)
WHERE min(NULL,55,NULL) IS NULL
ORDER BY c10, c10 ASC
LIMIT 7070122428853716731 OFFSET 2437457881983021327;
SELECT IFNULL(subq1.c5, substr('text4','text10',19)) AS c8, subq1.c5 AS c9, subq0.c5 AS c10, subq1.c6 AS c11
FROM (SELECT t1.c4 AS c5
    FROM t0 AS t1
    WHERE t1.c3 <= t1.c4
    ORDER BY c5 COLLATE NOCASE) as subq0
  INNER JOIN (SELECT t6.c4 AS c5, t6.c3 AS c6, t3.c4 AS c7
    FROM t0 AS t2
      LEFT JOIN (
      t0 AS t3
         CROSS JOIN t0 AS t4         
          ON (t4.c2 = t3.c2)
        LEFT JOIN t0 AS t5        
         ON (t4.c3 <> t5.c3)
       LEFT JOIN (
       t0 AS t6
        LEFT JOIN t0 AS t7        
         ON (t6.c4 = t7.c3)       )
        ON (t6.c1 = t4.c0 OR t7.c1 <> t7.c1)      )
       ON (t7.c4 IS NOT NULL)
    WHERE t5.c0 = t3.c0
    ORDER BY c7 DESC, c5
    LIMIT 5955223674208380172 OFFSET 938741710275983116) as subq1  
   ON (ifnull(NULL,'text59') <= subq1.c7)
WHERE EXISTS (
 SELECT subq2.c6 AS c9, subq2.c5 AS c10
  FROM (SELECT t9.c2 AS c5, t8.c2 AS c6, t8.c0 AS c7, t9.c2 AS c8
     FROM t0 AS t8
       LEFT JOIN t0 AS t9       
        ON (t9.c3 = t8.c4)
     WHERE t8.c4 = t9.c3
     ORDER BY c7 COLLATE RTRIM, c6 COLLATE BINARY) as subq2
  WHERE subq2.c7 IS NOT NULL OR subq2.c5 IS NULL
  ORDER BY c9 DESC, c9, c9 COLLATE RTRIM, c9
  LIMIT 7982983453393004667 OFFSET 7478388204749869955
 )
ORDER BY c9, c10 ASC
LIMIT 2578645771051587728 ;
SELECT t1.c4 AS c5
FROM t0 AS t1
WHERE t1.c3 IS NOT NULL AND false AND t1.c3 < t1.c4
ORDER BY c5, c5 ASC, c5, c5
LIMIT 2773539842079562780 OFFSET 1741306179029789073;
SELECT t1.c4 AS c5, t1.c2 AS c6, 
 CASE WHEN t1.c3 <= t1.c3 THEN nullif(TRUE,'text67')
      ELSE t1.c4
 END AS c7, 
 CASE t1.c4 WHEN TRUE = t1.c0 THEN t1.c4
      WHEN t1.c0 = t1.c1 THEN t1.c3
      WHEN EXISTS (
  SELECT subq0.c8 AS c15, subq0.c8 AS c16
   FROM (SELECT t2.c0 AS c5, t2.c1 AS c6, t2.c2 AS c7, t2.c3 AS c8, t2.c3 AS c9, t2.c2 AS c10, t2.c2 AS c11, t2.c2 AS c12, t2.c3 AS c13, t2.c2 AS c14
      FROM t0 AS t2
      WHERE t2.c1 = t2.c1 OR true AND t2.c1 IS NULL AND false AND false
      ORDER BY c6 COLLATE NOCASE
      LIMIT 1819810148569815768 ) as subq0
   WHERE subq0.c14 < subq0.c10
   ORDER BY c16 DESC
   LIMIT 7224058792705052910 OFFSET 2088133846972346489
  ) AND t1.c1 <> COALESCE(t1.c0, t1.c1) THEN t1.c3
      WHEN t1.c1 IS NOT NULL THEN t1.c3
      WHEN t1.c3 <= t1.c3 THEN t1.c3
      WHEN glob(36,TRUE) <= t1.c2 THEN t1.c4
      WHEN t1.c4 IS NOT NULL OR ltrim( NULL) >= t1.c3 THEN t1.c4
      ELSE t1.c3
 END AS c17, t1.c1 AS c18, t1.c0 AS c19, 
 CASE WHEN false THEN CAST(t1.c1 AS TEXT)
      ELSE t1.c2
 END AS c20, FALSE AS c21, t1.c0 AS c22, t1.c0 AS c23, CAST(t1.c1 AS INTEGER) AS c24, 
 CASE t1.c1 WHEN t1.c1 = t1.c1 THEN t1.c1
      WHEN t1.c3 >= t1.c4 THEN t1.c0
      WHEN true OR t1.c0 <> NULLIF(t1.c0, 
   CASE t1.c0 WHEN t1.c2 <> t1.c2 THEN 
    CASE t1.c1 WHEN EXISTS (
     SELECT t3.c2 AS c5
      FROM t0 AS t3
      WHERE t3.c3 IS NULL
      ORDER BY c5, c5, c5 DESC, c5 COLLATE NOCASE
      LIMIT 743917983688322146 OFFSET 8703194295663053977
     ) THEN t1.c0
         WHEN EXISTS (
     SELECT t4.c0 AS c17, t5.c0 AS c18, t4.c3 AS c19, t4.c0 AS c20, t4.c0 AS c21, t4.c2 AS c22, t5.c1 AS c23
      FROM t0 AS t4
        LEFT JOIN t0 AS t5        
         ON (EXISTS (
          SELECT t6.c1 AS c5, t6.c4 AS c6, t6.c0 AS c7, t6.c3 AS c8, t6.c0 AS c9, t6.c4 AS c10, t6.c3 AS c11, t6.c2 AS c12, t6.c1 AS c13, t6.c2 AS c14, t6.c2 AS c15, t6.c1 AS c16
           FROM t0 AS t6
           WHERE t6.c2 <= t6.c2
           ORDER BY c14, c7 ASC, c14
           LIMIT 8850960109301832071 OFFSET 4373170420789143552
          ) OR t5.c3 >= t5.c3)
      WHERE t4.c1 = t4.c0
      ORDER BY c20
     ) THEN t1.c1
         WHEN t1.c1 <> t1.c1 AND t1.c2 IS NULL THEN t1.c0
         WHEN true THEN FALSE
         WHEN substr('text6','text80',NULL) IS NOT NULL THEN t1.c0
         WHEN t1.c3 <= 
     CASE t1.c4 WHEN t1.c1 <> t1.c0 THEN t1.c4
          ELSE t1.c3
     END THEN t1.c1
         WHEN t1.c2 <= 30 THEN t1.c1
         WHEN t1.c3 IS NULL THEN t1.c1
         WHEN t1.c4 >= t1.c4 THEN COALESCE(t1.c2, t1.c1, t1.c0, t1.c0)
         WHEN t1.c2 >= t1.c2 OR 
     CASE WHEN t1.c0 = t1.c1 THEN t1.c2
          ELSE t1.c2
     END <= t1.c2 THEN t1.c0
         WHEN t1.c1 <> t1.c1 THEN t1.c0
         ELSE t1.c1
    END
        WHEN t1.c2 < t1.c2 AND CAST(t1.c1 AS INTEGER) > t1.c4 THEN t1.c0
        WHEN t1.c3 >= t1.c3 THEN COALESCE(t1.c1, t1.c0)
        WHEN 'text27' <= 'text80' THEN t1.c1
        WHEN t1.c1 = t1.c1 THEN t1.c1
        WHEN t1.c4 > ltrim( FALSE) THEN TRUE
        WHEN t1.c3 <> 
    CASE WHEN t1.c1 <> t1.c0 THEN t1.c4
         ELSE t1.c3
    END THEN t1.c0
        WHEN t1.c1 = t1.c0 THEN t1.c1
        ELSE t1.c0
   END) THEN t1.c1
      WHEN rtrim(92,'text13') <> t1.c3 THEN t1.c0
      WHEN false THEN t1.c0
      WHEN EXISTS (
  SELECT subq1.c10 AS c23, subq1.c7 AS c24, subq1.c18 AS c25, subq1.c16 AS c26, subq1.c18 AS c27, subq1.c22 AS c28, subq1.c7 AS c29, subq1.c12 AS c30, 
    CASE WHEN subq1.c12 IS NULL THEN subq1.c22
         ELSE subq1.c7
    END AS c31, subq1.c15 AS c32, subq1.c9 AS c33, subq1.c11 AS c34, subq1.c12 AS c35, subq1.c16 AS c36, subq1.c10 AS c37, subq1.c15 AS c38, subq1.c18 AS c39, IFNULL(subq1.c5, subq1.c7) AS c40, subq1.c7 AS c41, subq1.c22 AS c42
   FROM (SELECT t9.c1 AS c5, t7.c2 AS c6, t8.c0 AS c7, t8.c4 AS c8, t7.c4 AS c9, t8.c4 AS c10, t7.c1 AS c11, t8.c0 AS c12, t7.c2 AS c13, t9.c3 AS c14, t7.c4 AS c15, t8.c3 AS c16, 14 AS c17, t9.c2 AS c18, t9.c3 AS c19, t8.c1 AS c20, t7.c3 AS c21, t7.c0 AS c22
      FROM t0 AS t7
        INNER JOIN (
        t0 AS t8
         LEFT JOIN t0 AS t9         
          ON ('text65' IS NOT NULL)        )
         ON (t8.c0 <> t9.c0)
      WHERE t8.c2 IS NOT NULL
      ORDER BY c18
      LIMIT 5245242320207037370 ) as subq1
   WHERE subq1.c17 >= subq1.c13
   ORDER BY c32 COLLATE NOCASE DESC, c24 DESC
   LIMIT 2898888880545756205 
  ) THEN t1.c1
      WHEN t1.c4 < t1.c4 OR t1.c1 = 
  CASE WHEN COALESCE(NULL, t1.c1) = t1.c2 OR t1.c0 IS NULL THEN t1.c0
       ELSE t1.c0
  END THEN t1.c1
      WHEN t1.c3 <> t1.c3 THEN TRUE
      WHEN t1.c0 = t1.c0 THEN t1.c1
      ELSE t1.c0
 END AS c43, t1.c4 AS c44
FROM t0 AS t1
WHERE t1.c3 <= t1.c3
ORDER BY c44, c23;
SELECT subq1.c9 AS c10, subq1.c6 AS c11, 'text74' AS c12, subq0.c5 AS c13, 
 CASE WHEN min('text43','text93',FALSE) IS NULL THEN subq1.c6
      ELSE subq1.c6
 END AS c14, 
 CASE subq0.c7 WHEN EXISTS (
  SELECT t4.c2 AS c5
   FROM t0 AS t4
   WHERE t4.c3 <= t4.c4
   ORDER BY c5 ASC
   LIMIT 850720320121902343 
  ) THEN subq1.c9
      WHEN subq0.c6 = subq1.c5 THEN COALESCE(instr('text96',88), subq1.c9, subq1.c9, subq1.c5, COALESCE(subq0.c6, subq0.c6, subq1.c8, 
    CASE WHEN subq0.c5 IS NOT NULL THEN subq0.c5
         ELSE subq0.c7
    END, subq0.c6))
      WHEN subq1.c9 <> subq1.c9 THEN subq0.c5
      WHEN subq0.c7 <> subq1.c9 THEN subq1.c9
      WHEN subq1.c5 < subq1.c6 AND 
  CASE WHEN subq1.c6 <= subq1.c8 THEN subq1.c9
       ELSE subq1.c9
  END <> subq0.c7 THEN subq0.c7
      WHEN false THEN TRUE
      WHEN subq1.c7 IS NULL THEN 
  CASE subq0.c7 WHEN subq1.c7 = IFNULL(subq1.c7, subq1.c8) THEN subq0.c7
       WHEN true THEN 
   CASE subq1.c9 WHEN subq1.c8 > subq1.c8 THEN subq1.c9
        WHEN subq1.c5 IS NOT NULL THEN subq1.c9
        WHEN subq1.c8 <= 
    CASE subq1.c5 WHEN subq0.c6 >= subq0.c6 THEN replace('text59',TRUE,59)
         WHEN false THEN subq1.c7
         WHEN subq1.c9 <> subq0.c5 THEN 'text30'
         WHEN subq1.c8 = subq0.c6 THEN subq1.c6
         WHEN abs( NULL) IS NOT NULL THEN subq1.c7
         WHEN subq0.c5 <> subq1.c9 THEN subq1.c8
         ELSE subq1.c6
    END THEN subq0.c5
        WHEN false THEN NULLIF(subq0.c7, TRUE)
        WHEN TRUE = subq0.c7 OR 'text98' >= subq0.c6 AND subq0.c6 IS NOT NULL THEN CAST(subq0.c6 AS INTEGER)
        WHEN subq1.c6 <> subq1.c5 THEN subq1.c9
        WHEN subq1.c5 > subq1.c7 THEN subq0.c5
        ELSE subq0.c7
   END
       WHEN TRUE IS NOT NULL THEN subq1.c9
       WHEN subq0.c6 <= subq1.c6 THEN subq0.c7
       ELSE subq0.c7
  END
      WHEN subq0.c6 IS NULL THEN CAST(
   CASE subq0.c6 WHEN true OR 
    CASE WHEN subq1.c7 > subq0.c6 THEN TRUE
         ELSE subq0.c7
    END <> 
    CASE WHEN subq1.c7 = subq0.c6 THEN subq1.c9
         ELSE subq0.c5
    END THEN subq1.c5
        WHEN subq1.c6 = subq1.c7 THEN subq1.c5
        WHEN subq1.c7 <= subq0.c6 AND false THEN subq1.c6
        WHEN 
    CASE WHEN 'text38' > subq1.c6 AND subq1.c8 <> subq1.c7 THEN subq1.c7
         ELSE subq0.c5
    END IS NULL AND subq0.c7 <> subq0.c5 THEN changes()
        WHEN true THEN subq0.c6
        WHEN false THEN subq0.c6
        WHEN trim(NULL,'text21') > subq1.c6 THEN subq0.c5
        WHEN subq1.c6 >= subq1.c5 THEN subq0.c7
        WHEN subq0.c7 <> subq0.c7 OR subq1.c6 <> subq1.c6 AND subq1.c9 <> subq0.c7 THEN subq0.c7
        WHEN subq0.c7 = subq1.c9 THEN subq0.c5
        ELSE subq0.c6
   END AS TEXT)
      WHEN subq1.c8 IS NOT NULL AND subq1.c5 IS NOT NULL THEN subq0.c7
      WHEN ltrim(NULL,'text11') IS NOT NULL OR subq1.c8 = subq1.c8 THEN subq1.c9
      ELSE subq1.c9
 END AS c6, subq1.c7 AS c7, subq1.c6 AS c8, subq1.c6 AS c9
FROM (SELECT t1.c0 AS c5, t1.c3 AS c6, IFNULL(
      CASE WHEN t1.c1 = t1.c1 THEN t1.c1
           ELSE t1.c1
      END, t1.c0) AS c7
    FROM t0 AS t1
    WHERE t1.c1 = t1.c1
    ORDER BY c6, c6 ASC, c7 ASC
    LIMIT 4528973491800618804 ) as subq0
  INNER JOIN (SELECT char( '򥼭') AS c5, t3.c4 AS c6, t2.c3 AS c7, t2.c3 AS c8, FALSE AS c9
    FROM t0 AS t2
      INNER JOIN t0 AS t3      
       ON (t3.c3 = t3.c4)
    WHERE 'text48' >= t2.c4
    ORDER BY c6 DESC
    LIMIT 2051257747054255420 OFFSET 773036926997476307) as subq1  
   ON (true)
WHERE subq0.c7 <> subq0.c5
ORDER BY c11 COLLATE BINARY
LIMIT 8994006647534940267 OFFSET 7878564024146532826;
SELECT t1.c1 AS c5, 
 CASE WHEN false AND IFNULL(t1.c1, t1.c1) = t1.c0 AND t1.c0 <> NULLIF(t1.c1, t1.c1) AND t1.c4 <> t1.c3 THEN t1.c4
      ELSE t1.c3
 END AS c6, FALSE AS c7, t1.c3 AS c8, ltrim( NULL) AS c9
FROM t0 AS t1
WHERE false
ORDER BY c8 DESC, c8
LIMIT 3094093508468315235 OFFSET 1582775563658260750;
SELECT t1.c4 AS c5, t1.c1 AS c6, t1.c0 AS c7, t1.c2 AS c8, 
 CASE t1.c0 WHEN t1.c4 <= t1.c3 THEN IFNULL(CAST(t1.c2 AS BOOLEAN), t1.c0)
      WHEN true THEN t1.c0
      WHEN upper( NULL) = t1.c4 AND NULLIF(t1.c4, t1.c3) <> t1.c3 AND t1.c2 >= t1.c2 AND COALESCE(COALESCE(t1.c4, 'text6', 
    CASE t1.c0 WHEN t1.c3 <> t1.c4 THEN t1.c3
         WHEN t1.c4 <= t1.c4 THEN t1.c4
         WHEN EXISTS (
     SELECT t2.c0 AS c5, t2.c0 AS c6, t2.c2 AS c7, FALSE AS c8
      FROM t0 AS t2
      WHERE t2.c4 IS NULL OR t2.c4 <= t2.c3
      ORDER BY c7 ASC, c6 COLLATE RTRIM
      LIMIT 8398805737968247180 OFFSET 8274737317542339918
     ) AND t1.c4 IS NOT NULL THEN t1.c1
         WHEN t1.c2 <= 
     CASE WHEN t1.c0 <> t1.c0 THEN t1.c2
          ELSE t1.c2
     END AND t1.c4 = t1.c4 THEN t1.c1
         WHEN t1.c2 > t1.c2 THEN t1.c3
         WHEN false THEN glob(32,30)
         WHEN t1.c2 <> t1.c2 THEN NULLIF(t1.c3, t1.c3)
         WHEN upper( TRUE) IS NULL AND t1.c1 <> t1.c1 THEN t1.c3
         ELSE t1.c3
    END, t1.c4, t1.c1, t1.c1), 
   CASE t1.c2 WHEN t1.c0 IS NOT NULL THEN t1.c2
        WHEN t1.c0 IS NOT NULL THEN t1.c3
        WHEN t1.c3 > t1.c3 OR upper( 43) IS NOT NULL THEN NULL
        WHEN t1.c1 IS NULL AND t1.c4 < t1.c3 THEN t1.c1
        WHEN 'text78' > t1.c3 THEN t1.c0
        WHEN 
    CASE WHEN t1.c2 = t1.c2 AND CAST(t1.c0 AS INTEGER) > t1.c2 OR t1.c3 <= t1.c4 AND t1.c0 <> t1.c1 THEN t1.c4
         ELSE t1.c4
    END = t1.c3 THEN length( FALSE)
        ELSE t1.c2
   END, NULL, 
   CASE t1.c4 WHEN FALSE = t1.c1 THEN t1.c4
        WHEN false AND EXISTS (
    SELECT t3.c4 AS c5, t3.c0 AS c6, t3.c0 AS c7, t3.c3 AS c8, t3.c1 AS c9, t3.c2 AS c10, t3.c2 AS c11, t3.c2 AS c12, CAST(t3.c3 AS INTEGER) AS c13, t3.c0 AS c14, t3.c1 AS c15, t3.c2 AS c16, t3.c1 AS c17, t3.c1 AS c18, t3.c1 AS c19, t3.c3 AS c20
     FROM t0 AS t3
     WHERE EXISTS (
      SELECT t4.c4 AS c5, t5.c3 AS c6, t4.c0 AS c7, t4.c1 AS c8
       FROM t0 AS t4
         INNER JOIN t0 AS t5         
          ON (t5.c2 < t4.c2)
       WHERE t4.c0 <> t5.c1
       ORDER BY c5
      )
     ORDER BY c6, c12 COLLATE RTRIM
    ) THEN t1.c3
        WHEN t1.c3 >= t1.c3 THEN 'text40'
        WHEN t1.c0 = t1.c1 THEN t1.c4
        WHEN t1.c0 = TRUE OR true THEN t1.c4
        WHEN t1.c2 IS NULL THEN t1.c4
        ELSE t1.c4
   END, like('text37','text97','񹓗'), t1.c1) = t1.c4 THEN t1.c0
      WHEN t1.c0 <> t1.c1 OR t1.c3 = 
  CASE WHEN t1.c2 IS NULL THEN 
   CASE WHEN EXISTS (
    SELECT t6.c1 AS c5
     FROM t0 AS t6
     WHERE false
     ORDER BY c5, c5, c5 ASC, c5
     LIMIT 5123516264634145524 OFFSET 2929886693057873229
    ) THEN t1.c3
        ELSE t1.c3
   END
       ELSE t1.c4
  END THEN FALSE
      WHEN EXISTS (
  SELECT t7.c4 AS c5
   FROM t0 AS t7
     LEFT JOIN t0 AS t8     
      ON (t7.c2 = t8.c2)
   WHERE t8.c1 <> t8.c0
   ORDER BY c5 COLLATE RTRIM DESC, c5, c5 COLLATE BINARY DESC, c5
   LIMIT 4490945368497002225 OFFSET 918975569292387727
  ) THEN t1.c0
      ELSE t1.c1
 END AS c6, t1.c1 AS c7, 
 CASE WHEN EXISTS (
  SELECT t9.c3 AS c5, t9.c4 AS c6, t9.c3 AS c7, t9.c1 AS c8, t9.c2 AS c9
   FROM t0 AS t9
   WHERE true
   ORDER BY c5, c5
   LIMIT 1695025709738380586 OFFSET 2454421800951033182
  ) THEN t1.c2
      ELSE length( NULL)
 END AS c10
FROM t0 AS t1
WHERE t1.c2 < CAST(CAST(NULL AS BOOLEAN) AS BOOLEAN) OR 'text74' <= t1.c4 OR t1.c1 = t1.c0
ORDER BY c8, c7 ASC, c6
LIMIT 1585669949785554519 OFFSET 6170104837257092029;
SELECT t1.c3 AS c5, CAST(t1.c4 AS TEXT) AS c6, t1.c1 AS c7, t1.c2 AS c8, t1.c2 AS c9, t1.c2 AS c10, COALESCE(t1.c3, t1.c0, NULLIF(t1.c0, 
   CASE WHEN nullif(FALSE,NULL) IS NOT NULL THEN t1.c2
        ELSE t1.c2
   END), t1.c4) AS c11, t1.c4 AS c12, typeof( 81) AS c13, t1.c4 AS c14, t1.c4 AS c15, NULLIF(t1.c0, t1.c0) AS c16, t1.c1 AS c17
FROM t0 AS t1
WHERE t1.c4 > t1.c4
ORDER BY c13 ASC, c8, c9 ASC
LIMIT 1009863045052875922 OFFSET 4604549090143033007;
SELECT subq0.c13 AS c21, subq0.c8 AS c22, FALSE AS c23, subq0.c16 AS c24, subq0.c5 AS c25, CAST(subq0.c11 AS TEXT) AS c26, lower( FALSE) AS c27, subq0.c17 AS c28, subq0.c5 AS c29, subq0.c14 AS c30, subq0.c19 AS c31
FROM (SELECT t1.c4 AS c5, t1.c2 AS c6, t2.c1 AS c7, COALESCE(t1.c4, 
     CASE WHEN true AND t1.c4 IS NULL AND false THEN NULL
          ELSE NULL
     END) AS c8, t2.c4 AS c9, FALSE AS c10, t1.c1 AS c11, t2.c1 AS c12, t2.c1 AS c13, t1.c1 AS c14, t2.c4 AS c15, t1.c3 AS c16, t2.c1 AS c17, t1.c0 AS c18, t2.c3 AS c19, 
    CASE WHEN t1.c2 <> t1.c2 THEN t1.c0
         ELSE t1.c0
    END AS c20
   FROM t0 AS t1
     INNER JOIN t0 AS t2     
      ON (t2.c1 <> t1.c1 AND true)
   WHERE t1.c3 <= t2.c3
   ORDER BY c11, c17 ASC
   LIMIT 6319714036646301468 OFFSET 7902520846864392128) as subq0
WHERE CAST(subq0.c19 AS INTEGER) IS NOT NULL
ORDER BY c24, c23 COLLATE RTRIM;
SELECT CAST(coalesce(74,NULL,72) AS BOOLEAN) AS c5, t1.c3 AS c6
FROM t0 AS t1
WHERE 
 CASE WHEN EXISTS (
  SELECT CAST(t2.c0 AS INTEGER) AS c5, 
    CASE WHEN t2.c2 = t2.c2 AND false AND true THEN t2.c2
         ELSE t2.c2
    END AS c6, t2.c4 AS c7, t2.c2 AS c8, hex( NULL) AS c9, t2.c4 AS c10, t2.c4 AS c11, t2.c1 AS c12, t2.c4 AS c13, NULLIF(t2.c4, t2.c3) AS c14, t2.c2 AS c15, t2.c3 AS c16, t2.c0 AS c17, CAST(
     CASE WHEN false THEN t2.c2
          ELSE t2.c1
     END AS TEXT) AS c18, t2.c1 AS c19
   FROM t0 AS t2
   WHERE t2.c0 = TRUE
   ORDER BY c11, c7 ASC
   LIMIT 6807508956043084078 
  ) THEN 
  CASE WHEN t1.c4 > t1.c4 AND t1.c0 = t1.c1 OR EXISTS (
   SELECT 
     CASE t4.c1 WHEN false THEN t3.c1
          WHEN t4.c3 = t4.c4 THEN t3.c1
          WHEN t3.c2 > t3.c2 THEN t3.c0
          WHEN t3.c2 IS NULL THEN TRUE
          WHEN t4.c4 <= t4.c3 THEN t4.c0
          ELSE t4.c0
     END AS c5, t4.c3 AS c6
    FROM t0 AS t3
      LEFT JOIN t0 AS t4      
       ON (t3.c3 = t4.c3)
    WHERE t3.c4 = t3.c3
    ORDER BY c5, c6 DESC, c5 DESC, c5 ASC
    LIMIT 1027891790036037634 OFFSET 6757339532176750030
   ) OR like(51,FALSE) >= t1.c2 THEN t1.c1
       ELSE CAST(t1.c1 AS BOOLEAN)
  END
      ELSE t1.c1
 END IS NOT NULL AND CAST(33 AS TEXT) >= t1.c2 OR true OR FALSE <> t1.c0
ORDER BY c6 DESC, c5
LIMIT 2275705935130482805 ;
SELECT t1.c1 AS c5, t1.c4 AS c6, t1.c2 AS c7, t1.c4 AS c8, t1.c1 AS c9, 
 CASE WHEN t1.c2 IS NULL THEN t1.c4
      ELSE 
  CASE WHEN t1.c4 > t1.c4 THEN t1.c4
       ELSE t1.c3
  END
 END AS c10, t1.c4 AS c11
FROM t0 AS t1
WHERE t1.c0 IS NOT NULL
ORDER BY c5
LIMIT 3171463731686729973 OFFSET 8279815241001065559;
SELECT t1.c4 AS c5, 
 CASE t1.c1 WHEN t1.c2 > t1.c2 OR 
  CASE WHEN true THEN t1.c4
       ELSE t1.c4
  END >= replace('text72',TRUE,NULL) THEN t1.c0
      WHEN t1.c0 = t1.c1 OR CAST(t1.c3 AS BOOLEAN) <> t1.c0 OR t1.c3 = t1.c4 THEN t1.c0
      WHEN EXISTS (
  SELECT t2.c1 AS c5, t2.c1 AS c6, t2.c2 AS c7, IFNULL(t2.c0, t2.c1) AS c8, t2.c0 AS c9, t2.c2 AS c10
   FROM t0 AS t2
   WHERE t2.c0 = t2.c1 OR t2.c0 <> t2.c0 OR t2.c4 IS NULL
   ORDER BY c5 COLLATE BINARY ASC, c10, c8
   LIMIT 686725161024008160 OFFSET 7953650626331798694
  ) THEN t1.c0
      WHEN t1.c4 = t1.c3 THEN t1.c1
      WHEN true THEN t1.c0
      WHEN t1.c1 <> t1.c0 THEN t1.c0
      WHEN t1.c0 IS NULL AND t1.c4 <> t1.c4 THEN t1.c1
      ELSE t1.c1
 END AS c11, t1.c1 AS c12, t1.c3 AS c13, t1.c4 AS c14, t1.c1 AS c15, t1.c1 AS c16, t1.c3 AS c17, t1.c1 AS c18, t1.c4 AS c19, t1.c1 AS c20, 
 CASE WHEN true AND t1.c0 IS NOT NULL THEN t1.c3
      ELSE t1.c4
 END AS c21
FROM t0 AS t1
WHERE t1.c4 <> t1.c3
ORDER BY c20, c17 COLLATE NOCASE DESC, c19 COLLATE BINARY ASC
LIMIT 2715812097585221106 OFFSET 8308325094847829904;
SELECT COALESCE(t1.c2, t1.c2, CAST(NULLIF(subq0.c5, t5.c0) AS TEXT), t1.c2) AS c5, t1.c1 AS c6, t1.c2 AS c7, t5.c2 AS c8, t1.c2 AS c9
FROM t0 AS t1
    INNER JOIN (SELECT TRUE AS c5
      FROM t0 AS t2
      WHERE EXISTS (
       SELECT t3.c4 AS c5, t3.c0 AS c6, t3.c3 AS c7, t3.c2 AS c8, t3.c1 AS c9, FALSE AS c10, t3.c1 AS c11, t3.c2 AS c12
        FROM t0 AS t3
        WHERE t3.c1 = t3.c0
        ORDER BY c10 ASC, c12 ASC, c7
        LIMIT 1527591807823506876 OFFSET 6473586333081067894
       ) AND t2.c0 <> t2.c1
      ORDER BY c5, c5 DESC, c5 COLLATE BINARY, c5
      LIMIT 8207140808833502437 OFFSET 7377695634005459272) as subq0    
     ON (t1.c4 <> ltrim(TRUE,FALSE) AND t1.c1 = t1.c0 AND t1.c1 <> subq0.c5)
   CROSS JOIN t0 AS t4   
    ON (t1.c2 = COALESCE(t1.c2, subq0.c5, t1.c3, subq0.c5, t1.c2, t1.c2) OR TRUE = t1.c0)
  INNER JOIN t0 AS t5  
   ON (t1.c0 <> t1.c1)
WHERE FALSE = 
 CASE WHEN t5.c3 <> t4.c3 THEN t1.c1
      ELSE t1.c0
 END
ORDER BY c6 COLLATE RTRIM, c8, c5 ASC
LIMIT 2225709995046323701 OFFSET 8375412363651801560;
SELECT 
 CASE subq0.c6 WHEN subq0.c6 >= subq0.c6 THEN subq0.c6
      WHEN subq1.c5 IS NULL OR subq0.c10 <> subq0.c5 THEN subq0.c6
      WHEN subq1.c5 > subq1.c6 THEN subq0.c7
      WHEN subq0.c10 <> subq0.c10 THEN subq0.c7
      WHEN subq0.c6 = subq0.c6 THEN subq0.c6
      WHEN subq0.c5 = subq0.c5 THEN COALESCE(subq0.c6, subq1.c6)
      WHEN 
  CASE WHEN EXISTS (
   SELECT IFNULL(t10.c2, t10.c2) AS c5, t10.c4 AS c6, t10.c1 AS c7, t10.c0 AS c8, t10.c3 AS c9, t10.c0 AS c10, t10.c3 AS c11, t10.c1 AS c12
    FROM t0 AS t10
    WHERE 'text68' <> t10.c3
    ORDER BY c8, c12, c7 DESC
    LIMIT 6787315752405682459 OFFSET 4879965165260362015
   ) THEN subq0.c6
       ELSE subq0.c6
  END <> subq0.c6 THEN subq0.c7
      ELSE subq0.c7
 END AS c13
FROM (SELECT t2.c1 AS c5, t3.c3 AS c6, t2.c3 AS c7, 
     CASE t2.c0 WHEN t2.c0 <> FALSE AND t3.c4 > t3.c3 OR t1.c0 = t1.c0 THEN t1.c1
          WHEN t1.c1 = t3.c0 THEN t1.c1
          WHEN EXISTS (
      SELECT t4.c3 AS c5, t4.c4 AS c6, t4.c4 AS c7, t4.c3 AS c8, t4.c1 AS c9
       FROM t0 AS t4
       WHERE t4.c1 <> t4.c0
       ORDER BY c5 ASC, c6 ASC
      ) OR t1.c3 >= 'text9' OR t2.c4 <> t1.c4 THEN t2.c1
          WHEN FALSE <> t2.c0 THEN t3.c0
          WHEN t2.c2 <> t1.c2 THEN t1.c0
          WHEN true THEN t1.c0
          WHEN t2.c1 = t2.c1 OR EXISTS (
      SELECT t5.c0 AS c5
       FROM t0 AS t5
       WHERE t5.c3 <> t5.c3
       ORDER BY c5 DESC, c5 COLLATE NOCASE ASC, c5, c5
       LIMIT 1217170363588415245 
      ) OR t3.c4 IS NULL AND true OR t3.c2 > t1.c2 THEN t2.c0
          WHEN EXISTS (
      SELECT t6.c4 AS c5, t6.c4 AS c6, 'text41' AS c7, t6.c0 AS c8, t6.c3 AS c9, t6.c1 AS c10, t6.c0 AS c11
       FROM t0 AS t6
       WHERE EXISTS (
        SELECT t7.c2 AS c5, t7.c1 AS c6, 67 AS c7, t7.c2 AS c8, t7.c4 AS c9, t7.c0 AS c10
         FROM t0 AS t7
         WHERE t7.c3 > t7.c3
         ORDER BY c5 COLLATE RTRIM ASC, c5 COLLATE NOCASE, c7
        )
       ORDER BY c5 COLLATE RTRIM, c10, c8
       LIMIT 5291986099247990506 OFFSET 3974746524245350826
      ) AND NULL IS NOT NULL OR EXISTS (
      SELECT t8.c3 AS c5, t8.c2 AS c6, t8.c4 AS c7, t8.c2 AS c8, t8.c1 AS c9
       FROM t0 AS t8
       WHERE t8.c1 <> t8.c0
       ORDER BY c7
       LIMIT 7884407476451302096 OFFSET 7309196396533647011
      ) AND t2.c2 IS NULL OR t2.c0 <> t3.c1 THEN t1.c1
          WHEN true THEN t3.c0
          WHEN t1.c3 = 'text63' THEN t2.c0
          ELSE t2.c1
     END AS c10
    FROM t0 AS t1
      LEFT JOIN (
      t0 AS t2
       LEFT JOIN t0 AS t3       
        ON (t2.c0 <> t3.c1)      )
       ON (t3.c4 >= t2.c3)
    WHERE t2.c2 IS NOT NULL
    ORDER BY c10 DESC, c7 COLLATE BINARY, c7 DESC
    LIMIT 2092704022762056882 OFFSET 5991063630510177332) as subq0
  LEFT JOIN (SELECT t9.c2 AS c5, t9.c2 AS c6
    FROM t0 AS t9
    WHERE t9.c0 <> 
     CASE t9.c1 WHEN t9.c4 >= t9.c4 THEN t9.c1
          WHEN true THEN t9.c0
          WHEN t9.c2 = t9.c2 THEN t9.c1
          WHEN t9.c0 IS NOT NULL THEN t9.c0
          WHEN t9.c0 <> t9.c1 THEN t9.c1
          WHEN t9.c4 = t9.c4 AND true OR t9.c0 <> TRUE THEN t9.c0
          ELSE t9.c0
     END OR t9.c1 = t9.c1
    ORDER BY c5 ASC, c5, c5, c5 ASC) as subq1  
   ON (false)
WHERE false OR EXISTS (
 SELECT t11.c4 AS c5, t11.c0 AS c6, 
   CASE WHEN false THEN t11.c1
        ELSE t11.c1
   END AS c7, t11.c0 AS c8, 
   CASE t11.c2 WHEN t11.c2 < t11.c2 THEN t11.c2
        ELSE 
    CASE WHEN t11.c4 = t11.c3 THEN t11.c2
         ELSE t11.c2
    END
   END AS c9, 
   CASE t11.c1 WHEN t11.c0 <> t11.c1 THEN t11.c0
        WHEN 
    CASE t11.c0 WHEN t11.c3 IS NULL THEN t11.c2
         WHEN t11.c1 = t11.c0 AND t11.c3 < t11.c4 THEN t11.c2
         WHEN FALSE <> t11.c0 THEN t11.c3
         WHEN t11.c0 = COALESCE(t11.c4, t11.c3, t11.c0, t11.c0) OR t11.c0 IS NULL THEN max(57,TRUE,27)
         WHEN t11.c3 >= CAST(t11.c3 AS BOOLEAN) THEN t11.c4
         WHEN true THEN t11.c1
         WHEN t11.c3 IS NOT NULL OR t11.c2 <> t11.c2 THEN t11.c3
         WHEN 
     CASE WHEN FALSE <> t11.c1 THEN t11.c0
          ELSE t11.c1
     END <> t11.c0 THEN t11.c4
         WHEN ltrim(TRUE,'text2') > t11.c4 THEN t11.c0
         WHEN t11.c1 <> TRUE OR t11.c3 < t11.c3 AND t11.c4 IS NOT NULL AND t11.c0 IS NOT NULL THEN t11.c3
         WHEN t11.c2 <> t11.c2 AND t11.c1 <> t11.c1 THEN t11.c4
         WHEN t11.c0 = t11.c0 THEN t11.c4
         ELSE t11.c2
    END IS NOT NULL THEN t11.c1
        ELSE t11.c0
   END AS c10, t11.c0 AS c11, t11.c2 AS c12
  FROM t0 AS t11
  WHERE t11.c0 = t11.c0
  ORDER BY c5 DESC
 )
ORDER BY c13, c13 COLLATE NOCASE DESC, c13, c13 ASC
LIMIT 4212221364422791819 OFFSET 4561979831917857511;
SELECT subq1.c8 AS c11, subq1.c8 AS c12, subq1.c8 AS c13, subq1.c8 AS c14
FROM (SELECT subq0.c7 AS c8
   FROM (SELECT t2.c0 AS c5, t2.c2 AS c6, t2.c4 AS c7
      FROM t0 AS t1
        INNER JOIN t0 AS t2        
         ON (t1.c1 <> t1.c1)
      WHERE t1.c0 IS NULL OR false
      ORDER BY c7, c5 DESC, c6 DESC) as subq0
   WHERE EXISTS (
    SELECT t3.c4 AS c5, t3.c1 AS c6, t3.c1 AS c7, t3.c4 AS c8, t3.c3 AS c9, t3.c0 AS c10
     FROM t0 AS t3
     WHERE false
     ORDER BY c7, c8 COLLATE BINARY ASC
     LIMIT 5764518749796287817 OFFSET 6449371689146332838
    )
   ORDER BY c8) as subq1
WHERE subq1.c8 >= subq1.c8
ORDER BY c14, c13 DESC
LIMIT 5713760841705453297 OFFSET 3963496451763123395;
SELECT 'text56' AS c10, subq0.c7 AS c11
FROM t0 AS t1
  LEFT JOIN (SELECT t2.c3 AS c5, t2.c4 AS c6, t2.c0 AS c7, CAST(t2.c1 AS INTEGER) AS c8, TRUE AS c9
    FROM t0 AS t2
    WHERE t2.c2 > t2.c2
    ORDER BY c6 DESC) as subq0  
   ON (t1.c1 <> subq0.c7)
WHERE t1.c1 = COALESCE(t1.c0, t1.c4, t1.c3, t1.c1, subq0.c9)
ORDER BY c10, c11 COLLATE RTRIM DESC
LIMIT 6721270445465406015 OFFSET 801998618633370376;
SELECT COALESCE(subq0.c6, 
  CASE subq0.c5 WHEN subq0.c5 >= subq0.c6 THEN subq0.c5
       WHEN EXISTS (
   SELECT t2.c3 AS c5, t2.c4 AS c6
    FROM t0 AS t2
    WHERE t2.c0 <> t2.c0 AND t2.c1 <> t2.c0 OR 
     CASE t2.c1 WHEN EXISTS (
      SELECT t3.c2 AS c5
       FROM t0 AS t3
       WHERE EXISTS (
        SELECT t4.c0 AS c5, t4.c4 AS c6, t4.c4 AS c7, t4.c1 AS c8, 'text34' AS c9, t4.c1 AS c10, t4.c0 AS c11, t4.c1 AS c12
         FROM t0 AS t4
         WHERE t4.c3 >= t4.c3 OR t4.c2 < t4.c2
         ORDER BY c9 ASC, c9 ASC, c10
         LIMIT 1887798996260624991 OFFSET 2392971580768626890
        )
       ORDER BY c5, c5, c5, c5 ASC
      ) OR t2.c1 = t2.c0 OR t2.c3 IS NOT NULL THEN t2.c0
          WHEN t2.c3 > t2.c4 THEN t2.c1
          WHEN t2.c3 > t2.c4 THEN t2.c1
          WHEN EXISTS (
      SELECT 'text62' AS c5, t5.c3 AS c6, t5.c3 AS c7, t5.c1 AS c8, t5.c4 AS c9, t5.c0 AS c10, t5.c1 AS c11, t5.c3 AS c12, t5.c3 AS c13, t5.c1 AS c14
       FROM t0 AS t5
       WHERE t5.c0 = t5.c0
       ORDER BY c5, c10 COLLATE BINARY DESC
       LIMIT 6643725517142509232 
      ) THEN t2.c0
          WHEN false THEN t2.c0
          WHEN t2.c0 IS NOT NULL THEN t2.c0
          WHEN t2.c1 IS NOT NULL AND t2.c3 = t2.c4 THEN 
      CASE t2.c0 WHEN t2.c1 = t2.c1 THEN t2.c0
           WHEN 'text55' > t2.c3 THEN t2.c0
           WHEN t2.c3 <= 'text35' THEN t2.c1
           WHEN t2.c1 = t2.c0 OR false AND t2.c3 < t2.c3 AND t2.c2 <= t2.c2 THEN t2.c0
           WHEN true THEN t2.c0
           WHEN EXISTS (
       SELECT t6.c0 AS c5, 29 AS c6
        FROM t0 AS t6
        WHERE t6.c0 = t6.c0
        ORDER BY c5 COLLATE RTRIM, c5 COLLATE BINARY DESC
       ) THEN t2.c1
           WHEN t2.c0 = t2.c1 OR t2.c3 <= t2.c4 OR false AND true THEN t2.c1
           WHEN t2.c2 >= t2.c2 THEN t2.c0
           WHEN t2.c3 > t2.c3 THEN t2.c1
           WHEN t2.c4 <> t2.c3 THEN t2.c1
           WHEN t2.c0 IS NULL THEN t2.c1
           ELSE t2.c0
      END
          WHEN EXISTS (
      SELECT t7.c3 AS c10, t7.c3 AS c11, FALSE AS c12
       FROM t0 AS t7
         INNER JOIN t0 AS t8         
          ON (EXISTS (
           SELECT t9.c1 AS c5, t9.c1 AS c6, t9.c3 AS c7, t9.c2 AS c8, t9.c1 AS c9
            FROM t0 AS t9
            WHERE t9.c4 <> t9.c4 OR t9.c1 <> t9.c0
            ORDER BY c7 DESC
            LIMIT 4372704905982422943 
           ))
       WHERE t8.c2 < t7.c2 AND EXISTS (
        SELECT t10.c3 AS c5, t10.c1 AS c6, TRUE AS c7, t10.c4 AS c8
         FROM t0 AS t10
         WHERE t10.c4 <> t10.c4
         ORDER BY c6 COLLATE NOCASE, c6 ASC
        ) AND t7.c3 < t7.c3
       ORDER BY c10 ASC
       LIMIT 2585967230956827664 OFFSET 8012011738072429655
      ) THEN t2.c1
          ELSE t2.c0
     END = t2.c0
    ORDER BY c6, c6 ASC, c6, c5
   ) AND CAST(subq0.c6 AS BOOLEAN) > subq0.c6 THEN subq0.c5
       WHEN subq0.c6 > subq0.c6 THEN subq0.c7
       WHEN subq0.c7 = subq0.c7 THEN subq0.c5
       WHEN subq0.c5 IS NULL AND subq0.c5 < instr(TRUE,NULL) THEN subq0.c7
       ELSE 
   CASE WHEN EXISTS (
    SELECT t11.c1 AS c5, t11.c3 AS c6, t11.c4 AS c7, t11.c0 AS c8, t11.c4 AS c9
     FROM t0 AS t11
     WHERE t11.c1 = t11.c1
     ORDER BY c9 ASC
     LIMIT 7969718055585663031 
    ) OR subq0.c5 < subq0.c6 AND false THEN subq0.c6
        ELSE subq0.c5
   END
  END, TRUE, subq0.c7, subq0.c7, subq0.c7) AS c10, 
 CASE WHEN subq0.c5 IS NULL THEN subq0.c7
      ELSE subq0.c7
 END AS c11, subq0.c6 AS c12, subq0.c5 AS c13
FROM (SELECT t1.c2 AS c5, t1.c2 AS c6, COALESCE(t1.c1, t1.c0) AS c7
   FROM t0 AS t1
   WHERE t1.c3 IS NULL
   ORDER BY c7, c6 ASC
   LIMIT 7253516871592278534 OFFSET 649360747723464212) as subq0
WHERE IFNULL(IFNULL(subq0.c6, subq0.c5), subq0.c6) IS NULL AND subq0.c5 > 
 CASE subq0.c5 WHEN subq0.c7 IS NULL AND subq0.c6 < subq0.c5 AND 59 <> like(6,50) THEN subq0.c6
      WHEN subq0.c7 IS NOT NULL THEN subq0.c6
      WHEN 
  CASE subq0.c5 WHEN true THEN 
   CASE subq0.c6 WHEN subq0.c5 >= subq0.c5 THEN subq0.c5
        WHEN subq0.c5 >= subq0.c5 THEN subq0.c5
        WHEN NULL IS NULL THEN subq0.c6
        WHEN subq0.c6 < subq0.c6 OR subq0.c5 >= subq0.c5 OR subq0.c7 <> subq0.c7 THEN subq0.c5
        WHEN EXISTS (
    SELECT t12.c1 AS c5, t12.c1 AS c6, t12.c1 AS c7, t12.c2 AS c8, t12.c3 AS c9, t12.c1 AS c10
     FROM t0 AS t12
     WHERE t12.c4 = t12.c4 OR false
     ORDER BY c6 DESC, c6, c7 COLLATE BINARY
     LIMIT 1672526891877481567 
    ) OR true THEN subq0.c5
        WHEN subq0.c5 = subq0.c5 THEN subq0.c6
        WHEN subq0.c6 IS NULL THEN subq0.c6
        WHEN subq0.c7 = subq0.c7 THEN subq0.c5
        ELSE subq0.c5
   END
       WHEN 9 > subq0.c6 THEN subq0.c5
       WHEN subq0.c6 <= subq0.c6 AND EXISTS (
   SELECT TRUE AS c5
    FROM t0 AS t13
    WHERE t13.c2 < t13.c2
    ORDER BY c5 COLLATE NOCASE DESC, c5, c5 ASC, c5
   ) AND subq0.c6 <= subq0.c6 AND subq0.c5 IS NULL THEN subq0.c5
       WHEN subq0.c6 < 
   CASE WHEN 95 >= subq0.c5 THEN subq0.c5
        ELSE subq0.c6
   END THEN subq0.c6
       WHEN subq0.c6 >= COALESCE(subq0.c7, subq0.c5, subq0.c6, subq0.c5, subq0.c6, subq0.c6) THEN subq0.c6
       WHEN subq0.c6 < subq0.c5 THEN subq0.c5
       WHEN subq0.c6 = subq0.c6 THEN subq0.c6
       WHEN subq0.c5 < subq0.c5 THEN subq0.c6
       WHEN subq0.c6 >= subq0.c6 THEN subq0.c6
       WHEN false THEN subq0.c6
       WHEN subq0.c7 = subq0.c7 OR subq0.c6 > subq0.c6 THEN subq0.c6
       WHEN substr(TRUE,24,FALSE) IS NOT NULL AND EXISTS (
   SELECT t14.c4 AS c5, t14.c3 AS c6, t14.c0 AS c7
    FROM t0 AS t14
    WHERE t14.c0 IS NULL
    ORDER BY c6 COLLATE NOCASE, c5
    LIMIT 5641137614421376706 OFFSET 6580968662417389609
   ) THEN subq0.c6
       ELSE subq0.c6
  END >= subq0.c6 OR subq0.c7 <> subq0.c7 THEN subq0.c5
      WHEN subq0.c7 <> subq0.c7 THEN subq0.c5
      WHEN subq0.c5 = 
  CASE subq0.c6 WHEN subq0.c6 <> subq0.c5 THEN IFNULL(subq0.c5, 
    CASE WHEN true THEN 91
         ELSE subq0.c5
    END)
       WHEN subq0.c5 = subq0.c5 THEN subq0.c5
       WHEN subq0.c7 <> subq0.c7 THEN subq0.c5
       ELSE subq0.c5
  END OR subq0.c6 > subq0.c6 AND FALSE <> 
  CASE subq0.c7 WHEN subq0.c6 < subq0.c5 THEN subq0.c7
       WHEN subq0.c5 <> unlikely( FALSE) THEN 
   CASE WHEN subq0.c7 = subq0.c7 THEN subq0.c7
        ELSE FALSE
   END
       WHEN subq0.c5 IS NOT NULL THEN subq0.c7
       ELSE 
   CASE WHEN true THEN subq0.c7
        ELSE subq0.c7
   END
  END AND subq0.c5 > subq0.c5 THEN subq0.c6
      WHEN subq0.c5 <> subq0.c6 THEN subq0.c5
      WHEN EXISTS (
  SELECT t18.c2 AS c6, t15.c4 AS c7, t17.c0 AS c8, t16.c2 AS c9, t15.c2 AS c10, t16.c1 AS c11, 
    CASE t15.c0 WHEN t18.c3 >= t17.c4 THEN t15.c0
         WHEN false THEN t18.c0
         WHEN t15.c3 = t17.c3 THEN t17.c1
         WHEN t15.c1 <> t17.c1 THEN t15.c1
         WHEN t17.c0 IS NULL THEN t18.c0
         WHEN t16.c2 > t18.c2 THEN t15.c1
         WHEN 
     CASE WHEN t15.c4 = t17.c4 THEN t17.c0
          ELSE t16.c1
     END <> t15.c1 THEN t18.c1
         WHEN t18.c3 >= t16.c4 AND t17.c0 <> t17.c0 AND EXISTS (
     SELECT DISTINCT t20.c1 AS c5, t20.c3 AS c6, t20.c4 AS c7
      FROM t0 AS t20
      WHERE t20.c4 = t20.c4
      ORDER BY c5 DESC, c6 DESC, c5
     ) AND 
     CASE WHEN t17.c4 <= t15.c3 THEN t15.c0
          ELSE t17.c1
     END <> 
     CASE t18.c1 WHEN t18.c0 IS NULL THEN t15.c0
          WHEN EXISTS (
      SELECT t21.c1 AS c5, t22.c0 AS c6, t21.c4 AS c7
       FROM t0 AS t21
         INNER JOIN t0 AS t22         
          ON (t21.c2 IS NOT NULL)
       WHERE t21.c2 < t22.c2
       ORDER BY c7 ASC, c5
       LIMIT 219913135501089742 
      ) THEN t15.c0
          WHEN t16.c4 <= t16.c4 THEN 
      CASE t16.c0 WHEN t18.c3 <= t15.c3 THEN t17.c0
           ELSE t18.c0
      END
          WHEN t15.c3 >= t18.c3 THEN t18.c0
          WHEN t16.c1 = t17.c0 OR t15.c3 >= t16.c4 THEN t16.c0
          WHEN t15.c0 <> t15.c1 THEN t16.c0
          ELSE t16.c1
     END THEN t15.c0
         WHEN 'text27' < t15.c4 THEN t16.c1
         WHEN t17.c2 <> t18.c2 OR t17.c2 > t18.c2 THEN t15.c0
         ELSE t18.c1
    END AS c8, t15.c1 AS c9, t15.c0 AS c10, COALESCE(t16.c4, t15.c2, t17.c2, 17, t17.c4, t15.c0) AS c11, t15.c1 AS c12, t16.c4 AS c13, t17.c4 AS c14, t15.c4 AS c15, t17.c2 AS c16, t15.c0 AS c17, t15.c0 AS c18, t17.c3 AS c19, t17.c4 AS c20, t16.c2 AS c21, t17.c4 AS c22, t17.c1 AS c23, t18.c2 AS c24, t17.c1 AS c25
   FROM t0 AS t15
      LEFT JOIN t0 AS t16      
       ON (false)
     LEFT JOIN (
     t0 AS t17
      INNER JOIN t0 AS t18      
       ON (EXISTS (
        SELECT t19.c1 AS c5
         FROM t0 AS t19
         WHERE true AND t19.c3 >= t19.c3 AND t19.c1 IS NULL OR t19.c1 = t19.c0 AND t19.c3 > t19.c4 AND 'text68' < t19.c3 AND false AND t19.c2 >= t19.c2
         ORDER BY c5, c5 ASC, c5 ASC, c5 DESC
         LIMIT 5440937133613175947 
        ))     )
      ON (false AND t15.c1 = t15.c1)
   WHERE t18.c4 IS NULL
   ORDER BY c24 DESC
   LIMIT 2895334849199130362 OFFSET 821143446635312903
  ) THEN subq0.c6
      WHEN subq0.c6 < subq0.c6 OR subq0.c5 <> subq0.c6 THEN subq0.c5
      ELSE subq0.c5
 END
ORDER BY c12 COLLATE BINARY ASC, c11 ASC, c11 ASC
LIMIT 8825527562682333549 OFFSET 2398794267696234062;
SELECT t3.c0 AS c6, 
 CASE WHEN t2.c3 >= t2.c4 THEN t5.c2
      ELSE t2.c2
 END AS c7
FROM t0 AS t1
    INNER JOIN t0 AS t2    
     ON (true)
   INNER JOIN t0 AS t3   
    ON (EXISTS (
     SELECT 'text30' AS c5, t4.c3 AS c6, t4.c1 AS c7, t4.c4 AS c8, t4.c2 AS c9, t4.c0 AS c10, t4.c3 AS c11, t4.c1 AS c12, t4.c0 AS c13, t4.c3 AS c14, t4.c0 AS c15
      FROM t0 AS t4
      WHERE t4.c2 IS NULL
      ORDER BY c5, c10, c8
      LIMIT 4764977207794347821 
     ))
  INNER JOIN t0 AS t5  
   ON (EXISTS (
    SELECT t6.c4 AS c5
     FROM t0 AS t6
     WHERE true
     ORDER BY c5 ASC
     LIMIT 2969759559764816977 OFFSET 8492704812676097667
    ))
WHERE EXISTS (
 SELECT 36 AS c5, t7.c0 AS c6, t7.c4 AS c7, like('text11',98) AS c8, t7.c4 AS c9, t7.c1 AS c10, 
   CASE t7.c2 WHEN t7.c3 <> t7.c4 OR t7.c0 <> t7.c1 AND 
    CASE WHEN t7.c1 IS NOT NULL THEN t7.c1
         ELSE 
     CASE WHEN t7.c0 = t7.c0 THEN t7.c1
          ELSE t7.c1
     END
    END <> 
    CASE t7.c1 WHEN false THEN t7.c0
         WHEN true OR t7.c0 <> t7.c1 THEN t7.c0
         WHEN t7.c2 <= t7.c2 THEN t7.c0
         WHEN t7.c0 = t7.c1 THEN t7.c0
         WHEN t7.c0 <> t7.c0 THEN t7.c1
         WHEN EXISTS (
     SELECT t8.c0 AS c5, t8.c4 AS c6, t8.c0 AS c7, t8.c2 AS c8, t8.c2 AS c9, t8.c4 AS c10, t8.c2 AS c11, t8.c2 AS c12, t8.c4 AS c13, t8.c3 AS c14
      FROM t0 AS t8
      WHERE t8.c1 <> t8.c1
      ORDER BY c6, c13 DESC, c12 DESC
      LIMIT 467240243563009938 OFFSET 2275339371769508877
     ) THEN t7.c0
         WHEN EXISTS (
     SELECT 'text2' AS c5, t9.c4 AS c6, t9.c3 AS c7, 'text69' AS c8, t10.c1 AS c9, t9.c1 AS c10, t10.c1 AS c11, t10.c3 AS c12, t9.c0 AS c13, t10.c3 AS c14, t10.c0 AS c15, t10.c4 AS c16
      FROM t0 AS t9
        LEFT OUTER JOIN t0 AS t10        
         ON (t10.c4 = t10.c3)
      WHERE EXISTS (
       SELECT t11.c3 AS c5, t11.c2 AS c6, t11.c0 AS c7, t11.c3 AS c8, t11.c3 AS c9
        FROM t0 AS t11
        WHERE t11.c4 < t11.c4
        ORDER BY c5 COLLATE BINARY, c6
        LIMIT 1025063165020810720 
       )
      ORDER BY c7, c8 ASC, c15
      LIMIT 3952554883282470900 OFFSET 6203626849207407458
     ) THEN t7.c0
         WHEN t7.c3 IS NOT NULL THEN TRUE
         WHEN t7.c0 IS NOT NULL OR true THEN t7.c1
         WHEN t7.c1 = t7.c1 THEN t7.c1
         WHEN t7.c3 <= t7.c3 OR t7.c3 < t7.c4 THEN t7.c0
         WHEN t7.c4 <> CAST(t7.c2 AS INTEGER) THEN t7.c1
         ELSE CAST(t7.c0 AS INTEGER)
    END AND t7.c1 = IFNULL(t7.c1, 
     CASE WHEN t7.c2 <= t7.c2 THEN t7.c0
          ELSE t7.c1
     END) OR 
    CASE t7.c3 WHEN t7.c3 <> t7.c4 THEN t7.c3
         WHEN NULLIF(t7.c0, t7.c0) <> t7.c1 THEN t7.c3
         WHEN t7.c4 IS NULL THEN t7.c4
         WHEN t7.c4 = IFNULL(t7.c4, t7.c4) THEN t7.c3
         WHEN t7.c3 IS NULL THEN t7.c4
         WHEN true THEN t7.c4
         WHEN false OR FALSE <> t7.c1 THEN t7.c3
         WHEN t7.c1 <> t7.c0 THEN t7.c4
         WHEN false THEN t7.c3
         ELSE t7.c3
    END < t7.c3 AND substr(NULL,'text7',FALSE) IS NOT NULL OR true OR t7.c1 <> t7.c1 OR t7.c3 < hex( 15) OR t7.c4 = COALESCE(t7.c0, 89, t7.c4, t7.c2, t7.c3, NULLIF(t7.c2, t7.c1)) AND t7.c4 <= t7.c4 AND t7.c4 = t7.c3 THEN t7.c2
        WHEN true THEN t7.c2
        WHEN CAST(t7.c2 AS TEXT) IS NULL THEN 92
        WHEN t7.c0 <> t7.c0 THEN 
    CASE t7.c2 WHEN t7.c0 <> t7.c0 THEN t7.c2
         WHEN 
     CASE t7.c3 WHEN t7.c4 IS NULL AND t7.c4 < t7.c3 THEN t7.c4
          WHEN EXISTS (
      SELECT t12.c0 AS c5, t12.c1 AS c6
       FROM t0 AS t12
       WHERE t12.c0 IS NOT NULL
       ORDER BY c6, c5, c6 COLLATE BINARY, c6
      ) THEN t7.c4
          WHEN t7.c4 >= t7.c3 THEN t7.c3
          WHEN t7.c4 IS NULL THEN t7.c4
          WHEN true THEN t7.c3
          ELSE t7.c4
     END <> 'text68' OR false THEN t7.c2
         WHEN 
     CASE WHEN t7.c3 > t7.c3 THEN t7.c3
          ELSE t7.c2
     END IS NOT NULL AND IFNULL(t7.c3, t7.c4) IS NOT NULL AND t7.c3 <= t7.c3 THEN 
     CASE WHEN t7.c1 = t7.c0 AND t7.c0 <> t7.c1 AND t7.c2 IS NOT NULL OR t7.c4 < t7.c4 THEN t7.c2
          ELSE t7.c2
     END
         WHEN t7.c0 <> t7.c1 THEN t7.c2
         WHEN t7.c3 <> t7.c3 THEN t7.c2
         WHEN t7.c1 = t7.c0 THEN t7.c2
         WHEN t7.c4 = t7.c3 AND 
     CASE t7.c1 WHEN nullif(38,TRUE) IS NOT NULL OR t7.c2 < t7.c2 AND EXISTS (
      SELECT t13.c0 AS c5, t13.c1 AS c6, t13.c3 AS c7, t13.c3 AS c8, t13.c4 AS c9, t13.c4 AS c10
       FROM t0 AS t13
       WHERE t13.c2 <= t13.c2
       ORDER BY c8, c5 ASC
       LIMIT 859085531335688926 OFFSET 4527042329609642401
      ) THEN 
      CASE WHEN t7.c1 <> t7.c1 OR t7.c1 IS NOT NULL THEN TRUE
           ELSE t7.c0
      END
          WHEN t7.c3 < t7.c3 THEN t7.c1
          WHEN t7.c3 IS NOT NULL THEN t7.c0
          WHEN EXISTS (
      SELECT t14.c1 AS c5
       FROM t0 AS t14
       WHERE t14.c2 > t14.c2
       ORDER BY c5 ASC, c5 COLLATE BINARY DESC, c5, c5 DESC
       LIMIT 5242988455388657419 OFFSET 7741000475064845468
      ) OR ltrim(NULL,10) >= t7.c3 THEN t7.c0
          WHEN t7.c4 > t7.c3 THEN t7.c1
          WHEN t7.c1 = t7.c1 THEN t7.c1
          WHEN t7.c3 IS NOT NULL THEN t7.c1
          WHEN t7.c4 IS NULL THEN t7.c0
          ELSE t7.c1
     END = t7.c1 AND EXISTS (
     SELECT t15.c3 AS c5, t15.c1 AS c6, t15.c3 AS c7, t15.c0 AS c8, t15.c0 AS c9, t15.c3 AS c10, FALSE AS c11, t15.c4 AS c12, t15.c4 AS c13, t15.c0 AS c14, t15.c1 AS c15
      FROM t0 AS t15
      WHERE t15.c3 >= t15.c4
      ORDER BY c13 DESC
      LIMIT 7954834550348411100 
     ) AND t7.c1 <> FALSE OR EXISTS (
     SELECT t16.c2 AS c5, t16.c2 AS c6, t16.c1 AS c7, t16.c2 AS c8, t16.c1 AS c9
      FROM t0 AS t16
      WHERE t16.c2 <> t16.c2 OR t16.c2 IS NULL OR true OR false
      ORDER BY c8 DESC, c9, c9 ASC
      LIMIT 2956441047162132183 OFFSET 4986015516271200417
     ) THEN t7.c2
         WHEN EXISTS (
     SELECT t17.c0 AS c5, t17.c2 AS c6, t17.c0 AS c7, t17.c1 AS c8, t17.c0 AS c9, t17.c1 AS c10, 'text3' AS c11, t17.c4 AS c12, t17.c0 AS c13, t17.c3 AS c14, t17.c4 AS c15
      FROM t0 AS t17
      WHERE t17.c1 = t17.c0 AND false
      ORDER BY c15 COLLATE BINARY DESC, c8 COLLATE RTRIM, c9 DESC
     ) OR t7.c4 = coalesce(NULL,TRUE,TRUE) THEN t7.c2
         WHEN t7.c4 <= rtrim(1,FALSE) THEN t7.c2
         WHEN trim( 77) < t7.c4 THEN t7.c2
         WHEN 3 IS NOT NULL THEN t7.c2
         ELSE t7.c2
    END
        WHEN t7.c0 = t7.c0 THEN 
    CASE WHEN CAST(t7.c0 AS TEXT) = t7.c0 THEN t7.c2
         ELSE t7.c2
    END
        WHEN t7.c0 = t7.c1 THEN t7.c2
        WHEN EXISTS (
    SELECT t18.c2 AS c5
     FROM t0 AS t18
     WHERE t18.c1 IS NOT NULL
     ORDER BY c5, c5 COLLATE BINARY DESC, c5, c5 COLLATE RTRIM
     LIMIT 3638799123751095496 OFFSET 8640018872696988083
    ) THEN t7.c2
        WHEN t7.c1 IS NOT NULL THEN t7.c2
        WHEN t7.c1 = t7.c1 THEN t7.c2
        WHEN 'text70' > t7.c4 THEN t7.c2
        WHEN t7.c1 = t7.c0 THEN t7.c2
        WHEN t7.c1 <> t7.c1 THEN t7.c2
        ELSE last_insert_rowid()
   END AS c6
  FROM t0 AS t7
  WHERE EXISTS (
   SELECT 'text45' AS c5
    FROM t0 AS t19
      LEFT OUTER JOIN t0 AS t20      
       ON (true OR 13 > t20.c2)
    WHERE EXISTS (
     SELECT t21.c0 AS c5, t21.c4 AS c6, t23.c0 AS c7, t21.c1 AS c8, t22.c1 AS c9, t23.c1 AS c10, t23.c4 AS c11, t23.c0 AS c12, t21.c1 AS c13, t23.c2 AS c14, t21.c4 AS c15, t21.c1 AS c16, t21.c0 AS c17, t23.c4 AS c18, t22.c3 AS c19
      FROM t0 AS t21
         INNER JOIN t0 AS t22         
          ON (t21.c2 IS NULL)
        INNER JOIN t0 AS t23        
         ON (t22.c4 = t22.c3)
      WHERE t22.c2 > t22.c2
      ORDER BY c10, c9
      LIMIT 3357200396794197224 OFFSET 2921216331227850670
     )
    ORDER BY c5, c5 DESC, c5 DESC, c5 DESC
   )
  ORDER BY c8, c9
  LIMIT 2448347216437160005 OFFSET 7429300699958575299
 )
ORDER BY c6
LIMIT 1403577210656999270 OFFSET 8763289283022148307;
SELECT subq1.c19 AS c20, subq1.c16 AS c21, subq1.c19 AS c22
FROM (SELECT subq0.c11 AS c15, subq0.c12 AS c16, subq0.c7 AS c17, subq0.c14 AS c18, subq0.c14 AS c19
   FROM (SELECT t1.c2 AS c5, t1.c0 AS c6, t1.c4 AS c7, t1.c2 AS c8, t1.c3 AS c9, t1.c0 AS c10, t1.c2 AS c11, t1.c4 AS c12, t1.c2 AS c13, t1.c2 AS c14
      FROM t0 AS t1
      WHERE t1.c2 <= t1.c2
      ORDER BY c13 ASC, c13
      LIMIT 4433808485509610873 OFFSET 4270990046902628823) as subq0
   WHERE subq0.c6 <> subq0.c10
   ORDER BY c19, c18 ASC, c16
   LIMIT 1539541721348851411 ) as subq1
WHERE EXISTS (
 SELECT subq2.c9 AS c10, subq2.c7 AS c11, subq2.c6 AS c12, subq2.c8 AS c13, char( '󅣻') AS c14, subq2.c9 AS c15, subq2.c5 AS c16, subq2.c9 AS c17, subq2.c5 AS c18, 
   CASE WHEN 
    CASE subq2.c6 WHEN subq2.c8 < 2 AND subq2.c6 >= 82 AND subq2.c8 <= 
     CASE subq2.c6 WHEN true THEN subq2.c6
          WHEN false THEN subq2.c8
          WHEN subq2.c7 <> subq2.c7 THEN subq2.c8
          WHEN 'text55' IS NOT NULL THEN 5
          WHEN subq2.c7 = CAST(subq2.c6 AS TEXT) THEN subq2.c6
          WHEN subq2.c6 IS NULL THEN subq2.c8
          WHEN subq2.c9 >= 'text34' AND subq2.c7 = subq2.c7 AND subq2.c5 < subq2.c9 THEN subq2.c6
          ELSE subq2.c6
     END AND EXISTS (
     SELECT t3.c3 AS c5, t3.c1 AS c6, t3.c4 AS c7, t3.c4 AS c8, t3.c3 AS c9, t3.c4 AS c10, t3.c1 AS c11, t3.c4 AS c12, t3.c4 AS c13, t3.c1 AS c14, t3.c3 AS c15
      FROM t0 AS t3
      WHERE t3.c1 IS NULL AND t3.c0 IS NULL OR t3.c1 = t3.c1
      ORDER BY c11, c10
      LIMIT 7474966626423331094 
     ) THEN subq2.c6
         WHEN subq2.c5 > subq2.c5 THEN subq2.c8
         WHEN subq2.c7 = subq2.c7 THEN subq2.c8
         WHEN subq2.c6 <= NULLIF(subq2.c8, subq2.c8) OR subq2.c7 IS NULL THEN subq2.c8
         WHEN subq2.c7 = FALSE AND subq2.c6 >= subq2.c8 AND subq2.c6 = subq2.c6 THEN subq2.c6
         WHEN subq2.c8 < subq2.c8 OR subq2.c8 IS NULL AND subq2.c6 IS NULL THEN subq2.c8
         WHEN subq2.c9 IS NOT NULL THEN subq2.c6
         ELSE subq2.c8
    END <= subq2.c6 AND subq2.c8 IS NULL THEN subq2.c8
        ELSE subq2.c6
   END AS c16, subq2.c8 AS c17
  FROM (SELECT t2.c3 AS c5, t2.c2 AS c6, t2.c1 AS c7, t2.c2 AS c8, t2.c4 AS c9
     FROM t0 AS t2
     WHERE t2.c4 IS NULL
     ORDER BY c8 DESC, c5 ASC
     LIMIT 8002761654860030979 OFFSET 9049959510328541695) as subq2
  WHERE subq2.c9 <= subq2.c9
  ORDER BY c14 ASC
 )
ORDER BY c21 ASC, c22 ASC
LIMIT 8072257783927089736 OFFSET 4482320815356932455;
SELECT t1.c0 AS c5
FROM t0 AS t1
WHERE true
ORDER BY c5
LIMIT 2600174398258150723 OFFSET 1917223127444948526;
SELECT 
 CASE WHEN t1.c4 IS NULL THEN t1.c0
      ELSE t1.c1
 END AS c5, t1.c3 AS c6, t1.c4 AS c7, typeof( FALSE) AS c8, t1.c4 AS c9, t1.c1 AS c10, t1.c1 AS c11, t1.c3 AS c12, t1.c0 AS c13
FROM t0 AS t1
WHERE 
 CASE t1.c0 WHEN EXISTS (
  SELECT 'text12' AS c15, subq0.c9 AS c16, subq0.c12 AS c17, subq0.c6 AS c18, subq0.c7 AS c19, subq0.c9 AS c20, subq0.c12 AS c21, subq0.c5 AS c22, subq0.c12 AS c23, subq0.c7 AS c24, subq0.c14 AS c25
   FROM (SELECT t2.c4 AS c5, t3.c3 AS c6, t3.c3 AS c7, t3.c2 AS c8, t2.c4 AS c9, t2.c1 AS c10, t2.c2 AS c11, 'text82' AS c12, t2.c0 AS c13, t3.c2 AS c14
      FROM t0 AS t2
        INNER JOIN t0 AS t3        
         ON (true)
      WHERE TRUE = t2.c1 AND t3.c0 = t3.c0
      ORDER BY c10, c6 ASC
      LIMIT 4588280832324273724 OFFSET 5704030885377280258) as subq0
   WHERE false
   ORDER BY c20, c15, c15 COLLATE BINARY
   LIMIT 8885509213589079908 OFFSET 2128362343820441501
  ) THEN TRUE
      WHEN CAST(t1.c0 AS INTEGER) IS NULL THEN t1.c1
      WHEN EXISTS (
  SELECT t4.c2 AS c5, t4.c0 AS c6, COALESCE(t4.c4, t4.c1, t4.c2) AS c7, t4.c2 AS c8, t4.c1 AS c9
   FROM t0 AS t4
   WHERE EXISTS (
    SELECT t5.c0 AS c5
     FROM t0 AS t5
       LEFT OUTER JOIN t0 AS t6       
        ON (t5.c2 = t6.c2)
     WHERE t6.c1 <> t5.c0
     ORDER BY c5, c5, c5, c5 ASC
     LIMIT 6550364574743139184 OFFSET 6980217630039464931
    )
   ORDER BY c5, c5 ASC
   LIMIT 7484292984213385629 OFFSET 3401791205828933362
  ) THEN t1.c0
      WHEN t1.c4 <> t1.c4 AND 'text93' = t1.c3 OR 16 <= instr(NULL,73) THEN t1.c0
      WHEN EXISTS (
  SELECT t7.c0 AS c5, t7.c3 AS c6, 'text4' AS c7, t7.c3 AS c8, t7.c1 AS c9, t7.c3 AS c10, t7.c4 AS c11, t7.c1 AS c12
   FROM t0 AS t7
   WHERE t7.c2 < t7.c2 OR t7.c0 <> t7.c0
   ORDER BY c7
   LIMIT 6584135481390634338 OFFSET 7295540522272641558
  ) THEN t1.c1
      ELSE t1.c1
 END <> t1.c1
ORDER BY c6, c13 COLLATE NOCASE ASC, c6 COLLATE RTRIM;
SELECT subq0.c7 AS c8, subq0.c6 AS c9, subq0.c7 AS c10, subq0.c6 AS c11
FROM (SELECT t1.c0 AS c5, 
    CASE WHEN t1.c3 <> t1.c3 AND t1.c3 = t1.c3 THEN t1.c1
         ELSE t1.c1
    END AS c6, t1.c0 AS c7
   FROM t0 AS t1
   WHERE CAST(CAST(t1.c3 AS INTEGER) AS TEXT) >= t1.c2 AND t1.c4 <= t1.c4 AND false AND t1.c3 <= t1.c3 AND t1.c0 = t1.c1
   ORDER BY c7 COLLATE RTRIM) as subq0
WHERE subq0.c5 IS NOT NULL
ORDER BY c11 DESC;
SELECT subq0.c6 AS c14, subq0.c7 AS c15, rtrim( NULL) AS c16, subq0.c10 AS c17, subq0.c11 AS c18, subq0.c13 AS c19
FROM (SELECT t1.c3 AS c5, t1.c4 AS c6, t1.c4 AS c7, t1.c1 AS c8, t1.c1 AS c9, t2.c3 AS c10, t2.c1 AS c11, t1.c4 AS c12, t1.c1 AS c13
   FROM t0 AS t1
     LEFT JOIN t0 AS t2     
      ON (t2.c2 > t1.c2)
   WHERE true
   ORDER BY c10, c9 COLLATE RTRIM DESC, c12 ASC
   LIMIT 4362000772297136295 ) as subq0
WHERE EXISTS (
 SELECT t3.c0 AS c5
  FROM t0 AS t3
    LEFT OUTER JOIN t0 AS t4    
     ON (t3.c3 > t3.c4)
  WHERE t3.c1 = t3.c0
  ORDER BY c5 COLLATE BINARY DESC, c5 DESC, c5 ASC, c5 COLLATE BINARY
  LIMIT 7939901670535464408 OFFSET 4545040257089207519
 )
ORDER BY c18 COLLATE NOCASE, c18 DESC
LIMIT 6104352425389784360 OFFSET 5955547808094904054;
SELECT subq0.c7 AS c16, ltrim( NULL) AS c17, upper( 'text32') AS c18, subq0.c6 AS c19, subq0.c6 AS c20, subq0.c6 AS c21, 
 CASE WHEN subq0.c15 >= subq0.c14 THEN subq0.c9
      ELSE subq0.c13
 END AS c22, subq0.c11 AS c23, subq0.c12 AS c24, subq0.c8 AS c25, subq0.c9 AS c26, ltrim( 5) AS c27, subq0.c8 AS c28, subq0.c14 AS c29, subq0.c5 AS c30, subq0.c8 AS c31, subq0.c14 AS c32, subq0.c6 AS c33, subq0.c7 AS c34, subq0.c9 AS c35, COALESCE(
  CASE WHEN subq0.c10 > subq0.c5 THEN subq0.c10
       ELSE subq0.c15
  END, subq0.c15) AS c36, 
 CASE WHEN CAST(subq0.c14 AS INTEGER) IS NULL OR subq0.c8 <= subq0.c8 OR COALESCE(subq0.c10, 'text57', subq0.c6, subq0.c14) <> ifnull('text87',NULL) AND subq0.c8 <> subq0.c5 AND 
  CASE subq0.c15 WHEN subq0.c10 <= subq0.c5 THEN 
   CASE subq0.c11 WHEN COALESCE(subq0.c9, subq0.c9, subq0.c9) <> subq0.c13 OR 
    CASE subq0.c11 WHEN true OR true OR false OR true THEN 'text52'
         WHEN subq0.c10 IS NULL AND EXISTS (
     SELECT t2.c3 AS c5, FALSE AS c6, t2.c1 AS c7, t2.c0 AS c8, t2.c3 AS c9, t2.c3 AS c10, t2.c0 AS c11, t2.c3 AS c12, t2.c1 AS c13, t2.c3 AS c14
      FROM t0 AS t2
      WHERE t2.c1 IS NULL AND t2.c3 <> t2.c3 AND t2.c0 = t2.c0 AND true OR t2.c3 <> t2.c4
      ORDER BY c13, c5 ASC, c5
      LIMIT 6788655080720587291 OFFSET 1899981574903655941
     ) AND 
     CASE subq0.c14 WHEN EXISTS (
      SELECT t3.c2 AS c5, t3.c4 AS c6
       FROM t0 AS t3
       WHERE t3.c0 = t3.c0 AND t3.c1 = t3.c1
       ORDER BY c5 COLLATE BINARY DESC
       LIMIT 6933726717328695230 
      ) AND EXISTS (
      SELECT t4.c0 AS c5, t4.c3 AS c6, t4.c0 AS c7, t4.c2 AS c8, t4.c1 AS c9, t4.c2 AS c10, t4.c2 AS c11, t4.c2 AS c12, t4.c2 AS c13, t4.c0 AS c14, t4.c2 AS c15, t4.c2 AS c16
       FROM t0 AS t4
       WHERE t4.c4 > t4.c4
       ORDER BY c16 ASC, c10 ASC
      ) THEN subq0.c14
          WHEN EXISTS (
      SELECT t5.c3 AS c5
       FROM t0 AS t5
       WHERE t5.c2 < t5.c2 AND t5.c1 <> t5.c0 OR t5.c3 < t5.c4 OR t5.c1 <> t5.c0
       ORDER BY c5 COLLATE RTRIM, c5 ASC, c5, c5 COLLATE NOCASE
       LIMIT 850669297414196847 OFFSET 4622548188443094402
      ) THEN 
      CASE WHEN subq0.c5 < subq0.c5 AND subq0.c9 IS NOT NULL AND EXISTS (
       SELECT t6.c0 AS c5, t6.c0 AS c6, 'text68' AS c7, t6.c2 AS c8, t6.c3 AS c9, t6.c3 AS c10
        FROM t0 AS t6
        WHERE t6.c1 IS NULL
        ORDER BY c6
       ) AND subq0.c12 IS NULL THEN subq0.c11
           ELSE subq0.c11
      END
          WHEN subq0.c11 IS NULL THEN subq0.c11
          WHEN subq0.c10 <> 'text56' THEN subq0.c14
          WHEN subq0.c14 <= subq0.c11 THEN subq0.c11
          ELSE subq0.c11
     END <> subq0.c11 AND EXISTS (
     SELECT t7.c3 AS c5, t7.c2 AS c6, t7.c2 AS c7, t7.c4 AS c8
      FROM t0 AS t7
      WHERE t7.c1 <> t7.c1
      ORDER BY c7
      LIMIT 4973541772725683198 
     ) THEN subq0.c13
         ELSE subq0.c15
    END IS NOT NULL AND subq0.c11 IS NOT NULL OR true AND subq0.c15 <> subq0.c14 OR subq0.c9 <> subq0.c13 THEN subq0.c14
        WHEN subq0.c8 > subq0.c6 AND subq0.c10 IS NOT NULL THEN subq0.c15
        WHEN false THEN subq0.c11
        WHEN 
    CASE subq0.c9 WHEN subq0.c14 IS NULL THEN subq0.c7
         WHEN EXISTS (
     SELECT t8.c3 AS c5, t8.c0 AS c6, t8.c4 AS c7, t8.c1 AS c8, t8.c0 AS c9, t8.c0 AS c10
      FROM t0 AS t8
      WHERE t8.c3 = t8.c3
      ORDER BY c9, c6, c5 ASC
      LIMIT 6854276327548674258 OFFSET 7058438772987728828
     ) THEN subq0.c12
         WHEN subq0.c15 IS NULL THEN 
     CASE WHEN subq0.c10 < subq0.c10 THEN subq0.c13
          ELSE subq0.c9
     END
         WHEN 
     CASE WHEN subq0.c11 = COALESCE(subq0.c14, NULL, subq0.c10, subq0.c12) THEN subq0.c15
          ELSE subq0.c14
     END <= subq0.c15 THEN subq0.c7
         ELSE subq0.c12
    END <> subq0.c12 THEN subq0.c14
        WHEN subq0.c5 = subq0.c8 AND EXISTS (
    SELECT t9.c2 AS c5, t9.c4 AS c6, t9.c2 AS c7, FALSE AS c8, t9.c1 AS c9, t9.c1 AS c10, t9.c4 AS c11, FALSE AS c12, t9.c4 AS c13
     FROM t0 AS t9
     WHERE t9.c2 <> t9.c2
     ORDER BY c9 ASC, c8, c6 COLLATE NOCASE DESC
     LIMIT 3111865747522544756 OFFSET 8818921073663001124
    ) THEN 
    CASE WHEN subq0.c9 = subq0.c9 THEN subq0.c11
         ELSE subq0.c11
    END
        WHEN EXISTS (
    SELECT t10.c2 AS c5, t13.c3 AS c6, t13.c0 AS c7, t10.c3 AS c8
     FROM t0 AS t10
        LEFT JOIN t0 AS t11        
         ON (EXISTS (
          SELECT t12.c3 AS c5, t12.c2 AS c6, t12.c1 AS c7, t12.c0 AS c8
           FROM t0 AS t12
           WHERE t12.c1 IS NULL
           ORDER BY c5, c8 ASC, c7
           LIMIT 2563923760736791743 OFFSET 818742636304022016
          ))
       LEFT OUTER JOIN t0 AS t13       
        ON (t11.c0 = t13.c0)
     WHERE rtrim( TRUE) <> t11.c3
     ORDER BY c5 COLLATE BINARY
     LIMIT 5750140899086152473 OFFSET 255962755359413720
    ) THEN subq0.c14
        ELSE subq0.c14
   END
       WHEN 
   CASE WHEN CAST(subq0.c14 AS INTEGER) < subq0.c14 THEN subq0.c13
        ELSE subq0.c9
   END <> subq0.c12 OR false THEN subq0.c11
       WHEN subq0.c12 = FALSE THEN subq0.c15
       WHEN false OR true AND subq0.c10 >= subq0.c5 AND subq0.c11 IS NULL THEN like(NULL,NULL,'䧯')
       WHEN subq0.c11 = subq0.c15 THEN subq0.c15
       WHEN subq0.c13 IS NULL AND subq0.c14 IS NOT NULL THEN subq0.c14
       WHEN subq0.c12 = subq0.c13 THEN subq0.c14
       WHEN subq0.c13 = 
   CASE WHEN FALSE <> subq0.c12 THEN subq0.c12
        ELSE subq0.c12
   END AND subq0.c15 > subq0.c11 AND subq0.c13 = subq0.c7 AND subq0.c12 <> subq0.c7 THEN subq0.c15
       WHEN subq0.c11 < subq0.c14 THEN unicode( 'text31')
       WHEN NULLIF(subq0.c11, subq0.c8) IS NULL THEN subq0.c14
       ELSE subq0.c11
  END < subq0.c11 THEN subq0.c11
      ELSE subq0.c15
 END AS c9, subq0.c8 AS c10, subq0.c9 AS c11
FROM (SELECT t1.c4 AS c5, t1.c3 AS c6, t1.c1 AS c7, 'text58' AS c8, t1.c1 AS c9, t1.c4 AS c10, t1.c2 AS c11, t1.c1 AS c12, t1.c0 AS c13, t1.c2 AS c14, t1.c2 AS c15
   FROM t0 AS t1
   WHERE t1.c0 = t1.c1
   ORDER BY c13, c10 COLLATE BINARY, c12
   LIMIT 4161811369001853361 OFFSET 2896118348636856467) as subq0
WHERE subq0.c8 <> subq0.c5
ORDER BY c28 COLLATE NOCASE ASC
LIMIT 6413504771394309603 OFFSET 988164676702390008;
SELECT subq0.c5 AS c6, subq0.c5 AS c7, subq0.c5 AS c8, subq0.c5 AS c9
FROM (SELECT CAST(t1.c1 AS TEXT) AS c5
   FROM t0 AS t1
   WHERE t1.c3 <> t1.c4
   ORDER BY c5 ASC, c5, c5 ASC, c5 ASC
   LIMIT 7650228415807023503 OFFSET 1037743489935355866) as subq0
WHERE 
 CASE subq0.c5 WHEN true THEN subq0.c5
      WHEN FALSE <> subq0.c5 THEN subq0.c5
      WHEN FALSE = subq0.c5 THEN subq0.c5
      WHEN subq0.c5 <> subq0.c5 THEN subq0.c5
      WHEN true AND true THEN subq0.c5
      WHEN TRUE = subq0.c5 THEN subq0.c5
      WHEN 
  CASE subq0.c5 WHEN subq0.c5 = subq0.c5 THEN subq0.c5
       WHEN true THEN subq0.c5
       WHEN subq0.c5 = subq0.c5 OR subq0.c5 = subq0.c5 THEN subq0.c5
       WHEN true THEN subq0.c5
       WHEN subq0.c5 = subq0.c5 THEN subq0.c5
       WHEN CAST(subq0.c5 AS BOOLEAN) = 
   CASE WHEN subq0.c5 <> subq0.c5 AND false THEN subq0.c5
        ELSE FALSE
   END THEN COALESCE(subq0.c5, 
    CASE WHEN subq0.c5 = subq0.c5 THEN 70
         ELSE subq0.c5
    END, subq0.c5, subq0.c5, subq0.c5)
       WHEN subq0.c5 <> subq0.c5 AND 
   CASE subq0.c5 WHEN subq0.c5 IS NOT NULL THEN subq0.c5
        WHEN subq0.c5 = subq0.c5 THEN subq0.c5
        WHEN subq0.c5 IS NULL THEN subq0.c5
        ELSE subq0.c5
   END <> subq0.c5 THEN subq0.c5
       WHEN EXISTS (
   SELECT t2.c2 AS c5, t2.c0 AS c6
    FROM t0 AS t2
    WHERE t2.c4 <> t2.c3 AND EXISTS (
     SELECT t3.c3 AS c5, t3.c3 AS c6, t3.c3 AS c7, t3.c1 AS c8, t3.c0 AS c9, t3.c4 AS c10, 'text43' AS c11, t3.c1 AS c12, t3.c4 AS c13, t3.c3 AS c14, t3.c0 AS c15, t3.c0 AS c16, t3.c0 AS c17, t3.c3 AS c18, TRUE AS c19, t3.c2 AS c20, t3.c0 AS c21, t3.c3 AS c22, t3.c1 AS c23, t3.c4 AS c24, 'text61' AS c25, t3.c3 AS c26, t3.c3 AS c27, t3.c4 AS c28, t3.c4 AS c29, t3.c2 AS c30, t3.c0 AS c31, t3.c4 AS c32
      FROM t0 AS t3
      WHERE EXISTS (
       SELECT t4.c0 AS c5, t4.c2 AS c6, TRUE AS c7, t4.c3 AS c8, t4.c4 AS c9
        FROM t0 AS t4
        WHERE t4.c4 = t4.c3 OR t4.c3 IS NULL OR t4.c3 >= t4.c3
        ORDER BY c7 COLLATE NOCASE, c5 COLLATE RTRIM, c9
        LIMIT 8175500199592287143 OFFSET 8317624910725178186
       )
      ORDER BY c25, c20
      LIMIT 2549402579434778756 OFFSET 6244282780929568723
     ) AND t2.c3 = t2.c3 OR t2.c4 > t2.c4 OR EXISTS (
     SELECT t6.c1 AS c6, t5.c0 AS c7, t5.c0 AS c8, t6.c0 AS c9, t5.c2 AS c10, t5.c2 AS c11, t6.c0 AS c12, t5.c3 AS c13, t6.c4 AS c14, t6.c4 AS c15, t5.c2 AS c16, t6.c1 AS c17, 'text79' AS c18
      FROM t0 AS t5
        INNER JOIN t0 AS t6        
         ON (EXISTS (
          SELECT t7.c4 AS c5
           FROM t0 AS t7
           WHERE t7.c4 < t7.c3 AND false OR t7.c0 IS NOT NULL
           ORDER BY c5, c5 COLLATE BINARY, c5, c5
           LIMIT 6652365638663906351 OFFSET 7843776912794387513
          ))
      WHERE t5.c2 IS NULL
      ORDER BY c10, c6 DESC
      LIMIT 7029802581180541923 OFFSET 1251209932834081182
     ) OR t2.c0 = t2.c0 OR t2.c0 IS NOT NULL
    ORDER BY c6 ASC, c6
    LIMIT 575390790762056101 OFFSET 2685813815770657622
   ) AND subq0.c5 <> subq0.c5 OR hex( NULL) IS NOT NULL AND subq0.c5 = subq0.c5 THEN subq0.c5
       ELSE subq0.c5
  END = subq0.c5 THEN subq0.c5
      ELSE subq0.c5
 END = subq0.c5
ORDER BY c8, c9
LIMIT 5180313879508208403 OFFSET 8679953812939082998;
SELECT t1.c0 AS c5, t1.c0 AS c6
FROM t0 AS t1
WHERE t1.c3 <= NULLIF(t1.c3, t1.c4)
ORDER BY c5 DESC, c5 DESC;
SELECT subq0.c5 AS c16, subq0.c11 AS c17, subq0.c10 AS c18, subq0.c5 AS c19, 
 CASE WHEN subq0.c9 < CAST(subq0.c12 AS BOOLEAN) THEN subq0.c10
      ELSE subq0.c8
 END AS c20, subq0.c5 AS c21, subq0.c13 AS c22, subq0.c6 AS c23
FROM (SELECT t1.c3 AS c5, t1.c3 AS c6, t1.c2 AS c7, t1.c3 AS c8, t1.c2 AS c9, t1.c4 AS c10, COALESCE(t1.c3, t1.c3, t1.c4, t1.c4, 'text50', COALESCE(t1.c4, t1.c2)) AS c11, t1.c2 AS c12, t1.c2 AS c13, trim( 79) AS c14, t1.c1 AS c15
   FROM t0 AS t1
   WHERE false
   ORDER BY c9 COLLATE NOCASE
   LIMIT 3402061381603452309 OFFSET 7542812376963396136) as subq0
WHERE EXISTS (
 SELECT t2.c3 AS c5, 
   CASE t2.c4 WHEN 
    CASE WHEN t2.c4 >= t2.c4 THEN t2.c0
         ELSE FALSE
    END = t2.c1 THEN 'text43'
        WHEN COALESCE(70, t2.c2, 'text76', t2.c1) IS NOT NULL THEN t2.c3
        WHEN t2.c4 IS NOT NULL AND t2.c2 <> t2.c2 AND t2.c3 <> 'text77' OR t2.c3 > 
    CASE t2.c4 WHEN ltrim(FALSE,'text47') IS NULL OR t2.c4 IS NULL THEN t2.c3
         WHEN t2.c4 IS NOT NULL THEN t2.c3
         WHEN 
     CASE WHEN 'text62' >= t2.c3 THEN t2.c4
          ELSE t2.c4
     END IS NOT NULL THEN t2.c3
         WHEN t2.c2 <> t2.c2 THEN t2.c4
         WHEN COALESCE(t2.c4, t2.c4, t2.c4, t2.c1) = t2.c0 THEN t2.c4
         WHEN t2.c1 <> t2.c1 THEN t2.c4
         WHEN t2.c4 IS NOT NULL OR t2.c2 <> t2.c2 THEN t2.c4
         WHEN t2.c4 IS NULL THEN t2.c3
         WHEN t2.c3 <= t2.c3 THEN t2.c4
         WHEN t2.c1 IS NULL THEN trim( 10)
         WHEN t2.c4 = t2.c3 THEN t2.c4
         WHEN t2.c1 <> t2.c0 THEN 'text53'
         ELSE t2.c4
    END OR t2.c4 = t2.c3 AND t2.c4 >= t2.c3 OR t2.c3 < t2.c4 AND EXISTS (
    SELECT t3.c3 AS c5
     FROM t0 AS t3
     WHERE NULLIF(t3.c4, t3.c4) < t3.c3 OR t3.c3 > t3.c4
     ORDER BY c5 ASC, c5, c5, c5 DESC
     LIMIT 2218944108569448964 OFFSET 6636010463034176072
    ) AND t2.c2 IS NULL OR t2.c0 <> t2.c0 AND t2.c3 > t2.c4 OR t2.c2 >= t2.c2 THEN t2.c3
        WHEN 
    CASE WHEN t2.c1 <> COALESCE(t2.c4, t2.c3, t2.c1, t2.c1, t2.c3, NULL) THEN 
     CASE WHEN t2.c2 <> t2.c2 THEN t2.c1
          ELSE t2.c0
     END
         ELSE t2.c1
    END = t2.c0 THEN t2.c3
        WHEN t2.c2 < CAST(t2.c3 AS BOOLEAN) THEN t2.c3
        WHEN t2.c1 = t2.c1 THEN t2.c4
        ELSE t2.c3
   END AS c6, t2.c3 AS c7, FALSE AS c8, t2.c1 AS c9, TRUE AS c10, TRUE AS c11, t2.c3 AS c12, t2.c0 AS c13, t2.c0 AS c14, t2.c1 AS c15, t2.c3 AS c16, t2.c1 AS c17, t2.c1 AS c18, CAST(t2.c0 AS INTEGER) AS c19, t2.c1 AS c20, t2.c0 AS c21, 
   CASE WHEN t2.c4 IS NOT NULL THEN t2.c0
        ELSE t2.c0
   END AS c22, t2.c0 AS c23
  FROM t0 AS t2
  WHERE t2.c2 = t2.c2
  ORDER BY c10 ASC
  LIMIT 3139971046204543185 OFFSET 4119189290305930496
 )
ORDER BY c16;
SELECT 61 AS c5, t4.c1 AS c6, t2.c4 AS c7, changes() AS c8, 
 CASE WHEN t4.c2 IS NOT NULL THEN t2.c0
      ELSE t2.c0
 END AS c9, t2.c0 AS c10
FROM t0 AS t1
    LEFT JOIN t0 AS t2    
     ON (t1.c1 = t2.c1)
   INNER JOIN (SELECT t3.c2 AS c5
     FROM t0 AS t3
     WHERE typeof( 54) IS NOT NULL AND false
     ORDER BY c5 COLLATE RTRIM, c5, c5 DESC, c5 ASC
     LIMIT 5325262712675107075 ) as subq0   
    ON (t1.c1 = t1.c1)
  LEFT JOIN t0 AS t4  
   ON (false)
WHERE 
 CASE t4.c3 WHEN CAST(COALESCE(max('text18',NULL,NULL), t2.c1, 
    CASE t1.c1 WHEN t1.c3 <> t4.c4 THEN t4.c1
         ELSE t1.c1
    END, t2.c1, subq0.c5) AS TEXT) <> t1.c1 THEN t4.c3
      WHEN t4.c1 = t1.c0 THEN t4.c4
      WHEN t1.c3 IS NOT NULL THEN t2.c4
      WHEN 
  CASE t4.c1 WHEN t1.c3 IS NULL THEN subq0.c5
       WHEN t2.c2 < t1.c2 THEN t1.c2
       WHEN t1.c1 = t4.c0 THEN t1.c4
       WHEN t4.c1 <> t1.c1 THEN t1.c1
       WHEN t2.c2 < t1.c2 THEN t4.c0
       WHEN t1.c3 > 'text37' THEN subq0.c5
       WHEN t4.c2 >= t4.c2 THEN subq0.c5
       WHEN 
   CASE WHEN 
    CASE WHEN t2.c2 <= t4.c2 AND EXISTS (
     SELECT t5.c3 AS c5, t5.c0 AS c6, t5.c0 AS c7, t5.c0 AS c8, t5.c2 AS c9, t5.c4 AS c10
      FROM t0 AS t5
      WHERE false
      ORDER BY c10 DESC
      LIMIT 3093484654214207686 OFFSET 899757040249453268
     ) THEN t2.c4
         ELSE t2.c4
    END <> t2.c3 OR t4.c2 <> t4.c2 THEN t4.c3
        ELSE t4.c4
   END <= t4.c4 THEN t1.c4
       WHEN likely( 100) IS NULL THEN subq0.c5
       ELSE FALSE
  END IS NOT NULL THEN t1.c3
      WHEN t4.c4 <> t1.c3 THEN t1.c4
      WHEN subq0.c5 > 100 AND t2.c0 <> t4.c1 THEN t4.c3
      WHEN true AND t1.c1 = t4.c0 OR t2.c1 <> 
  CASE t2.c0 WHEN t1.c1 IS NULL OR EXISTS (
   SELECT t7.c0 AS c5, t7.c1 AS c6, t7.c1 AS c7, t6.c1 AS c8, t6.c3 AS c9, typeof( FALSE) AS c10, t6.c1 AS c11
    FROM t0 AS t6
      INNER JOIN t0 AS t7      
       ON (t6.c0 = t7.c0)
    WHERE t7.c0 = t7.c0
    ORDER BY c9 COLLATE RTRIM, c5, c10
    LIMIT 8460302035414154448 
   ) THEN t2.c0
       WHEN t2.c0 = t4.c1 THEN t2.c1
       WHEN t1.c2 IS NOT NULL THEN t4.c1
       WHEN ltrim( FALSE) <= t4.c3 THEN t1.c0
       WHEN true OR t4.c3 = t4.c3 AND t1.c4 = t1.c4 THEN t4.c0
       WHEN t2.c2 <> t1.c2 THEN t1.c0
       WHEN t1.c0 <> t2.c0 THEN t4.c0
       ELSE t2.c1
  END OR t2.c1 <> t4.c1 THEN typeof( NULL)
      WHEN COALESCE(t4.c2, COALESCE(t4.c4, t1.c1, t2.c4), subq0.c5, t2.c1) <> 
  CASE WHEN t4.c2 <> t2.c2 THEN TRUE
       ELSE TRUE
  END THEN t2.c3
      WHEN trim(23,FALSE) <= t2.c4 THEN t2.c3
      WHEN like(64,NULL,'򶠦') IS NOT NULL THEN t2.c3
      ELSE t2.c3
 END > t1.c3 AND t2.c1 = t2.c1 OR t4.c0 = t2.c1 OR t2.c3 <> t4.c4
ORDER BY c9 ASC;
UPDATE t0 
SET c1 = t0.c1, c2 = 
  CASE WHEN t0.c0 = t0.c1 AND EXISTS (
   SELECT t1.c2 AS c5, t1.c2 AS c6, t1.c4 AS c7, 
     CASE WHEN t1.c4 = t1.c3 THEN 'text54'
          ELSE t1.c3
     END AS c8, t1.c1 AS c9, t1.c4 AS c10, t1.c0 AS c11
    FROM t0 AS t1
    WHERE t1.c2 <> t1.c2
    ORDER BY c9 ASC, c11
    LIMIT 2992400446803034473 OFFSET 6192550463074542774
   ) OR t0.c0 <> t0.c0 AND EXISTS (
   SELECT t2.c2 AS c6, t2.c4 AS c7, t3.c3 AS c8
    FROM t0 AS t2
      INNER JOIN t0 AS t3      
       ON (t3.c3 <= t3.c3 OR false AND EXISTS (
        SELECT t4.c0 AS c5
         FROM t0 AS t4
         WHERE TRUE = t4.c0
         ORDER BY c5 COLLATE BINARY, c5 COLLATE NOCASE, c5 ASC, c5 ASC
         LIMIT 2694125847424613928 
        ) OR t3.c3 > 'text58' AND t2.c0 = t2.c1 AND false OR t3.c3 = t2.c4)
    WHERE t3.c2 = t2.c2
    ORDER BY c8
    LIMIT 6938220888781207687 
   ) AND t0.c0 <> t0.c0 OR t0.c3 <= t0.c4 OR true OR t0.c3 = t0.c3 AND EXISTS (
   SELECT t6.c3 AS c5, substr(NULL,1,'text54') AS c6, t5.c2 AS c7, t6.c2 AS c8, t5.c0 AS c9, t5.c3 AS c10, t6.c1 AS c11, t6.c4 AS c12, t6.c4 AS c13, 19 AS c14
    FROM t0 AS t5
      INNER JOIN t0 AS t6      
       ON (t5.c0 = t6.c0)
    WHERE t5.c3 IS NULL
    ORDER BY c7, c12
   ) OR false AND 
   CASE WHEN t0.c4 <> 
    CASE WHEN t0.c4 IS NULL THEN t0.c3
         ELSE t0.c3
    END THEN t0.c4
        ELSE t0.c3
   END < 'text82' AND t0.c2 > t0.c2 OR t0.c4 < 'text31' THEN t0.c2
       ELSE t0.c2
  END, c3 = t0.c3, c4 = t0.c3
WHERE t0.c0 <> t0.c1;
SELECT subq1.c9 AS c19, subq1.c6 AS c20, subq1.c7 AS c21, subq1.c7 AS c22, subq1.c16 AS c23, subq1.c16 AS c24, subq1.c14 AS c25, 
 CASE subq1.c9 WHEN EXISTS (
  SELECT t3.c2 AS c5, t3.c3 AS c6
   FROM t0 AS t3
   WHERE t3.c0 <> t3.c0
   ORDER BY c5, c5 ASC, c5 COLLATE BINARY DESC, c5
   LIMIT 7670145637718216232 OFFSET 2923638993225791704
  ) THEN subq1.c7
      WHEN subq1.c6 = subq1.c9 OR subq1.c7 = subq1.c9 THEN subq1.c6
      WHEN subq1.c16 = subq1.c9 THEN 
  CASE subq1.c9 WHEN subq1.c10 <> subq1.c13 THEN subq1.c17
       WHEN subq1.c9 <> subq1.c8 THEN subq1.c10
       WHEN TRUE <> subq1.c17 THEN subq1.c7
       WHEN NULLIF(subq1.c8, subq1.c11) <> subq1.c9 THEN subq1.c6
       WHEN subq1.c8 IS NULL THEN subq1.c10
       WHEN subq1.c8 = subq1.c8 THEN IFNULL(subq1.c6, subq1.c16)
       WHEN subq1.c17 IS NOT NULL AND subq1.c14 <> subq1.c14 THEN subq1.c6
       WHEN subq1.c12 IS NOT NULL THEN subq1.c8
       ELSE subq1.c8
  END
      WHEN subq1.c12 <> subq1.c16 THEN subq1.c14
      WHEN subq1.c10 = subq1.c9 THEN subq1.c8
      WHEN 
  CASE WHEN subq1.c11 <> subq1.c16 THEN subq1.c6
       ELSE 
   CASE subq1.c9 WHEN true THEN subq1.c12
        ELSE subq1.c14
   END
  END = subq1.c7 THEN 
  CASE subq1.c15 WHEN subq1.c18 <> subq1.c12 THEN subq1.c16
       WHEN subq1.c16 <> subq1.c13 AND subq1.c18 <> subq1.c9 THEN CAST(subq1.c12 AS BOOLEAN)
       WHEN subq1.c12 = CAST(34 AS INTEGER) THEN subq1.c8
       WHEN subq1.c17 = subq1.c12 THEN subq1.c11
       ELSE IFNULL(TRUE, subq1.c10)
  END
      WHEN subq1.c18 <> subq1.c6 THEN subq1.c6
      WHEN subq1.c7 <> subq1.c13 THEN IFNULL(subq1.c14, subq1.c12)
      WHEN subq1.c7 <> subq1.c7 THEN COALESCE(subq1.c15, subq1.c6, 
   CASE subq1.c14 WHEN false THEN subq1.c13
        WHEN subq1.c7 IS NOT NULL THEN subq1.c7
        WHEN true THEN subq1.c13
        WHEN subq1.c12 = subq1.c10 THEN subq1.c13
        WHEN subq1.c15 = subq1.c14 THEN subq1.c15
        ELSE subq1.c18
   END, subq1.c16, subq1.c16, 
   CASE WHEN subq1.c18 <> 
    CASE WHEN false OR subq1.c18 IS NULL AND subq1.c11 IS NOT NULL AND subq1.c17 <> subq1.c8 AND subq1.c17 <> subq1.c13 THEN NULLIF(subq1.c16, subq1.c18)
         ELSE subq1.c12
    END THEN subq1.c10
        ELSE subq1.c15
   END)
      WHEN EXISTS (
  SELECT t4.c0 AS c5, t4.c3 AS c6, t4.c4 AS c7, t5.c0 AS c8
   FROM t0 AS t4
     CROSS JOIN t0 AS t5     
      ON (t4.c0 = t5.c1)
   WHERE t5.c0 <> t5.c1 AND COALESCE(typeof( 'text3'), CAST(t4.c1 AS TEXT), t4.c2, t5.c4) < t4.c4
   ORDER BY c8, c8, c8 DESC
   LIMIT 403982315531071409 
  ) THEN subq1.c11
      WHEN TRUE = 
  CASE WHEN subq1.c10 IS NULL THEN subq1.c6
       ELSE subq1.c8
  END AND subq1.c16 <> subq1.c12 AND subq1.c16 = subq1.c7 OR subq1.c16 = 
  CASE WHEN subq1.c6 <> subq1.c13 THEN subq1.c10
       ELSE subq1.c15
  END THEN subq1.c18
      ELSE subq1.c16
 END AS c9, subq1.c15 AS c10, subq1.c9 AS c11, subq1.c11 AS c12, subq1.c18 AS c13, subq1.c10 AS c14
FROM (SELECT subq0.c5 AS c6, subq0.c5 AS c7, subq0.c5 AS c8, subq0.c5 AS c9, subq0.c5 AS c10, subq0.c5 AS c11, subq0.c5 AS c12, FALSE AS c13, subq0.c5 AS c14, subq0.c5 AS c15, subq0.c5 AS c16, subq0.c5 AS c17, subq0.c5 AS c18
   FROM (SELECT t1.c0 AS c5
      FROM t0 AS t1
        INNER JOIN t0 AS t2        
         ON (t1.c3 = t2.c3)
      WHERE t1.c4 > t1.c3
      ORDER BY c5 DESC
      LIMIT 2782585414274041998 OFFSET 6358858317480658929) as subq0
   WHERE subq0.c5 <> subq0.c5
   ORDER BY c18 ASC, c7 COLLATE NOCASE
   LIMIT 3922418890334376294 ) as subq1
WHERE subq1.c11 = subq1.c7
ORDER BY c23 ASC, c9 DESC
LIMIT 7129545774786607297 ;
SELECT 
 CASE WHEN t1.c3 = t1.c3 AND t1.c4 >= t1.c3 THEN t1.c1
      ELSE t1.c1
 END AS c5, 
 CASE t1.c3 WHEN t1.c1 = t1.c1 THEN t1.c4
      WHEN 
  CASE WHEN t1.c4 IS NOT NULL THEN t1.c4
       ELSE 
   CASE t1.c4 WHEN t1.c3 <> t1.c4 THEN t1.c3
        WHEN t1.c4 > t1.c4 AND false AND 
    CASE t1.c0 WHEN t1.c4 = 
     CASE WHEN t1.c3 IS NULL THEN t1.c4
          ELSE t1.c4
     END THEN COALESCE(t1.c0, t1.c0, t1.c4, t1.c1, 5)
         WHEN t1.c1 = t1.c0 OR t1.c1 <> t1.c0 THEN t1.c1
         WHEN t1.c4 <= t1.c3 THEN t1.c1
         WHEN t1.c2 >= t1.c2 THEN t1.c0
         WHEN t1.c2 = t1.c2 THEN t1.c0
         WHEN t1.c2 = t1.c2 THEN t1.c0
         WHEN t1.c0 IS NULL THEN t1.c0
         ELSE t1.c1
    END <> t1.c1 THEN t1.c1
        WHEN COALESCE(t1.c0, t1.c0, t1.c0) = t1.c0 THEN 93
        WHEN t1.c3 IS NULL THEN t1.c3
        WHEN t1.c2 <= t1.c2 AND t1.c2 <= t1.c2 THEN t1.c4
        WHEN t1.c2 <> t1.c2 THEN t1.c1
        WHEN false OR t1.c3 IS NULL OR t1.c0 = t1.c0 THEN t1.c2
        ELSE t1.c0
   END
  END IS NOT NULL THEN 'text86'
      WHEN t1.c1 = t1.c0 AND true OR t1.c2 <> t1.c2 AND t1.c3 IS NOT NULL OR 
  CASE t1.c0 WHEN t1.c4 < t1.c3 THEN t1.c1
       WHEN EXISTS (
   SELECT t2.c1 AS c5, 14 AS c6, t2.c1 AS c7, t2.c1 AS c8, COALESCE(t2.c2, t2.c1, t2.c2, t2.c2) AS c9
    FROM t0 AS t2
    WHERE t2.c1 <> t2.c0
    ORDER BY c9, c8, c9 ASC
   ) THEN t1.c1
       WHEN 
   CASE t1.c4 WHEN t1.c0 = TRUE THEN t1.c3
        WHEN false THEN COALESCE(t1.c4, t1.c0)
        WHEN 14 IS NOT NULL THEN t1.c4
        ELSE t1.c4
   END <> t1.c4 THEN t1.c1
       WHEN EXISTS (
   SELECT t3.c1 AS c5
    FROM t0 AS t3
    WHERE EXISTS (
     SELECT t4.c0 AS c5, t4.c1 AS c6, t4.c0 AS c7, t4.c1 AS c8
      FROM t0 AS t4
      WHERE t4.c3 <= t4.c3
      ORDER BY c8, c6, c7
     ) AND t3.c2 IS NOT NULL
    ORDER BY c5
    LIMIT 2792286276345389041 OFFSET 8252790564458480890
   ) THEN t1.c0
       WHEN t1.c3 <> t1.c3 THEN t1.c1
       WHEN t1.c4 > t1.c3 THEN t1.c1
       WHEN t1.c4 IS NULL OR t1.c0 <> t1.c0 AND 
   CASE WHEN t1.c4 >= t1.c4 THEN t1.c1
        ELSE t1.c1
   END = t1.c1 AND t1.c1 IS NOT NULL AND t1.c1 IS NOT NULL AND t1.c0 <> CAST(t1.c2 AS BOOLEAN) OR false AND false OR t1.c1 = t1.c1 THEN t1.c1
       WHEN t1.c4 >= 
   CASE t1.c4 WHEN t1.c1 = t1.c0 OR t1.c0 <> t1.c0 OR t1.c1 <> t1.c1 THEN 'text90'
        WHEN t1.c3 < t1.c4 THEN t1.c4
        WHEN t1.c2 = t1.c2 OR t1.c4 <= t1.c3 OR t1.c4 = t1.c4 AND t1.c0 = t1.c1 OR t1.c2 < t1.c2 THEN 'text82'
        WHEN t1.c0 = t1.c1 THEN t1.c4
        WHEN FALSE = t1.c0 AND EXISTS (
    SELECT t6.c2 AS c16, t5.c3 AS c17
     FROM t0 AS t5
       LEFT OUTER JOIN t0 AS t6       
        ON (EXISTS (
         SELECT t7.c4 AS c5, t7.c4 AS c6, t7.c4 AS c7, t7.c0 AS c8, t7.c1 AS c9, t7.c3 AS c10, t7.c0 AS c11, t7.c3 AS c12, t7.c3 AS c13, t7.c1 AS c14, t7.c2 AS c15
          FROM t0 AS t7
          WHERE 'text62' <> t7.c4
          ORDER BY c10
         ))
     WHERE t6.c4 > t5.c3
     ORDER BY c17, c17 ASC, c17, c17 ASC
     LIMIT 7134500109200221922 OFFSET 6091390189995936639
    ) THEN t1.c4
        WHEN false OR EXISTS (
    SELECT t8.c1 AS c5, t8.c0 AS c6, t8.c1 AS c7, t8.c0 AS c8
     FROM t0 AS t8
     WHERE t8.c0 <> t8.c0
     ORDER BY c5, c7
     LIMIT 2604841441477572529 OFFSET 4500756157147599877
    ) AND EXISTS (
    SELECT t9.c1 AS c16, t10.c1 AS c17, t9.c0 AS c18, FALSE AS c19, t9.c2 AS c20, t9.c2 AS c21, t9.c1 AS c22, t10.c3 AS c23, t10.c3 AS c24, t10.c3 AS c25, t10.c2 AS c26, t9.c1 AS c27, t9.c0 AS c28, t10.c4 AS c29, t10.c4 AS c30, t9.c1 AS c31, t9.c2 AS c32, t9.c3 AS c33, t9.c4 AS c34, t9.c4 AS c35
     FROM t0 AS t9
       INNER JOIN t0 AS t10       
        ON (EXISTS (
         SELECT t11.c1 AS c5, t11.c2 AS c6, t11.c4 AS c7, t11.c4 AS c8, t11.c2 AS c9, t11.c0 AS c10, t11.c2 AS c11, t11.c1 AS c12, t11.c1 AS c13, t11.c2 AS c14, t11.c1 AS c15
          FROM t0 AS t11
          WHERE t11.c3 IS NOT NULL
          ORDER BY c5, c14 COLLATE NOCASE, c9 COLLATE NOCASE
          LIMIT 4627396145134404822 OFFSET 3564891983105868637
         ))
     WHERE t9.c0 = t9.c0
     ORDER BY c22 DESC
     LIMIT 4130173847725284425 OFFSET 5053968478641418788
    ) THEN COALESCE(t1.c4, t1.c1, t1.c4, t1.c0, t1.c3)
        WHEN EXISTS (
    SELECT t12.c4 AS c5, t12.c3 AS c6, t12.c3 AS c7, t12.c1 AS c8, t12.c1 AS c9
     FROM t0 AS t12
     WHERE t12.c4 = t12.c4
     ORDER BY c5 COLLATE BINARY ASC
     LIMIT 4505108561046325172 OFFSET 7231207427057716912
    ) THEN t1.c4
        WHEN false THEN t1.c4
        WHEN t1.c2 < t1.c2 THEN t1.c3
        WHEN t1.c0 = t1.c0 THEN t1.c3
        ELSE 'text22'
   END OR like('text94',TRUE) IS NULL AND t1.c1 <> t1.c0 THEN t1.c1
       WHEN t1.c1 = t1.c1 THEN t1.c1
       WHEN t1.c1 <> t1.c1 AND t1.c0 <> t1.c1 AND false THEN t1.c0
       ELSE t1.c1
  END <> t1.c0 AND t1.c2 < t1.c2 THEN t1.c4
      WHEN EXISTS (
  SELECT t13.c0 AS c5, t13.c4 AS c6, t13.c1 AS c7, t13.c4 AS c8, 31 AS c9, t13.c0 AS c10, t13.c4 AS c11
   FROM t0 AS t13
   WHERE EXISTS (
    SELECT t14.c2 AS c5, t14.c4 AS c6, t14.c1 AS c7, t14.c4 AS c8, t14.c3 AS c9, t14.c0 AS c10, t14.c1 AS c11, t14.c0 AS c12, t14.c2 AS c13, t14.c2 AS c14, t14.c2 AS c15, 
      CASE WHEN t14.c4 = t14.c4 THEN t14.c0
           ELSE t14.c1
      END AS c16, t14.c1 AS c17, t14.c2 AS c18
     FROM t0 AS t14
     WHERE t14.c0 IS NULL
     ORDER BY c14, c6, c9 DESC
    )
   ORDER BY c8
   LIMIT 7934842793835000096 OFFSET 96835703227815762
  ) THEN t1.c4
      WHEN EXISTS (
  SELECT t15.c1 AS c5
   FROM t0 AS t15
   WHERE t15.c3 <> t15.c3
   ORDER BY c5, c5, c5, c5 ASC
  ) THEN t1.c4
      ELSE t1.c4
 END AS c6, t1.c0 AS c7
FROM t0 AS t1
WHERE t1.c4 IS NOT NULL
ORDER BY c7 ASC, c5 COLLATE BINARY DESC
LIMIT 6176705353512136169 OFFSET 9175225352063802760;
SELECT t2.c4 AS c6, t3.c2 AS c7, t12.c1 AS c8, t1.c3 AS c9, COALESCE(t9.c3, t7.c3, t12.c4) AS c10, t1.c1 AS c11
FROM t0 AS t1
     INNER JOIN (
     t0 AS t2
      LEFT JOIN (
      t0 AS t3
       LEFT JOIN t0 AS t4       
        ON (t3.c2 = t4.c2)      )
       ON (TRUE = t2.c0 OR t3.c1 <> t4.c1)     )
      ON (t4.c0 <> t1.c1)
    LEFT JOIN (
    t0 AS t5
     INNER JOIN (
     t0 AS t6
       INNER JOIN t0 AS t7       
        ON (t6.c0 = t7.c1)
      INNER JOIN (
      t0 AS t8
        LEFT JOIN t0 AS t9        
         ON (t9.c1 IS NOT NULL)
       LEFT JOIN t0 AS t10       
        ON (t9.c0 = t10.c0)      )
       ON (t7.c0 <> t9.c0 OR t8.c2 = t8.c2 OR t8.c1 = t9.c1 AND t10.c0 <> t7.c1)     )
      ON (t7.c3 < t6.c4)    )
     ON (t7.c4 = t7.c4)
   LEFT JOIN t0 AS t11   
    ON (rtrim( FALSE) IS NOT NULL)
  INNER JOIN t0 AS t12  
   ON (EXISTS (
    SELECT t13.c1 AS c5
     FROM t0 AS t13
     WHERE t13.c4 < t13.c4
     ORDER BY c5
     LIMIT 8270820271041030551 OFFSET 3825914714316438460
    ))
WHERE t12.c0 = t2.c0
ORDER BY c11 ASC
LIMIT 3103056937596406731 ;
SELECT char( '𧂊') AS c5, t3.c0 AS c6, 
 CASE t3.c4 WHEN subq0.c6 IS NOT NULL THEN COALESCE(CAST(subq0.c6 AS INTEGER), t2.c1, t2.c4, t3.c4, t3.c3)
      WHEN t2.c1 = subq0.c5 THEN t2.c4
      WHEN subq0.c5 IS NOT NULL AND EXISTS (
  SELECT t5.c1 AS c5, t4.c1 AS c6, t5.c2 AS c7, t5.c4 AS c8
   FROM t0 AS t4
     INNER JOIN t0 AS t5     
      ON (true)
   WHERE true
   ORDER BY c6 ASC, c5 COLLATE BINARY, c8
  ) THEN t3.c4
      WHEN true THEN 
  CASE WHEN false THEN subq0.c6
       ELSE t3.c3
  END
      WHEN t2.c4 IS NULL THEN 'text19'
      ELSE replace('text99',NULL,FALSE)
 END AS c9
FROM (SELECT t1.c1 AS c5, t1.c4 AS c6
     FROM t0 AS t1
     WHERE t1.c0 = t1.c0
     ORDER BY c6 ASC, c6 DESC
     LIMIT 9077108534711673551 OFFSET 5259501269888887123) as subq0
   INNER JOIN t0 AS t2   
    ON (subq0.c5 <> t2.c1)
  LEFT OUTER JOIN t0 AS t3  
   ON (subq0.c5 = t2.c0)
WHERE t2.c0 <> t2.c0
ORDER BY c5, c5;
SELECT 
 CASE subq1.c7 WHEN 'text51' > COALESCE(NULL, subq1.c11, subq1.c9) THEN 
  CASE subq1.c12 WHEN subq1.c11 >= 
   CASE WHEN subq1.c12 >= subq1.c6 THEN subq1.c12
        ELSE subq1.c20
   END THEN CAST(likely( NULL) AS INTEGER)
       WHEN subq1.c10 = subq1.c15 THEN subq1.c19
       WHEN subq1.c13 <> subq1.c7 THEN 
   CASE subq1.c21 WHEN 
    CASE WHEN 4 < subq1.c11 OR 71 < subq1.c6 OR subq1.c15 <> subq1.c10 THEN 67
         ELSE subq0.c5
    END IS NOT NULL THEN subq1.c11
        WHEN subq1.c12 = subq1.c19 THEN subq1.c13
        WHEN subq1.c10 <> subq1.c10 THEN subq1.c21
        WHEN subq1.c5 <> subq1.c5 THEN subq1.c9
        WHEN subq1.c7 <> subq1.c11 THEN subq1.c12
        ELSE subq1.c9
   END
       WHEN subq1.c18 IS NOT NULL THEN subq1.c13
       WHEN false THEN subq1.c20
       ELSE subq1.c14
  END
      WHEN subq1.c22 = subq1.c22 THEN subq1.c12
      WHEN subq0.c5 <> IFNULL(subq1.c17, subq1.c15) THEN subq1.c12
      ELSE subq1.c7
 END AS c12, FALSE AS c13, IFNULL(
  CASE subq1.c16 WHEN subq1.c16 IS NULL THEN subq1.c17
       WHEN 
   CASE WHEN subq1.c13 <= subq1.c13 THEN subq1.c11
        ELSE subq1.c9
   END <= subq1.c13 THEN subq1.c16
       WHEN subq1.c7 <> subq1.c13 THEN subq1.c17
       WHEN subq1.c5 = subq1.c16 THEN subq1.c8
       WHEN IFNULL(subq1.c16, subq1.c16) <> 
   CASE subq1.c15 WHEN true OR CAST(subq1.c13 AS BOOLEAN) < subq1.c14 THEN subq1.c16
        WHEN subq1.c6 IS NULL THEN subq1.c15
        WHEN subq1.c11 < subq1.c6 THEN subq1.c10
        WHEN subq1.c6 >= subq0.c7 AND subq1.c20 < subq1.c18 THEN subq1.c8
        WHEN subq1.c7 > subq1.c11 AND subq0.c7 IS NULL THEN subq1.c16
        WHEN subq1.c7 <= subq1.c20 THEN 
    CASE subq1.c15 WHEN subq0.c5 = subq1.c8 THEN TRUE
         WHEN subq1.c20 >= nullif(FALSE,FALSE) THEN subq1.c16
         ELSE subq1.c10
    END
        WHEN likelihood(NULL,0.516589) = subq1.c6 THEN subq1.c15
        WHEN true THEN subq1.c15
        WHEN subq1.c20 >= subq1.c6 AND subq1.c13 IS NULL THEN subq1.c10
        WHEN subq0.c7 IS NULL THEN subq1.c15
        ELSE subq1.c10
   END OR subq1.c14 <> subq1.c11 THEN subq1.c16
       ELSE subq1.c8
  END, subq1.c8) AS c14
FROM (SELECT t1.c0 AS c5, t1.c2 AS c6, t1.c2 AS c7
    FROM t0 AS t1
    WHERE t1.c3 < t1.c4
    ORDER BY c7 ASC, c5 ASC, c7 DESC
    LIMIT 3293793834436996527 OFFSET 7107286077066259884) as subq0
  INNER JOIN (SELECT FALSE AS c5, t2.c2 AS c6, t2.c2 AS c7, t2.c2 AS c8, t2.c1 AS c9, t2.c0 AS c10, ltrim(89,TRUE) AS c11, t2.c3 AS c12, t2.c2 AS c13, 
     CASE WHEN t2.c0 <> t2.c0 THEN t2.c4
          ELSE t2.c4
     END AS c14, t2.c1 AS c15, t2.c0 AS c16, 
     CASE WHEN t2.c0 = t2.c1 THEN t2.c0
          ELSE t2.c0
     END AS c17, t2.c4 AS c18, t2.c3 AS c19, t2.c4 AS c20, t2.c3 AS c21, t2.c1 AS c22, 
     CASE t2.c3 WHEN t2.c0 = t2.c1 THEN t2.c3
          WHEN t2.c1 = t2.c1 THEN t2.c4
          WHEN t2.c2 < 
      CASE t2.c2 WHEN t2.c4 <= t2.c4 OR t2.c1 = t2.c0 THEN t2.c2
           ELSE t2.c2
      END AND t2.c1 <> t2.c1 THEN 
      CASE t2.c3 WHEN 17 IS NULL THEN t2.c4
           WHEN false THEN t2.c4
           WHEN t2.c0 = t2.c0 AND t2.c2 < t2.c2 THEN t2.c4
           WHEN t2.c3 <> t2.c3 THEN t2.c4
           WHEN t2.c2 IS NULL THEN t2.c3
           WHEN FALSE IS NOT NULL THEN t2.c4
           WHEN true THEN t2.c3
           ELSE t2.c4
      END
          WHEN t2.c2 > t2.c2 THEN t2.c3
          WHEN t2.c2 <= t2.c2 OR t2.c0 <> t2.c1 AND t2.c4 >= t2.c3 OR t2.c4 = t2.c3 AND false OR t2.c2 < t2.c2 THEN t2.c4
          WHEN t2.c4 > t2.c4 OR t2.c4 < t2.c3 OR t2.c0 = t2.c1 THEN t2.c4
          WHEN EXISTS (
      SELECT t3.c2 AS c5
       FROM t0 AS t3
       WHERE t3.c1 = t3.c0
       ORDER BY c5 ASC, c5 DESC, c5 DESC, c5 COLLATE RTRIM
       LIMIT 7709032762746632643 OFFSET 7376018762359741172
      ) THEN t2.c4
          WHEN t2.c1 = t2.c0 THEN t2.c4
          WHEN t2.c3 <= t2.c4 AND t2.c1 IS NULL THEN t2.c3
          ELSE t2.c3
     END AS c6, t2.c4 AS c7, t2.c0 AS c8, t2.c3 AS c9, t2.c1 AS c10, t2.c2 AS c11, t2.c3 AS c12, t2.c4 AS c13, t2.c3 AS c14, t2.c4 AS c15, IFNULL(t2.c0, t2.c1) AS c16
    FROM t0 AS t2
    WHERE t2.c0 <> TRUE
    ORDER BY c10 COLLATE NOCASE, c7 COLLATE BINARY
    LIMIT 610947007801378071 OFFSET 168011639812140909) as subq1  
   ON (EXISTS (
    SELECT t4.c4 AS c5, t4.c1 AS c6, t4.c2 AS c7, t4.c0 AS c8, t4.c3 AS c9, t4.c0 AS c10, t4.c0 AS c11
     FROM t0 AS t4
     WHERE t4.c4 >= 'text78'
     ORDER BY c9 DESC, c10, c10 COLLATE RTRIM
     LIMIT 898341392455045083 
    ))
WHERE subq0.c7 <> changes()
ORDER BY c14 ASC, c13 ASC
LIMIT 3556305609401271102 OFFSET 3229854399308450598;
SELECT subq1.c11 AS c23, subq1.c9 AS c24, 
 CASE WHEN subq1.c22 <> subq1.c17 AND subq1.c18 IS NULL THEN subq1.c19
      ELSE subq1.c15
 END AS c25, subq1.c20 AS c26, subq1.c9 AS c27
FROM (SELECT subq0.c6 AS c8, subq0.c7 AS c9, subq0.c7 AS c10, TRUE AS c11, subq0.c5 AS c12, subq0.c5 AS c13, subq0.c7 AS c14, subq0.c5 AS c15, subq0.c6 AS c16, subq0.c6 AS c17, subq0.c6 AS c18, subq0.c5 AS c19, subq0.c6 AS c20, subq0.c6 AS c21, subq0.c7 AS c22
   FROM (SELECT t1.c2 AS c5, t1.c1 AS c6, t2.c0 AS c7
      FROM t0 AS t1
         INNER JOIN t0 AS t2         
          ON (t2.c0 IS NOT NULL)
        INNER JOIN t0 AS t3        
         ON (t3.c1 = t3.c0)
      WHERE t2.c2 IS NULL
      ORDER BY c7 COLLATE BINARY, c6, c6) as subq0
   WHERE subq0.c5 < 64
   ORDER BY c17, c19) as subq1
WHERE subq1.c16 <> subq1.c22 AND subq1.c22 <> subq1.c20 AND subq1.c12 IS NOT NULL
ORDER BY c24, c25
LIMIT 1110807301795834827 OFFSET 2456157225734304969;
WITH cte0 AS (
SELECT subq0.c6 AS c8, 
  CASE subq0.c7 WHEN subq0.c5 <> subq0.c5 THEN subq0.c7
       ELSE CAST(subq0.c7 AS INTEGER)
  END AS c9, subq0.c5 AS c10, subq0.c7 AS c11
 FROM (SELECT t2.c0 AS c5, t2.c2 AS c6, t1.c2 AS c7
    FROM t0 AS t1
      INNER JOIN t0 AS t2      
       ON (t1.c1 = t1.c1)
    WHERE t2.c2 > t2.c2
    ORDER BY c7) as subq0
 WHERE subq0.c5 <> IFNULL(
   CASE WHEN subq0.c6 >= subq0.c6 THEN subq0.c5
        ELSE subq0.c5
   END, subq0.c5)
 ORDER BY c9
)SELECT t3.c4 AS c5, t3.c1 AS c6, t3.c1 AS c7, t3.c2 AS c8, 'text49' AS c9
 FROM t0 AS t3
 WHERE 
  CASE t3.c1 WHEN t3.c2 <= t3.c2 THEN t3.c0
       WHEN t3.c1 IS NOT NULL THEN t3.c0
       WHEN t3.c1 = t3.c1 THEN t3.c0
       WHEN t3.c4 > t3.c3 THEN t3.c1
       WHEN 
   CASE t3.c0 WHEN typeof( 55) IS NOT NULL THEN t3.c1
        WHEN t3.c1 <> t3.c1 THEN t3.c0
        WHEN t3.c2 IS NOT NULL THEN t3.c0
        WHEN t3.c0 = t3.c0 THEN 
    CASE WHEN t3.c0 <> t3.c0 THEN t3.c0
         ELSE t3.c1
    END
        ELSE t3.c1
   END = t3.c0 THEN t3.c0
       WHEN t3.c4 >= t3.c3 OR t3.c2 < t3.c2 AND t3.c1 = t3.c0 THEN t3.c0
       WHEN t3.c4 <> t3.c3 THEN 
   CASE WHEN t3.c1 <> t3.c0 THEN TRUE
        ELSE t3.c1
   END
       WHEN t3.c2 <> t3.c2 THEN TRUE
       ELSE t3.c1
  END = t3.c0
 ORDER BY c9, c9 DESC, c6
 LIMIT 5680819516663033366 ;
SELECT t1.c3 AS c5, t1.c1 AS c6
FROM t0 AS t1
WHERE t1.c3 >= t1.c4
ORDER BY c5;
SELECT subq0.c5 AS c10, subq0.c5 AS c11
FROM (SELECT t1.c1 AS c5, t1.c2 AS c6, t1.c2 AS c7, typeof( 'text50') AS c8, rtrim( 'text65') AS c9
   FROM t0 AS t1
   WHERE t1.c1 = t1.c0
   ORDER BY c5 DESC, c9 ASC
   LIMIT 24799900406682765 OFFSET 4741762902678767312) as subq0
WHERE changes() > subq0.c6
ORDER BY c11 ASC
LIMIT 2503552588106857604 OFFSET 8413925533588853087;
SELECT COALESCE(
  CASE subq0.c7 WHEN 59 <> subq0.c7 THEN subq0.c7
       WHEN subq0.c7 IS NULL THEN 91
       WHEN subq0.c6 IS NULL THEN subq0.c7
       WHEN subq0.c9 > subq0.c6 THEN subq0.c7
       WHEN subq0.c5 IS NOT NULL THEN subq0.c7
       WHEN subq0.c5 > subq0.c6 THEN subq0.c7
       ELSE subq0.c7
  END, subq0.c5, subq0.c7, subq0.c7, min(25,TRUE,98), glob(FALSE,FALSE)) AS c10, subq0.c6 AS c11
FROM (SELECT t1.c4 AS c5, 
    CASE WHEN t1.c4 >= t1.c3 THEN t1.c4
         ELSE t1.c3
    END AS c6, t1.c2 AS c7, t1.c0 AS c8, t1.c4 AS c9
   FROM t0 AS t1
   WHERE t1.c0 <> t1.c1
   ORDER BY c8
   LIMIT 4766834418036265097 ) as subq0
WHERE subq0.c9 < subq0.c5 AND subq0.c9 = 
 CASE WHEN EXISTS (
  SELECT t2.c3 AS c5, t3.c4 AS c6
   FROM t0 AS t2
     LEFT JOIN (
     t0 AS t3
       INNER JOIN t0 AS t4       
        ON (t3.c0 = t4.c0)
      INNER JOIN t0 AS t5      
       ON (t4.c3 > t5.c3)     )
      ON (FALSE <> t5.c1)
   WHERE t2.c0 = t5.c0
   ORDER BY c6, c6 COLLATE NOCASE, c6, c6 ASC
   LIMIT 8490533462399838054 
  ) AND subq0.c5 <> subq0.c5 AND EXISTS (
  SELECT t7.c4 AS c5, t7.c0 AS c6, t8.c3 AS c7, t6.c1 AS c8
   FROM t0 AS t6
     LEFT JOIN (
     t0 AS t7
      LEFT JOIN t0 AS t8      
       ON (t7.c1 = t8.c0)     )
      ON (t7.c2 <= t6.c2 OR t6.c0 = t8.c0 OR t7.c4 > t7.c3)
   WHERE t6.c3 = t7.c4
   ORDER BY c7, c8, c8
   LIMIT 6233793246515383299 OFFSET 3441918969469709575
  ) OR rtrim( 29) < subq0.c6 THEN CAST(subq0.c9 AS TEXT)
      ELSE subq0.c5
 END AND subq0.c7 <> IFNULL(subq0.c7, CAST(subq0.c7 AS TEXT))
ORDER BY c11, c10 ASC, c11 DESC, c11 ASC
LIMIT 282853075688543141 ;
SELECT t3.c3 AS c5, subq1.c9 AS c6, t4.c1 AS c7, 
 CASE WHEN false THEN subq0.c12
      ELSE t9.c2
 END AS c8, t4.c0 AS c9, t2.c2 AS c10, subq1.c5 AS c11
FROM (SELECT ALL t1.c0 AS c5, t1.c1 AS c6, t1.c4 AS c7, t1.c3 AS c8, t1.c2 AS c9, t1.c4 AS c10, t1.c2 AS c11, t1.c2 AS c12
      FROM t0 AS t1
      WHERE true
      ORDER BY c10 DESC, c5 ASC
      LIMIT 41073035181378662 OFFSET 7508414774379620263) as subq0
    LEFT JOIN (
    t0 AS t2
      INNER JOIN (
      t0 AS t3
       LEFT JOIN t0 AS t4       
        ON (t3.c2 IS NULL)      )
       ON (t2.c4 IS NOT NULL)
     INNER JOIN t0 AS t5     
      ON (t3.c3 = t5.c3)    )
     ON (subq0.c9 = t3.c2)
   INNER JOIN (SELECT t7.c0 AS c5, t7.c1 AS c6, t6.c4 AS c7, t6.c4 AS c8, t7.c2 AS c9, t6.c0 AS c10, t6.c4 AS c11, t6.c2 AS c12
     FROM t0 AS t6
       LEFT JOIN t0 AS t7       
        ON (t7.c1 <> t6.c0 OR false OR t6.c4 IS NULL OR t6.c1 IS NULL AND t6.c1 <> TRUE)
     WHERE t7.c3 IS NULL
     ORDER BY c8 ASC, c6 COLLATE NOCASE DESC, c6) as subq1   
    ON (EXISTS (
     SELECT t8.c2 AS c5, t8.c4 AS c6
      FROM t0 AS t8
      WHERE t8.c4 < t8.c4
      ORDER BY c6, c6, c5, c5
      LIMIT 2537565696639121586 
     ) AND subq1.c6 = t5.c0 AND false)
  LEFT JOIN t0 AS t9  
   ON (t5.c1 <> subq1.c10)
WHERE t5.c0 = t2.c0
ORDER BY c11
LIMIT 3310742449865818221 OFFSET 5736357731361314190;
SELECT t1.c4 AS c7, t1.c4 AS c8, ifnull(NULL,TRUE) AS c9, t1.c2 AS c10
FROM t0 AS t1
  LEFT JOIN (SELECT t2.c3 AS c5, t2.c1 AS c6
    FROM t0 AS t2
      LEFT JOIN (
      t0 AS t3
        INNER JOIN t0 AS t4        
         ON (t3.c4 = t4.c3)
       LEFT JOIN (
       t0 AS t5
        INNER JOIN t0 AS t6        
         ON (t5.c4 <= 'text67' OR t6.c0 <> t5.c0)       )
        ON (t3.c0 = t5.c0)      )
       ON (t5.c0 <> t2.c0)
    WHERE 'text87' IS NOT NULL OR t6.c1 <> t3.c1
    ORDER BY c6 DESC, c5
    LIMIT 678758717739253628 OFFSET 7956642315979474206) as subq0  
   ON (subq0.c5 IS NULL)
WHERE t1.c2 > t1.c2 OR t1.c4 IS NOT NULL OR subq0.c6 = t1.c0 AND subq0.c6 = t1.c1
ORDER BY c10, c8
LIMIT 2524953228254914477 OFFSET 598983902145454566;
SELECT substr(54,NULL) AS c17, subq1.c16 AS c18, 'text62' AS c19, subq1.c16 AS c20, subq1.c15 AS c21, lower( 13) AS c22
FROM (SELECT subq0.c6 AS c14, subq0.c8 AS c15, subq0.c7 AS c16
   FROM (SELECT t2.c2 AS c5, t1.c4 AS c6, t1.c2 AS c7, t1.c3 AS c8, t2.c2 AS c9, t1.c3 AS c10, t2.c3 AS c11, t2.c1 AS c12, t1.c2 AS c13
      FROM t0 AS t1
        LEFT JOIN t0 AS t2        
         ON (t1.c2 = t2.c2)
      WHERE true
      ORDER BY c13
      LIMIT 8201775635107847452 ) as subq0
   WHERE subq0.c11 >= subq0.c11
   ORDER BY c16 DESC, c14 COLLATE NOCASE) as subq1
WHERE subq1.c14 < subq1.c15
ORDER BY c19 ASC, c20, c17 ASC
LIMIT 5029637149809841468 OFFSET 3846350810183957678;
SELECT subq0.c11 AS c16, subq0.c14 AS c17, subq0.c12 AS c18, subq0.c12 AS c19, subq0.c11 AS c20, subq0.c13 AS c21, subq0.c12 AS c22, subq0.c14 AS c23, subq0.c12 AS c24, 'text97' AS c25, subq0.c14 AS c26, subq0.c13 AS c27, subq0.c15 AS c28, subq0.c10 AS c29, subq0.c15 AS c30, 4 AS c31
FROM (SELECT t1.c3 AS c10, t1.c4 AS c11, 
    CASE WHEN true OR t2.c4 > t2.c3 THEN t1.c3
         ELSE t2.c3
    END AS c12, t1.c2 AS c13, t2.c1 AS c14, t2.c2 AS c15
   FROM t0 AS t1
     LEFT JOIN t0 AS t2     
      ON (EXISTS (
       SELECT t3.c0 AS c5, t3.c0 AS c6, t3.c3 AS c7, t3.c0 AS c8, t3.c3 AS c9
        FROM t0 AS t3
        WHERE t3.c2 < 62
        ORDER BY c6, c7
       ))
   WHERE t1.c0 = t1.c0
   ORDER BY c15 ASC, c12 COLLATE RTRIM) as subq0
WHERE subq0.c12 <> subq0.c11
ORDER BY c24
LIMIT 4551370241845064754 ;
SELECT t1.c1 AS c5, t1.c0 AS c6
FROM t0 AS t1
WHERE t1.c4 < t1.c3
ORDER BY c5 ASC, c5 ASC, c6 COLLATE NOCASE, c6 DESC
LIMIT 3714541978499501669 OFFSET 4655061888683352919;
SELECT subq0.c9 AS c18, 
 CASE subq0.c17 WHEN subq0.c6 <> subq0.c10 THEN subq0.c6
      WHEN NULLIF(subq0.c7, subq0.c9) IS NULL THEN subq0.c6
      WHEN subq0.c5 >= subq0.c7 THEN subq0.c6
      WHEN subq0.c8 <> subq0.c9 THEN subq0.c17
      WHEN subq0.c7 > subq0.c17 THEN subq0.c7
      WHEN CAST('text77' AS TEXT) > subq0.c10 THEN subq0.c7
      WHEN subq0.c8 >= subq0.c9 THEN subq0.c10
      WHEN EXISTS (
  SELECT t6.c4 AS c5
   FROM t0 AS t6
   WHERE t6.c2 >= t6.c2
   ORDER BY c5 ASC, c5 COLLATE NOCASE, c5, c5
   LIMIT 7273801475027888559 OFFSET 9113955976679901074
  ) AND COALESCE(subq0.c9, subq0.c7, subq0.c6) <> subq0.c17 OR subq0.c10 = rtrim(TRUE,'text15') OR subq0.c7 > 'text85' OR subq0.c17 < subq0.c7 AND 'text33' <= subq0.c17 AND subq0.c5 = 
  CASE subq0.c6 WHEN subq0.c17 > subq0.c5 AND IFNULL(subq0.c5, subq0.c6) <> subq0.c5 AND subq0.c17 >= subq0.c5 THEN subq0.c6
       WHEN subq0.c5 > subq0.c7 THEN subq0.c17
       WHEN nullif(98,70) >= subq0.c17 THEN rtrim( FALSE)
       ELSE replace(53,NULL,TRUE)
  END AND hex( 95) = ifnull(NULL,NULL) THEN subq0.c17
      WHEN subq0.c10 > trim('text32',FALSE) THEN subq0.c17
      WHEN subq0.c7 = subq0.c7 THEN subq0.c7
      ELSE subq0.c6
 END AS c6, subq0.c9 AS c7, 
 CASE WHEN 'text11' > subq0.c5 THEN subq0.c5
      ELSE subq0.c10
 END AS c8, 'text80' AS c9, subq0.c17 AS c10, subq0.c6 AS c11, subq0.c8 AS c12, subq0.c6 AS c13, subq0.c6 AS c14, subq0.c6 AS c15, subq0.c7 AS c16, subq0.c10 AS c17
FROM (SELECT t1.c3 AS c5, t3.c4 AS c6, t2.c3 AS c7, t3.c2 AS c8, t1.c2 AS c9, t1.c4 AS c10, 
    CASE t2.c3 WHEN EXISTS (
     SELECT t4.c2 AS c5, t4.c3 AS c6, t4.c2 AS c7
      FROM t0 AS t4
      WHERE t4.c2 <> t4.c2
      ORDER BY c5 COLLATE RTRIM, c6 ASC, c5
     ) THEN t1.c3
         WHEN t1.c3 < t3.c3 THEN t2.c4
         WHEN t1.c1 = t3.c1 THEN t1.c3
         WHEN t1.c4 <= t2.c4 THEN t1.c3
         WHEN false THEN t2.c4
         WHEN 'text52' >= t2.c3 OR t1.c3 >= t2.c4 AND t1.c1 = t3.c0 AND EXISTS (
     SELECT t5.c2 AS c5, t5.c0 AS c6, t5.c4 AS c7, t5.c1 AS c8, t5.c2 AS c9, t5.c2 AS c10, t5.c3 AS c11, t5.c1 AS c12, t5.c3 AS c13, t5.c0 AS c14, t5.c2 AS c15, t5.c1 AS c16
      FROM t0 AS t5
      WHERE t5.c4 IS NULL
      ORDER BY c16 DESC
      LIMIT 3382141745694902 
     ) OR t2.c1 = t1.c1 AND t2.c0 IS NULL AND TRUE <> t3.c1 OR t2.c1 IS NOT NULL THEN t3.c4
         ELSE t1.c3
    END AS c17
   FROM t0 AS t1
      LEFT OUTER JOIN t0 AS t2      
       ON (t1.c4 < t1.c3)
     LEFT JOIN t0 AS t3     
      ON (true)
   WHERE t1.c3 <> t3.c3
   ORDER BY c17, c6
   LIMIT 2667360371591670286 OFFSET 7735351300285556029) as subq0
WHERE subq0.c5 <> subq0.c7
ORDER BY c8 COLLATE NOCASE, c18
LIMIT 8190171739509203075 OFFSET 6798550777497602360;
SELECT subq0.c7 AS c12, subq0.c7 AS c13, 
 CASE subq0.c7 WHEN subq0.c5 = CAST(subq0.c7 AS INTEGER) THEN subq0.c7
      WHEN EXISTS (
  SELECT t6.c0 AS c5, t6.c3 AS c6, t6.c0 AS c7, t6.c0 AS c8
   FROM t0 AS t6
   WHERE t6.c1 <> CAST(t6.c3 AS INTEGER)
   ORDER BY c8 ASC
  ) THEN subq0.c7
      WHEN 
  CASE WHEN subq0.c7 IS NOT NULL THEN trim(NULL,TRUE)
       ELSE subq0.c5
  END IS NOT NULL THEN subq0.c7
      WHEN 
  CASE WHEN subq0.c7 <> subq0.c7 AND subq0.c6 = subq0.c5 THEN subq0.c7
       ELSE CAST(subq0.c6 AS BOOLEAN)
  END = subq0.c7 THEN changes()
      WHEN subq0.c5 <> COALESCE(CAST(instr('text2',FALSE) AS BOOLEAN), 
   CASE WHEN subq0.c5 <> subq0.c5 OR subq0.c7 = 
    CASE WHEN TRUE <> subq0.c6 THEN subq0.c7
         ELSE subq0.c7
    END AND subq0.c5 <> subq0.c5 THEN COALESCE(subq0.c6, subq0.c7)
        ELSE 
    CASE WHEN 'text34' IS NOT NULL OR subq0.c7 > subq0.c7 THEN NULL
         ELSE COALESCE(subq0.c5, subq0.c6, 
      CASE subq0.c5 WHEN subq0.c5 = subq0.c5 THEN subq0.c6
           ELSE subq0.c7
      END, subq0.c5, subq0.c7)
    END
   END, subq0.c5, subq0.c6, subq0.c5) AND subq0.c6 = subq0.c6 THEN subq0.c7
      WHEN subq0.c5 <> subq0.c6 AND false THEN subq0.c7
      ELSE subq0.c7
 END AS c9, 
 CASE WHEN CAST(subq0.c7 AS BOOLEAN) = subq0.c6 THEN subq0.c7
      ELSE subq0.c7
 END AS c10, subq0.c7 AS c11, FALSE AS c12, subq0.c5 AS c13
FROM (SELECT t1.c0 AS c5, t1.c1 AS c6, t1.c2 AS c7
   FROM t0 AS t1
   WHERE 'text98' <> t1.c4 OR EXISTS (
    SELECT t2.c3 AS c5, t2.c4 AS c6, t2.c3 AS c7, t2.c0 AS c8, t2.c3 AS c9
     FROM t0 AS t2
     WHERE EXISTS (
      SELECT t3.c0 AS c5, t3.c4 AS c6, t3.c0 AS c7, t3.c1 AS c8, t3.c1 AS c9
       FROM t0 AS t3
       WHERE t3.c3 IS NOT NULL AND t3.c1 <> t3.c1
       ORDER BY c7 DESC, c5, c5 DESC
      )
     ORDER BY c5, c6 ASC, c6
     LIMIT 4523380957258085509 OFFSET 6043573266189149240
    ) OR t1.c0 IS NOT NULL AND EXISTS (
    SELECT ALL t4.c3 AS c5, t4.c3 AS c6, t4.c2 AS c7, t5.c0 AS c8, t4.c1 AS c9, t5.c4 AS c10, t5.c0 AS c11
     FROM t0 AS t4
       LEFT JOIN t0 AS t5       
        ON (t4.c2 = t5.c2)
     WHERE COALESCE(t4.c3, t5.c4, t4.c3) <= t5.c4
     ORDER BY c5 COLLATE RTRIM, c6, c7 COLLATE BINARY DESC
     LIMIT 3995201934535793543 
    )
   ORDER BY c6 COLLATE NOCASE
   LIMIT 3649720491462828401 OFFSET 4987871760252734555) as subq0
WHERE 
 CASE WHEN 
  CASE WHEN subq0.c7 <= subq0.c7 THEN subq0.c5
       ELSE subq0.c5
  END <> subq0.c5 THEN subq0.c7
      ELSE subq0.c7
 END <> subq0.c7
ORDER BY c12;
SELECT COALESCE(subq0.c5, subq0.c5, subq0.c5) AS c6, subq0.c5 AS c7, subq0.c5 AS c8, subq0.c5 AS c9, subq0.c5 AS c10, subq0.c5 AS c11, subq0.c5 AS c12, subq0.c5 AS c13, subq0.c5 AS c14, 
 CASE subq0.c5 WHEN subq0.c5 IS NOT NULL THEN subq0.c5
      WHEN subq0.c5 <> IFNULL(subq0.c5, subq0.c5) AND EXISTS (
  SELECT t3.c0 AS c5
   FROM t0 AS t2
      INNER JOIN t0 AS t3      
       ON (t2.c0 <> t3.c1 OR EXISTS (
        SELECT t4.c2 AS c5, t4.c4 AS c6, t4.c2 AS c7
         FROM t0 AS t4
         WHERE t4.c4 IS NOT NULL
         ORDER BY c5 ASC, c5 COLLATE RTRIM ASC
         LIMIT 6260604871396142177 
        ))
     INNER JOIN (
     t0 AS t5
      INNER JOIN t0 AS t6      
       ON (t5.c1 <> t6.c1)     )
      ON (t5.c4 = t6.c3)
   WHERE EXISTS (
    SELECT t7.c0 AS c5, t7.c0 AS c6, t7.c2 AS c7, t7.c3 AS c8, t7.c3 AS c9
     FROM t0 AS t7
     WHERE true
     ORDER BY c6 COLLATE NOCASE DESC, c5
     LIMIT 6911897212048455957 OFFSET 6994116312629313992
    )
   ORDER BY c5
  ) AND subq0.c5 = subq0.c5 THEN subq0.c5
      ELSE subq0.c5
 END AS c10, subq0.c5 AS c11, CAST(subq0.c5 AS TEXT) AS c12, 
 CASE subq0.c5 WHEN COALESCE(subq0.c5, subq0.c5, abs( NULL), subq0.c5, subq0.c5, subq0.c5) <> subq0.c5 THEN subq0.c5
      WHEN subq0.c5 IS NULL THEN subq0.c5
      WHEN subq0.c5 <> subq0.c5 THEN subq0.c5
      WHEN subq0.c5 <> subq0.c5 THEN subq0.c5
      WHEN subq0.c5 IS NOT NULL THEN subq0.c5
      WHEN subq0.c5 <> subq0.c5 THEN subq0.c5
      WHEN subq0.c5 = subq0.c5 THEN subq0.c5
      WHEN trim('text37','text45') IS NOT NULL THEN subq0.c5
      WHEN subq0.c5 = subq0.c5 OR subq0.c5 <> subq0.c5 THEN subq0.c5
      WHEN subq0.c5 <> subq0.c5 THEN subq0.c5
      WHEN EXISTS (
  SELECT t10.c1 AS c5, NULLIF(COALESCE(COALESCE(t9.c1, t11.c1, t8.c0, t10.c0, t11.c3, t10.c2), 'text5', t11.c0), t9.c3) AS c6, t11.c0 AS c7, t9.c0 AS c8, t10.c0 AS c9
   FROM t0 AS t8
      LEFT JOIN t0 AS t9      
       ON (t9.c4 <= t8.c4 OR true AND t9.c1 = t8.c0 OR false)
     LEFT JOIN (
     t0 AS t10
      LEFT JOIN t0 AS t11      
       ON (t10.c2 IS NULL OR 'text55' < t10.c3)     )
      ON (t10.c4 >= t8.c3)
   WHERE t11.c2 <= t10.c2
   ORDER BY c9 COLLATE RTRIM
   LIMIT 5522030899399556059 
  ) AND COALESCE(subq0.c5, subq0.c5, subq0.c5, subq0.c5) <> subq0.c5 AND subq0.c5 <> subq0.c5 THEN subq0.c5
      ELSE 
  CASE subq0.c5 WHEN subq0.c5 = 
   CASE WHEN subq0.c5 <> subq0.c5 OR subq0.c5 <> subq0.c5 OR subq0.c5 <> subq0.c5 THEN subq0.c5
        ELSE subq0.c5
   END OR subq0.c5 <> subq0.c5 AND subq0.c5 <> subq0.c5 AND subq0.c5 IS NOT NULL THEN subq0.c5
       WHEN TRUE = subq0.c5 THEN subq0.c5
       WHEN subq0.c5 IS NULL THEN subq0.c5
       WHEN subq0.c5 <> subq0.c5 THEN subq0.c5
       WHEN subq0.c5 IS NOT NULL THEN subq0.c5
       WHEN subq0.c5 <> COALESCE(subq0.c5, subq0.c5, subq0.c5) AND subq0.c5 = subq0.c5 THEN subq0.c5
       WHEN subq0.c5 <> subq0.c5 THEN subq0.c5
       ELSE subq0.c5
  END
 END AS c10
FROM (SELECT t1.c1 AS c5
   FROM t0 AS t1
   WHERE IFNULL(t1.c3, unlikely( TRUE)) IS NOT NULL
   ORDER BY c5) as subq0
WHERE subq0.c5 IS NULL
ORDER BY c11, c14, c6
LIMIT 7540239707750475673 OFFSET 2062216235463615395;
SELECT subq0.c7 AS c11, subq0.c5 AS c12, subq0.c6 AS c13, subq0.c8 AS c14, subq0.c6 AS c15
FROM (SELECT t1.c2 AS c5, t1.c1 AS c6, t1.c2 AS c7, t1.c2 AS c8, t1.c3 AS c9, IFNULL(
     CASE t1.c1 WHEN t1.c3 < t1.c3 THEN t1.c0
          WHEN true THEN t1.c0
          WHEN t1.c1 = t1.c0 THEN t1.c0
          ELSE t1.c0
     END, t1.c0) AS c10
   FROM t0 AS t1
   WHERE t1.c2 < t1.c2
   ORDER BY c7 ASC) as subq0
WHERE 53 IS NOT NULL
ORDER BY c13 ASC, c14, c11 ASC;
SELECT COALESCE(subq0.c5, subq0.c8, subq0.c8, subq0.c6, subq0.c8) AS c10, 'text42' AS c11, subq0.c7 AS c12
FROM (SELECT t1.c4 AS c5, t1.c4 AS c6, 'text73' AS c7, 
    CASE t1.c1 WHEN t1.c3 <> t1.c4 THEN t1.c0
         WHEN t1.c3 < t1.c4 THEN t1.c0
         ELSE t1.c0
    END AS c8, t1.c4 AS c9
   FROM t0 AS t1
   WHERE 75 IS NULL AND t1.c1 = t1.c1
   ORDER BY c8 DESC, c9, c6 ASC
   LIMIT 7998184643206855668 OFFSET 1389111862714163280) as subq0
WHERE substr('text83','text93','text65') < subq0.c7
ORDER BY c12 ASC, c11;
SELECT subq0.c11 AS c11, CAST(
  CASE subq0.c14 WHEN subq0.c9 IS NULL AND subq0.c12 IS NOT NULL OR EXISTS (
   SELECT t9.c1 AS c5, t10.c3 AS c6, t9.c2 AS c7, t10.c3 AS c8, t9.c1 AS c9, t9.c0 AS c10, t9.c0 AS c11
    FROM t0 AS t9
      INNER JOIN t0 AS t10      
       ON (t10.c4 < t9.c4)
    WHERE false OR t10.c3 > t9.c3 OR t10.c2 > t10.c2
    ORDER BY c9, c9, c8 DESC
   ) THEN subq0.c15
       WHEN subq0.c14 > subq0.c12 THEN subq0.c12
       WHEN subq0.c10 <> subq0.c13 THEN subq0.c14
       ELSE subq0.c9
  END AS TEXT) AS c12, subq0.c12 AS c13, 
 CASE subq0.c13 WHEN subq0.c11 = subq0.c11 THEN subq0.c15
      WHEN subq0.c13 = subq0.c11 THEN subq0.c11
      ELSE subq0.c10
 END AS c14
FROM (SELECT 
    CASE t1.c4 WHEN t1.c4 > t1.c4 OR t1.c0 = t1.c1 THEN t1.c3
         WHEN EXISTS (
     SELECT t3.c2 AS c8
      FROM t0 AS t2
        INNER JOIN t0 AS t3        
         ON (t2.c4 IS NULL AND t2.c0 = t3.c1 OR EXISTS (
          SELECT t4.c0 AS c5, t4.c3 AS c6, t4.c2 AS c7
           FROM t0 AS t4
           WHERE false
           ORDER BY c7
           LIMIT 1824659204596502606 OFFSET 3039221421370442901
          ))
      WHERE t3.c4 >= t3.c3
      ORDER BY c8, c8, c8 COLLATE NOCASE, c8
      LIMIT 8606187261867106437 OFFSET 8451878258488677234
     ) OR true THEN t1.c4
         WHEN t1.c3 <> t1.c3 THEN t1.c3
         WHEN t1.c1 = t1.c0 THEN t1.c3
         WHEN 92 <= t1.c2 THEN 'text3'
         WHEN 
     CASE t1.c1 WHEN 'text11' <> t1.c3 THEN t1.c1
          WHEN t1.c4 = t1.c3 THEN t1.c0
          ELSE t1.c0
     END <> t1.c0 THEN t1.c4
         ELSE t1.c4
    END AS c9, t1.c0 AS c10, t1.c0 AS c11, NULLIF(
     CASE t1.c2 WHEN t1.c4 > t1.c4 THEN 44
          WHEN 40 > t1.c2 THEN t1.c2
          WHEN t1.c1 = t1.c1 THEN t1.c2
          WHEN t1.c4 > t1.c3 THEN t1.c2
          WHEN t1.c0 = t1.c0 THEN t1.c2
          WHEN false THEN t1.c2
          ELSE t1.c2
     END, t1.c2) AS c12, t1.c1 AS c13, t1.c2 AS c14, t1.c1 AS c15
   FROM t0 AS t1
   WHERE EXISTS (
    SELECT t8.c1 AS c5, 
      CASE t8.c4 WHEN t7.c0 <> TRUE THEN t6.c4
           WHEN t7.c0 = t8.c0 OR t8.c2 IS NOT NULL AND t7.c2 = t7.c2 THEN t8.c3
           WHEN t8.c0 = t6.c1 OR t8.c2 IS NULL THEN t5.c4
           ELSE t8.c3
      END AS c6, t5.c4 AS c7, t6.c4 AS c8, t7.c2 AS c9, t7.c2 AS c10
     FROM t0 AS t5
       INNER JOIN (
       t0 AS t6
         LEFT JOIN t0 AS t7         
          ON (t6.c3 IS NULL)
        INNER JOIN t0 AS t8        
         ON (68 <> t7.c2)       )
        ON (t7.c4 = t5.c4)
     WHERE t7.c3 > t6.c4 OR t6.c4 IS NOT NULL AND t5.c0 = t5.c0
     ORDER BY c9, c5
     LIMIT 5458731087053923391 
    )
   ORDER BY c13, c15
   LIMIT 5617444218082005460 ) as subq0
WHERE false
ORDER BY c13 COLLATE BINARY;
SELECT t1.c0 AS c5, t1.c4 AS c6, t1.c2 AS c7, t1.c3 AS c8, 
 CASE WHEN t1.c3 >= 'text50' THEN t1.c3
      ELSE t1.c3
 END AS c9, t1.c0 AS c10, t1.c1 AS c11, t1.c0 AS c12, t1.c2 AS c13, t1.c4 AS c14, t1.c4 AS c15, t1.c4 AS c16
FROM t0 AS t1
WHERE t1.c0 <> t1.c1
ORDER BY c11
LIMIT 5042906845705038563 OFFSET 9137498043447793735;
SELECT subq0.c9 AS c10
FROM (SELECT t1.c1 AS c5, t4.c3 AS c6, t1.c4 AS c7, t3.c4 AS c8, t2.c3 AS c9
   FROM t0 AS t1
      INNER JOIN (
      t0 AS t2
       LEFT OUTER JOIN t0 AS t3       
        ON (t2.c2 > t3.c2)      )
       ON (t1.c4 = t2.c3)
     INNER JOIN t0 AS t4     
      ON (t4.c0 = t4.c1 OR false)
   WHERE FALSE = t2.c0
   ORDER BY c7
   LIMIT 6102846756557150999 OFFSET 5636118450977689371) as subq0
WHERE subq0.c7 <> 
 CASE subq0.c8 WHEN COALESCE(
   CASE subq0.c9 WHEN subq0.c8 <= subq0.c8 THEN CAST(subq0.c6 AS BOOLEAN)
        WHEN min(FALSE,92,'text79') IS NULL THEN subq0.c6
        ELSE subq0.c6
   END, subq0.c7) >= subq0.c7 THEN subq0.c6
      WHEN 
  CASE WHEN subq0.c8 <> subq0.c7 THEN char( '񦮪')
       ELSE subq0.c7
  END > subq0.c6 THEN lower( 28)
      WHEN COALESCE(subq0.c9, NULL, NULL, subq0.c6, subq0.c9) < subq0.c9 THEN subq0.c6
      WHEN subq0.c5 IS NULL THEN subq0.c8
      ELSE subq0.c6
 END
ORDER BY c10 ASC, c10, c10 COLLATE NOCASE, c10 ASC
LIMIT 1853292728708692435 OFFSET 8676939138875627188;
SELECT 
 CASE WHEN EXISTS (
  SELECT t7.c3 AS c5
   FROM t0 AS t7
   WHERE t7.c4 < t7.c4
   ORDER BY c5
  ) THEN subq0.c18
      ELSE subq0.c20
 END AS c6, 
 CASE subq0.c15 WHEN subq0.c12 <> subq0.c9 THEN subq0.c14
      WHEN false THEN subq0.c15
      WHEN false AND subq0.c14 <> subq0.c12 THEN subq0.c12
      WHEN subq0.c16 <> subq0.c21 THEN subq0.c12
      WHEN subq0.c13 <= nullif('text64','text100') AND subq0.c15 IS NULL AND subq0.c13 = subq0.c11 THEN subq0.c14
      WHEN subq0.c20 IS NULL OR subq0.c14 = subq0.c12 THEN subq0.c12
      WHEN subq0.c19 = printf('text92','text38') AND 'text16' = subq0.c19 AND subq0.c17 <> subq0.c17 THEN subq0.c14
      WHEN EXISTS (
  SELECT t8.c3 AS c5, t8.c3 AS c6, t8.c4 AS c7, t8.c1 AS c8, t8.c4 AS c9, t8.c1 AS c10, t8.c3 AS c11, t8.c3 AS c12, IFNULL(t8.c0, t8.c0) AS c13, t8.c4 AS c14
   FROM t0 AS t8
   WHERE t8.c4 = t8.c3 AND true
   ORDER BY c12 COLLATE BINARY
   LIMIT 1579930738213609026 
  ) OR subq0.c17 > 
  CASE subq0.c17 WHEN subq0.c10 = subq0.c10 THEN subq0.c17
       WHEN subq0.c12 <> subq0.c9 THEN subq0.c17
       WHEN false THEN subq0.c17
       ELSE subq0.c17
  END THEN subq0.c15
      WHEN true THEN subq0.c14
      WHEN 'text67' = rtrim('text59','text51') THEN 
  CASE subq0.c14 WHEN EXISTS (
   SELECT t9.c2 AS c5, t9.c3 AS c6, t9.c1 AS c7, t9.c0 AS c8, t9.c0 AS c9
    FROM t0 AS t9
    WHERE t9.c3 = t9.c3
    ORDER BY c5, c6 DESC
    LIMIT 3604011839585460823 OFFSET 5996109625615998341
   ) THEN subq0.c14
       WHEN subq0.c14 = subq0.c12 THEN subq0.c14
       WHEN subq0.c12 = subq0.c12 THEN subq0.c12
       WHEN subq0.c20 >= subq0.c10 THEN subq0.c9
       WHEN subq0.c12 <> subq0.c9 THEN subq0.c9
       WHEN subq0.c14 <> subq0.c9 THEN subq0.c15
       ELSE subq0.c9
  END
      WHEN CAST(subq0.c20 AS TEXT) IS NULL THEN subq0.c14
      ELSE subq0.c14
 END AS c10, subq0.c10 AS c11, 
 CASE subq0.c20 WHEN subq0.c18 IS NULL OR 
  CASE WHEN subq0.c10 <> subq0.c16 THEN subq0.c19
       ELSE subq0.c10
  END IS NULL AND subq0.c11 = 'text63' AND 
  CASE WHEN subq0.c14 <> subq0.c12 THEN subq0.c9
       ELSE subq0.c9
  END <> TRUE OR subq0.c17 > subq0.c17 THEN subq0.c16
      WHEN subq0.c10 IS NULL THEN subq0.c18
      WHEN COALESCE(subq0.c16, 'text38', subq0.c19, CAST(subq0.c13 AS BOOLEAN)) = subq0.c11 OR subq0.c16 <= subq0.c13 OR upper( NULL) = quote( 'text95') AND subq0.c10 IS NOT NULL AND true AND subq0.c10 >= subq0.c21 THEN subq0.c18
      WHEN subq0.c19 > subq0.c21 THEN subq0.c19
      WHEN EXISTS (
  SELECT t10.c0 AS c5, t10.c1 AS c6, t10.c0 AS c7, t10.c0 AS c8
   FROM t0 AS t10
   WHERE 
    CASE WHEN true THEN t10.c2
         ELSE t10.c2
    END >= t10.c2
   ORDER BY c5 ASC, c6, c5
  ) OR false AND subq0.c20 = subq0.c20 THEN subq0.c10
      WHEN subq0.c21 <= subq0.c20 OR quote( 19) IS NOT NULL THEN subq0.c16
      WHEN 'text35' <= subq0.c16 THEN subq0.c19
      WHEN subq0.c19 >= subq0.c18 THEN subq0.c20
      WHEN subq0.c19 <> subq0.c13 THEN subq0.c13
      ELSE rtrim(24,NULL)
 END AS c9, subq0.c19 AS c10, subq0.c9 AS c11
FROM (SELECT t2.c1 AS c9, t2.c4 AS c10, t4.c4 AS c11, t5.c0 AS c12, t1.c4 AS c13, CAST(t1.c3 AS TEXT) AS c14, t3.c0 AS c15, replace(FALSE,NULL,NULL) AS c16, t3.c2 AS c17, t4.c3 AS c18, t3.c4 AS c19, t4.c3 AS c20, t3.c4 AS c21
   FROM t0 AS t1
      INNER JOIN (
      t0 AS t2
       LEFT JOIN t0 AS t3       
        ON (t2.c4 <= t3.c3)      )
       ON (t1.c1 IS NULL)
     LEFT JOIN (
     t0 AS t4
      INNER JOIN t0 AS t5      
       ON (t5.c0 <> t5.c0)     )
      ON (EXISTS (
       SELECT t6.c2 AS c5, t6.c2 AS c6, t6.c2 AS c7, t6.c2 AS c8
        FROM t0 AS t6
        WHERE t6.c0 IS NOT NULL
        ORDER BY c5 COLLATE BINARY ASC
        LIMIT 8679279403726068664 OFFSET 8974214948258106732
       ) OR false OR true)
   WHERE t2.c1 <> t4.c1
   ORDER BY c10
   LIMIT 6574950663050723521 ) as subq0
WHERE 'text7' >= subq0.c13 OR subq0.c18 = subq0.c10 OR subq0.c15 <> subq0.c9 AND 
 CASE WHEN subq0.c17 >= COALESCE(subq0.c10, subq0.c13, subq0.c17, subq0.c17, subq0.c17, NULL) THEN subq0.c11
      ELSE subq0.c9
 END IS NULL
ORDER BY c10 COLLATE BINARY
LIMIT 8481065255139392204 OFFSET 6362324162527390799;
SELECT CAST(t1.c2 AS TEXT) AS c5, t1.c0 AS c6
FROM t0 AS t1
WHERE t1.c4 > hex( FALSE)
ORDER BY c6 DESC, c5, c6 ASC, c6;
SELECT subq0.c5 AS c6
FROM (SELECT 'text54' AS c5
   FROM t0 AS t1
      INNER JOIN (
      t0 AS t2
       INNER JOIN (
       t0 AS t3
        INNER JOIN t0 AS t4        
         ON (true OR t4.c1 <> t3.c0)       )
        ON (t4.c4 IS NOT NULL)      )
       ON (false)
     INNER JOIN (
     t0 AS t5
      INNER JOIN t0 AS t6      
       ON (t5.c2 IS NOT NULL)     )
      ON ('text21' >= t3.c3)
   WHERE t2.c3 <> t4.c3
   ORDER BY c5, c5 COLLATE NOCASE, c5, c5 ASC) as subq0
WHERE subq0.c5 > subq0.c5
ORDER BY c6 DESC, c6, c6 ASC, c6;
UPDATE t0 
SET c1 = t0.c1, c2 = t0.c2, c4 = 'text27'
WHERE t0.c4 <> t0.c4;
SELECT IFNULL(t1.c4, t1.c4) AS c5
FROM t0 AS t1
WHERE t1.c0 = t1.c1
ORDER BY c5 COLLATE RTRIM, c5, c5, c5
LIMIT 382219818254019026 ;
SELECT subq1.c9 AS c10, 
 CASE WHEN subq1.c9 > subq1.c9 THEN subq1.c9
      ELSE 'text75'
 END AS c11, subq1.c9 AS c12, CAST(
  CASE subq1.c9 WHEN false THEN subq1.c9
       WHEN subq1.c9 <= subq1.c9 THEN subq1.c9
       WHEN subq1.c9 = subq1.c9 THEN subq1.c9
       WHEN subq1.c9 <> subq1.c9 THEN subq1.c9
       ELSE subq1.c9
  END AS INTEGER) AS c13, subq1.c9 AS c14, subq1.c9 AS c15, subq1.c9 AS c16, subq1.c9 AS c17, ltrim(TRUE,NULL) AS c18, subq1.c9 AS c19, substr(FALSE,'text29') AS c20, subq1.c9 AS c21, subq1.c9 AS c22, subq1.c9 AS c23, char( '󇵛') AS c24, subq1.c9 AS c25, subq1.c9 AS c26, subq1.c9 AS c27
FROM (SELECT subq0.c6 AS c9
   FROM (SELECT t1.c0 AS c5, t1.c3 AS c6, t1.c4 AS c7, t1.c1 AS c8
      FROM t0 AS t1
      WHERE t1.c1 <> t1.c0
      ORDER BY c6, c8) as subq0
   WHERE subq0.c5 <> subq0.c8
   ORDER BY c9 COLLATE NOCASE, c9 ASC, c9, c9
   LIMIT 6536552071275426580 ) as subq1
WHERE EXISTS (
 SELECT t2.c3 AS c5, t2.c2 AS c6, t2.c4 AS c7, t2.c2 AS c8
  FROM t0 AS t2
  WHERE t2.c4 <> CAST(t2.c2 AS TEXT) AND t2.c2 >= 
   CASE t2.c2 WHEN t2.c1 <> t2.c1 THEN t2.c2
        WHEN t2.c2 <> t2.c2 THEN t2.c2
        ELSE t2.c2
   END AND t2.c1 <> t2.c0 OR true AND 
   CASE t2.c2 WHEN t2.c2 >= t2.c2 THEN t2.c2
        WHEN t2.c1 <> t2.c0 THEN t2.c2
        WHEN 
    CASE WHEN EXISTS (
     SELECT t3.c0 AS c5, t3.c2 AS c6
      FROM t0 AS t3
      WHERE t3.c4 > t3.c3
      ORDER BY c5
      LIMIT 7808181751307341665 OFFSET 6458700438119526132
     ) THEN t2.c1
         ELSE t2.c4
    END IS NULL THEN t2.c2
        WHEN EXISTS (
    SELECT t5.c2 AS c5, t5.c1 AS c6, t5.c4 AS c7, t4.c0 AS c8
     FROM t0 AS t4
       LEFT JOIN t0 AS t5       
        ON (t5.c0 = t4.c0)
     WHERE t4.c2 <> changes()
     ORDER BY c5 COLLATE NOCASE DESC, c7 COLLATE RTRIM ASC
    ) THEN t2.c2
        WHEN t2.c1 <> FALSE THEN t2.c2
        WHEN t2.c0 <> 
    CASE t2.c0 WHEN t2.c1 <> 
     CASE WHEN t2.c4 < t2.c3 OR t2.c2 >= t2.c2 OR t2.c4 IS NULL AND EXISTS (
      SELECT t6.c1 AS c5, t6.c3 AS c6, t6.c1 AS c7, t6.c3 AS c8, t6.c4 AS c9, t6.c0 AS c10, t6.c2 AS c11, t6.c0 AS c12
       FROM t0 AS t6
       WHERE t6.c0 <> t6.c1
       ORDER BY c9 ASC, c6 DESC
      ) OR t2.c0 <> 
      CASE t2.c1 WHEN t2.c0 <> t2.c0 OR t2.c0 <> t2.c1 AND t2.c0 = t2.c0 THEN t2.c0
           WHEN EXISTS (
       SELECT t7.c1 AS c5
        FROM t0 AS t7
        WHERE t7.c3 IS NOT NULL
        ORDER BY c5, c5 COLLATE RTRIM, c5, c5
        LIMIT 8022092046787170430 OFFSET 5674501402515520477
       ) THEN t2.c1
           WHEN t2.c0 = t2.c0 THEN t2.c0
           WHEN t2.c2 >= t2.c2 THEN t2.c1
           WHEN t2.c1 <> t2.c0 AND t2.c0 = t2.c1 OR EXISTS (
       SELECT t8.c4 AS c5, t8.c2 AS c6, t8.c2 AS c7, t8.c4 AS c8, FALSE AS c9
        FROM t0 AS t8
        WHERE t8.c0 <> t8.c1
        ORDER BY c8 ASC, c7
        LIMIT 83747619665912022 OFFSET 200567098381319930
       ) AND false OR true OR t2.c2 < t2.c2 AND t2.c3 <= t2.c4 OR t2.c1 <> t2.c1 AND t2.c2 <= t2.c2 THEN t2.c0
           WHEN t2.c0 <> t2.c1 THEN t2.c0
           WHEN false THEN t2.c0
           WHEN t2.c2 <= t2.c2 THEN t2.c1
           WHEN t2.c1 = t2.c1 THEN t2.c1
           WHEN true THEN TRUE
           WHEN EXISTS (
       SELECT 'text12' AS c5, t9.c0 AS c6, t9.c1 AS c7, t9.c2 AS c8, t9.c0 AS c9, t9.c4 AS c10, t9.c3 AS c11
        FROM t0 AS t9
        WHERE t9.c1 = t9.c0
        ORDER BY c9 ASC, c11
        LIMIT 3036881746709567473 
       ) THEN t2.c1
           WHEN 63 <= t2.c2 THEN t2.c1
           ELSE t2.c1
      END THEN t2.c0
          ELSE t2.c0
     END THEN t2.c1
         WHEN t2.c3 > t2.c3 THEN t2.c1
         WHEN t2.c4 > CAST(t2.c0 AS BOOLEAN) THEN t2.c1
         WHEN t2.c2 IS NOT NULL THEN TRUE
         WHEN true THEN t2.c1
         WHEN t2.c2 <= t2.c2 THEN FALSE
         WHEN t2.c3 < t2.c4 THEN TRUE
         WHEN t2.c3 IS NULL THEN t2.c1
         WHEN t2.c2 >= t2.c2 THEN t2.c0
         WHEN t2.c2 < t2.c2 AND CAST(t2.c4 AS BOOLEAN) IS NULL THEN t2.c0
         WHEN t2.c0 <> t2.c0 THEN t2.c0
         WHEN t2.c3 <= t2.c3 THEN t2.c0
         ELSE t2.c0
    END THEN t2.c2
        WHEN EXISTS (
    SELECT t10.c3 AS c5, t10.c1 AS c6, t10.c3 AS c7, t10.c3 AS c8, t10.c3 AS c9
     FROM t0 AS t10
     WHERE t10.c2 < t10.c2
     ORDER BY c7, c9 ASC
     LIMIT 5361977209995734390 OFFSET 2002170937776930166
    ) AND t2.c3 > t2.c4 THEN t2.c2
        WHEN t2.c2 < t2.c2 THEN t2.c2
        WHEN t2.c1 = FALSE THEN t2.c2
        ELSE t2.c2
   END <= t2.c2 OR t2.c0 <> t2.c0
  ORDER BY c6 COLLATE NOCASE, c6, c6
  LIMIT 523055825474611343 
 )
ORDER BY c14 DESC, c19, c19
LIMIT 8448530592526786036 ;
SELECT t1.c1 AS c5, t1.c0 AS c6
FROM t0 AS t1
WHERE t1.c4 <= typeof( 'text52')
ORDER BY c6 ASC, c6, c5, c5;
SELECT subq1.c20 AS c13, subq1.c20 AS c14, 
 CASE subq1.c20 WHEN subq1.c19 >= subq1.c21 AND CAST(subq1.c21 AS INTEGER) < subq1.c19 THEN 
  CASE WHEN 
   CASE WHEN subq1.c21 <> subq1.c21 THEN subq1.c20
        ELSE 59
   END > subq1.c20 THEN subq1.c20
       ELSE subq1.c20
  END
      WHEN subq1.c20 IS NULL THEN subq1.c20
      WHEN COALESCE(subq1.c19, ltrim('text61',FALSE), subq1.c19, subq1.c19, subq1.c19, subq1.c19) = subq1.c19 THEN subq1.c20
      WHEN 
  CASE subq1.c21 WHEN NULL IS NULL THEN subq1.c20
       WHEN subq1.c19 = subq1.c19 AND subq1.c19 IS NOT NULL AND subq1.c19 IS NOT NULL THEN likelihood('text50',0.441685)
       ELSE subq1.c20
  END IS NULL THEN 
  CASE subq1.c20 WHEN EXISTS (
   SELECT t5.c1 AS c5
    FROM t0 AS t5
       LEFT JOIN t0 AS t6       
        ON (t5.c1 = t6.c0)
      INNER JOIN t0 AS t7      
       ON (t5.c1 <> t6.c1 OR t7.c2 >= t7.c2 OR t7.c1 = t6.c1)
    WHERE t5.c1 <> t6.c0
    ORDER BY c5, c5 DESC, c5, c5
    LIMIT 3705924159704533646 OFFSET 8002568847720532064
   ) THEN CAST(subq1.c20 AS INTEGER)
       WHEN 
   CASE subq1.c21 WHEN subq1.c19 = subq1.c21 THEN subq1.c21
        WHEN 
    CASE WHEN 48 < 25 AND subq1.c19 IS NULL THEN subq1.c20
         ELSE 42
    END >= subq1.c20 THEN subq1.c19
        WHEN subq1.c21 <> subq1.c19 THEN subq1.c19
        WHEN subq1.c20 = subq1.c20 THEN hex( 'text67')
        WHEN subq1.c21 <= subq1.c19 THEN subq1.c21
        ELSE subq1.c21
   END >= subq1.c21 THEN subq1.c20
       WHEN subq1.c20 > 64 THEN subq1.c20
       WHEN subq1.c19 = subq1.c19 THEN NULLIF(subq1.c20, subq1.c20)
       WHEN subq1.c21 = 
   CASE WHEN 'text94' <> NULLIF(subq1.c21, subq1.c21) THEN subq1.c21
        ELSE subq1.c19
   END OR subq1.c21 <> subq1.c21 THEN subq1.c20
       WHEN true THEN subq1.c20
       WHEN 
   CASE subq1.c19 WHEN subq1.c21 > subq1.c21 AND subq1.c21 >= subq1.c19 AND 
    CASE subq1.c19 WHEN subq1.c20 IS NOT NULL THEN subq1.c19
         ELSE subq1.c19
    END < subq1.c19 THEN subq1.c21
        WHEN subq1.c19 IS NULL THEN CAST(subq1.c21 AS BOOLEAN)
        WHEN 'text72' >= 'text42' THEN subq1.c19
        WHEN subq1.c21 = 
    CASE subq1.c19 WHEN false THEN 
     CASE WHEN true THEN subq1.c19
          ELSE subq1.c19
     END
         WHEN subq1.c21 <> subq1.c19 AND subq1.c20 <> CAST(subq1.c21 AS BOOLEAN) AND subq1.c21 >= 'text96' THEN IFNULL(subq1.c21, subq1.c21)
         WHEN EXISTS (
     SELECT t8.c3 AS c5
      FROM t0 AS t8
      WHERE t8.c1 IS NOT NULL AND t8.c3 <> 'text51' AND t8.c3 <> t8.c4
      ORDER BY c5 DESC, c5, c5 COLLATE BINARY, c5
      LIMIT 8359115852228104921 OFFSET 418385853960559745
     ) OR subq1.c21 < subq1.c21 OR subq1.c21 IS NOT NULL THEN subq1.c21
         ELSE subq1.c21
    END THEN subq1.c21
        WHEN subq1.c21 = subq1.c19 THEN subq1.c21
        WHEN subq1.c20 < subq1.c20 THEN subq1.c21
        WHEN subq1.c19 <> subq1.c19 THEN 'text53'
        WHEN subq1.c20 > subq1.c20 THEN subq1.c19
        ELSE 
    CASE subq1.c19 WHEN subq1.c19 <= 
     CASE subq1.c19 WHEN subq1.c21 IS NULL THEN subq1.c21
          WHEN EXISTS (
      SELECT t9.c1 AS c5
       FROM t0 AS t9
       WHERE t9.c2 >= t9.c2
       ORDER BY c5 ASC, c5, c5, c5
       LIMIT 5551641250767426549 OFFSET 8085046059098017088
      ) OR subq1.c20 IS NULL THEN subq1.c19
          ELSE subq1.c21
     END THEN subq1.c21
         WHEN subq1.c20 > subq1.c20 AND subq1.c21 >= subq1.c21 THEN subq1.c19
         ELSE subq1.c21
    END
   END >= subq1.c21 THEN subq1.c20
       WHEN subq1.c19 <> subq1.c19 THEN subq1.c20
       WHEN subq1.c20 <> subq1.c20 OR subq1.c19 > subq1.c19 THEN subq1.c20
       ELSE subq1.c20
  END
      WHEN subq1.c20 >= subq1.c20 THEN subq1.c20
      WHEN subq1.c20 <> subq1.c20 OR subq1.c21 >= COALESCE(subq1.c19, subq1.c21, subq1.c19) OR 
  CASE subq1.c20 WHEN subq1.c21 < subq1.c21 THEN IFNULL(subq1.c20, subq1.c20)
       WHEN subq1.c21 <> subq1.c19 THEN subq1.c20
       ELSE 8
  END <> like(65,TRUE,'򄜮') OR 'text90' < 'text80' THEN 
  CASE WHEN subq1.c19 >= subq1.c21 THEN 
   CASE subq1.c20 WHEN subq1.c20 <> likely( FALSE) THEN subq1.c20
        WHEN EXISTS (
    SELECT t10.c3 AS c5
     FROM t0 AS t10
     WHERE t10.c3 >= t10.c3
     ORDER BY c5, c5 ASC, c5, c5 COLLATE BINARY
    ) AND subq1.c19 = 
    CASE WHEN subq1.c20 >= subq1.c20 THEN subq1.c19
         ELSE 
     CASE subq1.c19 WHEN subq1.c20 > 
      CASE subq1.c20 WHEN subq1.c19 >= subq1.c21 THEN subq1.c20
           WHEN subq1.c20 > subq1.c20 THEN subq1.c20
           WHEN subq1.c21 < subq1.c21 THEN subq1.c20
           ELSE subq1.c20
      END THEN subq1.c19
          ELSE subq1.c19
     END
    END OR subq1.c20 <> subq1.c20 AND subq1.c20 = subq1.c20 AND 
    CASE subq1.c19 WHEN subq1.c20 <> subq1.c20 THEN subq1.c21
         WHEN typeof( 4) <= subq1.c21 THEN subq1.c19
         WHEN 
     CASE WHEN subq1.c21 IS NULL THEN subq1.c20
          ELSE subq1.c20
     END IS NOT NULL AND true AND subq1.c21 IS NOT NULL THEN subq1.c21
         WHEN false OR subq1.c20 > subq1.c20 THEN subq1.c21
         WHEN subq1.c19 <> subq1.c21 THEN subq1.c19
         WHEN subq1.c19 > subq1.c21 THEN subq1.c19
         WHEN subq1.c21 <> subq1.c21 THEN subq1.c19
         ELSE subq1.c19
    END <= subq1.c19 OR subq1.c19 <= subq1.c19 THEN subq1.c20
        WHEN subq1.c19 > subq1.c19 THEN subq1.c20
        WHEN subq1.c20 < subq1.c20 AND printf('text42',75) = subq1.c19 THEN subq1.c20
        WHEN EXISTS (
    SELECT t11.c2 AS c5, t11.c3 AS c6, t11.c1 AS c7, FALSE AS c8, t11.c2 AS c9, t11.c3 AS c10, t11.c3 AS c11, t11.c4 AS c12, t11.c4 AS c13, t11.c4 AS c14, t11.c3 AS c15, t11.c1 AS c16, t11.c1 AS c17, t11.c2 AS c18, t11.c1 AS c19, t11.c0 AS c20, t11.c1 AS c21, 'text16' AS c22, t11.c3 AS c23, t11.c3 AS c24, t11.c1 AS c25, t11.c2 AS c26, t11.c2 AS c27, t11.c3 AS c28, t11.c0 AS c29, t11.c2 AS c30, t11.c4 AS c31, t11.c3 AS c32
     FROM t0 AS t11
     WHERE t11.c4 <= t11.c3
     ORDER BY c24, c9 COLLATE RTRIM DESC
     LIMIT 5214003578325140721 
    ) THEN subq1.c20
        ELSE subq1.c20
   END
       ELSE subq1.c20
  END
      WHEN subq1.c19 >= subq1.c19 THEN subq1.c20
      ELSE subq1.c20
 END AS c33, subq1.c21 AS c34, subq1.c19 AS c35, subq1.c20 AS c36, subq1.c21 AS c37, subq1.c19 AS c38
FROM (SELECT subq0.c6 AS c19, subq0.c11 AS c20, subq0.c5 AS c21
   FROM (SELECT t1.c3 AS c5, t2.c3 AS c6, t1.c0 AS c7, t2.c2 AS c8, TRUE AS c9, t1.c4 AS c10, t1.c2 AS c11, t1.c0 AS c12, t2.c4 AS c13, t2.c2 AS c14, t1.c4 AS c15, t2.c3 AS c16, t2.c4 AS c17, t1.c0 AS c18
      FROM t0 AS t1
        LEFT JOIN t0 AS t2        
         ON (t2.c0 <> t2.c0)
      WHERE t1.c0 <> t2.c1
      ORDER BY c10 DESC) as subq0
   WHERE EXISTS (
    SELECT t3.c4 AS c5, t4.c2 AS c6, t4.c1 AS c7, t4.c2 AS c8, FALSE AS c9, t3.c2 AS c10, t4.c2 AS c11, t4.c1 AS c12
     FROM t0 AS t3
       INNER JOIN t0 AS t4       
        ON (true)
     WHERE t4.c4 <> t3.c4
     ORDER BY c12, c10 DESC, c6 ASC
     LIMIT 5925360479887073520 
    ) AND subq0.c11 < subq0.c11 AND subq0.c5 <> subq0.c15
   ORDER BY c20, c21 ASC, c20
   LIMIT 5081391628896017934 OFFSET 720167792053057759) as subq1
WHERE subq1.c20 >= subq1.c20
ORDER BY c37 COLLATE BINARY DESC, c34 COLLATE NOCASE, c38
LIMIT 3930747520878570246 OFFSET 4412308334031144803;
SELECT subq0.c5 AS c6, subq0.c5 AS c7, subq0.c5 AS c8, 
 CASE WHEN subq0.c5 < subq0.c5 AND COALESCE(subq0.c5, unicode( 30), subq0.c5) = subq0.c5 OR false THEN subq0.c5
      ELSE last_insert_rowid()
 END AS c9, subq0.c5 AS c10
FROM (SELECT t1.c2 AS c5
   FROM t0 AS t1
   WHERE t1.c3 >= t1.c4 OR EXISTS (
    SELECT t2.c1 AS c5
     FROM t0 AS t2
     WHERE t2.c2 = t2.c2 AND 'text58' = t2.c3 OR t2.c4 < t2.c3
     ORDER BY c5 ASC, c5 ASC, c5 ASC, c5
     LIMIT 7796569771646256452 OFFSET 4432458564556981647
    )
   ORDER BY c5, c5, c5, c5) as subq0
WHERE EXISTS (
 SELECT 
   CASE subq1.c6 WHEN CAST(subq1.c7 AS BOOLEAN) >= subq1.c5 AND subq1.c5 = subq1.c9 AND subq1.c8 <> subq1.c8 AND subq1.c11 IS NULL AND 
    CASE WHEN min(FALSE,'text27','text81') IS NULL THEN subq1.c7
         ELSE subq1.c8
    END = subq1.c8 OR subq1.c5 = subq1.c10 THEN subq1.c6
        WHEN subq1.c11 = subq1.c11 OR subq1.c6 >= subq1.c6 THEN subq1.c6
        WHEN subq1.c7 IS NULL THEN subq1.c6
        WHEN subq1.c5 >= subq1.c5 THEN subq1.c6
        WHEN hex( 'text89') IS NULL THEN subq1.c6
        WHEN subq1.c8 = subq1.c8 THEN 28
        WHEN subq1.c8 <> subq1.c7 AND subq1.c11 IS NOT NULL THEN subq1.c6
        WHEN subq1.c7 IS NOT NULL AND true THEN subq1.c6
        ELSE subq1.c6
   END AS c12, subq1.c6 AS c13, subq1.c7 AS c14, subq1.c11 AS c15, subq1.c6 AS c16
  FROM (SELECT ALL t3.c3 AS c5, t3.c2 AS c6, t3.c0 AS c7, t3.c1 AS c8, t3.c3 AS c9, t3.c3 AS c10, t3.c0 AS c11
     FROM t0 AS t3
     WHERE t3.c2 <> 14
     ORDER BY c10 DESC, c9 COLLATE RTRIM DESC
     LIMIT 9046500599990212465 OFFSET 7519718065202816904) as subq1
  WHERE subq1.c8 = subq1.c8
  ORDER BY c15 DESC, c15, c14 ASC
 ) AND COALESCE(
  CASE WHEN COALESCE(subq0.c5, subq0.c5) < subq0.c5 THEN subq0.c5
       ELSE trim('text73',FALSE)
  END, subq0.c5, lower( NULL), CAST(subq0.c5 AS TEXT)) IS NOT NULL
ORDER BY c7, c10;
SELECT subq0.c7 AS c25, printf('text65',17) AS c26, subq0.c24 AS c27, 'text37' AS c28, subq0.c14 AS c29, subq0.c6 AS c30, subq0.c24 AS c31, subq0.c5 AS c32, subq0.c7 AS c33, subq0.c19 AS c34, subq0.c12 AS c35, subq0.c23 AS c36, subq0.c24 AS c37, subq0.c13 AS c38, subq0.c11 AS c39, 
 CASE subq0.c7 WHEN subq0.c16 <> subq0.c22 AND subq0.c14 = subq0.c14 THEN NULLIF(subq0.c5, subq0.c5)
      WHEN subq0.c16 <= subq0.c23 THEN subq0.c12
      WHEN subq0.c23 > rtrim(NULL,NULL) THEN TRUE
      WHEN 
  CASE WHEN subq0.c23 IS NOT NULL THEN subq0.c24
       ELSE subq0.c22
  END IS NULL THEN subq0.c5
      WHEN 
  CASE subq0.c24 WHEN EXISTS (
   SELECT subq1.c10 AS c11, subq1.c10 AS c12
    FROM (SELECT t2.c2 AS c5, t2.c1 AS c6, t2.c0 AS c7, t2.c2 AS c8, FALSE AS c9, t2.c3 AS c10
       FROM t0 AS t2
       WHERE t2.c3 <> t2.c3
       ORDER BY c8, c10, c9
       LIMIT 5258736782018966403 OFFSET 3115785047211734035) as subq1
    WHERE false
    ORDER BY c11, c12 COLLATE NOCASE
    LIMIT 948444991756705820 
   ) AND subq0.c14 = subq0.c14 OR EXISTS (
   SELECT t3.c2 AS c5, t3.c3 AS c6, 11 AS c7
    FROM t0 AS t3
    WHERE t3.c3 <= t3.c4
    ORDER BY c7 COLLATE BINARY DESC
    LIMIT 8537994389066165720 
   ) OR FALSE = subq0.c20 OR subq0.c14 = subq0.c14 OR 
   CASE subq0.c23 WHEN subq0.c22 <= 
    CASE subq0.c21 WHEN subq0.c13 <> 
     CASE subq0.c12 WHEN false AND subq0.c21 IS NULL OR subq0.c17 <= subq0.c23 THEN subq0.c12
          WHEN subq0.c24 <> subq0.c14 OR EXISTS (
      SELECT t4.c0 AS c5, t4.c1 AS c6, t4.c0 AS c7, t4.c0 AS c8, t4.c4 AS c9, t4.c1 AS c10, t4.c0 AS c11, t4.c0 AS c12, t4.c0 AS c13, t4.c1 AS c14
       FROM t0 AS t4
       WHERE t4.c1 = t4.c0 AND t4.c2 <= t4.c2
       ORDER BY c10
      ) THEN TRUE
          WHEN subq0.c8 IS NULL THEN subq0.c14
          WHEN subq0.c15 IS NOT NULL AND subq0.c14 = subq0.c14 THEN subq0.c20
          WHEN COALESCE(subq0.c8, subq0.c18, subq0.c23, 71) < subq0.c16 THEN subq0.c6
          WHEN subq0.c12 IS NOT NULL THEN subq0.c13
          ELSE subq0.c13
     END THEN NULLIF(subq0.c11, subq0.c22)
         WHEN EXISTS (
     SELECT t5.c0 AS c5, 'text11' AS c6, t5.c3 AS c7, t5.c1 AS c8, t5.c4 AS c9, t5.c1 AS c10
      FROM t0 AS t5
      WHERE t5.c4 >= t5.c3
      ORDER BY c9
      LIMIT 8545317275368477914 OFFSET 6265254747094085907
     ) THEN subq0.c23
         WHEN true THEN subq0.c16
         WHEN subq0.c12 = subq0.c7 THEN subq0.c22
         WHEN subq0.c9 = subq0.c15 THEN subq0.c10
         WHEN subq0.c19 > subq0.c23 AND subq0.c7 IS NULL THEN subq0.c16
         ELSE subq0.c16
    END THEN subq0.c21
        WHEN EXISTS (
    SELECT t6.c2 AS c5, t6.c2 AS c6, t6.c0 AS c7, t6.c2 AS c8, t6.c0 AS c9, t6.c1 AS c10, t6.c0 AS c11, t6.c3 AS c12, t6.c3 AS c13, t6.c0 AS c14, t6.c2 AS c15, t6.c3 AS c16, t6.c1 AS c17, t6.c4 AS c18, t6.c2 AS c19, t6.c2 AS c20, 84 AS c21, t6.c4 AS c22, t6.c2 AS c23, 'text87' AS c24, t6.c4 AS c25
     FROM t0 AS t6
     WHERE t6.c2 <= t6.c2 OR false
     ORDER BY c22 DESC, c14 ASC, c8
    ) THEN subq0.c8
        WHEN subq0.c11 <> subq0.c10 THEN subq0.c17
        WHEN subq0.c22 < subq0.c8 OR subq0.c16 > subq0.c19 THEN subq0.c23
        WHEN subq0.c22 <> subq0.c16 THEN typeof( 'text6')
        WHEN subq0.c17 <= subq0.c17 OR subq0.c10 IS NULL AND 
    CASE WHEN subq0.c11 >= subq0.c23 THEN subq0.c11
         ELSE subq0.c22
    END = 'text90' OR subq0.c17 < subq0.c23 THEN subq0.c19
        WHEN subq0.c8 <> 
    CASE subq0.c19 WHEN 
     CASE subq0.c8 WHEN subq0.c19 < subq0.c21 AND subq0.c15 < subq0.c9 AND subq0.c19 = subq0.c17 OR subq0.c9 < subq0.c18 AND subq0.c14 <> subq0.c14 THEN subq0.c23
          WHEN subq0.c13 = subq0.c6 OR subq0.c7 = subq0.c6 THEN unicode( 'text20')
          WHEN 'text19' < subq0.c17 THEN subq0.c15
          ELSE subq0.c11
     END IS NOT NULL THEN 'text23'
         WHEN EXISTS (
     SELECT t7.c4 AS c5, t7.c2 AS c6, t7.c2 AS c7, t7.c2 AS c8, t7.c1 AS c9, t7.c4 AS c10, t7.c3 AS c11, t7.c1 AS c12, t7.c3 AS c13, t7.c2 AS c14, t7.c0 AS c15, t7.c3 AS c16
      FROM t0 AS t7
      WHERE t7.c1 IS NOT NULL
      ORDER BY c16 DESC
      LIMIT 7945643216444812645 
     ) THEN subq0.c10
         WHEN subq0.c9 > subq0.c15 AND subq0.c5 IS NOT NULL OR subq0.c24 = subq0.c7 THEN subq0.c17
         WHEN subq0.c21 < subq0.c22 OR subq0.c17 > subq0.c16 AND subq0.c8 > subq0.c16 AND subq0.c12 IS NOT NULL THEN subq0.c17
         WHEN subq0.c9 = subq0.c9 THEN subq0.c23
         WHEN upper( NULL) > subq0.c8 THEN subq0.c22
         WHEN subq0.c20 <> subq0.c6 THEN subq0.c23
         ELSE subq0.c22
    END THEN subq0.c19
        WHEN subq0.c8 = subq0.c8 THEN subq0.c21
        WHEN EXISTS (
    SELECT t8.c2 AS c5, t8.c2 AS c6, t8.c1 AS c7, t8.c3 AS c8, t8.c0 AS c9, t8.c0 AS c10, t8.c0 AS c11, t8.c2 AS c12, t8.c1 AS c13
     FROM t0 AS t8
     WHERE t8.c0 IS NOT NULL
     ORDER BY c7 ASC, c10, c6
     LIMIT 4669605524477018786 OFFSET 5500935032040951708
    ) THEN subq0.c16
        ELSE subq0.c23
   END = subq0.c10 OR subq0.c18 < subq0.c18 THEN subq0.c20
       WHEN CAST(subq0.c15 AS TEXT) = subq0.c7 THEN subq0.c24
       WHEN subq0.c11 >= subq0.c17 OR subq0.c9 <= subq0.c18 THEN subq0.c5
       WHEN subq0.c18 IS NOT NULL THEN subq0.c13
       WHEN subq0.c20 = subq0.c13 THEN subq0.c6
       WHEN subq0.c24 <> subq0.c6 OR subq0.c7 <> subq0.c24 THEN subq0.c5
       ELSE subq0.c6
  END <> subq0.c14 THEN subq0.c7
      WHEN true THEN subq0.c12
      WHEN subq0.c9 > IFNULL(subq0.c9, subq0.c9) THEN subq0.c5
      WHEN subq0.c23 >= substr(NULL,71) THEN subq0.c14
      WHEN subq0.c13 <> subq0.c5 THEN subq0.c24
      WHEN subq0.c11 <> subq0.c22 THEN subq0.c6
      WHEN subq0.c11 = subq0.c8 THEN subq0.c13
      ELSE subq0.c6
 END AS c14, subq0.c23 AS c15, subq0.c8 AS c16, subq0.c20 AS c17, subq0.c6 AS c18, subq0.c21 AS c19, 
 CASE WHEN 
  CASE WHEN 
   CASE WHEN subq0.c12 = subq0.c20 THEN subq0.c7
        ELSE subq0.c8
   END IS NULL THEN subq0.c12
       ELSE subq0.c24
  END = 
  CASE subq0.c14 WHEN subq0.c23 < 'text61' OR subq0.c15 IS NOT NULL THEN subq0.c5
       WHEN 
   CASE WHEN last_insert_rowid() IS NULL THEN subq0.c10
        ELSE subq0.c22
   END = subq0.c22 THEN subq0.c12
       WHEN FALSE IS NOT NULL THEN subq0.c5
       WHEN subq0.c11 <= subq0.c16 OR CAST(printf('text9','text16') AS INTEGER) > subq0.c16 THEN subq0.c12
       WHEN FALSE = subq0.c24 THEN subq0.c20
       WHEN subq0.c15 >= subq0.c15 AND subq0.c13 <> 
   CASE subq0.c20 WHEN subq0.c23 IS NULL THEN CAST(subq0.c15 AS INTEGER)
        WHEN subq0.c15 IS NULL THEN subq0.c13
        WHEN EXISTS (
    SELECT t9.c0 AS c5, COALESCE(t9.c2, t9.c4, t9.c1, t9.c3) AS c6, TRUE AS c7, t9.c2 AS c8, t9.c1 AS c9
     FROM t0 AS t9
     WHERE true AND t9.c3 > t9.c3
     ORDER BY c6 DESC, c6 ASC, c5
    ) THEN subq0.c12
        WHEN subq0.c16 < subq0.c21 THEN subq0.c24
        WHEN subq0.c7 <> subq0.c13 THEN subq0.c6
        WHEN subq0.c15 < subq0.c9 THEN subq0.c7
        WHEN EXISTS (
    SELECT t10.c1 AS c5, t10.c0 AS c6, t10.c3 AS c7
     FROM t0 AS t10
     WHERE CAST(t10.c3 AS TEXT) <> t10.c1
     ORDER BY c7 ASC, c5, c7
     LIMIT 388651631878965023 OFFSET 2265151930462876795
    ) THEN subq0.c24
        WHEN subq0.c6 = subq0.c20 THEN subq0.c5
        WHEN true THEN subq0.c6
        WHEN subq0.c14 = IFNULL(CAST(subq0.c5 AS INTEGER), 
     CASE WHEN subq0.c16 IS NULL THEN subq0.c6
          ELSE subq0.c14
     END) THEN subq0.c5
        ELSE subq0.c20
   END AND true THEN subq0.c6
       WHEN subq0.c21 < subq0.c22 THEN subq0.c7
       WHEN true THEN subq0.c7
       ELSE subq0.c6
  END THEN subq0.c17
      ELSE 
  CASE WHEN subq0.c6 = subq0.c20 THEN subq0.c21
       ELSE subq0.c22
  END
 END AS c8, subq0.c6 AS c9, COALESCE(subq0.c17, subq0.c23, subq0.c24, subq0.c18, subq0.c19) AS c10, subq0.c16 AS c11, subq0.c7 AS c12, 95 AS c13, subq0.c14 AS c14, subq0.c10 AS c15, subq0.c11 AS c16, subq0.c18 AS c17, subq0.c12 AS c18, subq0.c22 AS c19, 
 CASE WHEN subq0.c10 > subq0.c22 THEN 
  CASE subq0.c24 WHEN subq0.c21 < 'text31' THEN 
   CASE WHEN subq0.c10 IS NOT NULL OR IFNULL(subq0.c6, subq0.c7) <> subq0.c14 THEN subq0.c12
        ELSE subq0.c24
   END
       WHEN subq0.c14 = subq0.c7 OR subq0.c14 <> subq0.c6 OR subq0.c10 <> ltrim( TRUE) THEN subq0.c7
       ELSE subq0.c12
  END
      ELSE 
  CASE WHEN false THEN 
   CASE subq0.c20 WHEN subq0.c17 <= subq0.c16 THEN subq0.c12
        WHEN false AND subq0.c18 > subq0.c9 THEN subq0.c13
        WHEN subq0.c9 IS NOT NULL AND subq0.c10 IS NOT NULL THEN subq0.c24
        WHEN subq0.c13 = subq0.c20 THEN 
    CASE subq0.c20 WHEN subq0.c19 > subq0.c21 AND 
     CASE subq0.c12 WHEN subq0.c24 IS NULL THEN subq0.c15
          WHEN EXISTS (
      SELECT t11.c4 AS c5, t11.c3 AS c6
       FROM t0 AS t11
       WHERE false
       ORDER BY c5, c5
       LIMIT 4719048912667776340 OFFSET 1833195245127485593
      ) THEN subq0.c16
          WHEN subq0.c22 <= subq0.c19 THEN subq0.c7
          WHEN false THEN subq0.c12
          ELSE subq0.c10
     END IS NULL OR false OR subq0.c12 <> FALSE THEN subq0.c6
         WHEN subq0.c21 = subq0.c11 THEN subq0.c5
         WHEN subq0.c15 < subq0.c9 OR false THEN subq0.c24
         WHEN subq0.c15 = subq0.c15 OR 'text84' > subq0.c10 THEN subq0.c24
         WHEN subq0.c15 >= subq0.c18 THEN subq0.c24
         WHEN subq0.c12 <> TRUE THEN subq0.c13
         WHEN subq0.c18 > subq0.c9 THEN subq0.c24
         WHEN subq0.c21 IS NOT NULL THEN subq0.c24
         WHEN subq0.c9 < COALESCE(subq0.c9, subq0.c9, subq0.c10, subq0.c15, COALESCE(subq0.c21, subq0.c7, subq0.c13, subq0.c15), subq0.c18) THEN subq0.c6
         WHEN subq0.c22 > subq0.c23 AND subq0.c6 <> subq0.c6 OR false THEN subq0.c6
         WHEN subq0.c24 <> subq0.c5 THEN subq0.c13
         ELSE subq0.c24
    END
        WHEN subq0.c7 = TRUE AND subq0.c10 > subq0.c17 OR subq0.c19 IS NOT NULL THEN 
    CASE subq0.c13 WHEN true THEN TRUE
         WHEN subq0.c10 < subq0.c23 THEN subq0.c12
         WHEN true AND subq0.c15 <> COALESCE(subq0.c15, subq0.c16, subq0.c15, CAST(subq0.c24 AS INTEGER), subq0.c7) OR subq0.c15 IS NOT NULL THEN subq0.c6
         WHEN subq0.c9 >= subq0.c15 THEN subq0.c20
         WHEN EXISTS (
     SELECT t12.c2 AS c5, t12.c4 AS c6, t12.c4 AS c7, t13.c3 AS c8, t13.c0 AS c9, t12.c0 AS c10, t13.c1 AS c11, t13.c4 AS c12, t12.c3 AS c13, t12.c2 AS c14, t12.c3 AS c15, t13.c1 AS c16, t13.c3 AS c17, t13.c4 AS c18, t12.c4 AS c19, t12.c0 AS c20, TRUE AS c21, t12.c3 AS c22, t12.c3 AS c23, t12.c0 AS c24
      FROM t0 AS t12
        INNER JOIN t0 AS t13        
         ON (t13.c1 <> t12.c0)
      WHERE t12.c3 IS NOT NULL
      ORDER BY c6, c8 COLLATE RTRIM
      LIMIT 4393923871276040982 
     ) THEN subq0.c12
         WHEN subq0.c8 < subq0.c23 AND substr(NULL,NULL,FALSE) IS NULL THEN subq0.c6
         ELSE subq0.c20
    END
        WHEN subq0.c22 = subq0.c22 THEN subq0.c24
        WHEN EXISTS (
    SELECT t14.c3 AS c5, t14.c3 AS c6, t14.c4 AS c7, t14.c4 AS c8, t14.c0 AS c9, t14.c3 AS c10, t14.c0 AS c11, FALSE AS c12, t14.c2 AS c13, t14.c0 AS c14, t14.c2 AS c15, t14.c4 AS c16, t14.c3 AS c17, t14.c4 AS c18, t14.c0 AS c19
     FROM t0 AS t14
     WHERE t14.c4 <> t14.c4
     ORDER BY c8, c13 COLLATE NOCASE, c9 ASC
     LIMIT 7329699184588236974 OFFSET 6377615060028322000
    ) AND subq0.c8 = subq0.c23 THEN subq0.c14
        ELSE subq0.c14
   END
       ELSE subq0.c13
  END
 END AS c20, subq0.c11 AS c21, subq0.c21 AS c22, subq0.c14 AS c23, CAST(17 AS INTEGER) AS c24, subq0.c11 AS c25, subq0.c7 AS c26, subq0.c19 AS c27, TRUE AS c28, subq0.c13 AS c29, subq0.c8 AS c30, subq0.c13 AS c31, subq0.c12 AS c32, subq0.c24 AS c33, subq0.c8 AS c34, rtrim( NULL) AS c35, IFNULL(subq0.c24, subq0.c5) AS c36, subq0.c5 AS c37, subq0.c22 AS c38, subq0.c12 AS c39, subq0.c24 AS c40, ltrim('text22','text80') AS c41, 'text18' AS c42, subq0.c15 AS c43, subq0.c16 AS c44, subq0.c18 AS c45, glob('text73',NULL) AS c46, subq0.c5 AS c47, unlikely( NULL) AS c48, COALESCE(subq0.c23, subq0.c8, subq0.c22, subq0.c22) AS c49, COALESCE(IFNULL(subq0.c12, subq0.c13), 
  CASE WHEN EXISTS (
   SELECT t15.c1 AS c5, COALESCE(t15.c2, t15.c4) AS c6, t15.c1 AS c7, t15.c0 AS c8, 
     CASE t15.c1 WHEN t15.c3 <= t15.c3 THEN t15.c0
          WHEN false THEN t15.c1
          WHEN t15.c4 <> t15.c3 AND 
      CASE t15.c3 WHEN t15.c3 IS NULL THEN t15.c3
           WHEN t15.c4 >= 'text33' THEN t15.c4
           WHEN t15.c1 = t15.c1 OR t15.c2 >= t15.c2 THEN t15.c3
           WHEN t15.c0 = t15.c1 THEN t15.c4
           WHEN t15.c0 <> t15.c0 THEN t15.c3
           WHEN t15.c3 < t15.c4 THEN t15.c4
           WHEN true THEN 'text46'
           WHEN t15.c4 <> t15.c4 THEN t15.c3
           WHEN t15.c0 = t15.c0 THEN t15.c4
           WHEN t15.c0 <> t15.c1 THEN t15.c4
           WHEN t15.c1 = t15.c0 THEN t15.c4
           WHEN true THEN t15.c3
           ELSE t15.c4
      END <> t15.c3 AND false OR EXISTS (
      SELECT t16.c0 AS c5
       FROM t0 AS t16
       WHERE t16.c1 = t16.c0
       ORDER BY c5
       LIMIT 3369426264534038642 
      ) OR t15.c4 <= t15.c3 AND t15.c3 < t15.c3 OR t15.c2 <> CAST(t15.c1 AS INTEGER) AND t15.c3 IS NULL THEN t15.c0
          WHEN EXISTS (
      SELECT 86 AS c5, t17.c4 AS c6, t17.c0 AS c7, t17.c4 AS c8, t17.c1 AS c9, t17.c4 AS c10
       FROM t0 AS t17
       WHERE 11 >= t17.c2
       ORDER BY c8 DESC, c8, c10 DESC
       LIMIT 4245148848583075213 
      ) AND CAST(t15.c0 AS BOOLEAN) = t15.c0 OR t15.c2 >= t15.c2 OR t15.c3 < 'text16' AND 
      CASE t15.c3 WHEN t15.c0 <> t15.c1 THEN t15.c4
           WHEN t15.c1 <> t15.c0 AND EXISTS (
       SELECT t18.c0 AS c5
        FROM t0 AS t18
        WHERE EXISTS (
         SELECT ALL t19.c4 AS c5, t19.c0 AS c6, t19.c2 AS c7, t19.c0 AS c8
          FROM t0 AS t19
          WHERE t19.c2 <= t19.c2
          ORDER BY c5 ASC, c6
          LIMIT 6261503971848100276 
         ) AND t18.c3 < t18.c4 OR true OR t18.c1 IS NOT NULL
        ORDER BY c5 DESC
        LIMIT 621987124529873146 OFFSET 1282678399911214103
       ) AND EXISTS (
       SELECT t20.c4 AS c5, t20.c2 AS c6, t20.c2 AS c7, t20.c4 AS c8, TRUE AS c9, t20.c3 AS c10, t20.c2 AS c11, t20.c2 AS c12, t20.c3 AS c13, t20.c1 AS c14, t20.c1 AS c15, t20.c4 AS c16
        FROM t0 AS t20
        WHERE false
        ORDER BY c6 DESC
        LIMIT 5327278062819247619 OFFSET 738697204771536639
       ) THEN t15.c4
           WHEN t15.c4 < t15.c3 THEN t15.c3
           WHEN t15.c3 IS NOT NULL OR EXISTS (
       SELECT t21.c4 AS c5, t21.c4 AS c6, t21.c0 AS c7, FALSE AS c8, t21.c2 AS c9, t21.c0 AS c10, t21.c1 AS c11, t21.c4 AS c12, t21.c3 AS c13
        FROM t0 AS t21
        WHERE EXISTS (
         SELECT t22.c1 AS c5
          FROM t0 AS t22
          WHERE true
          ORDER BY c5 ASC, c5, c5 COLLATE BINARY, c5
          LIMIT 5956248694182188060 OFFSET 3971845328426771351
         )
        ORDER BY c8 ASC, c13 DESC, c13
        LIMIT 130362431559213225 OFFSET 2541734051518099712
       ) OR false THEN t15.c3
           WHEN t15.c3 <= t15.c4 THEN t15.c3
           WHEN false THEN t15.c4
           WHEN t15.c3 > t15.c4 THEN t15.c4
           WHEN 'text2' <= t15.c3 THEN t15.c4
           ELSE t15.c3
      END = t15.c3 THEN t15.c0
          WHEN t15.c4 IS NULL OR t15.c2 <= t15.c2 THEN t15.c1
          WHEN t15.c3 IS NULL THEN t15.c0
          WHEN false OR EXISTS (
      SELECT t23.c1 AS c5, t23.c1 AS c6, t23.c0 AS c7, t23.c3 AS c8, t23.c2 AS c9, t23.c3 AS c10
       FROM t0 AS t23
       WHERE t23.c0 = t23.c0
       ORDER BY c9 COLLATE RTRIM, c9, c8
       LIMIT 8664762757550550577 OFFSET 4710474411934306003
      ) AND false THEN t15.c0
          WHEN t15.c1 <> t15.c0 THEN t15.c0
          WHEN t15.c1 = t15.c1 THEN t15.c0
          WHEN t15.c2 > t15.c2 THEN t15.c1
          WHEN trim('text35','text47') < t15.c3 THEN t15.c0
          ELSE t15.c0
     END AS c11, t15.c4 AS c12, t15.c4 AS c13, t15.c4 AS c14, t15.c2 AS c15, t15.c1 AS c16, t15.c0 AS c17, t15.c1 AS c18, t15.c4 AS c19, t15.c3 AS c20, t15.c3 AS c21
    FROM t0 AS t15
    WHERE t15.c3 <> t15.c3
    ORDER BY c11, c20
    LIMIT 3406432497422856654 OFFSET 2130912987139841223
   ) THEN CAST(57 AS INTEGER)
       ELSE CAST(subq0.c6 AS INTEGER)
  END) AS c22, subq0.c13 AS c23
FROM (SELECT t1.c1 AS c5, t1.c0 AS c6, t1.c0 AS c7, t1.c4 AS c8, t1.c2 AS c9, ifnull(NULL,'text81') AS c10, t1.c4 AS c11, FALSE AS c12, t1.c0 AS c13, t1.c1 AS c14, t1.c2 AS c15, 'text1' AS c16, t1.c4 AS c17, t1.c2 AS c18, t1.c4 AS c19, t1.c1 AS c20, t1.c3 AS c21, t1.c4 AS c22, t1.c4 AS c23, t1.c1 AS c24
   FROM t0 AS t1
   WHERE length( 'text40') IS NULL AND t1.c1 <> 
    CASE WHEN t1.c2 >= t1.c2 THEN t1.c1
         ELSE t1.c0
    END
   ORDER BY c16, c15, c17 ASC
   LIMIT 2706517202312034620 OFFSET 3787309306614641245) as subq0
WHERE subq0.c24 <> subq0.c5
ORDER BY c27 COLLATE RTRIM ASC, c10 ASC, c33
LIMIT 963417769308799865 OFFSET 9192172664402954564;
