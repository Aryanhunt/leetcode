# Write your MySQL query statement below
select name,bonus
from employee t1
left join bonus t2
on t1.empid=t2.empid
where bonus<1000 or bonus is null