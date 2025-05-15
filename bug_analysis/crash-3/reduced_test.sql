CREATE TABLE t0 (
    c0 BOOLEAN,
    c1 INTEGER,
    c2 INTEGER,
    c3 TEXT,
    c4 BOOLEAN
);

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