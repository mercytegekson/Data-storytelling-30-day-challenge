CREATE DATABASE Zindua;
show databases;
USE Zindua;
-- JOINS 


-- Create tables
-- table employees
CREATE TABLE employees (
	employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    manager_id INT
);

-- table departments
CREATE TABLE departments (
	department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- CREATE TABLE OF PROJECT
CREATE TABLE project(
	project_id INT PRIMARY KEY,
    project_name VARCHAR(50)
);

INSERT INTO departments (department_id, department_name) 
VALUES 
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

INSERT INTO employees (employee_id, name, department_id, manager_id) 
VALUES 
(1, 'Alice', 1, 3),
(2, 'Bob', 2, 3),
(3, 'Charlie', 1, NULL),
(4, 'David', NULL, 2);


-- inner join\

SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;

-- left join
SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.department_id;

-- RIGHT JOIN
SELECT employees.name, departments.department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id;

-- FULL JOIN (FULL OUTER JOIN)
SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.department_id
UNION
SELECT employees.name, departments.department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id;

-- CROSS JOIN
SELECT employees.name, departments.department_name
FROM employees
CROSS JOIN departments;

-- Self Join
SELECT e1.name AS employee, e2.name AS manager
FROM employees e1
LEFT JOIN employees e2
ON e1.manager_id = e2.employee_id;

-- create a project on ecommerce
-- create table 
-- customer, orders, Products, Suppliers
-- Practice the different joins 
-- Answer diffrent business question with different joins 
-- Analyze and presetn the data using SQL Queries
CREATE DATABASE ecommerce;
USE ecommerce;
CREATE TABLE Customer(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age INT ,
    Phone INT(10)
);
SELECT * FROM Customer;
create table orders (
    id int(11) not null auto_increment primary key,
     order_number varchar(255) not null, 
     ordered_at datetime not null, 
     customer_id int not null
     );
 SELECT * FROM orders;    
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock_quantity INT
    );
    SELECT * FROM products; 
CREATE TABLE suppliers ( 
    supplier_id int NOT NULL, 
	supplier_name char(50) NOT NULL,
	contact_name char(50) 
    );
    SELECT * FROM suppliers; 
INSERT INTO Customer (CustomerID, CustomerName, LastName, Country, Age, Phone)
VALUES 
    (1, 'John', 'Doe', 'USA', 25, 123456789),
    (2, 'Jane', 'Smith', 'Canada', 30, 987654321),
    (3, 'Michael', 'Johnson', 'UK', 40, 112233445),
    (4, 'Emily', 'Davis', 'Australia', 28, 556677889);

INSERT INTO orders (order_number, ordered_at, customer_id)
VALUES 
    ('ORD001', '2024-09-20 12:30:00', 1),
    ('ORD002', '2024-09-20 14:15:00', 2),
    ('ORD003', '2024-09-21 09:00:00', 3),
    ('ORD004', '2024-09-21 11:45:00', 4);

INSERT INTO products (product_id, product_name, category, price, stock_quantity)
VALUES 
    (1, 'Laptop', 'Electronics', 1500.00, 10),
    (2, 'Smartphone', 'Electronics', 800.00, 25),
    (3, 'Tablet', 'Electronics', 600.00, 15),
    (4, 'Headphones', 'Accessories', 150.00, 50);

INSERT INTO suppliers (supplier_id, supplier_name, contact_name)
VALUES 
    (1, 'Tech Supplies Co.', 'Alice Johnson'),
    (2, 'Mobile World Inc.', 'Bob Smith'),
    (3, 'Gadget Warehouse', 'Catherine Lee'),
    (4, 'Accessory Partners', 'David Thompson');
-- Find all orders with customer details.
SELECT 
    Customer.CustomerID, 
    Customer.CustomerName, 
    Customer.LastName, 
    orders.order_number, 
    orders.ordered_at
FROM 
    Customer
INNER JOIN 
    orders 
ON 
    Customer.CustomerID = orders.customer_id;

-- Find all customers and their orders
SELECT 
    Customer.CustomerID, 
    Customer.CustomerName, 
    Customer.LastName, 
    orders.order_number, 
    orders.ordered_at
FROM 
    Customer
LEFT JOIN 
    orders 
ON 
    Customer.CustomerID = orders.customer_id;

-- Find all orders and the customers who placed them
SELECT 
    Customer.CustomerID, 
    Customer.CustomerName, 
    Customer.LastName, 
    orders.order_number, 
    orders.ordered_at
FROM 
    Customer
RIGHT JOIN 
    orders 
ON 
    Customer.CustomerID = orders.customer_id;
    
-- Find all customers and their orders
SELECT 
    Customer.CustomerID, 
    Customer.CustomerName, 
    Customer.LastName, 
    orders.order_number, 
    orders.ordered_at
FROM 
    Customer
LEFT JOIN 
    orders 
ON 
    Customer.CustomerID = orders.customer_id

UNION

SELECT 
    Customer.CustomerID, 
    Customer.CustomerName, 
    Customer.LastName, 
    orders.order_number, 
    orders.ordered_at
FROM 
    orders
RIGHT JOIN 
    Customer 
ON 
    Customer.CustomerID = orders.customer_id;

-- Get every possible combination of customers and products.
SELECT 
    Customer.CustomerID, 
    Customer.CustomerName, 
    products.product_name, 
    products.price
FROM 
    Customer
CROSS JOIN 
    products;
-- Find customers who live in the same country
SELECT 
    A.CustomerName AS Customer1, 
    B.CustomerName AS Customer2, 
    A.Country
FROM 
    Customer A
JOIN 
    Customer B 
ON 
    A.Country = B.Country
AND 
    A.CustomerID <> B.CustomerID;
