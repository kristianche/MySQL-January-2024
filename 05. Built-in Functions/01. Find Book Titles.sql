SELECT title FROM books
WHERE SUBSTR(title, 1, 4) = 'The '
ORDER BY id;