-----------
-- LATIHAN 3.SELECT
-----------

-- 1. Tampilkan semua kolom dari tabel customers.
SELECT * FROM customers;

-- 2. Tampilkan hanya name dan email dari customers.
SELECT name, email
FROM customers;

-- 3. Tampilkan name dan price dari tabel products, dengan alias product_name dan product_price.
SELECT name AS "Product_Name", price AS "product_price"
FROM products;

/* 4. Buat kolom hitungan baru: tampilkan name, price, 
dan price dikurangi diskon 10% (beri alias discounted_price).*/
SELECT 
    name, 
    price,
    price - (price *0.10) AS "discounted_price"
FROM products;

------
-- LATIHAN 4. WHERE
------

-- 1. Tampilkan semua produk dengan harga lebih dari 100000
SELECT name, price
FROM products
WHERE price >=100000;

-- 2. Tampilkan semua customer dari kota Yogyakarta.
SELECT customer_id, city
FROM customers
WHERE city = 'Yogyakarta';

/* 3. Tampilkan order yang terjadi antara tanggal tertentu 
(pilih sendiri rentangnya) menggunakan BETWEEN.*/
SELECT * from orders;

SELECT order_id, order_date
FROM orders
WHERE order_date BETWEEN '2025-01-25' AND '2025-03-22';

/* 4. Tampilkan produk dengan kategori 
category_id 1 atau 4, menggunakan IN.*/
SELECT * FROM products

SELECT product_id, name, category_id
FROM products
WHERE  category_id IN (1,  4);

/*5. Tampilkan customer yang emailnya mengandung 
domain mail.com menggunakan LIKE.*/
SELECT name, email
FROM customers
WHERE email LIKE '%mail.com';

/* 6. Latihan precedence: tampilkan order yang statusnya 
completed dan (total_amount di atas 300000 atau order_date 
setelah 2025-07-01) — perhatikan baik-baik di mana Anda taruh 
tanda kurung. */
select * from orders;

SELECT order_id, order_date, total_amount, status
FROM orders
WHERE status = 'completed' 
AND (total_amount >= 300000 
OR order_date > '2025-07-01');


-----
-- Latihan ORDER BY
-----

-- 1. Tampilkan 10 produk termahal (nama dan harga saja).
SELECT name, price
FROM products
ORDER BY price DESC;

-- 2.Tampilkan 10 transaksi (order) terbesar berdasarkan total_amount.
SELECT order_id, total_amount
FROM orders
ORDER BY total_amount DESC
LIMIT 10;

-- 3. Tampilkan daftar kota unik dari tabel customers.
SELECT DISTINCT city
from customers;

-- 4. Tampilkan daftar status order yang unik dari tabel orders.
SELECT DISTINCT status
FROM orders;

-- 5. Tampilkan 5 customer pertama yang terdaftar (created_at paling awal).
SELECT * FROM customers;

SELECT name, created_at
FROM customers
ORDER BY created_at ASC
limit 5;

/* 6. Latihan pagination: tampilkan produk urutan ke-6 sampai 
ke-10 berdasarkan harga tertinggi (pakai LIMIT + OFFSET).*/
select * from products;


SELECT name, price
FROM products
ORDER BY price DESC
LIMIT 5
OFFSET 5;


/* Latihan gabungan: dari kategori dengan category_id = 3, 
tampilkan 3 produk dengan stock terbanyak.*/

SELECT name, category_id, stock
FROM products
where category_id = 3
ORDER BY stock DESC
LIMIT 3;

-----
--  Latihan 6. NULL
-----

-- 1. Tampilkan semua customer yang kolom city-nya NULL.
select * from customers;

SELECT name, city
FROM customers
WHERE city is NULL;

/* 2. Tampilkan semua customer yang kolom city-nya tidak NULL, 
diurutkan berdasarkan created_at terbaru.*/
SELECT name, city, created_at
FROM customers
WHERE city is not null
ORDER BY created_at DESC;

/* 3. Buktikan sendiri (jalankan dan amati hasilnya): 
apa yang terjadi kalau Anda menjalankan WHERE city != NULL? 
Bandingkan dengan WHERE city IS NOT NULL.*/
SELECT name, city
FROM customers
WHERE city != NULL;

/* 4. Tampilkan customer yang phone-nya NULL dan 
kotanya Yogyakarta — perhatikan apakah hasilnya sesuai 
dugaan Anda berdasarkan pemahaman 6.4.*/
SELECT name, phone, city
FROM customers
WHERE phone is null
AND city = 'Yogyakarta';


/* 5. Pakai COALESCE untuk menampilkan name dan phone, 
di mana phone yang NULL diganti teks 'Belum ada data'.*/
SELECT name, COALESCE (phone, 'Belum ada data') as phone
FROM customers;

----
-- 7 Fundamental Challenge
----

-- 1. Tampilkan 10 customer yang paling baru terdaftar.
select name, created_at
FROM customers
ORDER BY created_at ASC
LIMIT 10;

-- 2. Tampilkan 10 produk termahal.
SELECT product_id, price
FROM products
ORDER BY price DESC
limit 10;

/* 3. Tampilkan produk dengan harga di antara dua nilai 
pilihan Anda sendiri.*/
SELECT product_id, price
FROM products
WHERE price BETWEEN 145000 and 275000;

-- 4. Tampilkan customer dari satu kota pilihan Anda sendiri.
SELECT name, city
FROM customers
WHERE city = 'Bandung';

/* 5. Tampilkan data (tabel dan kolom bebas Anda pilih) 
yang punya nilai NULL.*/
SELECT *
FROM customers
WHERE city is null;


-- 6. Tampilkan nilai unik dari satu kolom pilihan Anda sendiri.
SELECT DISTINCT city
FROM customers;