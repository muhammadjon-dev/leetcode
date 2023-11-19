-- Write your PostgreSQL query statement below
SELECT product_id, product_name
FROM Product
WHERE product_id NOT IN (
    SELECT product_id
    FROM Sales
    WHERE EXTRACT(QUARTER FROM sale_date) IN  (2, 3, 4)) 
    AND product_id IN (SELECT DISTINCT product_id FROM Sales ) 
