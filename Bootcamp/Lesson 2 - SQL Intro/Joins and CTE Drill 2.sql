select
	*,
	count(station_id)
from
	status
where docks_available = 0
group by station_id
order by count(station_id) desc
limit 1