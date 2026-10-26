CREATE DATABASE IF NOT EXISTS company_db;

USE company_db;

CREATE TABLE IF NOT EXISTS employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees
(emp_id, emp_name, salary)
VALUES
(101, 'Ravi', 30000),
(102, 'Priya', 40000),
(103, 'Arun', 50000);

SELECT * FROM employees;