/* -----------Error-----------
Outputs differ.
--- V1 Output ---
1|0|62||39|text35
0|0|text84|0|1|text68
1|1|98|text13||text64
1|1|90|text41|66|text24
0|1|94|74|58|text84
0|0|48|text71|15|

--- V2 Output ---
1|0|62||39|text35
0|0|text84|0|1|text68
1|1|98|text13||text64
1|1|90|text41|66|text24
0|1|94|74|58|text84
1|0|98|text98|15|
-----------/Error----------- */
CREATE TABLE t0 (
    c0 BOOLEAN,
    c1 BOOLEAN,
    c2 INTEGER,
    c3 TEXT,
    c4 INTEGER,
    c5 TEXT
);
UPDATE t0 
SET c3 = t0.c3
WHERE false;
DELETE FROM t0
WHERE false;
UPDATE t0 
SET c0 = t0.c1, c1 = t0.c1, c5 = t0.c3
WHERE FALSE = t0.c0;
INSERT INTO t0 VALUES (TRUE, FALSE, 62, rtrim( NULL), 39, 'text35');
INSERT INTO t0 VALUES (COALESCE(CAST(NULL AS TEXT), NULL, FALSE, FALSE, 48, TRUE), FALSE, likely( 'text84'), ifnull(FALSE,'text39'), changes(), 'text68');
INSERT INTO t0 VALUES (TRUE, TRUE, 98, 'text13', COALESCE(NULL, NULL), 'text64');
INSERT INTO t0 VALUES (TRUE, TRUE, 90, 'text41', IFNULL(66, 86), 'text24');
INSERT INTO t0 VALUES (FALSE, TRUE, 94, quote( 74), 58, 'text84');
INSERT INTO t0 VALUES (TRUE, FALSE, 98, 'text98', 15, substr(40,18));
UPDATE t0 
SET c0 = t0.c1, c2 = unicode( FALSE), c3 = 'text71'
WHERE 
 CASE t0.c3 WHEN t0.c3 <= CAST(t0.c1 AS BOOLEAN) THEN substr(NULL,NULL,'text66')
      WHEN t0.c1 <> FALSE THEN t0.c3
      WHEN t0.c3 IS NOT NULL OR true AND t0.c3 = 'text38' THEN t0.c5
      WHEN false THEN substr(NULL,'text89')
      ELSE t0.c5
 END < quote( FALSE) OR t0.c1 <> 
 CASE WHEN t0.c4 < t0.c2 THEN NULLIF(t0.c0, t0.c0)
      ELSE t0.c1
 END AND t0.c5 >= t0.c3;
