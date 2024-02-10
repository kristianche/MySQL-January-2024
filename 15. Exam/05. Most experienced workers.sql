SELECT 
	CONCAT(first_name, ' ', last_name) AS 'full_name',
	DATEDIFF('2024-01-01', start_date) AS `days_of_experience`
FROM workers
WHERE 2024 - YEAR(start_date) > 5
ORDER BY days_of_experience DESC
LIMIT 10;