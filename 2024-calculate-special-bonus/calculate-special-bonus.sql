# Write your MySQL query statement below
SELECT 
    employee_id,
    CASE
        WHEN employee_id % 2 = 0 THEN 0
        WHEN name like 'm%' then 0
        ELSE salary
    END AS bonus
FROM Employees
order by employee_id;