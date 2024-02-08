DELIMITER $

CREATE PROCEDURE usp_get_employees_by_salary_level(level_of_the_salary VARCHAR(20))
BEGIN
	SELECT first_name, last_name
    FROM employees
    WHERE level_of_the_salary = ufn_get_salary_level(salary)
    ORDER BY first_name DESC, last_name DESC;
END $

DELIMITER ;

CALL usp_get_employees_by_salary_level('high');