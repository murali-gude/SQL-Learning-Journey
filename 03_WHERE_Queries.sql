
-- ============================================================
-- SQL LEARNING JOURNEY
-- CHAPTER 3: WHERE CLAUSE
-- DATABASE: MySQL
--
-- TOPIC 1: WHERE BASICS - COMPLETED
-- TOPIC 2: COMPARISON OPERATORS - COMPLETED
-- ============================================================

-- Prerequisite:
-- Run the database and employees table setup
-- from 02_SELECT_Queries.sql first.

USE sql_learning;


-- ============================================================
-- TOPIC 1: WHERE BASICS WITH EQUALITY (=)
-- ============================================================

-- 1. Retrieve all employees
SELECT *
FROM employees;

-- 2. Find employees working in IT
SELECT emp_name, department
FROM employees
WHERE department = 'IT';

-- 3. Find employee with ID 103
SELECT *
FROM employees
WHERE emp_id = 103;

-- 4. Find employees earning exactly 40000
SELECT emp_name, salary
FROM employees
WHERE salary = 40000;

-- 5. Find employees working in HR
SELECT emp_name, department
FROM employees
WHERE department = 'HR';

-- PRACTICAL EXERCISE 1 - PASSED
-- Retrieve names and salaries of HR employees
SELECT emp_name, salary
FROM employees
WHERE department = 'HR';

-- INTERVIEW QUESTION - PASSED
-- WHERE filters rows based on specified conditions.
-- WHERE with SELECT does not modify original table data.


-- ============================================================
-- TOPIC 2: COMPARISON OPERATORS
-- ============================================================

-- 1. GREATER THAN (>)
-- Employees earning more than 40000
SELECT emp_name, salary
FROM employees
WHERE salary > 40000;

-- PRACTICAL EXERCISE 1 - PASSED
-- Employees earning more than 35000
SELECT emp_name, department, salary
FROM employees
WHERE salary > 35000;


-- 2. LESS THAN (<)
-- Employees earning less than 40000
SELECT emp_name, salary
FROM employees
WHERE salary < 40000;

-- PRACTICAL EXERCISE 2 - PASSED
-- Employees earning less than 45000
SELECT emp_name, salary
FROM employees
WHERE salary < 45000;


-- 3. GREATER THAN OR EQUAL TO (>=)
-- Employees earning 45000 or more
SELECT emp_name, salary
FROM employees
WHERE salary >= 45000;

-- PRACTICAL EXERCISE 3 - PASSED
-- Employees earning 40000 or more
SELECT emp_name, department, salary
FROM employees
WHERE salary >= 40000;


-- 4. LESS THAN OR EQUAL TO (<=)
-- Employees earning 35000 or less
SELECT emp_name, salary
FROM employees
WHERE salary <= 35000;

-- PRACTICAL EXERCISE 4 - PASSED
-- Employees earning 40000 or less
SELECT emp_name, department, salary
FROM employees
WHERE salary <= 40000;


-- 5. NOT EQUAL TO (<>)
-- Employees not working in IT
SELECT emp_name, department
FROM employees
WHERE department <> 'IT';

-- PRACTICAL EXERCISE 5 - PASSED
-- Employees not working in HR
SELECT emp_name, department, salary
FROM employees
WHERE department <> 'HR';


-- 6. NOT EQUAL TO (!=)
-- MySQL also supports !=
SELECT emp_name, department, salary
FROM employees
WHERE department != 'HR';


-- ============================================================
-- INTERVIEW ASSESSMENT - TOPIC 2
-- ============================================================

-- QUESTION 1 - PASSED
-- Difference between > and >=:
-- > excludes the boundary value.
-- >= includes the boundary value.

SELECT emp_name, salary
FROM employees
WHERE salary > 40000;

SELECT emp_name, salary
FROM employees
WHERE salary >= 40000;


-- QUESTION 2 - PASSED
-- Difference between <> and !=:
-- Both mean "not equal" in MySQL.
-- <> is the standard SQL operator.
-- != is also supported by MySQL.

SELECT emp_name, department, salary
FROM employees
WHERE department != 'HR';


-- ============================================================
-- PROGRESS
-- TOPIC 1: WHERE BASICS - COMPLETED
-- TOPIC 2: COMPARISON OPERATORS - COMPLETED
-- NEXT: TOPIC 3 - LOGICAL OPERATORS (AND, OR, NOT)
-- ============================================================
