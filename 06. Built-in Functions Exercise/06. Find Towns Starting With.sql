SELECT town_id, name FROM towns
WHERE LEFT(name, 1) IN ('B', 'E', 'K', 'M')
ORDER BY name;