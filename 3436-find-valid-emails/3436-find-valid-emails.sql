SELECT *
FROM Users
WHERE email RLIKE '^[A-Za-z0-9_]+@[A-Za-z]+\\.com$'
ORDER BY 1 ASC
;