-- create a table with a column that will not accept null values
CREATE TABLE products(
	product_id INT,
    product_name VARCHAR(25),
    price DECIMAL(4,2) NOT NULL
);

-- alter a table with a column that will not accept null values
ALTER TABLE products
MODIFY price DECIMAL(4,2) NOT NULL;

-- this will result in an error
INSERT INTO products
VALUES (104, "cookie", NULL);

-- this will be accepted
INSERT INTO products
VALUES (104, "cookie", 0);


