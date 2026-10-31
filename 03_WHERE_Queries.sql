
-- ============================================================
-- SQL LEARNING JOURNEY
-- CHAPTER 3: WHERE CLAUSE
-- DATABASE: MySQL
--
-- TOPIC 1: WHERE BASICS - COMPLETED
-- TOPIC 2: COMPARISON OPERATORS - COMPLETED
-- TOPIC 3: LOGICAL OPERATORS - COMPLETED
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
SELECT emp_name, salary
FROM employees
WHERE salary > 40000;

-- PRACTICAL EXERCISE 1 - PASSED
SELECT emp_name, department, salary
FROM employees
WHERE salary > 35000;

-- 2. LESS THAN (<)
SELECT emp_name, salary
FROM employees
WHERE salary < 40000;

-- PRACTICAL EXERCISE 2 - PASSED
SELECT emp_name, salary
FROM employees
WHERE salary < 45000;

-- 3. GREATER THAN OR EQUAL TO (>=)
SELECT emp_name, salary
FROM employees
WHERE salary >= 45000;

-- PRACTICAL EXERCISE 3 - PASSED
SELECT emp_name, department, salary
FROM employees
WHERE salary >= 40000;

-- 4. LESS THAN OR EQUAL TO (<=)
SELECT emp_name, salary
FROM employees
WHERE salary <= 35000;

-- PRACTICAL EXERCISE 4 - PASSED
SELECT emp_name, department, salary
FROM employees
WHERE salary <= 40000;

-- 5. NOT EQUAL TO (<>)
SELECT emp_name, department
FROM employees
WHERE department <> 'IT';

-- PRACTICAL EXERCISE 5 - PASSED
SELECT emp_name, department, salary
FROM employees
WHERE department <> 'HR';

-- 6. NOT EQUAL TO (!=)
SELECT emp_name, department, salary
FROM employees
WHERE department != 'HR';

-- INTERVIEW QUESTION 1 - PASSED
-- > excludes the boundary value; >= includes it.
SELECT emp_name, salary
FROM employees
WHERE salary > 40000;

SELECT emp_name, salary
FROM employees
WHERE salary >= 40000;

-- INTERVIEW QUESTION 2 - PASSED
-- Both <> and != mean not equal in MySQL.
-- <> is standard SQL.
SELECT emp_name, department, salary
FROM employees
WHERE department != 'HR';

-- ============================================================
-- TOPIC 3: LOGICAL OPERATORS (AND, OR, NOT)
-- ============================================================

-- 1. AND: All conditions must be TRUE
SELECT emp_name, department, salary
FROM employees
WHERE department = 'HR' AND salary > 35000;

-- PRACTICAL EXERCISE - PASSED
-- Expected: Priya
SELECT emp_name, department, salary
FROM employees
WHERE department = 'HR' AND salary > 35000;

-- 2. OR: At least one condition must be TRUE
SELECT emp_name, department, salary
FROM employees
WHERE department = 'Finance' OR salary > 45000;

-- PRACTICAL EXERCISE - PASSED
-- Expected: Arun, Sneha
SELECT emp_name, department, salary
FROM employees
WHERE department = 'Finance' OR salary > 45000;

-- 3. NOT: Negates a condition
SELECT emp_name, department, salary
FROM employees
WHERE NOT department = 'HR';

-- PRACTICAL EXERCISE - PASSED
-- Expected: Ravi, Kiran
SELECT emp_name, department, salary
FROM employees
WHERE NOT salary > 35000;

-- ============================================================
-- INTERVIEW ASSESSMENT - TOPIC 3
-- ============================================================

-- QUESTION 1 - PASSED
-- AND requires both conditions to be TRUE.
-- OR requires at least one condition to be TRUE.

-- AND example: Expected Priya
SELECT emp_name, department, salary
FROM employees
WHERE department = 'HR' AND salary = 40000;

-- OR example: Expected Arun, Sneha
SELECT emp_name, department, salary
FROM employees
WHERE department = 'Finance' OR salary > 45000;

-- QUESTION 2 - PASSED
-- NOT reverses the truth value of a condition.
-- salary > 35000: Priya, Arun, Sneha
-- NOT salary > 35000: Ravi, Kiran
-- NULL salary values satisfy neither condition.

SELECT emp_name, salary
FROM employees
WHERE salary > 35000;

SELECT emp_name, salary
FROM employees
WHERE NOT salary > 35000;

-- ============================================================
-- PROGRESS
-- TOPIC 1: WHERE BASICS - COMPLETED
-- TOPIC 2: COMPARISON OPERATORS - COMPLETED
-- TOPIC 3: LOGICAL OPERATORS - COMPLETED
-- ============================================================
  