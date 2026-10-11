-- Write your PostgreSQL query statement below
SELECT d.name AS Department,E.name AS Employee,E.salary AS Salary 
FROM
(SELECT name,salary,departmentId,
DENSE_RANK()OVER(PARTITION BY departmentId ORDER BY salary DESC)
AS rnk FROM Employee) E 
JOIN DEPARTMENT d
ON E.departmentId=d.id
WHERE E.rnk <=3;

