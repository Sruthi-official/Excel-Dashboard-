-- Write your PostgreSQL query statement below
SELECT EUNI.unique_id ,E.name 
FROM EmployeeUNI EUNI RIGHT JOIN Employees E
ON EUNI.id=E.id ;