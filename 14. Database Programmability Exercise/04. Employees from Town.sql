DELIMITER $

CREATE PROCEDURE usp_get_employees_from_town(town_name VARCHAR(80))
BEGIN
	SELECT
		first_name,
        last_name
	FROM employees e
    JOIN addresses a ON a.address_id = e.address_id
    JOIN towns t ON t.town_id = a.town_id
    WHERE t.name = town_name
    ORDER BY first_name, last_name, e.employee_id;
END$

DELIMITER ;

CALL usp_get_employees_from_town('Sofia');