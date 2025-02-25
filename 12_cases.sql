USE learning_db;

-- syntax 

-- CASE 
--     WHEN condition1 THEN result1
--     WHEN condition2 THEN result2
--     ...
--     ELSE resultN
-- END


-- It checks conditions in order.
-- Once a condition is true, the corresponding result is returned.
-- If no conditions match, the ELSE part is returned.
-- If ELSE is missing and no condition is met, it returns NULL.



SELECT first_name,emp_id,salary,
    CASE 
        WHEN salary>80000 THEN 'Higher Salary'
        WHEN salary>30000 AND salary<80000 THEN 'Good Salary'
    ELSE 'Low Salary'
    END AS 'Salary Category'
FROM exercise1;




--  Using CASE in ORDER BY
-- Scenario: Sort Employees by Salary Category

SELECT first_name, salary 
FROM exercise1
ORDER BY 
    CASE 
        WHEN salary >= 100000 THEN 1
        WHEN salary >= 50000 AND salary < 100000 THEN 2
        ELSE 3
    END;

-- This assigns 1 to High Salary, 2 to Medium Salary, and 3 to Low Salary.


-- Using CASE in UPDATE Statements
-- If we want to increase salary based on conditions:

UPDATE exercise1 
SET salary = 
    CASE 
        WHEN salary < 50000 THEN salary * 1.10  -- Increase by 10%
        WHEN salary BETWEEN 50000 AND 100000 THEN salary * 1.05  -- Increase by 5%
        ELSE salary * 1.02  -- Increase by 2%
    END;


-- Using CASE in HAVING
-- Find departments where the average salary category is High Salary.

SELECT department, AVG(salary) AS avg_salary
FROM exercise1
GROUP BY department
HAVING 
    CASE 
        WHEN AVG(salary) >= 100000 THEN 1
        ELSE 0
    END = 1;














-- exercise 
USE learning_db;

SELECT * FROM exercise1 WHERE salary BETWEEN 30000 AND 70000;

SELECT * FROM exercise1 WHERE first_name LIKE "S%" OR first_name LIKE "C%"; 

SELECT * FROM exercise1 WHERE salary BETWEEN 40000 AND 80000 AND department="Cash";

SELECT * FROM exercise1 WHERE designation IN ('Manager','Cashier','Associate');

SELECT 
first_name,salary,
CASE 
    WHEN salary!=0 THEN salary/85
    END AS "salary_in_dollars"
FROM exercise1;
