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