CREATE TABLE mountains(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(80) NOT NULL
);

CREATE TABLE peaks(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(80) NOT NULL,
    mountain_id INT NOT NULL,
    
    CONSTRAINT fk_peaks_mountain_id_mountains_id FOREIGN KEY (mountain_id) REFERENCES mountains(id)
);