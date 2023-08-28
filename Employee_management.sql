CREATE DATABASE employee_management

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    hire_date DATE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);


CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE Salaries (
    salary_id INT PRIMARY KEY,
    employee_id INT,
    salary_amount DECIMAL(10, 2),
    effective_date DATE,
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

-- Insert a new department into the Departments table.
INSERT INTO Departments (department_id, department_name)
VALUES (1, 'Sales');

-- Insert a new employee into the Employees table.
INSERT INTO Employees (employee_id, first_name, last_name, email, hire_date, department_id)
VALUES (101, 'John', 'Doe', 'johndoe@gmail.com.com', '2023-08-27', 1);

-- Update the department for the employee with ID 101.
UPDATE Employees
SET first_name = 'Jules'
WHERE employee_id = 101;

-- Retrieve employee details including first name, last name, email, and hire date.
SELECT first_name, last_name, email, hire_date
FROM Employees;

-- Retrieve a list of all departments with their IDs and names.
SELECT * FROM Departments;

-- Retrieve the salary history for the employee with ID 101, showing salary ID, amount, and effective date.
SELECT salary_id, salary_amount, effective_date
FROM Salaries
WHERE employee_id = 101
ORDER BY effective_date DESC;

