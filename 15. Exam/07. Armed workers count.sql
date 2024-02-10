SELECT 
	p.name,
    COUNT(*) AS 'armed_workers'
FROM workers w
JOIN preserves p ON p.id = w.preserve_id
WHERE w.is_armed = 1
GROUP BY p.name
ORDER BY armed_workers DESC, p.name ASC;