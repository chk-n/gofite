CREATE TABLE t0 (
            c0 NULL,
            c1 TEXT,
            c2 BOOLEAN,
            c3 INTEGER
        );
         SAVEPOINT sp0;
        SELECT t1.c1 AS c4, t1.c2 AS c5, t1.c1 AS c6, t1.c1 AS c7,
          CASE WHEN NULL = t1.c0 THEN t1.c1
               ELSE t1.c1
          END AS c8, t1.c2 AS c9
         FROM t0 AS t1
         WHERE t1.c0 = t1.c0
         ORDER BY c7, c6 DESC
         LIMIT 6855454967683455182 OFFSET 7105526275376937250;
        INSERT INTO t0 VALUES (NULL, 'text65', TRUE, 33);
        SELECT 'text86' AS c7, COALESCE('text46', subq0.c4, subq0.c5, FALSE, COALESCE(subq0.c6,
            CASE WHEN false THEN subq0.c4
                 ELSE subq0.c6
            END, subq0.c4,
            CASE WHEN false OR subq0.c5 <= subq0.c5 OR subq0.c4 <> subq0.c4 OR subq0.c5 <> subq0.c5 AND subq0.c5 >= subq0.c5 THEN subq0.c4
                 ELSE subq0.c4
            END, subq0.c4, subq0.c5), subq0.c4) AS c8, subq0.c6 AS c9
         FROM (SELECT t2.c2 AS c4, t2.c1 AS c5, t2.c3 AS c6
            FROM t0 AS t2
            WHERE t2.c1 = COALESCE(t2.c1, 'text60', unicode( 'text72'), t2.c0, t2.c2, t2.c0)
            ORDER BY c5, c5 COLLATE NOCASE ASC) as subq0
         WHERE false
         ORDER BY c8 COLLATE NOCASE
         LIMIT 7170886995328538206 ;
        SELECT subq1.c13 AS c16, subq1.c4 AS c17, subq1.c7 AS c18, subq1.c9 AS c19
         FROM (SELECT t3.c2 AS c4, t3.c3 AS c5, t3.c1 AS c6, t3.c3 AS c7, t3.c1 AS c8, t3.c2 AS c9, t3.c0 AS c10, t3.c1 AS c11, t3.c2 AS c12, t3.c0 AS c13
            FROM t0 AS t3
            WHERE EXISTS (
             SELECT 35 AS c4, t4.c0 AS c5, t4.c0 AS c6, t4.c3 AS c7, t4.c3 AS c8, t4.c3 AS c9, t4.c3 AS c10, t4.c3 AS c11, t4.c2 AS c12, t4.c3 AS c13, t4.c0 AS c14, t4.c0 AS c15
              FROM t0 AS t4
              WHERE t4.c3 < t4.c3
              ORDER BY c8 DESC
             )
            ORDER BY c11, c8 ASC, c4) as subq1
         WHERE subq1.c8 <= subq1.c8 OR subq1.c8 > subq1.c8 OR EXISTS (
          SELECT NULL AS c4, 'text77' AS c5
           FROM t0 AS t5
           WHERE t5.c2 = CAST(t5.c3 AS INTEGER)
           ORDER BY c4 DESC
          ) AND subq1.c10 IS NOT NULL AND true OR EXISTS (
          SELECT
            CASE t6.c3 WHEN unlikely( 'text56') IS NULL THEN t6.c3
                 WHEN t6.c3 IS NULL AND t6.c1 = 'text38' THEN t6.c3
                 WHEN t6.c2 = t6.c2 AND false THEN t6.c3
                 WHEN t6.c1 < CAST(t6.c0 AS BOOLEAN) THEN likely( 19)
                 WHEN t6.c3 > t6.c3 THEN t6.c3
                 WHEN t6.c0 <> t6.c0 THEN t6.c3
                 WHEN CAST(t6.c1 AS TEXT) <> t6.c2 THEN t6.c3
                 WHEN false AND EXISTS (
             SELECT t7.c2 AS c4, t7.c1 AS c5, t7.c0 AS c6, t7.c2 AS c7, 'text88' AS c8
              FROM t0 AS t7
              WHERE t7.c2 = t7.c2
              ORDER BY c7 COLLATE BINARY, c5 ASC
              LIMIT 3927495076987360330 OFFSET 1889906432154139023
             ) THEN t6.c3
                 WHEN t6.c0 IS NULL THEN t6.c3
                 ELSE t6.c3
            END AS c9, COALESCE(t6.c0, t6.c0, t6.c0, t6.c1) AS c10,
            CASE t6.c2 WHEN t6.c0 = t6.c0 THEN t6.c2
                 WHEN t6.c2 IS NULL THEN t6.c2
                 WHEN NULL = t6.c0 OR t6.c3 <=
             CASE WHEN t6.c0 <> t6.c0 THEN t6.c3
                  ELSE t6.c3
             END AND t6.c2 IS NOT NULL THEN
             CASE t6.c2 WHEN false OR
              CASE WHEN t6.c3 > t6.c3 THEN t6.c0
                   ELSE t6.c0
              END =
              CASE WHEN t6.c0 = t6.c0 THEN t6.c0
                   ELSE t6.c0
              END OR t6.c0 = NULL OR t6.c3 <= t6.c3 OR EXISTS (
              SELECT t8.c0 AS c4, t8.c1 AS c5, t8.c1 AS c6
               FROM t0 AS t8
               WHERE t8.c1 <> t8.c1
               ORDER BY c5 ASC, c4 DESC
               LIMIT 5378782322394485907
              ) OR t6.c3 <= t6.c3 THEN t6.c2
                  WHEN t6.c1 < t6.c1 AND t6.c1 IS NULL AND t6.c2 = t6.c2 OR t6.c3 <> t6.c3 THEN t6.c2
                  WHEN t6.c0 = t6.c0 THEN t6.c2
                  WHEN t6.c2 IS NULL THEN t6.c2
                  WHEN false OR true THEN t6.c2
                  WHEN t6.c1 <= t6.c1 THEN t6.c2
                  WHEN t6.c1 = t6.c1 THEN t6.c2
                  WHEN t6.c1 >= t6.c1 THEN t6.c2
                  WHEN t6.c3 IS NULL THEN t6.c2
                  WHEN NULL IS NOT NULL THEN t6.c2
                  WHEN t6.c2 <> t6.c2 THEN t6.c2
                  WHEN t6.c2 = t6.c2 AND t6.c2 IS NULL OR t6.c3 IS NULL OR false THEN t6.c2
                  ELSE t6.c2
             END
                 WHEN t6.c1 > 'text68' THEN t6.c2
                 WHEN t6.c1 IS NOT NULL THEN t6.c2
                 WHEN t6.c2 <> t6.c2 THEN t6.c2
                 WHEN t6.c3 IS NOT NULL THEN t6.c2
                 WHEN t6.c2 = t6.c2 THEN t6.c2
                 WHEN t6.c0 = t6.c0 THEN t6.c2
                 WHEN t6.c0 = t6.c0 THEN t6.c2
                 ELSE t6.c2
            END AS c7, t6.c2 AS c8, t6.c3 AS c9, t6.c2 AS c10, t6.c0 AS c11, t6.c0 AS c12, t6.c0 AS c13, t6.c3 AS c14,
            CASE WHEN t6.c0 = NULL THEN t6.c3
                 ELSE t6.c3
            END AS c15
           FROM t0 AS t6
           WHERE NULL <>
            CASE WHEN t6.c0 <> t6.c0 THEN t6.c0
                 ELSE t6.c0
            END
           ORDER BY c10
          ) OR subq1.c7 IS NULL AND subq1.c10 = subq1.c10
         ORDER BY c18, c19 COLLATE NOCASE, c19
         LIMIT 3159554262159528382 ;
        SELECT t9.c0 AS c4, CAST(t9.c3 AS BOOLEAN) AS c5
         FROM t0 AS t9
         WHERE true
         ORDER BY c5 ASC, c5 DESC
         LIMIT 8605380595336251423 OFFSET 682077240370683789;
        SELECT t10.c3 AS c4, 'text79' AS c5, t10.c2 AS c6
         FROM t0 AS t10
         WHERE t10.c1 <> t10.c1
         ORDER BY c6 COLLATE BINARY DESC
         LIMIT 5303435757941375964 ;
        SAVEPOINT sp1;
        SELECT NULL AS c7, subq2.c4 AS c8, subq3.c5 AS c9, subq3.c6 AS c10, IFNULL(CAST(
            CASE WHEN subq2.c4 IS NULL THEN subq2.c6
                 ELSE subq3.c6
            END AS TEXT), subq3.c4) AS c11, nullif(56,FALSE) AS c12, subq2.c4 AS c13, subq3.c5 AS c14, subq2.c5 AS c15,
          CASE WHEN EXISTS (
           SELECT TRUE AS c4, t14.c3 AS c5, t15.c0 AS c6, t16.c3 AS c7, t14.c1 AS c8
            FROM t0 AS t14
              INNER JOIN (
              t0 AS t15
                INNER JOIN t0 AS t16
                 ON (false AND t16.c2 <> t15.c2 OR t16.c0 = t15.c0)
               LEFT JOIN t0 AS t17
                ON (t15.c0 = t17.c0)      )
               ON (t16.c0 IS NULL)
            WHERE EXISTS (
             SELECT t18.c0 AS c4, t18.c1 AS c5, t18.c1 AS c6
              FROM t0 AS t18
              WHERE t18.c0 IS NULL
              ORDER BY c6
             )
            ORDER BY c4 DESC, c5 COLLATE RTRIM, c4 COLLATE NOCASE
            LIMIT 8978873510103928103
           ) THEN subq3.c6
               ELSE subq3.c6
          END AS c7
         FROM (SELECT t12.c0 AS c4, t12.c0 AS c5, t11.c0 AS c6, t11.c3 AS c7, t12.c1 AS c8
             FROM t0 AS t11
               INNER JOIN t0 AS t12
                ON (t11.c3 = t11.c3)
             WHERE t11.c3 IS NOT NULL
             ORDER BY c6, c6 COLLATE BINARY DESC, c7
             LIMIT 8237907404247688885 OFFSET 2237572826145512509) as subq2
           LEFT OUTER JOIN (SELECT t13.c2 AS c4, t13.c2 AS c5, t13.c3 AS c6
             FROM t0 AS t13
             WHERE t13.c2 = t13.c2
             ORDER BY c4, c6
             LIMIT 500855164317552616 ) as subq3
            ON (subq2.c7 = subq3.c6)
         WHERE false
         ORDER BY c9 ASC, c11
         LIMIT 2330048644633707346 ;
        SELECT
          CASE subq4.c6 WHEN subq4.c6 = subq4.c5 OR subq4.c9 = subq4.c9 OR true AND
           CASE WHEN subq4.c9 = NULL THEN subq4.c9
                ELSE subq4.c5
           END = subq4.c5 AND subq4.c6 IS NULL THEN NULL
               ELSE subq4.c5
          END AS c10, subq4.c5 AS c11,
          CASE WHEN subq4.c8 < subq4.c8 THEN
           CASE WHEN
            CASE subq4.c7 WHEN subq4.c9 <> subq4.c4 THEN subq4.c5
                 WHEN subq4.c8 IS NOT NULL THEN subq4.c4
                 WHEN subq4.c9 IS NOT NULL THEN subq4.c6
                 WHEN subq4.c8 >= subq4.c7 OR subq4.c5 IS NOT NULL THEN subq4.c9
                 WHEN subq4.c8 >= 53 THEN subq4.c6
                 WHEN true OR true AND subq4.c8 > subq4.c7 AND subq4.c8 <> subq4.c7 THEN subq4.c6
                 WHEN subq4.c9 <> subq4.c6 THEN last_insert_rowid()
                 WHEN subq4.c4 <> subq4.c9 OR subq4.c8 >=
             CASE subq4.c8 WHEN subq4.c7 IS NOT NULL AND false THEN subq4.c7
                  WHEN subq4.c5 IS NOT NULL THEN subq4.c8
                  WHEN subq4.c4 <> subq4.c6 THEN subq4.c8
                  WHEN subq4.c7 <> subq4.c8 THEN subq4.c8
                  WHEN 9 >= subq4.c7 OR true OR subq4.c7 <> subq4.c8 THEN
              CASE WHEN subq4.c5 <> subq4.c6 AND subq4.c4 <> subq4.c9 AND subq4.c9 IS NULL THEN subq4.c7
                   ELSE subq4.c8
              END
                  WHEN subq4.c6 = subq4.c4 AND
              CASE subq4.c9 WHEN false THEN subq4.c4
                   WHEN subq4.c6 IS NOT NULL THEN subq4.c9
                   WHEN subq4.c9 <> subq4.c9 THEN subq4.c4
                   WHEN NULL = subq4.c4 AND EXISTS (
               SELECT t20.c1 AS c4, t20.c3 AS c5, t20.c1 AS c6, t20.c0 AS c7, t20.c2 AS c8, t20.c2 AS c9, t20.c2 AS c10, t20.c1 AS c11, t20.c0 AS c12, t20.c0 AS c13, t20.c1 AS c14, t20.c3 AS c15, t20.c1 AS c16, t20.c1 AS c17, NULL AS c18
                FROM t0 AS t20
                WHERE t20.c3 IS NOT NULL
                ORDER BY c6 ASC, c13 DESC
                LIMIT 6286016458228071941 OFFSET 2808626828822947606
               ) AND subq4.c5 <> subq4.c9 OR subq4.c7 IS NULL AND EXISTS (
               SELECT t21.c1 AS c4, t21.c1 AS c5
                FROM t0 AS t21
                WHERE t21.c1 >= t21.c1
                ORDER BY c4, c5
                LIMIT 5437088137768270935 OFFSET 6779816470466833162
               ) THEN subq4.c4
                   WHEN subq4.c6 IS NOT NULL THEN subq4.c6
                   WHEN subq4.c8 > subq4.c8 OR subq4.c5 = subq4.c6 THEN NULL
                   WHEN NULL = subq4.c4 THEN subq4.c9
                   WHEN subq4.c8 IS NOT NULL THEN subq4.c4
                   ELSE subq4.c9
              END <> subq4.c5 THEN subq4.c7
                  WHEN true THEN subq4.c7
                  WHEN subq4.c6 = NULL THEN subq4.c7
                  WHEN subq4.c4 IS NULL THEN subq4.c8
                  ELSE subq4.c7
             END THEN subq4.c9
                 WHEN subq4.c5 IS NULL THEN subq4.c9
                 WHEN subq4.c5 = subq4.c5 THEN subq4.c6
                 WHEN subq4.c9 = subq4.c4 THEN subq4.c9
                 ELSE 16
            END IS NOT NULL THEN subq4.c6
                ELSE subq4.c4
           END
               ELSE NULL
          END AS c6,
          CASE WHEN false THEN subq4.c6
               ELSE subq4.c4
          END AS c7, subq4.c8 AS c8
         FROM (SELECT t19.c0 AS c4, t19.c0 AS c5, t19.c0 AS c6, t19.c3 AS c7, t19.c3 AS c8,
             CASE WHEN false THEN t19.c0
                  ELSE t19.c0
             END AS c9
            FROM t0 AS t19
            WHERE t19.c2 <> t19.c2
            ORDER BY c7 COLLATE BINARY ASC, c8 DESC) as subq4
         WHERE COALESCE(subq4.c8, subq4.c7, subq4.c7, IFNULL(subq4.c9, subq4.c4), TRUE, subq4.c8) > subq4.c7
         ORDER BY c8 COLLATE BINARY
         LIMIT 2110910026003758356 ;
        SELECT
          CASE subq6.c25 WHEN subq6.c25 <> 66 THEN subq6.c25
               WHEN subq6.c25 IS NOT NULL THEN subq6.c25
               WHEN subq6.c25 < subq6.c25 THEN subq6.c25
               ELSE subq6.c25
          END AS c26
         FROM (SELECT subq5.c14 AS c25
            FROM (SELECT t22.c1 AS c4, t22.c3 AS c5, t22.c1 AS c6, t22.c3 AS c7, t22.c2 AS c8, t22.c2 AS c9, t22.c2 AS c10, t22.c3 AS c11, t22.c3 AS c12, t22.c1 AS c13, t22.c3 AS c14, t22.c0 AS c15, t22.c3 AS c16, t22.c3 AS c17, t22.c1 AS c18, t22.c3 AS c19, t22.c1 AS c20, t22.c2 AS c21, t22.c0 AS c22, t22.c0 AS c23, t22.c0 AS c24
               FROM t0 AS t22
               WHERE false AND t22.c1 > t22.c1 AND true AND true
               ORDER BY c24 ASC
               LIMIT 3037234126889294171 OFFSET 7755277534129255251) as subq5
            WHERE true
            ORDER BY c25 DESC, c25, c25 DESC, c25
            LIMIT 2441493838650798279 OFFSET 6998052292008478600) as subq6
         WHERE
          CASE WHEN subq6.c25 = subq6.c25 THEN IFNULL(subq6.c25, subq6.c25)
               ELSE
           CASE WHEN subq6.c25 <> subq6.c25 THEN subq6.c25
                ELSE subq6.c25
           END
          END < subq6.c25
         ORDER BY c26, c26 COLLATE NOCASE ASC, c26 ASC, c26 ASC
         LIMIT 2561132769208505598 OFFSET 7933243098633312972;
        SELECT subq8.c5 AS c15, subq8.c11 AS c16, subq8.c5 AS c17, subq7.c7 AS c18
         FROM (SELECT t25.c0 AS c4, t23.c0 AS c5, TRUE AS c6, t23.c1 AS c7, t25.c2 AS c8
             FROM t0 AS t23
                INNER JOIN t0 AS t24
                 ON (t23.c0 = t23.c0 OR t24.c2 IS NULL AND t23.c0 IS NOT NULL)
               LEFT JOIN t0 AS t25
                ON (t25.c1 > t23.c1)
             WHERE t25.c3 IS NOT NULL
             ORDER BY c8
             LIMIT 915119930237400790 OFFSET 7582155125604896810) as subq7
           LEFT JOIN (SELECT t26.c0 AS c4, t26.c0 AS c5, t26.c1 AS c6, t26.c0 AS c7, t26.c0 AS c8, t26.c0 AS c9, t26.c2 AS c10, COALESCE(t26.c0, t26.c3, t26.c1) AS c11, t26.c3 AS c12, t26.c3 AS c13, t26.c1 AS c14
             FROM t0 AS t26
             WHERE t26.c0 IS NULL
             ORDER BY c7, c4 ASC, c6 COLLATE NOCASE
             LIMIT 6774944475445917056 ) as subq8
            ON (false)
         WHERE subq8.c9 = subq7.c4
         ORDER BY c15, c17 COLLATE BINARY
         LIMIT 3669255345044187477 OFFSET 4547865446808875301;
        SELECT t27.c2 AS c4
         FROM t0 AS t27
         WHERE t27.c2 <> COALESCE(t27.c0,
           CASE WHEN EXISTS (
            SELECT t30.c1 AS c4, t29.c2 AS c5, t31.c1 AS c6, 89 AS c7
             FROM t0 AS t28
                INNER JOIN t0 AS t29
                 ON (t28.c0 = t28.c0)
               LEFT JOIN (
               t0 AS t30
                LEFT JOIN t0 AS t31
                 ON (t30.c1 IS NULL)       )
                ON (t29.c1 < t30.c1)
             WHERE t29.c3 < t30.c3
             ORDER BY c6, c7, c4 DESC
             LIMIT 4637342297980345678
            ) THEN t27.c1
                ELSE coalesce('text91',80,'text33')
           END, t27.c2, t27.c0, t27.c2, COALESCE(t27.c0, t27.c0, t27.c0, t27.c0, t27.c0))
         ORDER BY c4 COLLATE RTRIM DESC, c4, c4 DESC, c4 ASC
         LIMIT 4483984795720688684 ;
        SELECT subq9.c7 AS c15, subq9.c10 AS c16
         FROM (SELECT t32.c0 AS c4, t33.c3 AS c5,
             CASE WHEN t32.c1 <> t32.c1 THEN
              CASE WHEN t32.c1 >= t33.c1 THEN t33.c3
                   ELSE t33.c3
              END
                  ELSE t33.c3
             END AS c6, t32.c0 AS c7, t32.c1 AS c8, t33.c1 AS c9, t32.c2 AS c10, t32.c3 AS c11, t33.c1 AS c12, t33.c1 AS c13, t32.c2 AS c14
            FROM t0 AS t32
              LEFT JOIN t0 AS t33
               ON (t33.c0 <> t32.c0 AND t32.c2 = t32.c2)
            WHERE t33.c0 = NULL
            ORDER BY c14 ASC, c6, c4
            LIMIT 6345136442667903822 OFFSET 526154672962550518) as subq9
         WHERE subq9.c9 = hex( TRUE) OR hex( 68) > subq9.c12
         ORDER BY c16 DESC, c16
         LIMIT 5638589277668629704 OFFSET 4713494598164294464;
        ;
        ROLLBACK TO SAVEPOINT sp0;
