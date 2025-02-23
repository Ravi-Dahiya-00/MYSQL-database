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


SELECT department,COUNT(first_name) FROM exercise1 GROUP BY department;
-- ✅ Groups rows based on a specified column.
-- ✅ Used with aggregate functions (COUNT(), SUM(), AVG(), etc.).
-- ✅ The HAVING clause is used to filter grouped results.
-- ✅ The ORDER BY clause is used to sort the results.










-- The MAX() and MIN() functions are used to find the highest and lowest values in a column.
SELECT MAX(salary) FROM exercise1;
SELECT MIN(salary) FROM exercise1;


SELECT first_name, last_name, salary 
FROM exercise1 
WHERE salary = (SELECT MAX(salary) FROM exercise1)
   OR salary = (SELECT MIN(salary) FROM exercise1);



-- USING WITH STRING
SELECT MAX(first_name) FROM exercise1;
SELECT MIN(first_name) FROM exercise1;








use learning_db;


-- The SUM() function returns the total sum of values in a column.
SELECT SUM(salary) AS total_salary FROM exercise1;



-- Find the total salary for each department:
SELECT department,SUM(salarY) AS total_salary FROM exercise1 GROUP BY department;


-- The AVG() function calculates the average (mean) value of a numeric column.
SELECT AVG(salary) AS avg_salary FROM exercise1;



-- Find the average salary for each department:
SELECT department,COUNT(emp_id) AS total_no_in_dept,AVG(salary) AS avg_salary FROM exercise1 GROUP BY department;


