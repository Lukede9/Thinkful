with rainy
as (
select
	*
from
	weather
where
	events like 'Rain'
)
select
	trips.duration,
	trips.trip_id
from
	trips
join
	rainy
on
	strftime('%Y-%m-%d', trips.start_date) = rainy.date
group by 1
order by 1 desc
limit 3