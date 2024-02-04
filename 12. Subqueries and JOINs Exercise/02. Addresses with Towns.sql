SELECT 
	first_name,
    last_name,
    a.name AS 'town',
    a.address_text
FROM employees AS e
JOIN (SELECT a.address_id, t.name, a.address_text FROM addresses AS a JOIN towns AS t ON a.town_id = t.town_id) AS a ON a.address_id = e.address_id
ORDER BY first_name, last_name
LIMIT 5;