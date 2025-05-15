/* -----------Error-----------
mismatch output
old: CREATE TABLE t0 (
    c0 TEXT,
    c1 TEXT,
    c2 TEXT,
    c3 BOOLEAN,
    c4 TEXT,
    c5 BLOB,
    c6 TEXT,
    c7 NULL,
    c8 INTEGER,
    c9 BLOB
)|
--
49|0|text92|false|text27|[216 193 227 59]|text10|<nil>|35|[216 193 227 59]|
76|0|text97|true|text88|[99 76 52 133]|text82|<nil>|35|[99 76 52 133]|
75|0|text82|true|text45|[226 104 13 174]|text66|<nil>|35|[226 104 13 174]|
162|text78|37|false|text90|[222 65 208 148]|text42|<nil>|35|[222 65 208 148]|
87|text47|text25|false|text40|[86 71 188 81]|text61|<nil>|35|[86 71 188 81]|

new: CREATE TABLE t0 (
    c0 TEXT,
    c1 TEXT,
    c2 TEXT,
    c3 BOOLEAN,
    c4 TEXT,
    c5 BLOB,
    c6 TEXT,
    c7 NULL,
    c8 INTEGER,
    c9 BLOB
)|
--
49|0|text92|false|text27|[216 193 227 59]|0|<nil>|35|[216 193 227 59]|
76|0|text97|true|text88|[99 76 52 133]|0|<nil>|35|[99 76 52 133]|
75|0|text82|true|text45|[226 104 13 174]|0|<nil>|35|[226 104 13 174]|
162|text78|37|false|text90|[249 41 4 0]|0|<nil>|35|[249 41 4 0]|
87|text47|text25|false|text40|[86 71 188 81]|text61|<nil>|35|[86 71 188 81]|
-----------/Error----------- */
CREATE TABLE t0 (
    c0 TEXT,
    c1 TEXT,
    c2 TEXT,
    c3 BOOLEAN,
    c4 TEXT,
    c5 BLOB,
    c6 TEXT,
    c7 NULL,
    c8 INTEGER,
    c9 BLOB
);
INSERT INTO t0 VALUES ('text10', 'text27', 'text92', FALSE, 'text83', X'46b73f62', 'text35', NULL, 49, X'd8c1e33b');
UPDATE t0 
SET c0 = t0.c0, c1 = 'text30', c3 = t0.c3, c4 = t0.c1, c5 = t0.c9, c6 = t0.c6, c7 = t0.c7, c8 = t0.c8
WHERE t0.c7 IS NULL;
INSERT INTO t0 VALUES ('text82', IFNULL('text9', 'text6'), 'text97', TRUE, 'text88', X'634c3485', 'text36', NULL, 76, X'1b5f2bac');
UPDATE t0 
SET c0 = t0.c2, c3 = t0.c3, c6 = t0.c6, c8 = t0.c8, c9 = CAST(t0.c3 AS BLOB)
WHERE t0.c4 > t0.c6 AND CAST(t0.c5 AS BLOB) <> t0.c7;
INSERT INTO t0 VALUES ('text66', 'text3', 'text82', TRUE, 'text45', X'e2680dae', 'text1', NULL, 75, X'f8f63331');
UPDATE t0 
SET c0 = t0.c0, c1 = CAST(CAST(t0.c6 AS BOOLEAN) AS INTEGER), c3 = t0.c3, c6 = t0.c0, c7 = t0.c7, c8 = 
  CASE t0.c8 WHEN t0.c1 < t0.c0 THEN glob(NULL,X'e2197ef5')
       WHEN X'beebc03e' < t0.c5 THEN t0.c8
       ELSE t0.c8
  END, c9 = t0.c5
WHERE t0.c5 >= t0.c5;
INSERT INTO t0 VALUES ('text60', 'text78', COALESCE(37, NULL, 'text89', 'text91', NULL, NULL), FALSE, 'text90', X'f9290400', 'text42', NULL, unicode( X'a28c8e15'), X'de41d094');
UPDATE t0 
SET c3 = t0.c3, c4 = t0.c4, c5 = 
  CASE WHEN t0.c3 = t0.c3 THEN t0.c5
       ELSE t0.c9
  END, c6 = CAST(t0.c1 AS BOOLEAN), c9 = t0.c5
WHERE EXISTS (
 SELECT t1.c6 AS c10, t3.c4 AS c11, t3.c1 AS c12
  FROM t0 AS t1
     LEFT JOIN (
     t0 AS t2
      INNER JOIN t0 AS t3      
       ON (t3.c0 > t3.c6)     )
      ON (t1.c7 = t3.c7)
    LEFT OUTER JOIN t0 AS t4    
     ON (t1.c8 <= t2.c8)
  WHERE t4.c6 >= t4.c4
  ORDER BY t2.c5 COLLATE RTRIM, t2.c3 DESC
 );
INSERT INTO t0 VALUES ('text23', 'text47', 'text25', FALSE, 'text40', X'6a0a1f8b', 'text61', NULL, 87, X'5647bc51');
UPDATE t0 
SET c0 = CAST(t0.c8 AS BOOLEAN), c3 = t0.c3, c5 = 
  CASE t0.c9 WHEN t0.c5 >= t0.c5 THEN t0.c5
       WHEN EXISTS (
   SELECT t1.c7 AS c10
    FROM t0 AS t1
    WHERE t1.c6 = t1.c4
    ORDER BY t1.c9 COLLATE RTRIM, t1.c0 ASC
    LIMIT 4520774109079237547 OFFSET 2175245578009686007
   ) THEN t0.c9
       WHEN 
   CASE t0.c3 WHEN t0.c3 IS NOT NULL THEN t0.c3
        WHEN ltrim( 'text54') >= 'text31' THEN t0.c3
        WHEN t0.c0 <> t0.c2 THEN t0.c3
        WHEN t0.c5 <= t0.c5 OR t0.c9 = t0.c5 THEN t0.c3
        WHEN t0.c2 > t0.c0 THEN t0.c3
        WHEN t0.c3 = t0.c3 AND t0.c7 = t0.c7 AND t0.c3 <> t0.c3 THEN t0.c3
        ELSE t0.c3
   END = CAST(t0.c3 AS INTEGER) THEN t0.c9
       WHEN CAST(t0.c7 AS BLOB) IS NOT NULL OR t0.c3 IS NOT NULL THEN zeroblob( 96)
       WHEN t0.c7 <> 
   CASE WHEN false AND TRUE = t0.c3 OR t0.c8 < t0.c8 AND t0.c4 IS NOT NULL AND t0.c4 > 
    CASE WHEN t0.c7 <> t0.c7 THEN t0.c0
         ELSE t0.c1
    END THEN t0.c7
        ELSE CAST(t0.c5 AS TEXT)
   END THEN t0.c5
       ELSE t0.c9
  END, c7 = t0.c7, c8 = COALESCE(35, t0.c8, NULLIF(t0.c7, t0.c7)), c9 = t0.c9
WHERE t0.c0 <> t0.c1;
