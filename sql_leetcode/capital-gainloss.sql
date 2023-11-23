-- 1393
-- Write your PostgreSQL query statement below
WITH buy AS(
    SELECT stock_name, SUM(price) as buys
    FROM Stocks
    WHERE operation = 'Buy'
    GROUP BY stock_name
),
 sell AS(
    SELECT stock_name, SUM(price) as sells
    FROM Stocks
    WHERE operation = 'Sell'
    GROUP BY stock_name
)


SELECT b.stock_name, sells-buys as capital_gain_loss
FROM buy as b
INNER JOIN sell as s
USING(stock_name)

