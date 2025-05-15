/* -----------Error-----------
Outputs differ.
--- Old Output ---
1||text11|86|integer|
23||text2|9|text85|
1||text79|43|text86|
1|1||55||35

--- New Output ---
1||text11|86|text50|
23||text2|9|text50|
1||text79|43|text50|
1|1||55||35
-----------/Error----------- */
CREATE TABLE t0 (
    c0 BOOLEAN,
    c1 NULL,
    c2 TEXT,
    c3 INTEGER,
    c4 TEXT,
    c5 NULL
);
UPDATE t0 
SET c0 = t0.c0, c1 = 
  CASE WHEN t0.c5 = t0.c1 THEN 
   CASE t0.c1 WHEN t0.c4 IS NULL THEN t0.c5
        WHEN t0.c5 <> t0.c5 THEN t0.c1
        WHEN t0.c0 <> t0.c0 THEN t0.c1
        WHEN t0.c3 < 29 OR t0.c4 > t0.c4 OR EXISTS (
    SELECT t1.c4 AS c6, t1.c3 AS c7
     FROM t0 AS t1
     WHERE t1.c5 = t1.c1
     ORDER BY t1.c4 COLLATE NOCASE, t1.c3
     LIMIT 3331774802008947845 OFFSET 1229896069400729294
    ) THEN t0.c5
        WHEN true THEN t0.c1
        WHEN t0.c4 <= t0.c2 THEN t0.c1
        WHEN t0.c4 <= t0.c4 THEN t0.c1
        WHEN 
    CASE WHEN t0.c4 IS NULL THEN t0.c4
         ELSE t0.c2
    END > t0.c4 THEN t0.c5
        WHEN t0.c3 IS NOT NULL OR NULL = t0.c5 THEN t0.c1
        ELSE t0.c5
   END
       ELSE t0.c1
  END, c3 = t0.c3, c4 = t0.c4, c5 = t0.c5
WHERE NULL IS NULL AND true;
INSERT INTO t0 VALUES (TRUE, NULL, 'text11', 86, typeof( TRUE), IFNULL(NULL, NULL));
UPDATE t0 
SET c2 = t0.c2, c3 = t0.c3, c5 = t0.c1
WHERE t0.c2 <= t0.c2;
UPDATE t0 
SET c1 = t0.c1, c4 = t0.c4, c5 = 
  CASE t0.c1 WHEN t0.c1 <> t0.c5 OR false THEN t0.c1
       WHEN t0.c5 = t0.c5 THEN t0.c5
       WHEN true THEN t0.c1
       WHEN t0.c3 < t0.c3 THEN t0.c1
       WHEN t0.c5 = t0.c1 THEN t0.c5
       WHEN EXISTS (
   SELECT t1.c3 AS c6, NULLIF(t1.c4, t1.c4) AS c7, upper( 5) AS c8, t1.c0 AS c9, NULL AS c10
    FROM t0 AS t1
    WHERE t1.c4 <> t1.c4
    ORDER BY t1.c2 ASC, t1.c2
    LIMIT 4611249560996242145 
   ) THEN t0.c1
       WHEN 'text80' = 
   CASE t0.c2 WHEN TRUE <> FALSE THEN t0.c2
        ELSE nullif('text38',NULL)
   END AND 43 <> t0.c3 THEN t0.c1
       WHEN false THEN t0.c1
       WHEN t0.c2 <> t0.c2 THEN t0.c1
       WHEN t0.c1 = 
   CASE WHEN nullif(33,'text94') <> t0.c2 AND true THEN t0.c5
        ELSE t0.c5
   END OR t0.c5 = t0.c5 THEN t0.c5
       WHEN t0.c3 > t0.c3 THEN t0.c1
       WHEN EXISTS (
   SELECT t2.c3 AS c6, t2.c5 AS c7, t2.c0 AS c8, 
     CASE WHEN t2.c3 <> t2.c3 THEN t2.c2
          ELSE t2.c4
     END AS c9, t2.c1 AS c10, t2.c1 AS c11, t2.c3 AS c12, t2.c3 AS c13
    FROM t0 AS t2
    WHERE 35 < t2.c3
    ORDER BY t2.c4 DESC
    LIMIT 7554522184481482328 OFFSET 5008777671851171941
   ) THEN t0.c5
       ELSE t0.c1
  END
WHERE trim('text7',FALSE) > t0.c2 AND 
 CASE WHEN t0.c4 < t0.c4 THEN t0.c4
      ELSE t0.c4
 END = t0.c4 OR t0.c3 = t0.c3;
UPDATE t0 
SET c0 = NULLIF(t0.c0, t0.c0), c3 = t0.c3, c5 = t0.c1
WHERE t0.c1 = IFNULL(t0.c5, t0.c1);
INSERT INTO t0 VALUES (CAST(23 AS INTEGER), NULL, 'text2', 9, 'text85', NULL);
UPDATE t0 
SET c0 = t0.c0, c2 = t0.c4, c5 = t0.c1
WHERE EXISTS (
 SELECT t1.c5 AS c6, t1.c4 AS c7, t1.c4 AS c8
  FROM t0 AS t1
  WHERE t1.c3 >= CAST(like('text2','text26','𹦶') AS BOOLEAN)
  ORDER BY t1.c4, t1.c1, t1.c3 ASC
  LIMIT 2769823190888199089 OFFSET 432027343444280104
 );
INSERT INTO t0 VALUES (TRUE, NULL, 'text79', 43, IFNULL('text86', 'text93'), IFNULL(NULL, NULL));
UPDATE t0 
SET c1 = t0.c5, c4 = 'text50'
WHERE quote( 'text81') <= quote( TRUE);
INSERT INTO t0 VALUES (TRUE, CAST(min(89,73,TRUE) AS TEXT), substr(TRUE,NULL,14), 55, replace('text96',NULL,TRUE), CAST(round( 35) AS INTEGER));
