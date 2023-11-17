# Write your MySQL query statement below
SELECT Email
FROM (SELECT email AS Email, COUNT(email) as ce
      FROM Person
      GROUP BY email) AS t
WHERE ce > 1

