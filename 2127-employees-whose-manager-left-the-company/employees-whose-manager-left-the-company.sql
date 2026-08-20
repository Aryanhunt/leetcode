# Write your MySQL query statement below
select  e.employee_id from employees e
left join employees m
on m.employee_id=e.manager_id
where e.manager_Id is not null and m.name is null and e.salary <30000
order by e.employee_id;