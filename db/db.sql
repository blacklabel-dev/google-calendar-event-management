--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 15.1

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
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events (
    id bigint NOT NULL,
    title character varying,
    description text,
    location character varying,
    gc_event_id character varying,
    gc_link character varying,
    start_at timestamp(6) without time zone,
    end_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    user_id integer
);


ALTER TABLE public.events OWNER TO postgres;

--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_id_seq OWNER TO postgres;

--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    full_name character varying,
    uid character varying,
    avatar_url character varying,
    provider character varying,
    access_token character varying,
    refresh_token character varying,
    expires_at character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
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
-- Name: events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	production	2022-12-06 07:23:43.208788	2022-12-06 07:23:43.208788
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events (id, title, description, location, gc_event_id, gc_link, start_at, end_at, created_at, updated_at, user_id) FROM stdin;
1	Event 1xxx	Test Description	New York	684fbgoloc35bcsuf0cnc4lrk0	https://www.google.com/calendar/event?eid=Njg0ZmJnb2xvYzM1YmNzdWYwY25jNGxyazAgdmFsbGV5Y2lyY2xlc2FuZGJveEBt	2022-12-15 17:00:00	2022-12-16 17:00:00	2022-12-06 07:26:19.401224	2022-12-06 19:04:20.098529	\N
2	title too	d too	6646 Lockhurst drive Los Angeles ca	cka946hc1ivg9ad94odnrhhlec	https://www.google.com/calendar/event?eid=Y2thOTQ2aGMxaXZnOWFkOTRvZG5yaGhsZWMgdmFsbGV5Y2lyY2xlc2FuZGJveEBt	2022-12-21 17:00:00	2022-12-22 17:00:00	2022-12-06 19:05:33.076765	2022-12-06 19:05:33.816504	\N
3	event testing title	event testing desc	164 ludlow st ny ny	4svmdooc8m8gehpah6ajb3du3o	https://www.google.com/calendar/event?eid=NHN2bWRvb2M4bThnZWhwYWg2YWpiM2R1M28gdW5pY29ybmcxNjhAbQ	2022-12-08 17:00:00	2022-12-09 17:00:00	2022-12-06 19:10:03.075676	2022-12-06 19:10:03.697173	\N
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20221110155206
20221110171138
20221204180159
20221207024434
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, full_name, uid, avatar_url, provider, access_token, refresh_token, expires_at, created_at, updated_at) FROM stdin;
2	unicorng168@gmail.com	unicorng168@gmail.com	109266482937210737367	https://lh3.googleusercontent.com/a/default-user=s96-c	google_oauth2	ya29.a0AeTM1ifvGFpvIBBvOCGYdNpAVeU5IYrNMS-IL_Vt79bKTMgBcuPS2s9RCCk9iUW4kLS1FTrKv2Xx3uRhy-5wwMNOSRH5YthwQIi2Wk-3LpbY3Xj3NG_Y6i27Vt5hzTkE-ogenTFDeWM8kjz5q3sh50wUHl92aCgYKAa8SARISFQHWtWOmsnv_f_eKx32m4wWq2twbSA0163	1//0dOzT4v-GCnU0CgYIARAAGA0SNwF-L9IrwTNAyvAD4ZBn7276liXMwDhsVxHPkUv0OfkRyh0tnXjQu_yMPbANEnOya7K-UesfJZQ	1670357357	2022-12-06 19:09:18.836252	2022-12-06 19:09:18.842715
1	valleycirclesandbox@gmail.com	valleycirclesandbox@gmail.com	104743505395546519533	https://lh3.googleusercontent.com/a/default-user=s96-c	google_oauth2	ya29.a0AeTM1ifITrCN37EpvfR7Yv4VNkx3zQXRS9VstbBCYIFa-44kyer_ISuhVKOXpEj60NJFkDjOjLcM_FGB1IAaPFFux9ilJe6yywVXM1cIQzNHxK5a8hCQbTZUhgoPjGRq2nY8RJ6UZLFP5K40hyNyOT9gYAW1aCgYKATESARMSFQHWtWOm0FF88O-vomjkHU1cokcUfQ0163	1//0dG7Mg-7KMM4nCgYIARAAGA0SNwF-L9IrXx7Uy1meCi5M7oKvp27mbACv4dNDCOgR13HMJYZBwc-B39v-vRcRtll47RGiVD0EmWs	1670400490	2022-12-06 07:24:29.629901	2022-12-07 07:08:12.157782
\.


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.events_id_seq', 3, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

