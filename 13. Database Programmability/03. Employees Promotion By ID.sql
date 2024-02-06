DELIMITER $

CREATE PROCEDURE usp_raise_salary_by_id(id INT)
BEGIN 
	UPDATE employees e
    SET e.salary = e.salary + 0.05 * salary
    WHERE e.employee_id = id;
END $

DELIMITER ;

SELECT salary FROM employees WHERE employee_id = 17;

CALL usp_raise_salary_by_id(17);