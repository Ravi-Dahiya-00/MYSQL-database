
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


SELECT id, CONCAT("Ram-Ram ",first_name) AS welcome_person FROM string_functions;


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

REPLACE(string, old_substring, new_substring);

SELECT REPLACE("hello buddy","hello","hii");


SELECT REPLACE(first_name,"harsh","mohan") AS new_emp,id FROM string_functions;










-- The REVERSE() function in MySQL is used to reverse a given string. It returns the string with characters in reverse order.

SELECT REVERSE('string');
SELECT REVERSE('MySQL') AS result;


SELECT id,REVERSE(first_name) AS reverse_name FROM string_functions;









-- The UPPER() function in MySQL is used to convert a string to uppercase. It transforms all lowercase letters into uppercase, but does not affect numbers or special characters.

SELECT UPPER("hello");
SELECT UCASE("hello");

SELECT id,UPPER(first_name) AS upper_name FROM string_functions;

-- UPPER() converts all letters in a string to uppercase.
-- Numbers and special characters remain unchanged.
-- Can be used in SELECT for temporary conversion or UPDATE for permanent changes.









-- The CHAR_LENGTH() function in MySQL is used to count the number of characters in a string, including spaces.

SELECT CHAR_LENGTH("hello");
SELECT CHAR_LENGTH('MySQL') AS result;


SELECT first_name,CHAR_LENGTH(first_name) AS character_length FROM string_functions;


SELECT * FROM string_functions WHERE CHAR_LENGTH(first_name)>5;






-- left , right , insert , trim , repeat


-- The INSERT() function in MySQL is used to replace a part of a string with another substring at a specific position.
SELECT INSERT("hii whatsapp",5,0,"raju ");


-- INSERT(original_string, start_position, length, new_substring)

-- original_string → The original string where modification happens.
-- start_position → The position (1-based index) where the replacement starts.
-- length → The number of characters to replace.
-- new_substring → The substring to insert.

SELECT INSERT('Hello World', 7, 5, 'MySQL') AS result;

-- "World" starts at position 7.
-- We replace 5 characters ("World") with "MySQL".
-- The result is "Hello MySQL".


SELECT first_name, INSERT(first_name, 2, 2, 'ZZ') AS modified_name FROM string_functions;
-- ✔ Replaces 2 characters starting from position 2 with "ZZ".







-- The LEFT() function in MySQL is used to extract a specified number of characters from the beginning (left side) of a string.
SELECT LEFT('MySQL is powerful', 5) AS result;

SELECT id,LEFT(first_name,4) AS extracted_part FROM string_functions;


-- If you want to extract half of the string, you can use CHAR_LENGTH():
SELECT LEFT('Database', CHAR_LENGTH('Database')/2) AS half_string;







-- The REPEAT() function in MySQL is used to repeat a string multiple times.
SELECT REPEAT('MySQL ', 3) AS result;



SELECT id,REPEAT(first_name,3) AS repeated_name FROM string_functions;


SELECT CONCAT('Name: ', REPEAT('-', 10), first_name) AS formatted FROM string_functions;









-- The TRIM() function in MySQL is used to remove unwanted spaces (or specific characters) from the beginning, end, or both sides of a string.

SELECT TRIM('   MySQL   ') AS result;

