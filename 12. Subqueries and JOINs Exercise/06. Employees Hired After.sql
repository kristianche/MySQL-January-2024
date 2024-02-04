SELECT
	first_name,
    last_name,
    hire_date,
    d.name AS 'dept_name'
FROM employees e
	JOIN departments d ON d.department_id = e.department_id AND d.name IN ('Sales', 'Finance')
WHERE hire_date > '1999-01-01'
ORDER BY hire_date ASC;