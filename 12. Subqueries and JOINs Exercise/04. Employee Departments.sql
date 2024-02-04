SELECT
	employee_id,
	first_name,
    salary,
    d.name AS 'department_name'
FROM employees AS e
	JOIN departments AS d ON d.department_id = e.department_id
WHERE salary > 15000
ORDER BY e.department_id DESC, salary DESC
LIMIT 5;