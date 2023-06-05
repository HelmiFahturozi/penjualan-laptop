--
-- PostgreSQL database cluster dump
--

-- Started on 2023-06-05 23:27:24

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:XKrE0yc9SqPWjIJXokhH5w==$LHnV8tCBjUH1mYn74caxPsnxMYzVy0pdJPLxAL/XYxs=:26vEWinppLhawal7oZ0a3ky363vvd7BOa5WD9ZzOLME=';

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-06-05 23:27:24

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2023-06-05 23:27:24

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-06-05 23:27:24

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 8 (class 2615 OID 49178)
-- Name: laptop; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA laptop;


ALTER SCHEMA laptop OWNER TO postgres;

--
-- TOC entry 7 (class 2615 OID 40986)
-- Name: ta2223_genap; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ta2223_genap;


ALTER SCHEMA ta2223_genap OWNER TO postgres;

--
-- TOC entry 9 (class 2615 OID 57385)
-- Name: test; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA test;


ALTER SCHEMA test OWNER TO postgres;

--
-- TOC entry 2 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 3389 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 227 (class 1259 OID 57482)
-- Name: penjualan; Type: TABLE; Schema: laptop; Owner: postgres
--

CREATE TABLE laptop.penjualan (
    "Nama" text NOT NULL,
    "JumlahBeli" integer NOT NULL,
    "Stok" integer NOT NULL,
    "Merek" text NOT NULL,
    "Harga" numeric NOT NULL,
    "IdentitasTransaksi" text NOT NULL
);


ALTER TABLE laptop.penjualan OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16761)
-- Name: ayam; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ayam (
    id_ayam integer NOT NULL,
    jenis_ayam character varying(50) NOT NULL,
    umur date NOT NULL,
    jumlah_ayam integer NOT NULL,
    berat_ayam integer NOT NULL,
    informasi_kesehatan_ayam character varying(255) NOT NULL
);


ALTER TABLE public.ayam OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24730)
-- Name: identitas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.identitas (
    id_identitas integer NOT NULL,
    alamat character varying(50) NOT NULL,
    no_telepon character varying(50) NOT NULL,
    alamat_email character varying(50) NOT NULL
);


ALTER TABLE public.identitas OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 33026)
-- Name: karyawan new; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."karyawan new" (
    karyawan_id integer NOT NULL,
    nama character varying(50) NOT NULL,
    jabatan character varying(50) NOT NULL,
    alamat character varying(100) NOT NULL,
    "no telepon" character varying(50) NOT NULL,
    "alamat email" character varying(50) NOT NULL,
    gaji character varying(50) NOT NULL
);


ALTER TABLE public."karyawan new" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 33016)
-- Name: order detail new; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."order detail new" (
    orderdetail_id integer NOT NULL,
    nama character varying(50) NOT NULL,
    alamat character varying(100) NOT NULL,
    "no telepon" character varying(50) NOT NULL,
    uang character varying(50) NOT NULL
);


ALTER TABLE public."order detail new" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 33021)
-- Name: pelanggan new; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."pelanggan new" (
    pelanggan_id integer NOT NULL,
    nama character varying(50) NOT NULL,
    alamat character varying(100) NOT NULL,
    "no telepon" character varying(50) NOT NULL,
    "alamat email" character varying(50) NOT NULL,
    "informasi keuangan" character varying(50) NOT NULL
);


ALTER TABLE public."pelanggan new" OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 33031)
-- Name: pemilik new; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."pemilik new" (
    pemilik_id integer NOT NULL,
    nama character varying(50) NOT NULL,
    alamat character varying(100) NOT NULL,
    "no telepon" character varying(50) NOT NULL,
    "alamat email" character varying(50) NOT NULL,
    "no identitas" character varying(50) NOT NULL,
    "informasi keuangan" character varying(50) NOT NULL
);


ALTER TABLE public."pemilik new" OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 33036)
-- Name: stok barang new; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."stok barang new" (
    stokbarang_id integer NOT NULL,
    "jenis barang" character varying(50) NOT NULL,
    "jumlah stok" character varying(50) NOT NULL,
    "tanggal pembelian" date NOT NULL,
    "harga pembelian" character varying(50) NOT NULL,
    "tanggal kadaluarsa" date NOT NULL
);


ALTER TABLE public."stok barang new" OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 33041)
-- Name: supplier new; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."supplier new" (
    supplier_id integer NOT NULL,
    nama character varying(50) NOT NULL,
    alamat character varying(100) NOT NULL,
    "no telepon" character varying(50) NOT NULL,
    "alamat email" character varying(50) NOT NULL,
    "informasi keuangan" character varying(50) NOT NULL
);


ALTER TABLE public."supplier new" OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 40994)
-- Name: prodi; Type: TABLE; Schema: ta2223_genap; Owner: postgres
--

CREATE TABLE ta2223_genap.prodi (
    kp_prodi character(7) NOT NULL,
    nama text NOT NULL
);


ALTER TABLE ta2223_genap.prodi OWNER TO postgres;

--
-- TOC entry 3383 (class 0 OID 57482)
-- Dependencies: 227
-- Data for Name: penjualan; Type: TABLE DATA; Schema: laptop; Owner: postgres
--

COPY laptop.penjualan ("Nama", "JumlahBeli", "Stok", "Merek", "Harga", "IdentitasTransaksi") FROM stdin;
\.


--
-- TOC entry 3374 (class 0 OID 16761)
-- Dependencies: 218
-- Data for Name: ayam; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ayam (id_ayam, jenis_ayam, umur, jumlah_ayam, berat_ayam, informasi_kesehatan_ayam) FROM stdin;
1	Ayam kampung	2020-04-03	800	3	Sehat
2	Ayam Cemani	2020-02-28	30	2	Sehat
\.


--
-- TOC entry 3375 (class 0 OID 24730)
-- Dependencies: 219
-- Data for Name: identitas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.identitas (id_identitas, alamat, no_telepon, alamat_email) FROM stdin;
1	Mayang, Jember	081230943888	yantodjatmiko@gmail.com
2	Arjasa, Jember	088199200344	-
3	Sukorambi, Jember	088210023455	-
4	Pakusari, Jember	088199200344	-
5	Ambulu, Jember	088199234502	-
6	Sukorambi, Jember	088675993884	riansupriyadi@gmail.com
7	Puger, Jember	089921345812	-
8	Kaliwates, Jember	081304926647	-
9	Tanggul, Jember	0881223493200	aldoalvian22@gmail.com
\.


--
-- TOC entry 3378 (class 0 OID 33026)
-- Dependencies: 222
-- Data for Name: karyawan new; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."karyawan new" (karyawan_id, nama, jabatan, alamat, "no telepon", "alamat email", gaji) FROM stdin;
1111	Juliari	Peternak	Arjasa, Jember	088199200344	-	Rp 2.000.000
1112	Agus	Peternak	Sukorambi, Jember	088210023455	-	Rp 2.000.000
1113	Budi	Sopir	Pakusari, Jember	088199200344	-	Rp 1.800.000
\.


--
-- TOC entry 3376 (class 0 OID 33016)
-- Dependencies: 220
-- Data for Name: order detail new; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."order detail new" (orderdetail_id, nama, alamat, "no telepon", uang) FROM stdin;
111111	Budi	Ambulu, Jember	088199234502	Rp 200.000
111112	Rian	Sukorambi, Jember	088675993884	Rp 300.000
111113	Gani	Puger, Jember	089921345812	Rp 150.000
111114	Bambang	Kaliwates, Jember	081304926647	Rp 200.000
111115	Aldo	Tanggul, Jember	0881223493200	Rp 250.000
\.


--
-- TOC entry 3377 (class 0 OID 33021)
-- Dependencies: 221
-- Data for Name: pelanggan new; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."pelanggan new" (pelanggan_id, nama, alamat, "no telepon", "alamat email", "informasi keuangan") FROM stdin;
111111	Budiono	Ambulu, Jember	088199234502	-	Rp. 1.000.000
111112	Rian	Sukorambi, Jember	088675993884	riansupriyadi@gmail.com	Rp. 2.600.000
111113	Gani	Puger, Jember	089921345812	-	Rp. 3.000.000
111114	Bambang	Kaliwates, Jember	081304926647	-	Rp. 2.000.000
111115	Aldo	Tanggul, Jember	0881223493200	aldoalvian22@gmail.com	Rp. 1.800.000
\.


--
-- TOC entry 3379 (class 0 OID 33031)
-- Dependencies: 223
-- Data for Name: pemilik new; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."pemilik new" (pemilik_id, nama, alamat, "no telepon", "alamat email", "no identitas", "informasi keuangan") FROM stdin;
1	Yanto Djatmiko	Mayang, Jember	081230943888	yantodjatmiko@gmail.com	199882037238749	Rp 500.000.000
\.


--
-- TOC entry 3380 (class 0 OID 33036)
-- Dependencies: 224
-- Data for Name: stok barang new; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."stok barang new" (stokbarang_id, "jenis barang", "jumlah stok", "tanggal pembelian", "harga pembelian", "tanggal kadaluarsa") FROM stdin;
901	Telur Ayam	500	2023-04-02	Rp 2.000.000	2023-04-30
902	Daging Ayam Kampung	300	2023-05-05	Rp 6.000.000	2023-05-12
\.


--
-- TOC entry 3381 (class 0 OID 33041)
-- Dependencies: 225
-- Data for Name: supplier new; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."supplier new" (supplier_id, nama, alamat, "no telepon", "alamat email", "informasi keuangan") FROM stdin;
11111	Joko	Kaliwates, Jember	087729348911	 jokoangkasa@yahoo.com	Rp 60.000.000
\.


--
-- TOC entry 3382 (class 0 OID 40994)
-- Dependencies: 226
-- Data for Name: prodi; Type: TABLE DATA; Schema: ta2223_genap; Owner: postgres
--

COPY ta2223_genap.prodi (kp_prodi, nama) FROM stdin;
2410101	Sistem Informasi
2410102	Teknologi Informasi
2410103	Informatika
\.


--
-- TOC entry 3231 (class 2606 OID 57488)
-- Name: penjualan penjualan_pkey; Type: CONSTRAINT; Schema: laptop; Owner: postgres
--

ALTER TABLE ONLY laptop.penjualan
    ADD CONSTRAINT penjualan_pkey PRIMARY KEY ("Nama");


--
-- TOC entry 3213 (class 2606 OID 16765)
-- Name: ayam ayam_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ayam
    ADD CONSTRAINT ayam_pkey PRIMARY KEY (id_ayam);


--
-- TOC entry 3215 (class 2606 OID 24734)
-- Name: identitas id_people; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.identitas
    ADD CONSTRAINT id_people PRIMARY KEY (id_identitas);


--
-- TOC entry 3221 (class 2606 OID 33030)
-- Name: karyawan new karyawan new_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."karyawan new"
    ADD CONSTRAINT "karyawan new_pkey" PRIMARY KEY (karyawan_id);


--
-- TOC entry 3217 (class 2606 OID 33020)
-- Name: order detail new order detail new_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."order detail new"
    ADD CONSTRAINT "order detail new_pkey" PRIMARY KEY (orderdetail_id);


--
-- TOC entry 3219 (class 2606 OID 33025)
-- Name: pelanggan new pelanggan new_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."pelanggan new"
    ADD CONSTRAINT "pelanggan new_pkey" PRIMARY KEY (pelanggan_id);


--
-- TOC entry 3223 (class 2606 OID 33035)
-- Name: pemilik new pemilik new_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."pemilik new"
    ADD CONSTRAINT "pemilik new_pkey" PRIMARY KEY (pemilik_id);


--
-- TOC entry 3225 (class 2606 OID 33040)
-- Name: stok barang new stok barang new_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stok barang new"
    ADD CONSTRAINT "stok barang new_pkey" PRIMARY KEY (stokbarang_id);


--
-- TOC entry 3227 (class 2606 OID 33045)
-- Name: supplier new supplier new_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."supplier new"
    ADD CONSTRAINT "supplier new_pkey" PRIMARY KEY (supplier_id);


--
-- TOC entry 3229 (class 2606 OID 41000)
-- Name: prodi prodi_pkey; Type: CONSTRAINT; Schema: ta2223_genap; Owner: postgres
--

ALTER TABLE ONLY ta2223_genap.prodi
    ADD CONSTRAINT prodi_pkey PRIMARY KEY (kp_prodi);


-- Completed on 2023-06-05 23:27:24

--
-- PostgreSQL database dump complete
--

-- Completed on 2023-06-05 23:27:24

--
-- PostgreSQL database cluster dump complete
--

