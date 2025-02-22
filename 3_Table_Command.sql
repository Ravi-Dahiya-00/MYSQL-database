-- DROP DATABASE learning_db;

CREATE DATABASE learning_db;
USE learning_db;



-- A table in MySQL is a structured collection of related data, organized into rows and columns. Each column has a specific data type (like INT, VARCHAR, DATE, etc.), and each row represents a single record.
CREATE TABLE students (
    id INT,
    name VARCHAR(100),
    class INT,
    contacts VARCHAR(20)
);


-- The DESC command (short for DESCRIBE) is used to display the structure of a table in MySQL. It provides details about each column in the table, including name, data type, nullability, key constraints, default values, and extra attributes.

DESC students;

-- Explanation of Columns in Output:
-- Field: The column name.
-- Type: The data type of the column (INT, VARCHAR, DATE, etc.).
-- Null: Specifies whether the column allows NULL values (YES or NO).
-- Key:
-- PRI: Primary key.
-- UNI: Unique key.
-- MUL: Indexed column (non-unique).
-- Default: The default value for the column (if specified).
-- Extra: Any additional information such as AUTO_INCREMENT.






-- The INSERT INTO statement in MySQL is used to add new records (rows) into a table.
-- table_name: The name of the table where the record will be inserted.
-- (column1, column2, ...): The columns in which values will be inserted.
-- VALUES (value1, value2, ...): The actual values corresponding to the specified columns.
INSERT INTO students (id,name,class) VALUES (101,"Rahul",11);



-- Here, all columns of the table must be provided in the same order as they were defined during table creation.

INSERT INTO students VALUES (102,"Vaibhav",9,99999999);



-- inserting data of 2 students by using single command
INSERT INTO students VALUES (103,"Raghav",12,999999999),(104,"Riya",8,99999999);




-- The SELECT statement in MySQL is used to retrieve data from a table.
SELECT * FROM students;

-- SELECT: This keyword tells MySQL to retrieve data.
-- *: The asterisk (*) means select all columns from the table.
-- FROM students: Specifies the table name (students) from which to retrieve data.


SELECT id, name FROM students;
-- This will return only the id and name columns.



-- The WHERE clause in MySQL is used to filter records in SELECT, UPDATE, DELETE, and other SQL statements, ensuring that only those records which meet specified conditions are affected or retrieved.

-- condition: A logical expression that returns TRUE for the rows to be included in the result set.

SELECT * FROM students WHERE id=103;

-- The WHERE clause is essential for querying specific subsets of data, ensuring that operations are performed only on records that meet desired criteria.








-- The UPDATE statement in MySQL is used to modify existing records in a table.
UPDATE students SET contacts=99999999 WHERE id=103;

-- If you forget the WHERE clause, MySQL will update all rows in the table:
-- This would change the contacts of every student to 99999999—which is usually a mistake.









-- deleting data from a table
DELETE FROM students WHERE id=104;






CREATE TABLE deleted_table;


-- The DROP TABLE statement is used to permanently delete a table from a MySQL database.


DROP TABLE deleted_table;











-- ALTER Command in MySQL
-- The ALTER command in MySQL is used to modify the structure of an existing table. It allows you to:
-- ✅ Add, delete, or modify columns.
-- ✅ Change data types of columns.
-- ✅ Rename tables or columns.
-- ✅ Add or remove constraints (like PRIMARY KEY, FOREIGN KEY).


-- ALTER TABLE table_name action;



ALTER TABLE students ADD age INT;
-- ✅ Adds a new column age of type INT to the students table.


-- ✅ Adds department and experience columns to the table.
ALTER TABLE students ADD COLUMN department VARCHAR(50),ADD COLUMN experience INT;




ALTER TABLE students MODIFY experience DECIMAL(10,2);
-- ✅ Changes the experience column type to DECIMAL(10,2).



ALTER TABLE students CHANGE COLUMN age employee_age INT;
-- ✅ Renames age to employee_age.



ALTER TABLE students DROP COLUMN department;
-- ✅ Removes the department column.



ALTER TABLE students RENAME TO Staff;
-- ✅ Renames students table to Staff.



ALTER TABLE students ADD PRIMARY KEY (name);
-- ✅ Sets name as the primary key.



ALTER TABLE students DROP PRIMARY KEY;
-- ✅ Removes the primary key constraint.

-- 🔹 Key Points About ALTER Command
-- ✅ Used to modify existing tables.
-- ✅ Can add, delete, rename, and modify columns.
-- ✅ Can add or drop constraints (PRIMARY KEY, FOREIGN KEY).
-- ✅ Can rename tables.









