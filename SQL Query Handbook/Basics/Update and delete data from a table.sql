-- updates a single row using a condition
UPDATE employees SET hourly_pay = 10.25 WHERE employee_id = 6

-- updates multiple rows using a condition
UPDATE employees SET hourly_pay = 10.25  hire_date = "2024-01-23" WHERE employee_id = 6

UPDATE employees SET hourly_pay = 10.25,  hire_date = "2024-01-23" WHERE employee_id = 6

UPDATE employees SET first_name = "Sheldon",  last_name = "Plankton" WHERE employee_id = 6

-- sets a value to NULL
UPDATE employees SET hire_date = NULL WHERE employee_id = 6

-- removes row
DELETE FROM employees WHERE employee_id = 1


