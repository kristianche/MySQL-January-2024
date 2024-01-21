SELECT 
	REPLACE(title, SUBSTRING(title, 1, 3), '***') 
FROM books
WHERE SUBSTR(title, 1, 4) = 'The '
ORDER BY id;