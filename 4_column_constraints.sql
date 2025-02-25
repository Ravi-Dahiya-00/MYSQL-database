USE learning_db;

-- column constraints : Constraints are rules applied to table columns to enforce data integrity.
CREATE TABLE constraints_data
(
    id INT NOT NULL,
    name1 VARCHAR(50) NOT NULL,
    class VARCHAR(10) NOT NULL,
    section VARCHAR(10) NOT NULL
);

-- The NOT NULL constraint in MySQL ensures that a column must always have a value and cannot store NULL. It is used to enforce data integrity by preventing empty values in a specific column.

-- If NOT NULL is applied to a column, you must provide a value for it when inserting data.
-- If you try to insert NULL, MySQL will throw an error.
-- ✅ Modify existing columns carefully because NOT NULL requires a value for all rows.

INSERT INTO constraints_data(id,name1,class,section) VALUES(1,"Ravi","12","A");


-- The DEFAULT constraint in MySQL is used to assign a default value to a column when no value is provided during an INSERT operation.

CREATE TABLE grocery_orders
(
    name VARCHAR(50),
    id VARCHAR(20),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    referral_code VARCHAR(50) NOT NULL DEFAULT "USER"
);

-- If you don't provide order_date, MySQL automatically sets the current date and time.
INSERT INTO grocery_orders(name,id) VALUES("ravi","111");


SELECT * FROM grocery_orders;



-- A Primary Key (PK) is a unique identifier for each record in a table. It ensures that:
-- ✅ Each row is uniquely identified (no duplicates).
-- ✅ The column cannot contain NULL values (automatically NOT NULL).
-- ✅ Only one primary key per table, but it can have multiple columns (composite key).

-- Why Use a Primary Key?
-- Ensures data integrity and prevents duplicate records.
-- Allows fast searching and indexing.
-- Helps in establishing relationships between tables (used in foreign keys).



CREATE TABLE punjab_national_bank
(
    acc_no INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    balance VARCHAR(50),
    acc_type VARCHAR(50) NOT NULL DEFAULT "saving"
    
);

INSERT INTO punjab_national_bank(acc_no,name) VALUES(1001,'paul');
INSERT INTO punjab_national_bank(acc_no,name) VALUES(1002,'paul'),(1003,'ravi');

SELECT * FROM punjab_national_bank;




-- The AUTO_INCREMENT attribute in MySQL automatically generates unique sequential values for a column, usually used with Primary Keys.

-- Why Use AUTO_INCREMENT?
-- ✅ Eliminates manual entry of unique IDs
-- ✅ Ensures each record has a unique identifier
-- ✅ Simplifies data insertion



CREATE TABLE bank_employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);


INSERT INTO bank_employees(emp_id,name) VALUES(1001,"ravi");
-- next auto_increment will start from 1001;







-- An alias in MySQL is a temporary name given to a table or a column to make queries more readable. It is created using the AS keyword.

SELECT acc_no AS 'ACCOUNT_NO.' FROM punjab_national_bank;

-- 📝 Note: AS is optional in column aliases, so you can also write:
SELECT acc_no 'ACCOUNT_NO.',name 'Customer_name' FROM punjab_national_bank;












-- The UNIQUE constraint ensures that all values in a column (or combination of columns) are distinct. It prevents duplicate entries for that column but allows NULL values unless explicitly stated otherwise.



-- Adding UNIQUE to an Existing Table
ALTER TABLE exercise1 ADD UNIQUE (email);


-- For Multiple Columns:
ALTER TABLE exercise1 ADD CONSTRAINT unique_name UNIQUE (first_name, last_name);


-- Removing a UNIQUE Constraint
ALTER TABLE exercise1 DROP INDEX email;



INSERT INTO exercise1 (email) VALUES ('john@example.com');
INSERT INTO exercise1 (email) VALUES ('john@example.com');
 -- ❌ Error: Duplicate entry


 INSERT INTO exercise1 (email) VALUES ('john@example.com')
ON DUPLICATE KEY UPDATE email = 'john_new@example.com';




-- For a Single Column:
CREATE TABLE unique_employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) UNIQUE
);


-- For Multiple Columns (Composite Unique Constraint):
CREATE TABLE unique_employees2 (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    UNIQUE (first_name, last_name)
);







-- The CHECK constraint ensures that a column's values meet specific conditions before insertion or update.

CREATE TABLE check_employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    age INT CHECK (age >= 18),  -- Ensures age is at least 18
    salary DECIMAL(10,2) CHECK (salary > 0)  -- Salary must be positive
);
USE learning_db;

INSERT INTO check_employees (age, salary) VALUES (25, 50000); 
 -- ✅ Allowed
INSERT INTO check_employees (age, salary) VALUES (16, 20000);  
-- ❌ Error: Age must be ≥18


ALTER TABLE check_employees ADD CONSTRAINT chk_salary CHECK (salary > 0);


DESCRIBE check_employees;




-- Removing a CHECK Constraint
ALTER TABLE employees ADD CONSTRAINT chk_salary CHECK (salary > 0);










-- A named constraint is a constraint with a specific name, making it easier to reference, modify, or delete later.

-- We can name UNIQUE, CHECK, PRIMARY KEY, FOREIGN KEY, and DEFAULT constraints.

CREATE TABLE constraints_employees (
    emp_id INT PRIMARY KEY,  
    email VARCHAR(100) UNIQUE,  
    salary DECIMAL(10,2),
    
    CONSTRAINT check_salary_less CHECK (salary >= 5000),  -- Named CHECK constraint
    CONSTRAINT unique_email UNIQUE (email)  -- Named UNIQUE constraint
);

DESCRIBE constraints_employees;



-- Adding Named Constraints to an Existing Table
ALTER TABLE constraints_employees ADD CONSTRAINT check_salary CHECK (salary >= 5000);
ALTER TABLE constraints_employees ADD CONSTRAINT unique_email UNIQUE (email);














-- The ALTER TABLE command is used to modify the structure of an existing table without deleting its data. You can:
-- ✅ Add, modify, or drop columns
-- ✅ Add or drop constraints
-- ✅ Rename a table
-- ✅ Change the data type of a column



-- Adding a Column
ALTER TABLE constraints_data ADD COLUMN city VARCHAR(50);

-- Adding Multiple Columns
ALTER TABLE constraints_data ADD (new_city VARCHAR(50), country VARCHAR(50));



-- Dropping a Column
ALTER TABLE constraints_data DROP COLUMN city;

4 : 44