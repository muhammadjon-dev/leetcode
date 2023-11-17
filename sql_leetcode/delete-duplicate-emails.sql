-- Write your PostgreSQL query statement below
DELETE FROM Person 
WHERE id NOT IN (
    SELECT min(id) as min_ids
    FROM Person
    GROUP BY email
)
