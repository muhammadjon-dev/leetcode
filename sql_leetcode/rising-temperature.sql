-- Write your PostgreSQL query statement below
SELECT l.id
FROM Weather as l
JOIN Weather as r
On r.recordDate = l.recordDate - 1
WHERE l.temperature > r.temperature


-- SELECT id
-- FROM (SELECT *, COALESCE(LAG(temperature) OVER(ORDER BY recordDate), temperature) as day_before
--     FROM Weather) AS d_b
-- WHERE temperature > day_before
