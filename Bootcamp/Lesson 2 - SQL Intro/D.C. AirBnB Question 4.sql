select
	avg(price) avg_price,
	strftime('%m', date) month
from
	listings
join
	reviews
on 
	listings.id = reviews.listing_id
group by strftime('%m', date)
order by avg_price