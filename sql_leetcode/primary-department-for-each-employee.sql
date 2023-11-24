-- 1789
--  Write your MySQL query statement below
WITH ones AS (
    SELECT employee_id
    FROM Employee
    GROUP BY employee_id
    HAVING COUNT(department_id) = 1),
mores AS(
    SELECT employee_id, department_id
    FROM Employee
    WHERE primary_flag = 'Y'
)

SELECT *
FROM mores
UNION
SELECT  employee_id, department_id
FROM Employee
WHERE employee_id IN (SELECT * FROM ones)

