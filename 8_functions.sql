USE learning_db;

-- The COUNT() function in MySQL is used to count the number of rows that match a specific condition in a table.

-- ✅ Returns the total number of rows.
-- ✅ Ignores NULL values when counting a specific column.
-- ✅ COUNT(*) counts all rows, including NULL values.



SELECT COUNT(*) FROM exercise1;
-- ✅ Returns the total number of rows in the Employees table.
-- 💡 COUNT(*) counts all rows, including NULL values.

SELECT COUNT(salary) FROM exercise1;
-- ✅ Returns the number of employees with a non-null salary.
-- 💡 Ignores NULL values in the salary column.


SELECT COUNT(*) FROM exercise1 WHERE salary > 50000;
-- ✅ Counts employees who have a salary greater than 50,000.



SELECT COUNT(DISTINCT department) FROM exercise1;
-- ✅ Counts the number of unique departments in the table.


SELECT department, COUNT(*) FROM exercise1 GROUP BY department;

-- 🔹 Key Points About COUNT()
-- ✅ COUNT(*) counts all rows, including NULL values.
-- ✅ COUNT(column_name) counts non-null values in that column.
-- ✅ COUNT(DISTINCT column_name) counts unique values only.
-- ✅ Can be used with WHERE to count specific conditions.
-- ✅ Can be combined with GROUP BY for category-based counts.









--The GROUP BY clause in MySQL is used to group rows that have the same values in a specified column and perform aggregate functions like COUNT(), SUM(), AVG(), MAX(), and MIN() on each group.

SELECT department FROM exercise1 GROUP BY department;

2:37