SELECT
	id,
    name,
    CASE
		WHEN area <= 100 THEN 'very small'
        WHEN area <= 1000 THEN 'small'
        WHEN area <= 10000 THEN 'medium'
        WHEN area <= 50000 THEN 'large'
        ELSE 'very large'
	END AS 'category'
FROM preserves
ORDER BY area DESC;