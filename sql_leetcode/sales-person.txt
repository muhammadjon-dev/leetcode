-- Write your PostgreSQL query statement below
SELECT name
from SalesPerson
WHERE sales_id NOT IN
(SELECT sales_id
FROM Orders as o
LEFT JOIN Company as c
USING(com_id)
WHERE c.name = 'RED')
