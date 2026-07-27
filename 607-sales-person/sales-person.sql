# Write your MySQL query statement below
select s1.name from SalesPerson s1
where sales_id not in(
    select sales_id from orders o
    join company c
    on o.com_id=c.com_id
    where c.name ="red"
)