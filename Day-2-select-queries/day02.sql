
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

