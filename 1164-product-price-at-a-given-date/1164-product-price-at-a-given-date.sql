-- Write your PostgreSQL query statement below
WITH latest AS (
    SELECT product_id,MAX(change_date) AS latest_date 
    FROM Products 
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
)
SELECT p.product_id,COALESCE(pr.new_price,10)AS price 
FROM (SELECT DISTINCT product_id FROM Products) p LEFT JOIN latest l 
ON p.product_id=l.product_id
LEFT JOIN Products pr 
ON pr.product_id=l.product_id 
AND pr.change_date=l.latest_date; 

