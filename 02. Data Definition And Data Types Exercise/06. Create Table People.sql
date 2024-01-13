CREATE TABLE people(
	id INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    picture BLOB,
    height DECIMAL(6, 2),
    weight DECIMAL(6, 2),
	gender VARCHAR(1) NOT NULL,
    birthdate DATE NOT NULL,
    biography BLOB
);

INSERT INTO people(name, picture, height, weight, gender, birthdate, biography)
VALUES
	('Ivan', 'pic1', 70.5, 175.2, 'm', '2007-07-21', 'test'),
    ('Ivan', 'pic1', 70.5, 175.23, 'm', '2007-07-21', 'test'),
    ('Ivan', 'pic1', 70.5, 175.23, 'm', '2007-07-21', 'test'),
    ('Ivan', 'pic1', 70.5, 175.23, 'm', '2007-07-21', 'test'),
    ('Ivan', 'pic1', 70.5, 175.23, 'm', '2007-07-21', 'test');