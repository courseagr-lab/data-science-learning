-- ==========================================
-- INSPECT TABLES
-- ==========================================

SELECT *
FROM categories;

SELECT *
FROM customers;

SELECT *
FROM products;

SELECT *
FROM orders;


SELECT COUNT(*) AS total_categories
FROM categories;

SELECT COUNT(*) AS total_customers
FROM customers;

SELECT COUNT(*) AS total_products
FROM products;

SELECT COUNT(*) AS total_orders
FROM orders;