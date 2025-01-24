-- create a table with a column that has a unique constraint
CREATE TABLE products (  product_id INT,     product_name VARCHAR(25) UNIQUE,     price DECIMAL(4,2)      )

-- alters a table and makes a column unique
ALTER TABLE products ADD CONSTRAINT UNIQUE(product_name)

SELECT * FROM products LIMIT 0, 1000

INSERT INTO products VALUES (100, "burger", 3.99),    (101, "fries", 1.89),      (102, "soda", 1.00),    (103, "ice cream", 1.49)

-- Will result into duplicate entry error
INSERT INTO products VALUES (100, "burger", 3.99),    (101, "fries", 1.89),      (102, "soda", 1.00),    (103, "ice cream", 1.49)
