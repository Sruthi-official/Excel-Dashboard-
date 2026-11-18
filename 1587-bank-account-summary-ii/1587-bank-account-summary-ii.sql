-- Write your PostgreSQL query statement below
--SELECT U.name , SUM(T.amount) AS balance 
--FROM Users U RIGHT JOIN Transactions T 
--ON U. account = T. account 
--GROUP BY name HAVING SUM(T.amount)>=10000;


SELECT u.name, SUM(t.amount) AS balance
FROM users u
LEFT JOIN transactions t
    ON u.account=t.account
GROUP BY u.name
HAVING SUM(t.amount)>10000
