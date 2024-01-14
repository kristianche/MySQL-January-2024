CREATE TABLE directors(
	id INT AUTO_INCREMENT PRIMARY KEY,
    director_name VARCHAR(80) NOT NULL,
    notes TEXT
);

CREATE TABLE genres(
	id INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(80) NOT NULL,
    notes TEXT
);

CREATE TABLE categories(
	id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(80) NOT NULL,
    notes TEXT
);

CREATE TABLE movies(
	id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(80) NOT NULL,
    director_id INT NOT NULL,
    copyright_year YEAR,
    length TIME,
    genre_id INT NOT NULL,
    category_id INT NOT NULL,
    rating INT,
    notes TEXT,
    
    CONSTRAINT fk_director_id FOREIGN KEY(director_id) REFERENCES directors(id),
    CONSTRAINT fk_genre_id FOREIGN KEY(genre_id) REFERENCES genres(id),
    CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES categories(id)
);

INSERT INTO directors(director_name)
VALUES
	('George Lucas'),
    ('Walt Disney'),
    ('James Cameran'),
    ('Steven Spielberg');

INSERT INTO directors(director_name)
VALUE('John Ford');
    
INSERT INTO genres(genre_name)
VALUES
	('horror'),
    ('fantasy'),
    ('drama'),
    ('animation');

INSERT INTO genres(genre_name)
VALUE('western');
    
INSERT INTO categories(category_name)
VALUES
	('children'),
    ('+10'),
    ('all ages'),
    ('+18');

INSERT INTO categories(category_name)
VALUE('+12');

INSERT INTO movies(title, director_id, copyright_year, genre_id, category_id, rating)
VALUES
	('Star Wars', 1, 2024, 2, 2, 9),
    ('It', 4, 2024, 1, 4, 7),
    ('Titanic', 3, 2024, 3, 3, 10),
    ('Mickey Mouse', 2, 2024, 4, 1, 8),
    ('Texas', 5, 2024, 5, 5, 6);