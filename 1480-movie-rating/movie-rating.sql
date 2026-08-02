# Write your MySQL query statement below
(select u.name as results from users u
join movierating m
on u.user_id=m.user_id
group by u.user_id,u.name
order by count(*) desc, u.name
limit 1)
union all
(select title as results from movies mo
join movierating m
on m.movie_id=mo.movie_id
where created_at between '2020-02-01' and '2020-02-29'
group by mo.movie_id,mo.title
order by avg(m.rating) desc,mo.title
limit 1
)