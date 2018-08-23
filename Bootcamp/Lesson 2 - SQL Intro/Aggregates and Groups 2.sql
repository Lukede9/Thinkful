select
	start_station,
	count(*)
from
	trips
group by
	start_station
	