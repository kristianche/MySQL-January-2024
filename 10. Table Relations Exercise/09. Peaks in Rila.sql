SELECT
	mountain_range,
    peaks.peak_name,
    peaks.elevation AS 'peak_elevation'
FROM mountains
	JOIN peaks ON peaks.mountain_id = mountains.id
WHERE mountain_range = 'Rila'
ORDER BY elevation DESC;