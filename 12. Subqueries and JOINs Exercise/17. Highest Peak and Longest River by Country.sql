SELECT 
	country_name,
    highest_peak_elevation,
    longest_river_length
FROM countries c
JOIN (SELECT country_code, MAX(highest_peak_elevation) AS `highest_peak_elevation` FROM mountains_countries mc JOIN (SELECT m.id, MAX(elevation) AS `highest_peak_elevation` FROM peaks p JOIN mountains m ON m.id = p.mountain_id  GROUP BY mountain_id) AS t ON t.id = mc.mountain_id GROUP BY country_code) AS t2 
ON c.country_code = t2.country_code
JOIN (SELECT country_code, MAX(r.length) AS 'longest_river_length' FROM countries_rivers cr JOIN rivers r ON r.id = cr.river_id GROUP BY country_code) AS t3 ON t3.country_code = c.country_code
ORDER BY highest_peak_elevation DESC, longest_river_length DESC, country_name
LIMIT 5;