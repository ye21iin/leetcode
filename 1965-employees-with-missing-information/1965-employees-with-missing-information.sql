SELECT E.employee_id
FROM Employees E
LEFT JOIN Salaries S
    ON E.employee_id = S.employee_id
WHERE S.salary IS NULL
UNION
SELECT S.employee_id
FROM Salaries S
LEFT JOIN Employees E
    ON E.employee_id = S.employee_id
WHERE E.employee_id IS NULL
ORDER BY 1 ASC;