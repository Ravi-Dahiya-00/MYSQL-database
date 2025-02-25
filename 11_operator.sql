USE learning_db;


-- RELATIONAL OPERATOR 
-- Relational operators (also known as comparison operators) are used in MySQL to compare two values and return a Boolean (TRUE or FALSE) result. These operators are commonly used in WHERE clauses to filter records.



-- Operator          	Description	                                                      Example
-- =	                 Equal to	                                                     salary = 50000
-- != or <>	         Not equal to	                                                 salary != 50000
-- >	                 Greater than	                                                 salary > 50000
-- <	                 Less than	                                                     salary < 50000
-- >=	                 Greater than or equal to                                      	 salary >= 50000
-- <=	                 Less than or equal to	                                         salary <= 50000
-- BETWEEN	             Between two values (inclusive)	                                 salary BETWEEN 50000 AND 100000
-- IN	                 Matches a value in a list	department                           IN ('IT', 'HR', 'Finance')
-- NOT IN             	 Does not match any value in a list	department                   NOT IN ('IT', 'HR', 'Finance')




SELECT * FROM exercise1 WHERE salary>50000;

SELECT * FROM exercise1 WHERE salary<50000;

SELECT * FROM exercise1 WHERE salary<=50000;

SELECT * FROM exercise1 WHERE salary>=50000;

SELECT * FROM exercise1 WHERE salary!=50000;

SELECT first_name, salary FROM exercise1 WHERE salary BETWEEN 50000 AND 100000;

SELECT first_name, department FROM exercise1 WHERE department IN ('HR', 'IT', 'Finance');

SELECT first_name, department FROM exercise1 WHERE department NOT IN ('HR', 'IT', 'Finance');


-- Relational operators help filter data efficiently.
-- Commonly used in WHERE conditions.
-- Use BETWEEN, IN, and NOT IN for better readability.















-- The CASE statement in MySQL is used to perform conditional logic within a query. It works like an IF-ELSE statement in programming, allowing different results based on conditions.










-- Logical operators in MySQL are used to combine multiple conditions in SQL queries, typically within the WHERE clause. These operators return TRUE (1), FALSE (0), or NULL based on the conditions.



-- Operator                                      	Description                  	                  Example
-- AND	                                   Returns TRUE if both conditions are true	             salary > 50000 AND department = 'IT'
-- OR	                                   Returns TRUE if at least one condition is true	     salary > 80000 OR department = 'HR'
-- NOT                                    Reverses the condition (TRUE → FALSE, FALSE → TRUE)    NOT (department = 'IT')
-- XOR	                                   Returns TRUE if only one condition is true	         salary > 80000 XOR department = 'IT'



--  AND (Both Conditions Must Be True)
SELECT first_name, department, salary FROM exercise1 
WHERE department = 'IT' AND salary > 70000;



-- OR (At Least One Condition Must Be True)
SELECT first_name, department, salary FROM exercise1 
WHERE department = 'IT' OR salary > 90000;



-- NOT (Reverse the Condition)
SELECT first_name, department FROM exercise1 
WHERE NOT department = 'IT';



-- XOR (Only One Condition Should Be True)
SELECT first_name, department, salary FROM exercise1 
WHERE salary > 80000 XOR department = 'IT';




SELECT first_name, department, salary FROM exercise1 
WHERE (department = 'IT' OR salary > 80000) AND NOT department = 'HR';







-- Used to check whether a column has a NULL value.
-- NULL means no value (not even an empty string "" or 0).

SELECT first_name, email 
FROM exercise1 
WHERE email IS NULL;
-- This query retrieves employees where the email column is NULL.



SELECT first_name, email 
FROM exercise1 
WHERE email IS NOT NULL;
-- Used to find records where a column is NOT NULL.





-- 2. NOT LIKE in MySQL
-- Used to filter results that do not match a pattern.
SELECT first_name, email 
FROM exercise1 
WHERE email NOT LIKE '%.example.com';

SELECT first_name 
FROM exercise1 
WHERE first_name NOT LIKE 'A%';




-- Combining IS NULL with NOT LIKE
SELECT first_name, email 
FROM exercise1 
WHERE email IS NULL OR email NOT LIKE '%example%';
