SELECT * FROM employees WHERE department_id = '10'; -- This query will likely return an error if the department_id column is of a numeric data type.  The single quotes around '10' treat it as a string, causing a type mismatch.

SELECT * FROM products WHERE price > 100 AND discount_rate > 0.1; -- This SQL statement, while seemingly straightforward, can lead to issues if indexes aren't properly defined on the price and discount_rate columns.  Inefficient index usage will slow down query performance. 

UPDATE users SET last_login = CURRENT_TIMESTAMP WHERE user_id = 100;
UPDATE users SET last_login = CURRENT_TIMESTAMP WHERE user_id = 100; -- This demonstrates a race condition. If two transactions run this concurrently, the second one could overwrite the changes of the first one.