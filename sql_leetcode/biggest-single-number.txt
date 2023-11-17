-- Write your PostgreSQL query statement below
SELECT max(num) as num
FROM (
    SELECT  num, count(num)
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num)=1
)

