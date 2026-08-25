   CREATE TABLE categories (
       category_id   SERIAL PRIMARY KEY,
       category_name VARCHAR(100) NOT NULL,
       description   TEXT
   );

   CREATE TABLE customers (
       customer_id SERIAL PRIMARY KEY,
       name        VARCHAR(100) NOT NULL,
       email       VARCHAR(150),
       phone       VARCHAR(20),
       city        VARCHAR(100),
       created_at  DATE
   );

   CREATE TABLE products (
       product_id  SERIAL PRIMARY KEY,
       name        VARCHAR(150) NOT NULL,
       price       NUMERIC(12,2) NOT NULL,
       category_id INTEGER REFERENCES categories(category_id),
       stock       INTEGER DEFAULT 0
   );

   CREATE TABLE orders (
       order_id     SERIAL PRIMARY KEY,
       customer_id  INTEGER REFERENCES customers(customer_id),
       order_date   DATE NOT NULL,
       total_amount NUMERIC(12,2),
       status       VARCHAR(20)
   );
   
   
   
   SELECT COUNT(*) AS jumlah_tabel
   FROM information_schema.tables
   WHERE table_schema = 'public';
   