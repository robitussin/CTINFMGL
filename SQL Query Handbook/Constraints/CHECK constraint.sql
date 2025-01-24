-- create a table with a constraint
CREATE TABLE employees (  employee_id INT,     
	first_name varchar(50),   
	last_name varchar(50),    
	hourly_pay decimal(5, 2),    
	hire_date DATE 
    CONSTRAINT chk_hourly_pay CHECK(hourly_pay >= 10.00)
);

-- alter an existing table and add a constraint
ALTER TABLE employees ADD CONSTRAINT chk_hourly_pay CHECK(hourly_pay >= 10.00) 

-- this insert will not be accepted
INSERT INTO employees VALUES (7, "Gary", "the snail", 5.00, "2024-01-25")

-- this insert will be accepted
INSERT INTO employees VALUES (7, "Gary", "the snail", 10.00, "2024-01-25")

-- remove constraint
ALTER TABLE employees DROP CHECK chk_hourly_pay
