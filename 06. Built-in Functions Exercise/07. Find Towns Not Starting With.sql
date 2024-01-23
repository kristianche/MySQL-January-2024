SELECT town_id, name FROM towns
WHERE LEFT(name, 1) NOT IN ('B', 'D', 'R')
ORDER BY name;