SELECT
	towns.town_id,
	towns.name AS 'town_name',
	address_text
FROM addresses
	JOIN towns ON towns.town_id = addresses.town_id
WHERE addresses.town_id IN (9, 15, 32)
ORDER BY towns.town_id, addresses.address_id;