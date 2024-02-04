SELECT 
	employee_id, 
	job_title ,
    a.address_id,
    a.address_text
FROM employees AS e
	JOIN addresses AS a ON a.address_id = e.address_id
ORDER BY a.address_id
LIMIT 5;