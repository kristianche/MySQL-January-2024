INSERT INTO towns(name)
 VALUES
	('Sofia'),
    ('Plovdiv'),
    ('Varna'),
    ('Burgas');

INSERT INTO addresses(town_id)
VALUES
	(1),
    (2),
    (3),
    (4);

INSERT INTO departments(name)
VALUES
	('Engineering'),
    ('Sales'),
    ('Marketing'),
    ('Software Development'),
    ('Quality Assurance');


INSERT INTO employees(first_name, middle_name, last_name, job_title, department_id, hire_date, salary, address_id)
VALUES
	('Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 4, '2013-02-01', 3500.00, 1),
    ('Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1, '2004-03-02', 4000.00, 2),
    ('Maria', 'Petrova', 'Ivanova', 'Intern', 5, '2016-08-28', 525.25, 3),
    ('Georgi', 'Terziev', 'Ivanov', 'CEO', 2, '2007-12-09', 3000.00, 4),
    ('Peter', 'Pan', 'Pan', 'Intern', 3, '2016-08-28', 599.88, 1);