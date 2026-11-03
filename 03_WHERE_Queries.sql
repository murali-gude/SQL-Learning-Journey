
-- ============================================================
-- TOPIC 5: IN AND NOT IN OPERATORS
-- ============================================================

-- 1. IN OPERATOR
-- IN matches any value in a specified list.

-- Example 1: Employees working in IT or HR
SELECT emp_name, department, salary
FROM employees
WHERE department IN ('IT', 'HR');

-- Expected: Ravi, Priya, Arun, Kiran

-- Equivalent query using OR
SELECT emp_name, department, salary
FROM employees
WHERE department = 'IT' OR department = 'HR';

-- Example 2: Employees earning 30000, 40000, or 50000
SELECT emp_name, salary
FROM employees
WHERE salary IN (30000, 40000, 50000);

-- Expected: Ravi, Priya, Arun

-- PRACTICAL EXERCISE 1 - PASSED
-- Employees working in HR or Finance
SELECT emp_name, department, salary
FROM employees
WHERE department IN ('HR', 'Finance');

-- Expected: Priya, Sneha, Kiran

-- PRACTICAL EXERCISE 2 - PASSED
-- Employees earning exactly 30000, 35000, or 45000
SELECT emp_name, department, salary
FROM employees
WHERE salary IN (30000, 35000, 45000);

-- Expected: Ravi, Sneha, Kiran

-- ============================================================
-- 2. NOT IN OPERATOR
-- NOT IN excludes values matching the specified list.
-- ============================================================

-- Example: Employees not working in IT or HR
SELECT emp_name, department, salary
FROM employees
WHERE department NOT IN ('IT', 'HR');

-- Expected: Sneha

-- PRACTICAL EXERCISE 3 - PASSED
-- Employees not earning 30000, 35000, or 45000
SELECT emp_name, department, salary
FROM employees
WHERE salary NOT IN (30000, 35000, 45000);

-- Expected: Priya, Arun

-- ============================================================
-- INTERVIEW ASSESSMENT - TOPIC 5 - PASSED
-- ============================================================

-- QUESTION 1:
-- What is the difference between IN and NOT IN?

-- ANSWER:
-- IN retrieves rows where a column value matches
-- any value in a specified list.
--
-- NOT IN retrieves rows where a column value
-- does not match any value in a specified list.
--
-- Note: NULL values require special handling.
-- NOT IN with NULL in its list can produce
-- unexpected results.

-- Interview Example 1: IN
SELECT emp_name, department
FROM employees
WHERE department IN ('IT', 'HR');

-- Expected: Ravi, Priya, Arun, Kiran

-- Interview Example 2: NOT IN
SELECT emp_name, department
FROM employees
WHERE department NOT IN ('IT', 'HR');

-- Expected: Sneha

-- ============================================================
-- PROGRESS
-- TOPIC 1: WHERE BASICS - COMPLETED
-- TOPIC 2: COMPARISON OPERATORS - COMPLETED
-- TOPIC 3: LOGICAL OPERATORS - COMPLETED
-- TOPIC 4: BETWEEN / NOT BETWEEN - COMPLETED
-- TOPIC 5: IN / NOT IN - COMPLETED
-- ============================================================
