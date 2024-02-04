SELECT 
	c.country_name,
    r.river_name
FROM countries_rivers cr
RIGHT JOIN countries c ON c.country_code = cr.country_code
LEFT JOIN rivers r ON r.id = cr.river_id
WHERE c.continent_code = 'AF'
ORDER BY c.country_name
LIMIT 5;