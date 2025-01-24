CREATE table test (   my_date DATE,         my_time TIME,         my_datetime DATETIME )

INSERT INTO test VALUES(current_date(), current_time(), now())

SELECT * FROM test LIMIT 0, 1000