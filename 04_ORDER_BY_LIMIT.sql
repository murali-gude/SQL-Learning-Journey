
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

-- =====================================================
-- DAY 4: ORDER BY AND LIMIT
-- SUBTOPIC 2: ASC AND DESC
-- =====================================================

-- ASC = Ascending order
-- DESC = Descending order
--
-- ASC sorts:
-- Numbers: Lowest to highest
-- Text: A to Z (for our sample names)
--
-- DESC sorts:
-- Numbers: Highest to lowest
-- Text: Z to A (for our sample names)
--
-- ASC is the default when no direction is specified.


-- =====================================================
-- 1. ASC - ASCENDING ORDER
-- =====================================================

-- Example 1: Sort salaries from lowest to highest.

SELECT emp_name, salary
FROM employees
ORDER BY salary ASC;

-- Expected salary order:
-- Kiran  | 30000
-- Priya  | 35000
-- Sneha  | 40000
-- Ravi   | 45000
-- Arun   | 50000
-- Anil   | 55000


-- =====================================================
-- 2. DESC - DESCENDING ORDER
-- =====================================================

-- Example 2: Sort salaries from highest to lowest.

SELECT emp_name, salary
FROM employees
ORDER BY salary DESC;

-- Expected salary order:
-- Anil   | 55000
-- Arun   | 50000
-- Ravi   | 45000
-- Sneha  | 40000
-- Priya  | 35000
-- Kiran  | 30000


-- =====================================================
-- 3. PRACTICAL EXERCISE 1 - DESC
-- =====================================================

-- Question:
-- Retrieve employee names and salaries.
-- Sort by salary from highest to lowest.

SELECT emp_name, salary
FROM employees
ORDER BY salary DESC;

-- Expected output:
-- Anil   | 55000
-- Arun   | 50000
-- Ravi   | 45000
-- Sneha  | 40000
-- Priya  | 35000
-- Kiran  | 30000

-- Status: PASSED


-- =====================================================
-- 4. PRACTICAL EXERCISE 2 - ASC
-- =====================================================

-- Question:
-- Retrieve employee names and salaries.
-- Sort names alphabetically from A to Z.

SELECT emp_name, salary
FROM employees
ORDER BY emp_name ASC;

-- Expected output:
-- Anil   | 55000
-- Arun   | 50000
-- Kiran  | 30000
-- Priya  | 35000
-- Ravi   | 45000
-- Sneha  | 40000

-- Status: PASSED


-- =====================================================
-- 5. INTERVIEW QUESTION 1 - ASC VS DESC
-- =====================================================

-- Q1: What does ASC mean?
-- A: ASC means ascending order.
--    Numbers: lowest to highest.
--    Text: A to Z for our sample names.

SELECT emp_name, salary
FROM employees
ORDER BY salary ASC;


-- Q2: What does DESC mean?
-- A: DESC means descending order.
--    Numbers: highest to lowest.
--    Text: Z to A for our sample names.

SELECT emp_name, salary
FROM employees
ORDER BY emp_name DESC;


-- Q3: What is the default sorting direction?
-- A: ASC is the default direction.

SELECT emp_name, salary
FROM employees
ORDER BY salary;

-- This is equivalent to ORDER BY salary ASC.

-- Interview Question 1: PASSED


-- =====================================================
-- 6. INTERVIEW QUESTION 2
-- =====================================================

-- Q1: Can ASC and DESC sort numeric and text columns?
-- A: Yes, both can sort numeric and text values.

-- Q2: What is the first employee name
--     when sorted using DESC?
-- A: Sneha (based on the sample table).

SELECT emp_name
FROM employees
ORDER BY emp_name DESC;

-- Expected output:
-- Sneha
-- Ravi
-- Priya
-- Kiran
-- Arun
-- Anil


-- Q3: What is the first salary when using ASC?
-- A: 30000 (based on the sample table).

SELECT salary
FROM employees
ORDER BY salary ASC;

-- Expected output:
-- 30000
-- 35000
-- 40000
-- 45000
-- 50000
-- 55000

-- Interview Question 2: PASSED


-- =====================================================
-- 7. IMPORTANT INTERVIEW NOTES
-- =====================================================

-- 1. ASC means ascending order.
-- 2. DESC means descending order.
-- 3. ASC is the default sorting direction.
-- 4. ASC and DESC work with numbers and text.
-- 5. ORDER BY sorts result rows, not columns.
-- 6. ORDER BY does not permanently change table data.
-- 7. Sorting text depends on the column collation.
-- 8. When sort values are equal, their relative row
--    order is not guaranteed without another sort key.


-- =====================================================
-- END OF SUBTOPIC 2: ASC AND DESC
-- =====================================================

-- =====================================================
-- SQL LEARNING JOURNEY
-- DAY 4: ORDER BY AND LIMIT
-- SUBTOPIC 3: ORDER BY MULTIPLE COLUMNS
-- =====================================================

-- ORDER BY can sort rows using multiple columns.
-- The first column has the highest sorting priority.
-- The second column is used when first-column
-- values are equal.
-- The third column is used when the first two
-- sorting values are equal.
--
-- Different sorting directions can be combined.
-- Example: ORDER BY department ASC, salary DESC;


-- =====================================================
-- 1. EXAMPLE 1 - DEPARTMENT ASC, SALARY DESC
-- =====================================================

-- Sort departments alphabetically (A to Z).
-- Within each department, sort salaries
-- from highest to lowest.

SELECT emp_name, department, salary
FROM employees
ORDER BY department ASC, salary DESC;

-- Expected output:
-- Sneha  | Finance | 40000
-- Priya  | HR      | 35000
-- Kiran  | HR      | 30000
-- Anil   | IT      | 55000
-- Arun   | IT      | 50000
-- Ravi   | IT      | 45000


-- =====================================================
-- 2. EXAMPLE 2 - DEPARTMENT ASC, SALARY ASC
-- =====================================================

-- Sort departments alphabetically (A to Z).
-- Within each department, sort salaries
-- from lowest to highest.

SELECT emp_name, department, salary
FROM employees
ORDER BY department ASC, salary ASC;

-- Expected output:
-- Sneha  | Finance | 40000
-- Kiran  | HR      | 30000
-- Priya  | HR      | 35000
-- Ravi   | IT      | 45000
-- Arun   | IT      | 50000
-- Anil   | IT      | 55000


-- =====================================================
-- 3. PRACTICAL EXERCISE 1
-- =====================================================

-- Question:
-- Retrieve emp_name, department, and salary.
-- Sort department DESC (Z to A).
-- Within each department, sort salary ASC.

SELECT emp_name, department, salary
FROM employees
ORDER BY department DESC, salary ASC;

-- Expected output:
-- Ravi   | IT      | 45000
-- Arun   | IT      | 50000
-- Anil   | IT      | 55000
-- Kiran  | HR      | 30000
-- Priya  | HR      | 35000
-- Sneha  | Finance | 40000

-- Status: PASSED


-- =====================================================
-- 4. PRACTICAL EXERCISE 2
-- =====================================================

-- Question:
-- Retrieve emp_name, department, and salary.
-- Sort salary from highest to lowest.
-- If salaries are equal, sort names A to Z.

SELECT emp_name, department, salary
FROM employees
ORDER BY salary DESC, emp_name ASC;

-- Expected output:
-- Anil   | IT      | 55000
-- Arun   | IT      | 50000
-- Ravi   | IT      | 45000
-- Sneha  | Finance | 40000
-- Priya  | HR      | 35000
-- Kiran  | HR      | 30000

-- Note:
-- All salaries in this sample are different.
-- Therefore, emp_name ASC does not change
-- the output order.

-- Status: PASSED


-- =====================================================
-- 5. INTERVIEW QUESTION 1
-- =====================================================

-- Q1: Which column has the first sorting priority?
-- A: The first column listed in ORDER BY.

-- Q2: When is the second sorting column used?
-- A: When rows have equal values in the first
--    sorting column.

-- Q3: Can ASC and DESC be used together?
-- A: Yes. Each sorting column can have its
--    own sorting direction.

SELECT emp_name, department, salary
FROM employees
ORDER BY department ASC, salary DESC;

-- First priority: department ASC
-- Second priority: salary DESC

-- Interview Question 1: PASSED


-- =====================================================
-- 6. INTERVIEW QUESTION 2
-- =====================================================

-- Question:
-- Explain sorting using three columns:
-- department ASC, salary DESC, emp_name ASC.

-- First priority: department ASC
-- Second priority: salary DESC
-- Third priority: emp_name ASC

-- The third column is used when department
-- and salary are both equal.

SELECT emp_name, department, salary
FROM employees
ORDER BY department ASC, salary DESC, emp_name ASC;

-- Interview assessment sample data:
--
-- Ravi  | IT | 45000
-- Arun  | IT | 50000
-- Anil  | IT | 50000
-- Priya | HR | 35000
-- Kiran | HR | 30000

-- Expected output for the five-row sample:
-- Priya | HR | 35000
-- Kiran | HR | 30000
-- Anil  | IT | 50000
-- Arun  | IT | 50000
-- Ravi  | IT | 45000

-- Anil comes before Arun because their
-- department and salary are equal, and
-- emp_name ASC sorts their names A to Z.

-- NOTE:
-- This five-row sample is different from
-- our original six-row employees table.
-- The query will return results based on
-- the actual data stored in MySQL.

-- Interview Question 2: PASSED


-- =====================================================
-- 7. IMPORTANT INTERVIEW NOTES
-- =====================================================

-- 1. ORDER BY supports multiple sorting columns.
--
-- 2. Columns are separated using commas.
--
-- 3. The first column has highest priority.
--
-- 4. The second column resolves ties in
--    the first column.
--
-- 5. The third column resolves ties in
--    the first two columns.
--
-- 6. ASC and DESC can be mixed in one query.
--
-- 7. Each column can have its own direction.
--
-- 8. ASC is the default sorting direction.
--
-- 9. ORDER BY sorts result rows, not columns.
--
-- 10. ORDER BY does not modify stored data.
--
-- 11. When all specified sorting values are
--     equal, row order is not guaranteed.
--
-- 12. Add another sorting column, such as
--     a unique emp_id, for deterministic order.


-- =====================================================
-- END OF SUBTOPIC 3: ORDER BY MULTIPLE COLUMNS
-- NEXT: ORDER BY WITH WHERE
-- =====================================================
