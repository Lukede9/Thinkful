with rainy as
(SELECT date
from weather
where events like 'Rain'
),
 rain_trips as
 (SELECT trip_id, duration, DATE(start_date) trip_date
 FROM trips
 JOIN rainy
 on rainy.date = trip_date
 ORDER BY duration desc
 )
 
 SELECT
 trip_date, max(duration)
 from rain_trips
 GROUP BY 1