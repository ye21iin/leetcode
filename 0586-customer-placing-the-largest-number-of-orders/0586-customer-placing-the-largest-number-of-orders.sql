SELECT customer_number
-- , COUNT(*) as cnt
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(*) DESC
LIMIT 1
;