SELECT
	w.id,
    first_name,
    last_name,
    p.name,
    c.country_code
FROM workers w
JOIN preserves p ON p.id = w.preserve_id
JOIN countries_preserves cp ON cp.preserve_id = p.id
JOIN countries c ON c.id = cp.country_id
WHERE salary > 5000 AND age < 50
ORDER BY c.country_code ASC;