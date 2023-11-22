-- Write your PostgreSQL query statement below
SELECT e.employee_id, e.name, r.reports_count, r.average_age
FROM Employees as e
INNER JOIN (
    SELECT reports_to, COUNT(DISTINCT employee_id) as reports_count, ROUND(AVG(age)) as average_age
    FROM Employees
    WHERE reports_to IS NOT NULL
    GROUP BY reports_to
    HAVING COUNT(DISTINCT employee_id) > 0) AS r
ON e.employee_id = r.reports_to
ORDER BY e.employee_id;
