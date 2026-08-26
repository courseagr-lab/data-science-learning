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

-- Produk dengan harga antara 100000 dan 300000 (pakai BETWEEN)
SELECT name, price
FROM products
WHERE price BETWEEN 100000 AND 300000;

-- Customer yang namanya diawali huruf 'A' atau 'B' (pakai LIKE + OR, lalu bandingkan dengan cara lain)
SELECT name 
FROM customers
WHERE name LIKE 'A%' OR name LIKE 'B%';

-- Order antara tanggal tertentu, DAN statusnya bukan cancelled
SELECT * FROM orders;

SELECT order_id, order_date, status
FROM orders
WHERE order_date BETWEEN '2025-06-01' AND '2025-07-31'
    AND status != 'cenceled'

SELECT *
FROM products
WHERE price >= 100000;

-- Kombinasi unik category_id + harga pembulatan ratusan ribu
SELECT DISTINCT category_id
FROM products;
-- hasil: daftar category_id unik saja (misal 1,2,3,4,5)

SELECT DISTINCT category_id, stock
FROM products;
-- hasil: setiap kombinasi (category_id, stock) yang berbeda dianggap baris unik tersendiri,
-- meskipun category_id-nya sama dengan baris lain

-- 10 produk termahal
SELECT name, price
FROM products
ORDER BY price DESC
LIMIT 10;


-- 10 order dengan total_amount terbesar
SELECT * FROM orders;

SELECT order_id, order_date, total_amount
FROM orders
ORDER BY total_amount DESC
LIMIT 10;

-- Daftar kota unik tempat customer berasal
SELECT DISTINCT city
FROM customers;

-- Daftar category_id unik di tabel products
SELECT category_id
FROM products
ORDER BY category_id;

-- 5 produk termurah dalam kategori tertentu
SELECT category_id, name, price
FROM products
WHERE category_id = 2
ORDER BY price DESC
LIMIT 5;

-- Customer yang belum mengisi nomor telepon
SELECT customer_id, phone
FROM customers
WHERE phone IS NULL;

-- Customer yang sudah mengisi nomor telepon
SELECT customer_id, phone
FROM customers
WHERE phone IS NOT NULL;

-- Buktikan sendiri: query ini TIDAK akan mengembalikan baris apapun
SELECT name, phone
FROM customers
WHERE phone = NULL;

-- Customer yang city ATAU phone-nya belum diisi (pakai OR)
SELECT * FROM customers;

SELECT customer_id, name, city, phone
FROM customers
WHERE city IS NULL OR phone IS NULL;

-- Tampilkan dengan nilai pengganti yang lebih mudah dibaca
SELECT name, COALESCE(city, 'Kota tidak diketahui') AS city
FROM customers;
