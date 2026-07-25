# Write your MySQL query statement below
select d.name as Department,e1.name as Employee,Salary
from employee as e1
join department as d
on e1.departmentid = d.id
WHERE (
    SELECT COUNT(DISTINCT e2.salary)
    FROM Employee e2
    WHERE e2.departmentId = e1.departmentId
    AND e2.salary > e1.salary) < 3;