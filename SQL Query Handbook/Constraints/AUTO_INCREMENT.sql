-- auto increment automatically fills in values even without specifying what value should be in a column
CREATE TABLE transactions (  transaction_id INT PRIMARY KEY AUTO_INCREMENT,  amount DECIMAL(5,2) )

INSERT INTO transactions (amount) VALUES(4.99)

INSERT INTO transactions (amount) VALUES(3.99)

INSERT INTO transactions (amount) VALUES(5.99)

ALTER TABLE transactions auto_increment = 1000

DELETE FROM transactions  

INSERT INTO transactions (amount) values (4.99)

INSERT INTO transactions (amount) values (5.99)

INSERT INTO transactions (amount) values (6.99)


