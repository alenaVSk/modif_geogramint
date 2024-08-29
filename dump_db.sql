--
-- PostgreSQL database dump
--

-- Dumped from database version 14.13 (Ubuntu 14.13-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.13 (Ubuntu 14.13-0ubuntu0.22.04.1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.groups (
    id integer NOT NULL,
    group_id character varying(255),
    name character varying(255),
    distance integer,
    scan_time timestamp without time zone,
    latitude double precision,
    longitude double precision
);


ALTER TABLE public.groups OWNER TO postgres;

--
-- Name: groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.groups_id_seq OWNER TO postgres;

--
-- Name: groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.groups_id_seq OWNED BY public.groups.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    user_id character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    username character varying(255),
    phone character varying(20),
    distance integer,
    scan_time timestamp without time zone,
    latitude double precision,
    longitude double precision
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups ALTER COLUMN id SET DEFAULT nextval('public.groups_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.groups (id, group_id, name, distance, scan_time, latitude, longitude) FROM stdin;
1	2046041298	'Vape Grodno (Барахолка)'	2000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
2	1414219844	'Гданьская	1000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
3	1642310475	'Гродно'	2000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
4	1282696248	'Люблю жизнь	2000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
5	1405555894	'Может попиздим ??'	500	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
6	2187863000	'Электро покатушки Гродно'	1000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
7	1327267803	'My photos from truks'	1000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
8	1989142628	'Папа'	1000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
9	2033791974	'что это'	1000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
10	2242155229	'Kıbrıs taxi / gece hayatı'	500	2024-08-29 00:11:27.105928	35.174655830253165	33.36142587267438
100	1135056977	'Shtopor.wine'	1000	2024-08-29 03:56:48.670536	55.701181751729756	37.507899997118784
101	1641051021	'Релайт-Недвижимость Раменки'	500	2024-08-29 03:56:48.670536	55.701181751729756	37.507899997118784
102	2008660596	'Last Home chat'	500	2024-08-29 03:56:48.670536	55.701181751729756	37.507899997118784
103	1676164002	'Стрельбищенская	2000	2024-08-29 03:58:20.937679	59.87284235774295	30.363901895603036
104	1619856553	'булалар гурипаси'	2000	2024-08-29 03:58:20.937679	59.87284235774295	30.363901895603036
105	1834336245	'Терияйки'	500	2024-08-29 03:58:20.937679	59.87284235774295	30.363901895603036
106	1676164002	'Стрельбищенская	2000	2024-08-29 03:59:09.704222	53.88267094821872	27.554049492789623
107	1619856553	'булалар гурипаси'	2000	2024-08-29 03:59:09.704222	53.88267094821872	27.554049492789623
108	1834336245	'Терияйки'	500	2024-08-29 03:59:09.704222	53.88267094821872	27.554049492789623
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, user_id, first_name, last_name, username, phone, distance, scan_time, latitude, longitude) FROM stdin;
1	787160753	'Pavel'	\N	'piapav'	\N	500	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
2	5445166099	'𐌳ᱞተሃᱞ'	\N	'Arger65'	\N	500	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
3	969688728	'Виталий'	\N	'vitalik1186'	\N	500	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
4	676888823	'Komirun #FREEDUROV'	\N	'Sheikh200202'	\N	500	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
5	828686407	'Pavel'	'Mimogliad'	\N	\N	500	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
6	5616846425	'Дарина'	\N	'nezhdibelochku'	\N	500	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
7	1874173847	'Глеbas๊๊๊๊๊๊๊๊ࣤࣤࣤࣤࣤࣤࣤࣤࣤࣤࣤࣤࣤࣤࣤࣤ'	\N	'Gleb_911'	\N	1000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
8	5291108011	'Маришка'	'Спиглазова'	'Maria55z'	\N	1000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
9	5602452468	'Vasili'	\N	\N	\N	1000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
10	1667618271	'Ян'	\N	'YanBudnik1994'	\N	1000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
11	1254633130	'Илья'	'Капучинатор ⛶'	'BU_TER'	\N	1000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
12	1305657314	'Maksim'	'Kryhin'	'Mas1an'	\N	1000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
13	1465295859	'Too'	'Good'	'YatoGood'	\N	1000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
14	5926356559	'༒'	\N	'marwekc'	\N	1000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
15	6787022263	'renᰔᩚ'	\N	'rennnn_nnnn'	\N	1000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
16	925374735	'🥷Formula_Yspexa'	'Love all💋♥️'	'myfixs'	\N	1000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
17	1135318398	'Вадим'	'Карпач'	\N	\N	1000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
18	1003789504	'Дмитрий'	'Лебецкий'	'Daddyad'	\N	1000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
19	922598847	'Никита'	\N	'Iause228'	\N	1000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
20	903259384	'Наталья'	\N	\N	\N	1000	2024-08-29 00:06:55.771083	53.652634939395455	23.81233359699427
530	1977816121	'rei'	\N	'reizlix'	\N	500	2024-08-29 03:56:48.670536	55.701181751729756	37.507899997118784
531	2129435821	'MOLEKULA'	'КЛИНИКА'	'm0leculeclinic'	'79251991122'	500	2024-08-29 03:56:48.670536	55.701181751729756	37.507899997118784
532	1818537339	'Ариночк'	\N	'meralenat'	\N	500	2024-08-29 03:56:48.670536	55.701181751729756	37.507899997118784
533	1617968500	'moscowbeauty_salon'	\N	\N	\N	500	2024-08-29 03:56:48.670536	55.701181751729756	37.507899997118784
534	1553973299	'Вера'	'Горышева'	\N	\N	500	2024-08-29 03:56:48.670536	55.701181751729756	37.507899997118784
535	387517533	'Poul'	\N	'Luminosso'	\N	500	2024-08-29 03:58:20.937679	59.87284235774295	30.363901895603036
536	104873890	'Dmitriy'	\N	'Dimakoz'	\N	500	2024-08-29 03:58:20.937679	59.87284235774295	30.363901895603036
537	1116230964	'Hi'	\N	'HiLays'	\N	500	2024-08-29 03:58:20.937679	59.87284235774295	30.363901895603036
538	6084939659	'Raman'	'Hüseynov'	\N	\N	500	2024-08-29 03:58:20.937679	59.87284235774295	30.363901895603036
539	389987867	'Doc_'	'Salim.Gazimagomedov'	'Doc_Salim'	\N	500	2024-08-29 03:58:20.937679	59.87284235774295	30.363901895603036
540	387517533	'Poul'	\N	'Luminosso'	\N	500	2024-08-29 03:59:09.704222	53.88267094821872	27.554049492789623
541	104873890	'Dmitriy'	\N	'Dimakoz'	\N	500	2024-08-29 03:59:09.704222	53.88267094821872	27.554049492789623
542	1116230964	'Hi'	\N	'HiLays'	\N	500	2024-08-29 03:59:09.704222	53.88267094821872	27.554049492789623
543	6084939659	'Raman'	'Hüseynov'	\N	\N	500	2024-08-29 03:59:09.704222	53.88267094821872	27.554049492789623
544	389987867	'Doc_'	'Salim.Gazimagomedov'	'Doc_Salim'	\N	500	2024-08-29 03:59:09.704222	53.88267094821872	27.554049492789623
\.


--
-- Name: groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.groups_id_seq', 108, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 544, true);


--
-- Name: groups groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

