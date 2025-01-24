-- create a table with primary key
CREATE TABLE transactions (
	transaction_id INT PRIMARY KEY,
    amount DECIMAL (5,2)
);

-- alter a table with primary key
ALTER TABLE transactions ADD CONSTRAINT  PRIMARY KEY(transaction_id)

-- this will result in an error. only one primary key per table is allowed
ALTER TABLE transactions ADD CONSTRAINT  PRIMARY KEY(amount)

INSERT INTO transactions VALUES (1000, 4.99) 

-- this will result in an error. primary ids must be uniqe
INSERT INTO transactions VALUES (1000, 4.99)

INSERT INTO transactions VALUES (1001, 4.99)


