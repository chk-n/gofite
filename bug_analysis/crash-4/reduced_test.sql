CREATE TABLE t0 (
    c0 BOOLEAN,
    c1 INTEGER,
    c2 BOOLEAN,
    c3 TEXT,
    c4 NULL,
    c5 INTEGER,
    c6 BOOLEAN
);

SELECT 
 CASE WHEN subq1.c13 <> subq1.c13 THEN subq1.c13
      ELSE subq1.c13
 END AS c14, subq1.c13 AS c15, subq1.c13 AS c16, CAST(subq1.c13 AS TEXT) AS c17, subq1.c13 AS c18
FROM (SELECT FALSE AS c13
   FROM (SELECT TRUE AS c7, t1.c1 AS c8, t1.c2 AS c9, t1.c2 AS c10, t1.c5 AS c11, t1.c1 AS c12
      FROM t0 AS t1
      WHERE 89 > t1.c1
      ORDER BY c9, c11 COLLATE NOCASE ASC
      LIMIT 2316622805712276698 ) as subq0
   WHERE true
   ORDER BY c13, c13, c13, c13 ASC) as subq1
WHERE subq1.c13 = 
 CASE subq1.c13 WHEN subq1.c13 = subq1.c13 THEN subq1.c13
      ELSE subq1.c13
 END OR subq1.c13 = NULLIF(subq1.c13, subq1.c13) OR subq1.c13 IS NOT NULL AND subq1.c13 = subq1.c13
ORDER BY c15, c17, c15 ASC
LIMIT 8255429340041652679 OFFSET 7309356072816970115;
