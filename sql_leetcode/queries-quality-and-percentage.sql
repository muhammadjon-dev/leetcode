-- 1211
-- Write your PostgreSQL query statement below
WITH min3 AS(
    SELECT query_name, COUNT(rating) AS ratings
    FROM Queries 
    WHERE rating<3 
    GROUP BY query_name
)

SELECT 
    query_name, 
    ROUND((SUM(rating/position::numeric)/COUNT(query_name)), 2) as quality, 
    ROUND(
        (COALESCE(AVG(m.ratings),0))::numeric/COUNT(*)*100, 2) as poor_query_percentage
FROM Queries as q
LEFT JOIN min3 as m
USING(query_name)
GROUP BY query_name

