--Database Indexing and Optimization
-- Question 1: Drop index named IdxPhone from customers table
DROP INDEX IdxPhone ON customers;

-- Question 2: Create user bob with password 'S$cu3r3!' restricted to localhost
CREATE USER 'bob'@'localhost' IDENTIFIED BY 'S$cu3r3!';

-- Question 3: Grant INSERT privilege to bob on salesDB database
GRANT INSERT ON salesDB.* TO 'bob'@'localhost';

-- Question 4: Change password for user bob to 'P$55!23'
ALTER USER 'bob'@'localhost' IDENTIFIED BY 'P$55!23';

--To apply priviledges, the following may have to run
FLUSH PRIVILEGES;
--Verification queries:
-- Verify user exists
SELECT user, host FROM mysql.user WHERE user = 'bob';

-- Verify privileges
SHOW GRANTS FOR 'bob'@'localhost';


