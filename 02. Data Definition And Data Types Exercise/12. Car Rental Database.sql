CREATE TABLE categories(
	id INT AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR(50) NOT NULL,
    daily_rate DECIMAL(6, 2) NOT NULL,
    weekly_rate DECIMAL(6, 2) NOT NULL,
    monthly_rate DECIMAL(6, 2) NOT NULL,
    weekend_rate DECIMAL(6, 2) NOT NULL
);

CREATE TABLE cars(
	id INT AUTO_INCREMENT PRIMARY KEY,
    plate_number VARCHAR(10) NOT NULL,
    make VARCHAR(50),
    model_car VARCHAR(50) NOT NULL,
    car_year YEAR NOT NULL,
    category_id INT NOT NULL,
    doors TEXT,
    picture BLOB,
    car_condition TEXT NOT NULL,
    available BOOL NOT NULL, 
    
    CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE employees(
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(80) NOT NULL,
    last_name VARCHAR(80) NOT NULL,
    title VARCHAR(50),
    notes TEXT
);

CREATE TABLE customers(
	id INT AUTO_INCREMENT PRIMARY KEY,
    driver_licence_number VARCHAR(20) NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    address VARCHAR(80),
    city VARCHAR(30) NOT NULL,
    zip_code VARCHAR(30) NOT NULL,
    notes TEXT
);

CREATE TABLE rental_orders(
	id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    customer_id INT NOT NULL,
    car_id INT NOT NULL,
    car_condition TEXT,
    tank_level DECIMAL(6, 2) NOT NULL,
    kilometrage_start INT NOT NULL,
    kilometrage_end INT NOT NULL,
    total_kilometrage INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_days INT NOT NULL,
    rate_applied INT,
    tax_rate INT NOT NULL,
    order_status TEXT NOT NULL,
    notes TEXT,
    
    CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) REFERENCES employees(id),
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers(id),
    CONSTRAINT fk_car_id FOREIGN KEY (car_id) REFERENCES cars(id)
);

INSERT INTO categories (category, daily_rate, weekly_rate, monthly_rate, weekend_rate)
VALUES 
('Economy', 40.00, 200.00, 800.00, 50.00),
('Standard', 60.00, 300.00, 1200.00, 75.00),
('Luxury', 100.00, 500.00, 2000.00, 150.00);

-- Populate cars table
INSERT INTO cars (plate_number, make, model_car, car_year, category_id, doors, picture, car_condition, available)
VALUES 
('ABC123', 'Toyota', 'Camry', 2020, 1, '4', NULL, 'Good condition', true),
('XYZ789', 'Honda', 'Accord', 2019, 2, '4', NULL, 'Excellent condition', true),
('DEF456', 'BMW', 'X5', 2021, 3, '5', NULL, 'Like new', true);

-- Populate employees table
INSERT INTO employees (first_name, last_name, title, notes)
VALUES 
('John', 'Doe', 'Manager', 'Joined in 2020'),
('Jane', 'Smith', 'Sales Rep', 'Experienced in car rentals'),
('Bob', 'Johnson', 'Driver', 'Part-time driver');

-- Populate customers table
INSERT INTO customers (driver_licence_number, full_name, address, city, zip_code, notes)
VALUES 
('DL123456', 'Alice Johnson', '123 Main St', 'Cityville', '12345', 'Preferred customer'),
('DL789012', 'Bob Smith', '456 Oak St', 'Townsville', '67890', 'Frequent renter'),
('DL345678', 'Charlie Brown', '789 Pine St', 'Villageville', '54321', 'New customer');

-- Populate rental_orders table
INSERT INTO rental_orders (employee_id, customer_id, car_id, car_condition, tank_level, kilometrage_start, kilometrage_end, total_kilometrage, start_date, end_date, total_days, rate_applied, tax_rate, order_status, notes)
VALUES 
(1, 1, 1, 'Clean', 80.00, 5000, 6000, 1000, '2024-01-01', '2024-01-03', 3, 60.00, 10, 'Completed', 'First rental order'),
(2, 2, 2, 'Excellent', 90.00, 7000, 7500, 500, '2024-01-05', '2024-01-08', 4, 80.00, 12, 'Completed', 'Smooth rental experience'),
(3, 3, 3, 'Like new', 95.00, 8000, 8500, 500, '2024-01-10', '2024-01-12', 2, 120.00, 15, 'Completed', 'Luxury car rental');