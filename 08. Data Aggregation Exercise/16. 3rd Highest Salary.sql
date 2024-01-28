SELECT department_id, (SELECT DISTINCT salary FROM employees
						WHERE e.department_id = department_id
                        ORDER BY salary DESC
                        LIMIT 1 OFFSET 2) AS third_highest_salary
FROM employees e
GROUP BY department_id
HAVING third_highest_salary IS NOT NULL
ORDER BY department_id;