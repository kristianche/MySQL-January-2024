SELECT 
	e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS 'employee_name',
    CONCAT(m.first_name, ' ', m.last_name) AS 'manager_name',
    d.name AS 'department_name'
FROM employees e
JOIN employees m ON m.employee_id = e.manager_id
JOIN departments d ON d.department_id = e.department_id
ORDER BY e.employee_id
LIMIT 5;