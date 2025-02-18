-- To see existing databases
SHOW DATABASES;



-- To create a new database 
CREATE DATABASE learning_db;


CREATE DATABASE deleted_db;



-- the DROP DATABASE command is used to permanently delete an entire database along with all its tables, views, and stored procedures. This action cannot be undone, so use it with caution.
DROP DATABASE deleted_db;


-- To use with a specific database
USE learning_db;
-- is used to select a database named learning_db as the default database for the current session. Once executed, all subsequent SQL queries will be performed on the learning_db database unless another database is specified.




-- is used to check which database is currently in use. It returns the name of the currently selected database. If no database is selected, it returns NULL.
SELECT database();









27 minutes