USE learning_db;
CREATE TABLE exercise1 (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    designation VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    date_of_joining DATE,
    email VARCHAR(100) UNIQUE
);

INSERT INTO exercise1(first_name, last_name, designation, department, salary, date_of_joining, email)
VALUES 
("Raju", "Rastogi", "Manager", "Loan", 75000.50, "2015-06-12", "raju.rastogi@example.com"),
("Sham", "Mohan", "Cashier", "Cash", 42000.00, "2018-09-23", "sham.mohan@example.com"),
("Baburao", "Apte", "Associate", "Loan", 53000.75, "2016-01-15", "baburao.apte@example.com"),
("Paul", "Philip", "Accountant", "Account", 60000.00, "2017-03-05", "paul.philip@example.com"),
("Alex", "Watt", "Associate", "Deposit", 55000.25, "2019-07-19", "alex.watt@example.com"),
("Sita", "Devi", "Manager", "HR", 80000.00, "2013-12-01", "sita.devi@example.com"),
("John", "Doe", "Software Engineer", "IT", 90000.50, "2021-06-30", "john.doe@example.com"),
("Alice", "Brown", "Analyst", "Finance", 67000.30, "2020-02-14", "alice.brown@example.com"),
("Robert", "Downey", "Senior Associate", "Investment", 72000.10, "2014-09-25", "robert.downey@example.com"),
("Natasha", "Romanoff", "Consultant", "Legal", 85000.40, "2016-04-08", "natasha.romanoff@example.com"),
("Bruce", "Wayne", "CEO", "Executive", 200000.00, "2010-10-10", "bruce.wayne@example.com"),
("Clark", "Kent", "Journalist", "Media", 65000.00, "2018-06-05", "clark.kent@example.com"),
("Steve", "Rogers", "Captain", "Security", 75000.20, "2015-08-20", "steve.rogers@example.com"),
("Peter", "Parker", "Photographer", "Media", 48000.75, "2019-11-11", "peter.parker@example.com"),
("Tony", "Stark", "Engineer", "R&D", 180000.00, "2008-05-02", "tony.stark@example.com"),
("Diana", "Prince", "Strategist", "Operations", 95000.00, "2012-07-07", "diana.prince@example.com"),
("Barry", "Allen", "Technician", "IT", 72000.25, "2022-01-01", "barry.allen@example.com"),
("Walter", "White", "Chemist", "Research", 105000.50, "2011-05-15", "walter.white@example.com"),
("Gustavo", "Fring", "Businessman", "Management", 125000.00, "2009-03-22", "gustavo.fring@example.com"),
("Hank", "Schrader", "DEA Agent", "Law Enforcement", 85000.00, "2014-06-12", "hank.schrader@example.com"),
("Jessie", "Pinkman", "Assistant", "Production", 50000.00, "2017-08-14", "jessie.pinkman@example.com"),
("Saul", "Goodman", "Lawyer", "Legal", 98000.50, "2013-02-28", "saul.goodman@example.com"),
("Sherlock", "Holmes", "Detective", "Investigation", 115000.00, "2016-11-10", "sherlock.holmes@example.com"),
("Dr.", "Strange", "Surgeon", "Medical", 160000.00, "2005-07-20", "dr.strange@example.com");


DESCRIBE exercise1;

SELECT * FROM exercise1;



SELECT CONCAT_WS(':',emp_id,first_name,designation,department) AS small_details FROM exercise1;

SELECT CONCAT_WS(':',emp_id,CONCAT(first_name," ",last_name),designation,department) AS small_details FROM exercise1;

SELECT CONCAT_WS(':',emp_id,first_name,UPPER(designation),department) AS new_details FROM exercise1;

SELECT CONCAT(LEFT(department,1),emp_id),first_name AS RESULT FROM exercise1; 




