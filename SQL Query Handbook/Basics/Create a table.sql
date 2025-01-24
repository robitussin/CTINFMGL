
-- Creates a new table
CREATE TABLE employees (  employee_id INT,     first_name varchar(50),     last_name varchar(50),     hourly_pay decimal(5, 2),     hire_date DATE )

SELECT * FROM employees LIMIT 0, 1000

-- change the name of a table
RENAME TABLE employees TO workers

RENAME TABLE workers TO employees

-- modify the content of a table
-- "ADD" creates a new column
ALTER TABLE employees ADD phone_number VARCHAR(15)

SELECT * FROM employees LIMIT 0, 1000

-- Rename a column name
ALTER TABLE employees RENAME COLUMN phone_number TO email

SELECT * FROM employees LIMIT 0, 1000

-- change the datatype of a column
ALTER TABLE employees  MODIFY COLUMN email VARCHAR(100)

-- repositions column after a specific column
ALTER TABLE employees  MODIFY COLUMN email VARCHAR(100)  AFTER last_name

-- repositions column as first column
ALTER TABLE employees  MODIFY COLUMN email VARCHAR(100)  FIRST

-- removes column
ALTER TABLE employees  DROP COLUMN email
