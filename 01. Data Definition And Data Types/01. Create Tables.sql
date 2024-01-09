CREATE TABLE employees(
	id INT PRIMARY KEY auto_increment,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULl
);

CREATE TABLE categories(
	id INT PRIMARY KEY auto_increment,
    name VARCHAR(40) NOT NULL
);

CREATE TABLE products(
	id INT PRIMARY KEY auto_increment,
    name VARCHAR(40) NOT NULL,
    category_id INT NOT NULL 
);