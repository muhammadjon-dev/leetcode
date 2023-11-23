-- id: 608
-- Write your PostgreSQL query statement below
WITH leafs AS (
    SELECT id
    FROM Tree
    WHERE  id NOT IN (SELECT DISTINCT p_id FROM Tree WHERE p_id IS NOT NULL)
)
SELECT id,
CASE WHEN p_id IS NULL THEN 'Root'
     WHEN id IN (SELECT id FROM leafs) THEN 'Leaf'
     ELSE 'Inner' END AS type 
FROM Tree



