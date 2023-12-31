# Write your MySQL query statement below
SELECT Users.name, Transactions.balance AS balance
FROM Users
INNER JOIN 
(SELECT account, SUM(amount) AS balance
FROM Transactions
GROUP BY account) AS Transactions
ON Users.account = Transactions.account
WHERE balance > 10000;
