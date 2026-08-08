select user_id,count(*) as prompt_count, round(avg(tokens),2) as avg_tokens
from (SELECT
    user_id,
    tokens,
    AVG(tokens) OVER (PARTITION BY user_id) AS user_avg
FROM prompts) t
group by user_id
having prompt_count >2 and sum(tokens>user_avg)>=1
order by avg_tokens desc;