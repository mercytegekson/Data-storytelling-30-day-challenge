CREATE DATABASE mydatabase;

-- Specify the database to use
USE mydatabase;

-- Creating a table
CREATE TABLE employees (
	id int AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department VARCHAR(100)
);

-- Insert data into table
INSERT INTO employees (name, age, department) VALUES ('John', 30, 'HR');
INSERT INTO employees (name, age, department) VALUES ('Jane', 25, 'IT');
INSERT INTO employees (name, age, department) VALUES ('Alice', 35, 'Finance');
INSERT INTO employees (name, age, department) VALUES ('Bob', 29, 'HR');
INSERT INTO employees (name, age, department) VALUES ('Grace', 22, 'Finance');


-- view the data 
SELECT * FROM employees;

-- Select particular columns
SELECT name, age FROM employees;

-- Filter the rows with where clause
SELECT name, age FROM employees WHERE age > 29;

-- Filter rows based on multiple conditions
SELECT name, age, department
FROM employees
WHERE age > 25 AND department = 'HR';

-- Sorting the data (Ascending or Descending order)
SELECT * FROM employees ORDER BY age ASC;

-- Sort my data with departments and age
SELECT * FROM employees
ORDER BY department ASC, age DESC;

-- Limiting the results 
SELECT name, age FROM employees LIMIT 3;

-- Order by and limit
SELECT * FROM employees
ORDER BY age DESC
LIMIT 2;

-- Using DISTINCT to get unique records
SELECT DISTINCT department FROM employees;

-- Combine all
SELECT DISTINCT department
FROM employees
WHERE age > 29
ORDER BY department ASC
LIMIT 2;

-- Logical Operators in WHERE Clause
-- AND - All conditions must be true
-- OR - Any one of the conditons must be true
-- NOT - Invert condition

SELECT * FROM employees
WHERE (age > 29 AND department = 'HR') OR NOT department = 'IT';

# Day2 TASK
-- Create an employee database and have the columns; id, name, age, department, salary and hire_date
CREATE database employee_db;
USE employee_db;
CREATE TABLE employee( id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100),age INT,department VARCHAR(50),salary DECIMAL(10,2),hire_date DATE);
-- Inserting 10 records into the employee table
INSERT INTO employee (name, age, department, salary, hire_date) 
VALUES 
('Alice Johnson', 30, 'Engineering', 85000.00, '2024-01-15'),
('Bob Smith', 45, 'Human Resources', 60000.00, '2022-05-23'),
('Charlie Brown', 28, 'Marketing', 55000.00, '2023-03-12'),
('David Wilson', 35, 'Finance', 75000.00, '2021-07-19'),
('Eva Green', 29, 'Sales', 67000.00, '2023-10-01'),
('Frank White', 40, 'IT', 90000.00, '2019-12-15'),
('Grace Hall', 50, 'Management', 120000.00, '2018-06-30'),
('Henry Ford', 38, 'Legal', 98000.00, '2020-08-25'),
('Ivy Lee', 26, 'Customer Service', 40000.00, '2024-02-10'),
('Jake Davis', 32, 'Operations', 83000.00, '2022-11-05');

SELECT name,age,salary FROM employee;

SELECT name,salary
FROM employee
WHERE department = 'Engineering';

SELECT age,name
FROM employee
ORDER BY salary DESC;

SELECT age,name
FROM employee
ORDER BY salary DESC
limit 3;

SELECT DISTINCT department
FROM employee;

SELECT *
FROM employee
WHERE department = 'Sales'
   OR salary > 70000;
   
SELECT name,hire_date
FROM employee
ORDER BY age ASC
LIMIT 2;
 
 SELECT DISTINCT department
 FROM employee
 ORDER BY department;


