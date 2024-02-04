SELECT 
	country_code,
    COUNT(*) AS 'mountain_range'
FROM mountains_countries
WHERE country_code IN ('US', 'BG', 'RU')
GROUP BY country_code
ORDER BY mountain_range DESC;