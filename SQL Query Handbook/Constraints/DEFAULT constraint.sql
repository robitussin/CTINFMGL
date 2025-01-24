
-- if for example we need to insert items one by one into the products table and their price has a default price of zero
INSERT INTO products VALUES (105, "straw", 0.00),   (106, "napkin", 0.00),         (107, "fork", 0.00),         (108, "spoon", 0.00)

-- creating a table with a default constraint
CREATE TABLE products (
	product_id INT,
    product_name VARCHAR(25),
    price DECIMAL(4,2) DEFAULT 0
);

-- altering a table with a default constraint
ALTER TABLE products ALTER price SET DEFAULT 0

-- all of these inserted items will have a default price of zero
INSERT INTO products (product_id, product_name) VALUES (105, "straw"),   (106, "napkin"),   (107, "fork"),   (108, "spoon")

-- creating a transactions table with a default constraint
CREATE table transactions(  transaction_id INT,     amount DECIMAL(5,2),     transaction_date DATETIME DEFAULT NOW() )

INSERT INTO transactions (transaction_id, amount) VALUES (1, 4.99)

INSERT INTO transactions (transaction_id, amount) VALUES (2, 5.99)

INSERT INTO transactions (transaction_id, amount) VALUES (3, 6.99)

