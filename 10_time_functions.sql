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
-- Format Code	Description	Example              Output
-- %Y	          Year (4-digit)	                    2025
-- %y	          Year (2-digit)	                     25
-- %M	          Full month name	                  February
-- %m	           Month (2-digit)	                   02
-- %D	           Day with suffix (st, nd, rd, th)	  23rd
-- %d	           Day (2-digit)	                     23
-- %W           	Weekday name	                    Sunday
-- %w           	Weekday index (0 = Sunday)	        0
-- %H           	Hour (24-hour format)            	14
-- %h           	Hour (12-hour format)	             02
-- %i            	Minutes	                            30
-- %s	            Seconds	                            45
-- %p           	AM/PM	                              PM
-- %T             complete time                     11:23:04


SELECT DATE_FORMAT(now(),"%D %a at %T");
-- give date in the format of day , day , time 


SELECT DATE_FORMAT(now(),"%m/%d/%y");


SELECT TIME_FORMAT(NOW(), '%h:%i %p') AS formatted_time;




-- MySQL provides several functions to perform mathematical operations on DATE, DATETIME, and TIMESTAMP values. You can add or subtract days, months, years, or even calculate differences between two dates.



-- DATEDIFF(date1, date2) → Returns the number of days between two dates.
SELECT first_name, date_of_joining, DATEDIFF(CURDATE(), date_of_joining) AS days_worked
FROM exercise1;


-- DATE_ADD(date, INTERVAL value unit) → Adds time to a date.
SELECT first_name, date_of_joining, DATE_ADD(date_of_joining, INTERVAL 30 DAY) AS new_date
FROM exercise1;


-- DATE_SUB(date, INTERVAL value unit) → Subtracts time from a date.
SELECT first_name, date_of_joining, DATE_SUB(date_of_joining, INTERVAL 2 YEAR) AS new_date
FROM exercise1;



use learning_db;
CREATE TABLE time_update_blogs(
  blog VARCHAR(200),
  current_blog_time DATETIME DEFAULT CURRENT_TIMESTAMP,
  update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


INSERT INTO time_update_blogs (blog) VALUES("This is my first vlog");

SELECT * FROM time_update_blogs;

UPDATE time_update_blogs SET blog="This is my first vlog from india";






-- exercise

use learning_db;

SELECT CURRENT_TIME;

SELECT CURRENT_DATE;

SELECT DAYNAME(Now());

SELECT DATE_FORMAT(NOW(),"%d:%m:%y");

SELECT DATE_FORMAT(NOW(),"%M %D at %h:%i:%s");
SELECT DATE_FORMAT(NOW(),"%M %D at %T");
