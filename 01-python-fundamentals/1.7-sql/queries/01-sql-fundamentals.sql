SELECT COUNT(*) FROM customers;   -- harus 15
SELECT COUNT(*) FROM products;    -- harus 20
SELECT COUNT(*) FROM orders;      -- harus 20
SELECT * FROM customers LIMIT 5;  -- lihat sekilas datanya

SELECT
    name,
    price,
    price * 1.11 AS price_with_tax
FROM products;