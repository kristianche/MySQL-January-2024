CREATE FUNCTION udf_average_salary_by_position_name (name VARCHAR(40)) RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE result DECIMAL(10, 2);
    SET result := (SELECT
					AVG(salary)
				FROM workers w
                JOIN positions p ON p.id = w.position_id
                WHERE p.name = name
				GROUP BY position_id);
    RETURN result;
END
