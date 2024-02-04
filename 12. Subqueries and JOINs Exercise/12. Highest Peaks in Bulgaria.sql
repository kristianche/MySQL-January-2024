SELECT 
	mc.country_code,
    mp.mountain_range,
    mp.peak_name,
    mp.elevation
FROM mountains_countries mc
JOIN (SELECT p.id AS 'peak_id', peak_name, elevation, m.mountain_range, m.id AS `mountain_id` FROM peaks p JOIN mountains m ON m.id = p.mountain_id WHERE elevation > 2835) AS mp ON mp.mountain_id = mc.mountain_id
WHERE country_code = 'BG'
ORDER BY elevation DESC;