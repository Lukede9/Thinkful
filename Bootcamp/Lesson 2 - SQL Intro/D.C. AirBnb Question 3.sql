select
strftime('%m',date) as Month, 
count(*) as review_count
from reviews
group by strftime('%m', date)
order by review_count desc