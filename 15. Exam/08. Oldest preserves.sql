SELECT 
	p.name,
    c.country_code,
    YEAR(established_on) AS 'founded_in'
FROM preserves p
JOIN countries_preserves cp ON cp.preserve_id = p.id
JOIN countries c ON c.id = cp.country_id
WHERE established_on IS NOT NULL AND MONTH(established_on) = 05
ORDER BY founded_in ASC
LIMIT 5;