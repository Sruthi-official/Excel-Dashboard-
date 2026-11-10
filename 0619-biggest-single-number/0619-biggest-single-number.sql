-- Write your PostgreSQL query statement below
SELECT MAX(num) AS num
 FROM MyNumbers 
 where num in (
    SELECT num 
    from MyNumbers 
 GROUP BY num
HAVING COUNT(*)=1);
