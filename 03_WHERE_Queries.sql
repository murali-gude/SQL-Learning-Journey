
-- =====================================================
-- TOPIC 6: LIKE OPERATOR
-- SUBTOPIC 3: NOT LIKE
-- =====================================================

-- NOT LIKE excludes values matching a pattern.
-- % represents zero or more characters.
-- _ represents exactly one character.
-- Examples assume a case-insensitive MySQL collation.


-- =====================================================
-- PRACTICAL EXERCISE 1
-- Names that do NOT end with 'n'
-- =====================================================

SELECT emp_name, department, salary
FROM employees
WHERE emp_name NOT LIKE '%n';

-- Expected: Ravi, Priya, Sneha


-- =====================================================
-- PRACTICAL EXERCISE 2
-- Names that do NOT contain exactly 5 characters
-- =====================================================

SELECT emp_name, department, salary
FROM employees
WHERE emp_name NOT LIKE '_____';

-- Expected: Ravi, Arun


-- =====================================================
-- PRACTICAL EXERCISE 3
-- Exclude names whose second character is 'i'
-- and whose length is at least 3 characters
-- =====================================================

SELECT emp_name, department, salary
FROM employees
WHERE emp_name NOT LIKE '_i_%';

-- Expected: Ravi, Priya, Arun, Sneha


-- =====================================================
-- INTERVIEW QUESTION 1
-- Difference between LIKE and NOT LIKE
-- =====================================================

-- LIKE: Retrieve names starting with R
-- and containing at least 2 characters

SELECT *
FROM employees
WHERE emp_name LIKE 'R_%';

-- Expected: Ravi


-- NOT LIKE: Exclude names starting with R
-- and containing at least 2 characters

SELECT *
FROM employees
WHERE emp_name NOT LIKE 'R_%';

-- Expected: Priya, Arun, Sneha, Kiran


-- =====================================================
-- INTERVIEW QUESTION 2
-- Difference between NOT LIKE 'R%' and 'R_'
-- =====================================================

-- Exclude all names starting with R

SELECT emp_name
FROM employees
WHERE emp_name NOT LIKE 'R%';

-- Expected: Priya, Arun, Sneha, Kiran


-- Exclude only names containing exactly 2 characters
-- where the first character is R

SELECT emp_name
FROM employees
WHERE emp_name NOT LIKE 'R_';

-- Expected: Ravi, Priya, Arun, Sneha, Kiran


-- =====================================================
-- INTERVIEW QUESTION 3
-- Combine NOT LIKE with AND
-- =====================================================

-- Retrieve employees whose names:
-- 1. Do not start with R
-- 2. Do not end with n

SELECT emp_name, department, salary
FROM employees
WHERE emp_name NOT LIKE 'R%'
  AND emp_name NOT LIKE '%n';

-- Expected: Priya, Sneha


-- =====================================================
-- IMPORTANT INTERVIEW REVISION NOTES
-- =====================================================

-- LIKE matches a specified pattern.
-- NOT LIKE excludes a specified pattern.
-- % matches zero or more characters.
-- _ matches exactly one character.
-- AND requires both conditions to be true.
--
-- LIKE 'R%'       : Names starting with R
-- NOT LIKE 'R%'   : Names not starting with R
-- LIKE 'R_'       : Exactly 2 characters, starting R
-- NOT LIKE 'R_'   : Excludes exactly 2-character R names
-- LIKE '_i_%'     : Second character i, minimum length 3
-- NOT LIKE '_i_%' : Excludes those matching names
--
-- Case sensitivity depends on the MySQL collation.
-- NOT LIKE does not return NULL values.
--
-- =====================================================
-- END OF TOPIC 6: LIKE AND NOT LIKE
-- =====================================================
