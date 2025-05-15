CREATE TABLE t0 (
    c0 BOOLEAN
);

SELECT subq1.c2 AS c3, subq1.c2 AS c4, subq1.c2 AS c5, subq1.c2 AS c6, subq1.c2 AS c7
FROM (SELECT FALSE AS c2
   FROM (SELECT TRUE AS c1
      FROM t0 AS t1
      WHERE t1.c0 IS NULL
      ORDER BY c1 COLLATE RTRIM
      LIMIT 5274995276445649007 OFFSET 6539862382730406685) as subq0
   WHERE subq0.c1 = TRUE
   ORDER BY c2 COLLATE BINARY, c2 ASC, c2 ASC, c2) as subq1
WHERE subq1.c2 = 
 CASE subq1.c2 WHEN subq1.c2 = subq1.c2 THEN subq1.c2
      WHEN subq1.c2 = subq1.c2 THEN subq1.c2
      WHEN subq1.c2 IS NULL THEN subq1.c2
      WHEN subq1.c2 <> subq1.c2 THEN subq1.c2
      WHEN subq1.c2 IS NULL THEN subq1.c2
      WHEN 
  CASE subq1.c2 WHEN subq1.c2 <> subq1.c2 THEN instr(TRUE,NULL)
       ELSE subq1.c2
  END IS NOT NULL THEN subq1.c2
      WHEN subq1.c2 <> subq1.c2 THEN subq1.c2
      ELSE subq1.c2
 END
ORDER BY c6 COLLATE BINARY, c6 COLLATE NOCASE ASC, c5 COLLATE BINARY
LIMIT 9176860692047444622 ;


