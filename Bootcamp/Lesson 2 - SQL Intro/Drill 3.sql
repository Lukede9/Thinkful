SELECT
	MinTemperatureF
FROM
	Weather
WHERE
	ZIP = 94301 and
	Events like  'rain'
