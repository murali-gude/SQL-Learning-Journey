
-- ============================================================
-- SQL LEARNING JOURNEY
-- DAY 2: SELECT STATEMENT - COMPLETE PRACTICE
-- Database: MySQL
-- ============================================================

-- 1. DATABASE SETUP
CREATE DATABASE IF NOT EXISTS sql_learning;
USE sql_learning;

-- 2. CREATE SAMPLE TABLES

CREATE TABLE IF NOT EXISTS employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

CREATE TABLE IF NOT EXISTS students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    course VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- 3. INSERT SAMPLE DATA
-- Run these INSERT statements once in a new database.

INSERT INTO employees VALUES
(101, 'Ravi', 'IT', 30000),
(102, 'Priya', 'HR', 40000),
(103, 'Arun', 'IT', 50000),
(104, 'Sneha', 'Finance', 45000),
(105, 'Kiran', 'HR', 35000);

INSERT INTO students VALUES
(101, 'Ravi', 'Java'),
(102, 'Priya', 'Python'),
(103, 'Arun', 'SQL'),
(104, 'Sneha', 'Java'),
(105, 'Kiran', 'Python');

INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 50000),
(2, 'Mouse', 'Electronics', 1000),
(3, 'Chair', 'Furniture', 3000),
(4, 'Table', 'Furniture', 5000),
(5, 'Keyboard', 'Electronics', 2000);


-- ============================================================
-- TOPIC 1: SELECT SINGLE COLUMN
-- ============================================================

-- Retrieve employee names
SELECT emp_name
FROM employees;

-- Retrieve employee salaries
SELECT salary
FROM employees;

-- Retrieve student courses
SELECT course
FROM students;


-- ============================================================
-- TOPIC 2: SELECT MULTIPLE COLUMNS
-- ============================================================

-- Retrieve employee ID and name
SELECT emp_id, emp_name
FROM employees;

-- Retrieve employee name, salary, and department
SELECT emp_name, salary, department
FROM employees;

-- Retrieve student name and course
SELECT student_name, course
FROM students;


-- ============================================================
-- TOPIC 3: SELECT ALL COLUMNS (*)
-- ============================================================

-- Retrieve all employee columns
SELECT *
FROM employees;

-- Retrieve all student columns
SELECT *
FROM students;

-- Retrieve all product columns
SELECT *
FROM products;


-- ============================================================
-- TOPIC 4: SELECT DISTINCT
-- ============================================================

-- Retrieve unique departments
SELECT DISTINCT department
FROM employees;

-- Retrieve unique courses
SELECT DISTINCT course
FROM students;

-- Retrieve unique product categories
SELECT DISTINCT category
FROM products;

-- Retrieve unique department and salary combinations
SELECT DISTINCT department, salary
FROM employees;


-- ============================================================
-- TOPIC 5: COLUMN ALIASES (AS)
-- ============================================================

-- Rename employee name column
SELECT emp_name AS EmployeeName
FROM employees;

-- Rename employee name and salary
SELECT
    emp_name AS EmployeeName,
    salary AS MonthlySalary
FROM employees;

-- Use aliases containing spaces
SELECT
    emp_name AS `Employee Name`,
    salary AS `Monthly Salary`
FROM employees;

-- AS is optional in MySQL
SELECT emp_name EmployeeName
FROM employees;

-- Student aliases exercise
SELECT
    student_id AS ID,
    student_name AS `Student Name`,
    course AS `Course Name`
FROM students;


-- ============================================================
-- TOPIC 6: SELECT ARITHMETIC EXPRESSIONS
-- ============================================================

-- Calculate annual salary
SELECT
    emp_name,
    salary,
    salary * 12 AS annual_salary
FROM employees;

-- Add a fixed bonus of 5000
SELECT
    emp_name,
    salary,
    salary + 5000 AS total_salary
FROM employees;

-- Calculate 10% monthly salary bonus
SELECT
    emp_name,
    salary,
    salary * 0.10 AS bonus
FROM employees;

-- Calculate annual income after adding 5000 monthly
SELECT
    emp_name,
    (salary + 5000) * 12 AS annual_income
FROM employees;

-- Calculate price including 18% GST
SELECT
    product_name,
    price,
    price + (price * 0.18) AS final_price
FROM products;

-- Calculate 18% GST amount only
SELECT
    product_name,
    price,
    price * 0.18 AS gst_amount
FROM products;

