-- Write your PostgreSQL query statement below
SELECT DISTINCT user_id, COUNT(follower_id) as followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id ASC