-- ecommerce_seed.sql

INSERT INTO categories (category_name, description) VALUES
('Elektronik', 'Perangkat elektronik dan gadget'),
('Fashion', 'Pakaian dan aksesoris'),
('Peralatan Rumah', 'Perlengkapan rumah tangga'),
('Olahraga', 'Peralatan dan pakaian olahraga'),
('Buku', 'Buku fisik dan alat tulis');

INSERT INTO customers (name, email, phone, city, created_at) VALUES
('Andi Prasetyo', 'andi.p@mail.com', '081234567801', 'Yogyakarta', '2025-01-10'),
('Budi Santoso', 'budi.s@mail.com', NULL, 'Jakarta', '2025-01-15'),
('Citra Dewi', 'citra.d@mail.com', '081234567803', 'Yogyakarta', '2025-02-02'),
('Dian Permata', 'dian.p@mail.com', '081234567804', 'Bandung', '2025-02-20'),
('Eko Wijaya', 'eko.w@mail.com', NULL, NULL, '2025-03-05'),
('Fitri Handayani', 'fitri.h@mail.com', '081234567806', 'Surabaya', '2025-03-18'),
('Gilang Ramadhan', 'gilang.r@mail.com', '081234567807', 'Semarang', '2025-04-01'),
('Hana Kusuma', 'hana.k@mail.com', '081234567808', 'Yogyakarta', '2025-04-14'),
('Indra Saputra', 'indra.s@mail.com', NULL, 'Malang', '2025-05-02'),
('Joko Widodo', 'joko.w@mail.com', '081234567810', 'Jakarta', '2025-05-19'),
('Kartika Sari', 'kartika.s@mail.com', '081234567811', 'Bandung', '2025-06-01'),
('Lukman Hakim', 'lukman.h@mail.com', '081234567812', 'Surabaya', '2025-06-25'),
('Maya Anggraini', 'maya.a@mail.com', NULL, 'Yogyakarta', '2025-07-08'),
('Nanda Pratama', 'nanda.p@mail.com', '081234567814', 'Semarang', '2025-07-30'),
('Oki Setiawan', 'oki.s@mail.com', '081234567815', 'Jakarta', '2025-08-11');

INSERT INTO products (name, price, category_id, stock) VALUES
('Wireless Mouse', 85000, 1, 120),
('Mechanical Keyboard', 450000, 1, 60),
('Bluetooth Speaker', 275000, 1, 80),
('Power Bank 10000mAh', 150000, 1, 200),
('Kemeja Flanel', 120000, 2, 90),
('Kaos Polos', 45000, 2, 300),
('Celana Jeans', 210000, 2, 75),
('Jaket Hoodie', 175000, 2, 110),
('Panci Set Stainless', 320000, 3, 40),
('Rice Cooker 1L', 285000, 3, 55),
('Setrika Listrik', 130000, 3, 70),
('Sapu & Pel Set', 65000, 3, 150),
('Matras Yoga', 95000, 4, 100),
('Sepatu Lari', 385000, 4, 65),
('Botol Minum Olahraga', 55000, 4, 180),
('Dumbbell 5kg', 145000, 4, 45),
('Novel Fiksi Populer', 78000, 5, 130),
('Buku Tulis 1 Lusin', 35000, 5, 250),
('Pulpen Gel Set', 28000, 5, 300),
('Buku Motivasi', 62000, 5, 95);

INSERT INTO orders (customer_id, order_date, total_amount, status) VALUES
(1, '2025-01-20', 535000, 'completed'),
(2, '2025-01-25', 150000, 'completed'),
(1, '2025-02-05', 275000, 'completed'),
(3, '2025-02-10', 320000, 'pending'),
(4, '2025-02-28', 210000, 'completed'),
(5, '2025-03-10', 45000, 'cancelled'),
(6, '2025-03-22', 385000, 'completed'),
(3, '2025-04-02', 130000, 'completed'),
(7, '2025-04-15', 95000, 'pending'),
(8, '2025-04-20', 450000, 'completed'),
(9, '2025-05-05', 65000, 'completed'),
(10, '2025-05-22', 175000, 'cancelled'),
(1, '2025-06-01', 285000, 'completed'),
(11, '2025-06-10', 78000, 'completed'),
(12, '2025-06-28', 620000, 'completed'),
(8, '2025-07-03', 145000, 'pending'),
(13, '2025-07-15', 55000, 'completed'),
(6, '2025-07-25', 210000, 'completed'),
(14, '2025-08-02', 320000, 'completed'),
(15, '2025-08-12', 90000, 'pending');