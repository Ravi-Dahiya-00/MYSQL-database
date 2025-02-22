USE learning_db;

CREATE TABLE employees_exercise (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    designation VARCHAR(50),
    salary DECIMAL(10,2),
    dept VARCHAR(50)
);


INSERT INTO employees_exercise (first_name, last_name, designation, salary, dept) VALUES
('Raju', 'Rastogi', 'Manager', 85000.50, 'Loan'),
('Shyam', 'Mohan', 'Cashier', 40000.00, 'Cash'),
('Baburao', 'Apte', 'Associate', 55000.75, 'Loan'),
('Paul', 'Philip', 'Accountant', 60000.25, 'Account'),
('Alex', 'Watt', 'Associate', 50000.00, 'Deposit'),
('Sanjay', 'Singh', 'HR Executive', 45000.00, 'HR'),
('Neha', 'Sharma', 'Software Engineer', 95000.80, 'IT'),
('Amit', 'Verma', 'Data Analyst', 70000.40, 'Analytics'),
('Priya', 'Kapoor', 'Team Lead', 120000.90, 'Development'),
('Vikas', 'Jain', 'Marketing Head', 110000.00, 'Marketing');


SELECT * FROM employees_exercise;



-- different type of departments in database 

SELECT DISTINCT dept FROM employees_exercise;


-- record with high and low level salary
SELECT * FROM employees_exercise ORDER BY salary DESC LIMIT 1;
SELECT * FROM employees_exercise ORDER BY salary ASC LIMIT 1;



SELECT * FROM employees_exercise LIMIT 3;

SELECT * FROM employees_exercise WHERE first_name LIKE 'a%';



SELECT * FROM employees_exercise WHERE last_name LIKE '____';
