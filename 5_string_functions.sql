
CREATE TABLE string_functions
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

INSERT INTO string_functions(id,first_name,last_name) VALUES(11,'Ravi','Yadav');
INSERT INTO string_functions(first_name,last_name) VALUES('harsh','Yadav'),('mohit','jain'),('rishab','sharma');


-- The CONCAT() function in MySQL joins two or more strings into a single string.

SELECT id, CONCAT(first_name," ",last_name) AS full_name FROM string_functions;


SELECT id, CONCAT("Ram-Ram ",first_name) AS full_name FROM string_functions;


-- Using CONCAT_WS() (With Separator)
-- ✅ Automatically adds a separator between strings.
-- ✅ Ignores NULL values.

SELECT CONCAT_WS('-', '2025', '02', '18') AS formatted_date;
SELECT id,CONCAT_WS(' ', first_name, last_name) AS full_name FROM 
string_functions;


-- ✅ CONCAT() joins multiple strings.
-- ✅ It returns NULL if any argument is NULL.
-- ✅ Use IFNULL() to handle NULL values.
-- ✅ CONCAT_WS() adds a separator and ignores NULL.








-- The SUBSTRING() function in MySQL is used to extract a portion of a string based on a specified position and length.

SELECT SUBSTRING(first_name,1,4) AS RESULT FROM string_functions;

-- string → The input string.
-- start_position → The position (1-based index) where extraction begins.
-- length → (Optional) Number of characters to extract.


SELECT SUBSTRING_INDEX('apple,banana,orange', ',', 2) AS result;
-- ✔ Extracts the first two parts before the second occurrence of ,.





-- The REPLACE() function in MySQL is used to replace occurrences of a specific substring within a string with another substring.
