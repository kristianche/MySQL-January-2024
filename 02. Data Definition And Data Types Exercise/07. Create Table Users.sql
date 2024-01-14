CREATE TABLE users(
	id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30) NOT NULL UNIQUE,
    password VARCHAR(26) NOT NULL,
    profile_picture BLOB,
    last_login_time TIMESTAMP,
    is_deleted BIT
);

INSERT INTO users(username, password, profile_picture, last_login_time, is_deleted)
VALUES
	('kris', 'password', 'pic1', '2007-01-01 00:00:01', 0),
    ('kris2', 'password', 'pic1', '2007-01-01 00:00:01', 0),
    ('kris4', 'password', 'pic1', '2007-02-02 00:00:01', 0),
    ('kris3', 'password', 'pic1', '2007-01-01 00:00:01', 0),
    ('kris5', 'password', 'pic1', '2007-01-01 00:00:01', 0);