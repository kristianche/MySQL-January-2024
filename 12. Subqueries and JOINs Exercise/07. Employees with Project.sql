SELECT 
	e.employee_id,
    first_name,
    t.name AS 'project_name'
FROM employees e
	JOIN (SELECT name, start_date, end_date, ep.employee_id FROM projects p JOIN employees_projects ep ON ep.project_id = p.project_id) AS t ON t.employee_id = e.employee_id
WHERE DATE(t.start_date) > '2002-08-13' AND t.end_date IS NULL
ORDER BY first_name ASC, t.name ASC
LIMIT 5;