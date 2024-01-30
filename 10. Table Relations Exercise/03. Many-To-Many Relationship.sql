CREATE TABLE exams(
	exam_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

INSERT INTO exams()
VALUES
	(101, 'Spring MVC'),
    (102, 'Neo4j'),
    (103, 'Oracle 11g');

CREATE TABLE students(
	student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

INSERT INTO students(name) VALUES ('Mila'), ('Toni'), ('Ron');

CREATE TABLE students_exams(
	student_id INT,
    exam_id INT,
    
    CONSTRAINT pk PRIMARY KEY(student_id, exam_id),
    CONSTRAINT fk_student_id_students_student_id FOREIGN KEY (student_id) REFERENCES students(student_id),
    CONSTRAINT fk_exam_id_exams_exam_id FOREIGN KEY (exam_id) REFERENCES exams(exam_id)
);

INSERT INTO students_exams()
VALUES (1, 101), (1, 102), (2, 101), (3, 103), (2, 102), (2, 103);