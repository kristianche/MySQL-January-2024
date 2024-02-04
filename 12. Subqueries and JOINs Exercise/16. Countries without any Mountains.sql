SELECT COUNT(*) AS 'country_count'
FROM mountains_countries mc
RIGHT JOIN countries c ON c.country_code = mc.country_code
WHERE mc.mountain_id IS NULL;