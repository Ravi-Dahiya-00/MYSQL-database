USE learning_db;

-- Returns the current date in YYYY-MM-DD format.
 
  --To explicitly format the date, use:
SELECT DATE_FORMAT(CURDATE(), '%Y-%m-%d');

--Try forcing the result to be a string:
SELECT CAST(CURDATE() AS CHAR);

SELECT CURRENT_TIME();



-- Returns the current date and time in YYYY-MM-DD HH:MM:SS format.
SELECT NOW();


-- tells todays day 
SELECT DAYNAME(NOW());

--tells month date 
SELECT DAYOFMONTH(NOW());


--tells day of the current week
SELECT DAYOFWEEK(NOW());


--tells current month name 
SELECT MONTHNAME(NOW());


--tells current year
SELECT YEAR(NOW());


-- Returns the exact system date and time at the moment the query is executed.
-- Similar to NOW(), but NOW() remains constant within a query execution, whereas SYSDATE() updates dynamically.
SELECT SYSDATE();



USE learning_db;
CREATE TABLE date_time (
    joining_time TIME NOT NULL,
    joining_date DATE NOT NULL,
    joining DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO date_time (joining_time, joining_date, joining) 
VALUES (CURRENT_TIME(), CURRENT_DATE(), NOW());


SELECT * FROM date_time;



SELECT joining_time,HOUR(joining_time) FROM date_time;







-- MySQL provides the DATE_FORMAT() function to format date values according to a specific pattern.

