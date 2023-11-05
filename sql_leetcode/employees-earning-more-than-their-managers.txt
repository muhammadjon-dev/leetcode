-- Write your PostgreSQL query statement below
SELECT name AS Employee
FROM 
    (SELECT name, salary, (SELECT salary from Employee where id = E.managerId) AS manager_salary
    FROM Employee AS E)
WHERE salary > manager_salary

