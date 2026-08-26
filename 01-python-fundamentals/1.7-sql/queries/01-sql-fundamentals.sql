SELECT COUNT(*) FROM customers;   -- harus 15
SELECT COUNT(*) FROM products;    -- harus 20
SELECT COUNT(*) FROM orders;      -- harus 20
SELECT * FROM customers LIMIT 5;  -- lihat sekilas datanya

SELECT datname
FROM pg_database
WHERE datistemplate = false
ORDER BY datname;

SELECT
    name,
    price,
    price * 1.11 AS price_with_tax
FROM products;

SELECT * FROM products;

SELECT * FROM customers;

SELECT *
FROM customers
WHERE city = 'Yogyakarta' OR city = 'Jakarta' AND created_at >= '2025-03-01';


-- Product diatas 100000
SELECT *
FROM products
WHERE price >= 100000;

-- Customers dari Yogyakarta
SELECT * 
FROM customers
WHERE city = 'Yogyakarta';

-- Order dengan status completed atau  Pending
Select  * FROM orders;

SELECT order_id, status, total_amount
FROM orders
WHERE status IN ('completed', 'pennding');

CREATE DATABASE ds_sql_learning;