WITH sheet AS (
    SELECT num,
           COUNT(*) AS cnt
    FROM mynumbers
    GROUP BY num
    HAVING COUNT(*) < 2
),
ranked AS (
    SELECT num,
           ROW_NUMBER() OVER (PARTITION BY cnt ORDER BY num DESC) AS rn
    FROM sheet
),
result AS (
    SELECT num FROM ranked WHERE rn = 1
)
SELECT * FROM (
    SELECT * FROM result
    UNION ALL
    SELECT NULL AS num FROM dual
    WHERE NOT EXISTS (SELECT 1 FROM result)
)
WHERE ROWNUM = 1;
