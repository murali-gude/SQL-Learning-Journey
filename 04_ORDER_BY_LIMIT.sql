
-- =====================================================
-- SQL LEARNING JOURNEY
-- DAY 4: ORDER BY AND LIMIT
-- SUBTOPIC 1: ORDER BY BASICS
-- =====================================================

-- NOTE:
-- These examples use the employees table.
-- Required columns:
-- emp_id, emp_name, department, salary


-- =====================================================
-- 1. ORDER BY BASICS
-- =====================================================

-- ORDER BY sorts the rows returned by a query.
-- It sorts based on one or more columns.
-- Default sorting order is ASC (ascending).
-- ORDER BY does not modify stored table data.


-- Example 1: Sort employees by salary
-- Lowest salary to highest salary.

SELECT emp_name, salary
FROM employees
ORDER BY salary;


-- Example 2: Sort employees alphabetically
-- Employee names from A to Z.

SELECT emp_name, department
FROM employees
ORDER BY emp_name;


-- =====================================================
-- 2. PRACTICAL EXERCISES
-- =====================================================

-- Exercise 1: Retrieve employee names and salaries
-- sorted alphabetically by employee name.

SELECT emp_name, salary
FROM employees
ORDER BY emp_name;


-- Exercise 2: Retrieve employee names and salaries
-- sorted from lowest salary to highest salary.

SELECT emp_name, salary
FROM employees
ORDER BY salary;


-- =====================================================
-- 3. INTERVIEW QUESTION 1
-- =====================================================

-- Q: What is ORDER BY used for?
-- A: ORDER BY sorts the rows returned by a query
--    based on values in one or more columns.

-- Q: What is the default sorting direction?
-- A: ASC (ascending).

-- Q: Does ORDER BY permanently change table data?
-- A: No. It changes only the order of query results.


-- Example:

SELECT emp_name, salary
FROM employees
ORDER BY salary;


-- =====================================================
-- 4. INTERVIEW QUESTION 2
-- =====================================================

-- Q: Can WHERE and ORDER BY be used together?
-- A: Yes.

-- Q: Which clause appears first?
-- A: WHERE appears before ORDER BY.

-- WHERE filters the rows.
-- ORDER BY sorts the filtered result.

-- Retrieve IT employees, sorted by salary
-- from lowest to highest.

SELECT emp_name, salary
FROM employees
WHERE department = 'IT'
ORDER BY salary;


-- Expected output for the sample data:
-- Ravi  | 45000
-- Arun  | 50000
-- Anil  | 55000


-- =====================================================
-- 5. IMPORTANT INTERVIEW NOTES
-- =====================================================

-- 1. ORDER BY sorts rows, not columns.
-- 2. ORDER BY uses ASC by default.
-- 3. ASC means ascending order.
-- 4. Numeric ASC: smallest to largest.
-- 5. Text ASC: alphabetical order (A to Z)
--    for the sample names and collation.
-- 6. ORDER BY does not change stored table data.
-- 7. WHERE comes before ORDER BY in SQL syntax.
-- 8. WHERE filters rows; ORDER BY sorts results.
-- 9. Without ORDER BY, row order is not guaranteed.


-- =====================================================
-- END OF DAY 4 - SUBTOPIC 1
-- NEXT: ASC AND DESC
-- =====================================================
