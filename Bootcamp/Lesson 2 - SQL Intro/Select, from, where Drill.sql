SELECT
	trip_id,
	duration
FROM
	trips
where
	duration > 500
order by duration