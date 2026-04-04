SELECT
    employee_id,
    CASE
        WHEN employee_id % 2 != 0 AND NOT name RLIKE '^M'
        THEN salary
        ELSE 0
    END as bonus
FROM Employees
ORDER BY 1
;