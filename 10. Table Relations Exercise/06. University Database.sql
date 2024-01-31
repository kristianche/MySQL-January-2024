CREATE TABLE subjects(
	subject_id INT AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR(50)
);

CREATE TABLE majors(
	major_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE students(
	student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_number VARCHAR(12),
    student_name VARCHAR(50),
    major_id INT,
    
    CONSTRAINT fk_major_id FOREIGN KEY (major_id) REFERENCES majors(major_id)
);

CREATE TABLE payments(
	payment_id INT AUTO_INCREMENT PRIMARY KEY,
    payment_date DATE,
    payment_amount DECIMAL(8, 2),
    student_id INT,
    
    CONSTRAINT fk_student_id FOREIGN KEY (student_id) REFERENCES students(student_id)
);

CREATE TABLE agenda(
	student_id INT,
    subject_id INT,
    
    CONSTRAINT pk PRIMARY KEY(student_id, subject_id),
    CONSTRAINT fk_student_id_students FOREIGN KEY (student_id) REFERENCES students(student_id),
    CONSTRAiNT fk_subject_id FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);