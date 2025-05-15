/* -----------Error-----------
Outputs differ.
--- V1 Output ---
|text24|text56|41|0
|text24|text22|30|0
|text28|text74|28|0

--- V2 Output ---
|text24|text73|41|0
|text24|text22|30|0
|text28|text74|28|0
-----------/Error----------- */
CREATE TABLE t0 (
    c0 NULL,
    c1 TEXT,
    c2 TEXT,
    c3 INTEGER,
    c4 BOOLEAN
);
UPDATE t0 
SET c1 = t0.c2, c2 = 
  CASE WHEN t0.c4 = t0.c4 THEN t0.c2
       ELSE 
   CASE WHEN t0.c1 >= t0.c1 THEN t0.c1
        ELSE t0.c2
   END
  END, c4 = t0.c4
WHERE t0.c0 <> t0.c0 AND 
 CASE WHEN t0.c3 IS NULL AND 
  CASE WHEN t0.c4 <> t0.c4 THEN t0.c3
       ELSE 
   CASE t0.c3 WHEN t0.c0 IS NOT NULL THEN t0.c3
        WHEN t0.c3 IS NULL THEN t0.c3
        WHEN t0.c0 = NULL OR t0.c4 = t0.c4 THEN t0.c3
        WHEN t0.c0 IS NULL THEN t0.c3
        WHEN t0.c4 <> t0.c4 THEN 
    CASE WHEN false THEN t0.c3
         ELSE t0.c3
    END
        WHEN t0.c2 IS NULL THEN likely( 84)
        ELSE t0.c3
   END
  END = t0.c3 THEN t0.c4
      ELSE quote( 92)
 END IS NOT NULL;
INSERT INTO t0 VALUES (NULL, 'text51', 'text56', 41, FALSE);
UPDATE t0 
SET c4 = t0.c4
WHERE EXISTS (
 SELECT t1.c1 AS c5, t1.c2 AS c6, t1.c1 AS c7, t1.c3 AS c8
  FROM t0 AS t1
  WHERE NULLIF(t1.c4, t1.c4) <> t1.c4
  ORDER BY t1.c3 DESC, t1.c1 COLLATE BINARY, t1.c0 DESC
  LIMIT 635092716126117345 OFFSET 5142866589317824612
 ) AND IFNULL(t0.c0, 
  CASE WHEN EXISTS (
   SELECT t2.c2 AS c5, t2.c3 AS c6, t2.c0 AS c7, t2.c0 AS c8
    FROM t0 AS t2
    WHERE t2.c4 <> t2.c4 AND t2.c3 <= t2.c3
    ORDER BY t2.c1
    LIMIT 8502609665481332375 OFFSET 5465950295470439473
   ) THEN t0.c0
       ELSE t0.c0
  END) = t0.c0 AND t0.c3 >= t0.c3;
UPDATE t0 
SET c0 = 
  CASE WHEN t0.c0 = t0.c0 THEN t0.c0
       ELSE t0.c0
  END, c2 = t0.c2, c3 = t0.c3
WHERE t0.c0 <> t0.c0;
UPDATE t0 
SET c1 = 'text76', c2 = 'text73', c3 = t0.c3
WHERE t0.c2 <> t0.c2 OR COALESCE(t0.c2, 'text5', t0.c1, t0.c2, 
  CASE WHEN t0.c4 <> t0.c4 THEN t0.c0
       ELSE t0.c0
  END) <= t0.c1 OR rtrim(FALSE,'text43') >= quote( 30) AND t0.c0 IS NULL;
INSERT INTO t0 VALUES (NULL, CAST('text91' AS INTEGER), 'text22', 30, FALSE);
UPDATE t0 
SET c1 = t0.c2
WHERE t0.c3 > t0.c3;
UPDATE t0 
SET c0 = t0.c0, c1 = 
  CASE t0.c2 WHEN t0.c4 <> t0.c4 THEN t0.c2
       WHEN substr(38,NULL) = t0.c2 THEN t0.c2
       WHEN true THEN t0.c2
       WHEN false THEN t0.c2
       WHEN t0.c3 < t0.c3 THEN t0.c2
       WHEN t0.c0 = IFNULL(t0.c0, 
    CASE WHEN false THEN t0.c0
         ELSE t0.c0
    END) THEN t0.c2
       WHEN t0.c4 = t0.c4 THEN t0.c1
       ELSE replace(FALSE,FALSE,'text24')
  END, c4 = t0.c4
WHERE t0.c4 = CAST(NULLIF(t0.c1, t0.c0) AS INTEGER);
INSERT INTO t0 VALUES (NULL, 'text28', 'text74', 28, FALSE);
UPDATE t0 
SET c4 = t0.c4
WHERE t0.c4 IS NOT NULL;
