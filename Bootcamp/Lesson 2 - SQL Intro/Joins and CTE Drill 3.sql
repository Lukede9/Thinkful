select trips.start_station, count(trips.start_station) as total_trips, stations.dockcount

from trips
join stations
on trips.start_station = stations.name
group by trips.start_station
order by stations.dockcount