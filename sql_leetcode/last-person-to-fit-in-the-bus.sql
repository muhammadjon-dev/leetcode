-- 1204
-- Write your PostgreSQL query statement below
SELECT person_name
FROM (
SELECT person_id, person_name, 
       SUM(weight) OVER(ORDER BY turn 
                            ROWS BETWEEN UNBOUNDED PRECEDING
                            AND CURRENT ROW) as sum_weight, turn
FROM Queue) as que
WHERE sum_weight <= 1000
ORDER BY turn DESC
LIMIT 1



