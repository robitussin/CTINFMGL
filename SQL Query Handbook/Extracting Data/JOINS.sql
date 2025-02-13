INSERT INTO customers (first_name, last_name)
VALUES ("Poppy", "Puff");

SELECT * FROM transactions;
SELECT * FROM customers;

-- Inner join
-- display both left and right tables
SELECT transaction_id, amount, first_name, last_name
FROM transactions INNER JOIN customers
ON transactions.customer_id = customers.customer_id;

-- LEFT join
-- display everything from the table to the left
SELECT *
FROM transactions LEFT JOIN customers
ON transactions.customer_id = customers.customer_id;

-- RIGHT join
-- display everything from the table to the right
SELECT *
FROM transactions RIGHT JOIN customers
ON transactions.customer_id = customers.customer_id;