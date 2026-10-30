
-- ============================================================
-- SQL LEARNING JOURNEY
-- CHAPTER 3: WHERE CLAUSE
-- TOPIC 1: WHERE BASICS WITH EQUALITY (=)
-- DATABASE: MySQL
-- STATUS: COMPLETED
-- ============================================================

-- SETUP
-- Uses the employees table created in 02_SELECT_Queries.sql

USE sql_learning;


-- ============================================================
-- TOPIC 1: WHERE CLAUSE BASICS
-- ============================================================

-- 1. Retrieve all employees (without filtering)
SELECT *
FROM employees;


-- 2. Retrieve only employees from the IT department
SELECT emp_name, department
FROM employees
WHERE department = 'IT';


-- 3. Retrieve an employee using employee ID
SELECT *
FROM employees
WHERE emp_id = 103;


-- 4. Retrieve employees earning exactly 40000
SELECT emp_name, salary
FROM employees
WHERE salary = 40000;


-- 5. Retrieve employees from the HR department
SELECT emp_name, department
FROM employees
WHERE department = 'HR';


-- ============================================================
-- PRACTICAL EXERCISE 1 - COMPLETED
-- Question:
-- Retrieve employee name and salary for employees
-- working in the HR department.
-- ============================================================

SELECT emp_name, salary
FROM employees
WHERE department = 'HR';


-- ============================================================
-- INTERVIEW QUESTION 1 - COMPLETED
-- ============================================================

-- Q: What is the purpose of the WHERE clause?
--
-- Answer:
-- WHERE filters rows based on specified conditions.
--
-- Q: Does WHERE with SELECT permanently modify data?
--
-- Answer:
-- No. SELECT retrieves data without updating or
-- deleting rows from the original table.


-- ============================================================
-- TOPIC 1 COMPLETED
-- NEXT: TOPIC 2 - COMPARISON OPERATORS
-- ============================================================
