-- Write your PostgreSQL query statement below
SELECT user_id, Upper(left(name, 1)) || LOWER(RIGHT(name, length(name)-1)) AS name
FROM Users
order by user_id
