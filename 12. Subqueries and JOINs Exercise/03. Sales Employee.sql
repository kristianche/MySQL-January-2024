SELECT 
	e.employee_id,
	e.first_name,
    e.last_name,
    d.name AS 'department_name'
FROM employees AS e
	JOIN departments AS d ON d.department_id = e.department_id AND d.name = 'Sales'
ORDER BY e.employee_id DESC;