-- GROUP BY
-- aggregate all rows by a specific column often used with aggregate functions
-- ex. SUM(), MAX(), MIN(), AVG(), COUNT()   

-- CREATE TABLE customers (   
-- 	customer_id INT PRIMARY KEY,    
-- 	first_name VARCHAR(50),   
-- 	last_name VARCHAR(50),    
-- 	referral_id int  );

-- CREATE TABLE transactions (
--     transaction_id INT PRIMARY KEY AUTO_INCREMENT,
--     amount DECIMAL(5, 2),
--     customer_id INT,
--     order_date DATE,
--     FOREIGN KEY (customer_id) 
--     REFERENCES customers(customer_id)
-- );

-- INSERT INTO transactions
-- VALUES  (1000, 4.99, 3, "2023-01-01"),
--   (1001, 2.89, 2, "2023-01-01"),
--   (1002, 3.38, 3, "2023-01-02"),
--   (1003, 4.99, 1, "2023-01-02"),
--   (1004, 1.00, NULL, "2023-01-03"),
--   (1005, 2.49, 4, "2023-01-03"),
--   (1006, 5.48, NULL, "2023-01-03");

SELECT SUM(amount), order_date
FROM transactions 
GROUP BY order_date;

SELECT MAX(amount), order_date
FROM transactions 
GROUP BY order_date;

SELECT MIN(amount), order_date
FROM transactions 
GROUP BY order_date;

SELECT AVG(amount), order_date
FROM transactions 
GROUP BY order_date;

SELECT COUNT(amount), order_date
FROM transactions 
GROUP BY order_date;

SELECT SUM(amount), customer_id
FROM transactions
GROUP BY customer_id;  

SELECT MAX(amount), customer_id
FROM transactions
GROUP BY customer_id; 

SELECT MIN(amount), customer_id
FROM transactions
GROUP BY customer_id; 

SELECT AVG(amount), customer_id
FROM transactions
GROUP BY customer_id; 

SELECT COUNT(amount), customer_id
FROM transactions
GROUP BY customer_id; 

SELECT COUNT(amount), customer_id
FROM transactions
GROUP BY customer_id
HAVING COUNT(amount) > 1;

SELECT COUNT(amount), customer_id
FROM transactions
GROUP BY customer_id
HAVING COUNT(amount) > 1 
AND customer_id IS NOT NULL;
