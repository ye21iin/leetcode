SELECT
    u.name,
    COALESCE(SUM(r.distance),0) as travelled_distance
FROM Rides r
RIGHT JOIN Users u ON r.user_id = u.id
GROUP BY r.user_id
ORDER BY 2 DESC, 1 ASC
;