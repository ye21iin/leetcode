# 2020년 2월에 최소 100개 이상 주문된 제품의 이름과 수량을 가져오는 솔루션을 작성하세요. 
SELECT
    p.product_name, SUM(o.unit) AS unit
FROM Orders o
INNER JOIN Products p ON o.product_id = p.product_id
WHERE o.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY o.product_id
HAVING SUM(o.unit) >= 100
;