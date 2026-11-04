
-- =====================================================
-- SQL LEARNING JOURNEY
-- WHERE CLAUSE - TOPIC 7
-- IS NULL AND IS NOT NULL
-- =====================================================

-- NOTE:
-- These queries assume the employees table contains
-- emp_name, department, email, and bonus columns.
-- Add the columns in MySQL if they do not exist.

-- 1. IS NULL
-- Retrieve employees whose email is missing.

SELECT emp_name, department, email
FROM employees
WHERE email IS NULL;


-- 2. IS NOT NULL
-- Retrieve employees whose email is available.

SELECT emp_name, department, email
FROM employees
WHERE email IS NOT NULL;


-- 3. IS NOT NULL WITH AND
-- Retrieve IT employees with non-NULL emails.

SELECT emp_name, department, email
FROM employees
WHERE department = 'IT'
  AND email IS NOT NULL;


-- 4. IS NULL WITH SELECT *
-- Retrieve all columns for employees with NULL emails.

SELECT *
FROM employees
WHERE email IS NULL;


-- 5. IS NOT NULL WITH SELECT *
-- Retrieve all columns for employees with non-NULL emails.

SELECT *
FROM employees
WHERE email IS NOT NULL;


-- 6. CHECK NULL BONUS
-- Retrieve employees whose bonus is NULL.

SELECT *
FROM employees
WHERE bonus IS NULL;


-- 7. IS NULL WITH OR AND AND
-- Retrieve employees with NULL emails OR
-- IT employees whose emails are NOT NULL.

SELECT emp_name, department, email
FROM employees
WHERE email IS NULL
   OR (department = 'IT' AND email IS NOT NULL);


-- =====================================================
-- INTERVIEW NOTES
-- =====================================================

-- NULL means missing, unknown, or unavailable data.
-- NULL is different from 0 and ''.
-- 0 is a known numeric value.
-- '' is a known string containing zero characters.
-- IS NULL checks for NULL values.
-- IS NOT NULL checks for non-NULL values.
-- = NULL does not test for NULL correctly because
-- the comparison evaluates to UNKNOWN.
-- WHERE returns rows where the condition is TRUE.
-- AND has higher precedence than OR.
-- Parentheses make combined conditions clearer.

-- END OF WHERE TOPIC 7
