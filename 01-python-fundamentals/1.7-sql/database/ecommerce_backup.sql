--
-- PostgreSQL database dump
--

\restrict to6fXJ93OZZGvEvYZAH0kNhJWvdqLiyk9q3OEYHePUjdo15hWPe6KIw02l8dZlz

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.categories (
    category_id integer NOT NULL,
    category_name character varying(100) NOT NULL,
    description text
);


--
-- Name: categories_category_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.categories_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: categories_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.categories_category_id_seq OWNED BY public.categories.category_id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(150),
    phone character varying(20),
    city character varying(100),
    created_at date
);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.orders (
    order_id integer NOT NULL,
    customer_id integer,
    order_date date NOT NULL,
    total_amount numeric(12,2),
    status character varying(20)
);


--
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders.order_id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.products (
    product_id integer NOT NULL,
    name character varying(150) NOT NULL,
    price numeric(12,2) NOT NULL,
    category_id integer,
    stock integer DEFAULT 0
);


--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;


--
-- Name: categories category_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories ALTER COLUMN category_id SET DEFAULT nextval('public.categories_category_id_seq'::regclass);


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: orders order_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders ALTER COLUMN order_id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);


--
-- Name: products product_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.categories (category_id, category_name, description) FROM stdin;
1	Elektronik	Perangkat elektronik dan gadget
2	Fashion	Pakaian dan aksesoris
3	Peralatan Rumah	Perlengkapan rumah tangga
4	Olahraga	Peralatan dan pakaian olahraga
5	Buku	Buku fisik dan alat tulis
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.customers (customer_id, name, email, phone, city, created_at) FROM stdin;
1	Andi Prasetyo	andi.p@mail.com	081234567801	Yogyakarta	2025-01-10
2	Budi Santoso	budi.s@mail.com	\N	Jakarta	2025-01-15
3	Citra Dewi	citra.d@mail.com	081234567803	Yogyakarta	2025-02-02
4	Dian Permata	dian.p@mail.com	081234567804	Bandung	2025-02-20
5	Eko Wijaya	eko.w@mail.com	\N	\N	2025-03-05
6	Fitri Handayani	fitri.h@mail.com	081234567806	Surabaya	2025-03-18
7	Gilang Ramadhan	gilang.r@mail.com	081234567807	Semarang	2025-04-01
8	Hana Kusuma	hana.k@mail.com	081234567808	Yogyakarta	2025-04-14
9	Indra Saputra	indra.s@mail.com	\N	Malang	2025-05-02
10	Joko Widodo	joko.w@mail.com	081234567810	Jakarta	2025-05-19
11	Kartika Sari	kartika.s@mail.com	081234567811	Bandung	2025-06-01
12	Lukman Hakim	lukman.h@mail.com	081234567812	Surabaya	2025-06-25
13	Maya Anggraini	maya.a@mail.com	\N	Yogyakarta	2025-07-08
14	Nanda Pratama	nanda.p@mail.com	081234567814	Semarang	2025-07-30
15	Oki Setiawan	oki.s@mail.com	081234567815	Jakarta	2025-08-11
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.orders (order_id, customer_id, order_date, total_amount, status) FROM stdin;
1	1	2025-01-20	535000.00	completed
2	2	2025-01-25	150000.00	completed
3	1	2025-02-05	275000.00	completed
4	3	2025-02-10	320000.00	pending
5	4	2025-02-28	210000.00	completed
6	5	2025-03-10	45000.00	cancelled
7	6	2025-03-22	385000.00	completed
8	3	2025-04-02	130000.00	completed
9	7	2025-04-15	95000.00	pending
10	8	2025-04-20	450000.00	completed
11	9	2025-05-05	65000.00	completed
12	10	2025-05-22	175000.00	cancelled
13	1	2025-06-01	285000.00	completed
14	11	2025-06-10	78000.00	completed
15	12	2025-06-28	620000.00	completed
16	8	2025-07-03	145000.00	pending
17	13	2025-07-15	55000.00	completed
18	6	2025-07-25	210000.00	completed
19	14	2025-08-02	320000.00	completed
20	15	2025-08-12	90000.00	pending
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.products (product_id, name, price, category_id, stock) FROM stdin;
1	Wireless Mouse	85000.00	1	120
2	Mechanical Keyboard	450000.00	1	60
3	Bluetooth Speaker	275000.00	1	80
4	Power Bank 10000mAh	150000.00	1	200
5	Kemeja Flanel	120000.00	2	90
6	Kaos Polos	45000.00	2	300
7	Celana Jeans	210000.00	2	75
8	Jaket Hoodie	175000.00	2	110
9	Panci Set Stainless	320000.00	3	40
10	Rice Cooker 1L	285000.00	3	55
11	Setrika Listrik	130000.00	3	70
12	Sapu & Pel Set	65000.00	3	150
13	Matras Yoga	95000.00	4	100
14	Sepatu Lari	385000.00	4	65
15	Botol Minum Olahraga	55000.00	4	180
16	Dumbbell 5kg	145000.00	4	45
17	Novel Fiksi Populer	78000.00	5	130
18	Buku Tulis 1 Lusin	35000.00	5	250
19	Pulpen Gel Set	28000.00	5	300
20	Buku Motivasi	62000.00	5	95
\.


--
-- Name: categories_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.categories_category_id_seq', 5, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 15, true);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 20, true);


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.products_product_id_seq', 20, true);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: products products_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(category_id);


--
-- PostgreSQL database dump complete
--

\unrestrict to6fXJ93OZZGvEvYZAH0kNhJWvdqLiyk9q3OEYHePUjdo15hWPe6KIw02l8dZlz

