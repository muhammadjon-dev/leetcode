-- id: 1633
-- Write your PostgreSQL query statement below
SELECT contest_id, ROUND(COUNT(DISTINCT user_id)::numeric/(SELECT COUNT(DISTINCT user_id) FROM Users)*100, 2) as percentage
FROM Register
GROUP BY contest_id
ORDER BY percentage DESC, contest_id;

