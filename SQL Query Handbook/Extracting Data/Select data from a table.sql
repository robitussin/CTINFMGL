-- displays all rows in a table
SELECT * FROM employees

-- display specific columns from table
SELECT first_name, last_name FROM employees 

-- displays column with a condition
SELECT first_name, last_name FROM employees WHERE employee_id = 1 

SELECT first_name, last_name FROM employees WHERE first_name = "Spongebob" 

SELECT first_name, last_name FROM employees WHERE hourly_pay >= 15 

SELECT first_name, last_name FROM employees WHERE hire_date <= "2024-01-20" 

SELECT first_name, last_name FROM employees WHERE employee_id != 1 

-- displays all columns with where the values in the column is empty
SELECT * FROM employees WHERE hire_date IS NULL 

-- displays all columns with where the values in the column is not empty
SELECT * FROM employees WHERE hire_date IS NOT NULL
