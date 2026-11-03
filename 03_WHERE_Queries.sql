
-- ============================================================
-- TOPIC 4: BETWEEN AND NOT BETWEEN
-- ============================================================

-- 1. BETWEEN: Includes both boundary values
-- Employees earning between 35000 and 45000
SELECT emp_name, department, salary
FROM employees
WHERE salary BETWEEN 35000 AND 45000;

-- PRACTICAL EXERCISE 1 - PASSED
-- Employees earning between 30000 and 40000
-- Expected: Ravi, Priya, Kiran
SELECT emp_name, department, salary
FROM employees
WHERE salary BETWEEN 30000 AND 40000;

-- 2. NOT BETWEEN: Values outside the specified range
-- Employees earning below 35000 or above 45000
SELECT emp_name, department, salary
FROM employees
WHERE salary NOT BETWEEN 35000 AND 45000;

-- PRACTICAL EXERCISE 2 - PASSED
-- Employees earning below 30000 or above 40000
-- Expected: Arun, Sneha
SELECT emp_name, department, salary
FROM employees
WHERE salary NOT BETWEEN 30000 AND 40000;

-- ============================================================
-- INTERVIEW ASSESSMENT - TOPIC 4 - PASSED
-- ============================================================

-- BETWEEN includes both minimum and maximum values.
-- NOT BETWEEN excludes the entire specified range,
-- including both boundary values.

-- Equivalent to BETWEEN 30000 AND 40000
SELECT emp_name, department, salary
FROM employees
WHERE salary >= 30000 AND salary <= 40000;

-- Equivalent to NOT BETWEEN 30000 AND 40000
SELECT emp_name, department, salary
FROM employees
WHERE salary < 30000 OR salary > 40000;

-- ============================================================
-- PROGRESS
-- TOPIC 1: WHERE BASICS - COMPLETED
-- TOPIC 2: COMPARISON OPERATORS - COMPLETED
-- TOPIC 3: LOGICAL OPERATORS - COMPLETED
-- TOPIC 4: BETWEEN / NOT BETWEEN - COMPLETED
-- NEXT: TOPIC 5 - IN OPERATOR
-- ============================================================
  