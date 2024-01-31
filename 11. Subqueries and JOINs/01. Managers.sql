SELECT
	departments.manager_id AS 'employee_id',
    CONCAT(first_name, ' ', last_name) AS 'full_name',
    departments.department_id,
    name AS 'department_name'
FROM departments
	JOIN employees ON employees.employee_id = departments.manager_id
ORDER BY departments.manager_id
LIMIT 5;