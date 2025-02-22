USE learning_db;


-- The DISTINCT keyword in MySQL is used to remove duplicate values from the result set. It ensures that only unique rows appear in the output.

SELECT DISTINCT department,designation FROM exercise1;

-- ✅ Removes duplicates based on all selected columns.
-- ✅ Works on one or more columns.
-- ✅ Does not modify the original table, only affects the result set.
-- ✅ Can be used with COUNT():

SELECT COUNT(DISTINCT department) FROM exercise1;












-- The ORDER BY keyword in MySQL is used to sort the result set in ascending (ASC) or descending (DESC) order based on one or more columns.

-- ASC (default) → Ascending order (smallest to largest, A-Z)
-- DESC → Descending order (largest to smallest, Z-A)

SELECT * FROM exercise1 ORDER BY first_name;
-- ORDER BY ascending of characters of first name


SELECT * FROM exercise1 ORDER BY first_name DESC;

-- ✅ Can be used with one or more columns.
-- ✅ Default is ascending (ASC) if DESC is not specified.
-- ✅ Works with numbers, strings, and dates.
-- ✅ Used for sorting results in reports and queries efficiently.








-- The LIKE keyword in MySQL is used to filter records based on a pattern match in WHERE clauses. It is primarily used for searching within text fields.

-- % (percent sign) → Matches zero, one, or multiple characters.
-- _ (underscore) → Matches exactly one character.

SELECT * FROM exercise1 WHERE first_name LIKE 'A%';
-- 👉 A% matches all names starting with "A".


SELECT * FROM exercise1 WHERE first_name LIKE '_o%';
-- 👉 Matches names where the second letter is "o" (_o%).


SELECT * FROM exercise1 WHERE first_name LIKE '____';
-- it will select the name with 4 characters.


-- ✅ Used for pattern matching in WHERE clauses.
-- ✅ % matches multiple characters, _ matches one character.
-- ✅ Not case-sensitive in MySQL.
-- ✅ Can be used with NOT LIKE to exclude patterns.
















-- The LIMIT keyword in MySQL is used to restrict the number of rows returned by a query. It is useful when fetching a specific number of records from a table.

