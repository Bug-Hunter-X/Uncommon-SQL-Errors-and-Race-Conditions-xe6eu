-- Data type mismatch fix:
SELECT * FROM employees WHERE department_id = 10; -- Removed single quotes, assuming department_id is a numeric type.

-- Index optimization for performance:
CREATE INDEX idx_price_discount ON products (price, discount_rate); -- Add index to improve query performance.
SELECT * FROM products WHERE price > 100 AND discount_rate > 0.1; 

-- Race condition solution: Use transactions and appropriate locking mechanisms to prevent data corruption.
BEGIN TRANSACTION;
UPDATE users SET last_login = CURRENT_TIMESTAMP WHERE user_id = 100;
COMMIT TRANSACTION;