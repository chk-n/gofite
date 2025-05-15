CREATE TABLE t0 (
    c0 BOOLEAN,
    c1 BOOLEAN,
    c2 BOOLEAN,
    c3 NULL,
    c4 BOOLEAN
);

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