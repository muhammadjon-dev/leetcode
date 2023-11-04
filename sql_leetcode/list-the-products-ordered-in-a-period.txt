-- Write your PostgreSQL query statement below
SELECT *
FROM
    (SELECT product_name, SUM(unit) as unit
    FROM Products 
    LEFT JOIN Orders 
    USING(product_id)
    WHERE EXTRACT(MONTH FROM order_date) = '02' AND EXTRACT(YEAR FROM order_date) = '2020'
    GROUP BY product_name)
WHERE unit>=100

