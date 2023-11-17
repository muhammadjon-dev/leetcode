-- Write your PostgreSQL query statement below
SELECT u.name as name, 
    CASE WHEN r.travelled_distance IS NULL THEN '0'
    ELSE r.travelled_distance END as travelled_distance
FROM Users as u
LEFT JOIN (
    SELECT user_id as id, SUM(distance) AS travelled_distance
    FROM Rides
    GROUP BY user_id
) as r
USING(id)

ORDER BY travelled_distance DESC, name ASC
