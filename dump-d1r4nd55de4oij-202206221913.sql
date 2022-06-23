--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Ubuntu 14.4-1.pgdg20.04+1)
-- Dumped by pg_dump version 14.2

-- Started on 2022-06-22 19:13:21

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

DROP DATABASE d1r4nd55de4oij;
--
-- TOC entry 4405 (class 1262 OID 4083057)
-- Name: d1r4nd55de4oij; Type: DATABASE; Schema: -; Owner: xddarjqthcwysn
--

CREATE DATABASE d1r4nd55de4oij WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE d1r4nd55de4oij OWNER TO xddarjqthcwysn;

\connect d1r4nd55de4oij

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
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: xddarjqthcwysn
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO xddarjqthcwysn;

--
-- TOC entry 4407 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: xddarjqthcwysn
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 209 (class 1259 OID 4094944)
-- Name: action_plan; Type: TABLE; Schema: public; Owner: xddarjqthcwysn
--

CREATE TABLE public.action_plan (
    id integer NOT NULL,
    meeting_date timestamp without time zone NOT NULL,
    action_date timestamp without time zone NOT NULL,
    initiative character varying(64),
    "user" integer,
    next_action character varying(64),
    result character varying(64),
    status integer,
    created_at timestamp without time zone,
    update_at timestamp without time zone,
    delete_at timestamp without time zone,
    delete_flag boolean
);


ALTER TABLE public.action_plan OWNER TO xddarjqthcwysn;

--
-- TOC entry 210 (class 1259 OID 4094952)
-- Name: action_plan_id_seq; Type: SEQUENCE; Schema: public; Owner: xddarjqthcwysn
--

CREATE SEQUENCE public.action_plan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_plan_id_seq OWNER TO xddarjqthcwysn;

--
-- TOC entry 4410 (class 0 OID 0)
-- Dependencies: 210
-- Name: action_plan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xddarjqthcwysn
--

ALTER SEQUENCE public.action_plan_id_seq OWNED BY public.action_plan.id;


--
-- TOC entry 211 (class 1259 OID 4094956)
-- Name: address; Type: TABLE; Schema: public; Owner: xddarjqthcwysn
--

CREATE TABLE public.address (
    id integer NOT NULL,
    cep character varying NOT NULL,
    place character varying NOT NULL,
    district character varying NOT NULL,
    complement character varying NOT NULL,
    city character varying NOT NULL,
    uf character varying NOT NULL,
    person_code integer,
    created_at timestamp without time zone,
    update_at timestamp without time zone,
    delete_flag boolean,
    delete_at timestamp without time zone
);


ALTER TABLE public.address OWNER TO xddarjqthcwysn;

--
-- TOC entry 212 (class 1259 OID 4094971)
-- Name: address_id_seq; Type: SEQUENCE; Schema: public; Owner: xddarjqthcwysn
--

CREATE SEQUENCE public.address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.address_id_seq OWNER TO xddarjqthcwysn;

--
-- TOC entry 4411 (class 0 OID 0)
-- Dependencies: 212
-- Name: address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xddarjqthcwysn
--

ALTER SEQUENCE public.address_id_seq OWNED BY public.address.id;


--
-- TOC entry 213 (class 1259 OID 4094972)
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: xddarjqthcwysn
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO xddarjqthcwysn;

--
-- TOC entry 214 (class 1259 OID 4094976)
-- Name: gender; Type: TABLE; Schema: public; Owner: xddarjqthcwysn
--

CREATE TABLE public.gender (
    id integer NOT NULL,
    description character varying(200),
    created_at timestamp without time zone,
    update_at timestamp without time zone,
    delete_at timestamp without time zone,
    delete_flag boolean
);


ALTER TABLE public.gender OWNER TO xddarjqthcwysn;

--
-- TOC entry 215 (class 1259 OID 4094979)
-- Name: gender_id_seq; Type: SEQUENCE; Schema: public; Owner: xddarjqthcwysn
--

CREATE SEQUENCE public.gender_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gender_id_seq OWNER TO xddarjqthcwysn;

--
-- TOC entry 4412 (class 0 OID 0)
-- Dependencies: 215
-- Name: gender_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xddarjqthcwysn
--

ALTER SEQUENCE public.gender_id_seq OWNED BY public.gender.id;


--
-- TOC entry 216 (class 1259 OID 4094984)
-- Name: log; Type: TABLE; Schema: public; Owner: xddarjqthcwysn
--

CREATE TABLE public.log (
    id integer NOT NULL,
    update_at timestamp without time zone,
    "user.id" integer,
    "table" character varying(256),
    operation_code integer,
    description character varying(256)
);


ALTER TABLE public.log OWNER TO xddarjqthcwysn;

--
-- TOC entry 217 (class 1259 OID 4094998)
-- Name: log_id_seq; Type: SEQUENCE; Schema: public; Owner: xddarjqthcwysn
--

CREATE SEQUENCE public.log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.log_id_seq OWNER TO xddarjqthcwysn;

--
-- TOC entry 4413 (class 0 OID 0)
-- Dependencies: 217
-- Name: log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xddarjqthcwysn
--

ALTER SEQUENCE public.log_id_seq OWNED BY public.log.id;


--
-- TOC entry 218 (class 1259 OID 4095002)
-- Name: operation; Type: TABLE; Schema: public; Owner: xddarjqthcwysn
--

CREATE TABLE public.operation (
    id integer NOT NULL,
    description character varying(200),
    created_at timestamp without time zone,
    update_at timestamp without time zone,
    delete_at timestamp without time zone,
    delete_flag boolean
);


ALTER TABLE public.operation OWNER TO xddarjqthcwysn;

--
-- TOC entry 219 (class 1259 OID 4095005)
-- Name: operation_id_seq; Type: SEQUENCE; Schema: public; Owner: xddarjqthcwysn
--

CREATE SEQUENCE public.operation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.operation_id_seq OWNER TO xddarjqthcwysn;

--
-- TOC entry 4414 (class 0 OID 0)
-- Dependencies: 219
-- Name: operation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xddarjqthcwysn
--

ALTER SEQUENCE public.operation_id_seq OWNED BY public.operation.id;


--
-- TOC entry 220 (class 1259 OID 4095008)
-- Name: person; Type: TABLE; Schema: public; Owner: xddarjqthcwysn
--

CREATE TABLE public.person (
    id integer NOT NULL,
    full_name character varying(120),
    birth_date date NOT NULL,
    cpf character varying(11),
    rg character varying(20),
    email character varying(120),
    phone character varying(13),
    created_at timestamp without time zone,
    update_at timestamp without time zone,
    delete_at timestamp without time zone,
    delete_flag boolean,
    gender_code integer
);


ALTER TABLE public.person OWNER TO xddarjqthcwysn;

--
-- TOC entry 221 (class 1259 OID 4095011)
-- Name: person_id_seq; Type: SEQUENCE; Schema: public; Owner: xddarjqthcwysn
--

CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_id_seq OWNER TO xddarjqthcwysn;

--
-- TOC entry 4415 (class 0 OID 0)
-- Dependencies: 221
-- Name: person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xddarjqthcwysn
--

ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;


--
-- TOC entry 222 (class 1259 OID 4095015)
-- Name: profile; Type: TABLE; Schema: public; Owner: xddarjqthcwysn
--

CREATE TABLE public.profile (
    id integer NOT NULL,
    description character varying(200),
    created_at timestamp without time zone,
    update_at timestamp without time zone,
    delete_at timestamp without time zone,
    delete_flag boolean
);


ALTER TABLE public.profile OWNER TO xddarjqthcwysn;

--
-- TOC entry 223 (class 1259 OID 4095020)
-- Name: profile_id_seq; Type: SEQUENCE; Schema: public; Owner: xddarjqthcwysn
--

CREATE SEQUENCE public.profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_id_seq OWNER TO xddarjqthcwysn;

--
-- TOC entry 4416 (class 0 OID 0)
-- Dependencies: 223
-- Name: profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xddarjqthcwysn
--

ALTER SEQUENCE public.profile_id_seq OWNED BY public.profile.id;


--
-- TOC entry 224 (class 1259 OID 4095021)
-- Name: status; Type: TABLE; Schema: public; Owner: xddarjqthcwysn
--

CREATE TABLE public.status (
    id integer NOT NULL,
    description character varying(200) NOT NULL,
    created_at timestamp without time zone,
    update_at timestamp without time zone,
    delete_at timestamp without time zone,
    delete_flag boolean
);


ALTER TABLE public.status OWNER TO xddarjqthcwysn;

--
-- TOC entry 225 (class 1259 OID 4095026)
-- Name: status_id_seq; Type: SEQUENCE; Schema: public; Owner: xddarjqthcwysn
--

CREATE SEQUENCE public.status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.status_id_seq OWNER TO xddarjqthcwysn;

--
-- TOC entry 4417 (class 0 OID 0)
-- Dependencies: 225
-- Name: status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xddarjqthcwysn
--

ALTER SEQUENCE public.status_id_seq OWNED BY public.status.id;


--
-- TOC entry 226 (class 1259 OID 4095027)
-- Name: user; Type: TABLE; Schema: public; Owner: xddarjqthcwysn
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    password_hash character varying(256),
    created_at timestamp without time zone,
    update_at timestamp without time zone,
    delete_at timestamp without time zone,
    delete_flag boolean,
    person_code integer,
    profile_code integer
);


ALTER TABLE public."user" OWNER TO xddarjqthcwysn;

--
-- TOC entry 227 (class 1259 OID 4095033)
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: xddarjqthcwysn
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO xddarjqthcwysn;

--
-- TOC entry 4418 (class 0 OID 0)
-- Dependencies: 227
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xddarjqthcwysn
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- TOC entry 4195 (class 2604 OID 4095034)
-- Name: action_plan id; Type: DEFAULT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.action_plan ALTER COLUMN id SET DEFAULT nextval('public.action_plan_id_seq'::regclass);


--
-- TOC entry 4196 (class 2604 OID 4095038)
-- Name: address id; Type: DEFAULT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.address ALTER COLUMN id SET DEFAULT nextval('public.address_id_seq'::regclass);


--
-- TOC entry 4197 (class 2604 OID 4095039)
-- Name: gender id; Type: DEFAULT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.gender ALTER COLUMN id SET DEFAULT nextval('public.gender_id_seq'::regclass);


--
-- TOC entry 4198 (class 2604 OID 4095040)
-- Name: log id; Type: DEFAULT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.log ALTER COLUMN id SET DEFAULT nextval('public.log_id_seq'::regclass);


--
-- TOC entry 4199 (class 2604 OID 4095041)
-- Name: operation id; Type: DEFAULT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.operation ALTER COLUMN id SET DEFAULT nextval('public.operation_id_seq'::regclass);


--
-- TOC entry 4200 (class 2604 OID 4095044)
-- Name: person id; Type: DEFAULT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);


--
-- TOC entry 4201 (class 2604 OID 4095045)
-- Name: profile id; Type: DEFAULT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.profile ALTER COLUMN id SET DEFAULT nextval('public.profile_id_seq'::regclass);


--
-- TOC entry 4202 (class 2604 OID 4095046)
-- Name: status id; Type: DEFAULT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.status ALTER COLUMN id SET DEFAULT nextval('public.status_id_seq'::regclass);


--
-- TOC entry 4203 (class 2604 OID 4095047)
-- Name: user id; Type: DEFAULT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- TOC entry 4381 (class 0 OID 4094944)
-- Dependencies: 209
-- Data for Name: action_plan; Type: TABLE DATA; Schema: public; Owner: xddarjqthcwysn
--

INSERT INTO public.action_plan VALUES (6, '2022-05-11 00:00:00', '2022-05-19 00:00:00', 'asdas', 1, 'asdas', 'asdas', 2, '2022-05-26 17:28:54.58911', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (8, '2022-05-30 19:28:35.003', '2022-05-30 19:28:35.003', 'ini3005', 4, 'action3005', NULL, 1, '2022-05-30 19:28:12.903554', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (9, '2022-05-10 00:00:00', '2022-05-12 00:00:00', 'teste', 1, 'testando', 'testado', 1, '2022-05-31 12:21:28.696976', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (10, '2022-05-17 00:00:00', '2022-05-04 00:00:00', 'sdfsdf', 1, 'sdfsdf', 'sdfsdf', 3, '2022-05-31 15:37:41.281185', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (18, '2022-06-07 00:00:00', '2022-06-14 00:00:00', 'iniciativa', 1, 'próxima ação', 'resultado da ação', 1, '2022-06-01 20:01:40.509838', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (19, '2022-02-10 00:00:00', '2022-02-10 00:00:00', 'iniciativa', 1, 'próxima ação', 'resultado da ação', 1, '2022-06-02 13:48:20.738564', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (27, '2022-01-09 00:00:00', '2022-01-09 00:00:00', 'teste update 3', 1, 'teste update 3', 'teste update 3', 2, '2022-06-06 20:30:17.980775', '2022-06-07 17:09:38.046296', NULL, false);
INSERT INTO public.action_plan VALUES (37, '2022-01-07 14:45:00', '2022-01-07 14:46:00', 'teste1234', 1, 'teste1234', 'teste1234', 1, '2022-06-07 14:13:48.785927', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (38, '2022-01-03 15:39:00', '2022-01-03 15:39:00', 'iniciativa', 1, 'próxima ação', 'resultado da ação', 1, '2022-06-07 14:13:48.787944', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (39, '2022-02-03 15:54:00', '2022-02-03 15:54:00', 'teste post', 1, 'teste post', 'teste post', 2, '2022-06-07 14:13:48.787944', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (2, '2022-01-26 16:35:00', '2022-01-26 16:35:00', 'string', 1, 'TESTEUPD', 'string', 1, '2022-05-26 16:35:26.058378', '2022-06-02 15:22:58.181363', '2022-06-02 15:37:18.600074', true);
INSERT INTO public.action_plan VALUES (40, '2022-02-03 17:00:00', '2022-02-03 17:10:00', 'teste post3', 1, 'teste post3', 'teste post3', 2, '2022-06-07 14:13:48.787944', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (41, '2022-02-03 18:33:00', '2022-02-03 18:40:00', 'teste post4', 1, 'teste post4', 'teste post4', 1, '2022-06-07 14:13:48.787944', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (42, '2022-01-03 15:33:00', '2022-01-03 15:33:00', 'teste post5', 1, 'teste post5', 'teste post5', 3, '2022-06-07 14:13:48.787944', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (43, '2022-01-03 16:55:00', '2022-01-03 16:55:00', 'iniciativa', 1, 'próxima ação', 'resultado da ação', 1, '2022-06-07 14:13:48.787944', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (4, '2022-01-27 16:42:00', '2022-01-27 16:42:00', 'string 3', 1, 'string 3', 'string 2', 1, '2022-05-26 16:50:42.873556', '2022-06-02 16:20:54.279106', '2022-06-02 16:22:42.500454', true);
INSERT INTO public.action_plan VALUES (44, '2022-01-03 16:56:00', '2022-01-03 16:56:00', 'iniciativa', 1, 'próxima ação', 'resultado da ação', 1, '2022-06-07 14:13:48.787944', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (20, '2022-01-01 00:00:00', '2022-01-01 00:00:00', 'iniciativa', 1, 'próxima ação', 'resultado da ação', 1, '2022-06-02 19:42:40.146182', '2022-06-02 19:42:40.146213', '2022-06-02 19:53:10.30159', true);
INSERT INTO public.action_plan VALUES (21, '2022-01-02 00:00:00', '2022-01-01 00:00:00', 'Iniciativateste', 1, 'Próximateste', 'Teste', 1, '2022-06-02 19:42:40.219853', '2022-06-06 13:09:48.772184', '2022-06-06 15:02:29.99378', true);
INSERT INTO public.action_plan VALUES (23, '2022-06-01 00:00:00', '2022-06-01 00:00:00', 'iniciativa', 1, 'próxima ação', 'resultado da ação', 1, '2022-06-06 13:09:48.668075', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (25, '2022-08-01 00:00:00', '2022-08-01 00:00:00', 'iniciativa', 1, 'próxima ação', 'resultado da ação', 1, '2022-06-06 19:21:52.414072', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (26, '2022-01-08 00:00:00', '2022-01-08 00:00:00', 'teste modal', 1, 'teste modal', 'teste modal', 2, '2022-06-06 20:30:17.980775', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (28, '2022-01-20 00:00:00', '2022-01-20 00:00:00', 'teste modal3', 1, 'teste modal3', 'teste modal3', 2, '2022-06-06 20:30:18.074859', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (24, '2022-01-07 00:00:00', '2022-01-07 00:00:00', '', 1, '', '', 1, '2022-06-06 19:21:52.422304', '2022-06-06 20:30:18.074882', '2022-06-06 21:32:40.842789', true);
INSERT INTO public.action_plan VALUES (29, '2022-01-11 00:00:00', '2022-01-11 00:00:00', 'teste status', 1, 'teste status', 'teste status', 3, '2022-06-06 20:30:18.074859', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (30, '2022-02-03 00:00:00', '2022-02-03 00:00:00', 'hgfvhg', 1, 'nvjhgvjhb', 'vbbchfgv', 1, '2022-06-06 20:30:18.074859', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (45, '2022-01-03 15:33:00', '2022-01-03 15:33:00', 'teste post6', 1, 'teste post6', 'teste post6', 3, '2022-06-07 14:13:48.787944', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (5, '2022-02-27 16:42:00', '2022-02-27 16:42:00', 'string 4', 1, 'string 3', 'Teste Prod 0706', 1, '2022-05-26 17:42:45.560429', '2022-06-07 03:03:45.877503', NULL, false);
INSERT INTO public.action_plan VALUES (46, '2022-01-07 15:33:00', '2022-01-07 15:33:00', 'iniciativa', 1, 'próxima ação', 'resultado da ação', 1, '2022-06-07 14:13:48.787944', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (3, '2022-05-10 00:00:00', '2022-05-12 00:00:00', 'teste', 1, 'testando', 'testado', 1, '2022-05-26 16:42:26.123058', '2022-06-07 05:41:28.918116', '2022-06-02 17:24:39.051854', true);
INSERT INTO public.action_plan VALUES (31, '2022-03-10 00:00:00', '2022-03-10 00:00:00', 'troca', 1, 'troca', 'troca', 1, '2022-06-07 12:08:06.366354', '2022-06-07 12:29:57.36795', NULL, false);
INSERT INTO public.action_plan VALUES (47, '2022-02-03 15:33:00', '2022-02-03 15:33:00', 'teste post 6', 1, 'teste post 6', 'teste post 6', 1, '2022-06-07 14:13:48.787944', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (22, '2022-01-03 00:00:00', '2022-01-07 00:00:00', 'teste update1', 1, 'teste update3', 'teste update3', 1, '2022-06-06 13:09:48.772163', '2022-06-07 20:48:17.397389', NULL, false);
INSERT INTO public.action_plan VALUES (32, '2022-03-11 00:00:00', '2022-03-11 00:00:00', 'iniciativa', 1, 'próxima ação', 'resultado da ação', 1, '2022-06-07 13:20:44.014541', '2022-06-07 13:20:44.071887', '2022-06-07 13:30:41.448717', true);
INSERT INTO public.action_plan VALUES (33, '2022-03-11 00:00:00', '2022-03-11 00:00:00', 'troca5', 1, 'troca5', 'troca5', 1, '2022-06-07 13:20:44.014541', '2022-06-07 13:33:24.517383', NULL, false);
INSERT INTO public.action_plan VALUES (34, '2022-03-12 00:00:00', '2022-03-12 00:00:00', 'sdf', 1, 'sdfsd', 'sdfsdf', 1, '2022-06-07 13:20:44.014541', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (35, '2022-03-13 00:00:00', '2022-03-13 00:00:00', 'teste', 1, 'teste', 'testes', 2, '2022-06-07 14:13:48.785927', NULL, NULL, false);
INSERT INTO public.action_plan VALUES (36, '2022-03-15 00:00:00', '2022-03-14 00:00:00', 'cvbcdfs', 1, 'cvbcsdfs', 'cvbcvsdf', 3, '2022-06-07 14:13:48.785927', '2022-06-07 14:15:40.018999', NULL, false);


--
-- TOC entry 4383 (class 0 OID 4094956)
-- Dependencies: 211
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: xddarjqthcwysn
--

INSERT INTO public.address VALUES (2, 'string', 'string', 'string', 'string', 'string', 'string', 5, '2022-05-26 16:32:22.016081', NULL, false, NULL);
INSERT INTO public.address VALUES (4, '72302151', 'string', 'string', 'string', 'string', 'string', 8, '2022-05-27 16:42:28.890619', NULL, false, NULL);
INSERT INTO public.address VALUES (1, '72302151', 'Lugar Certo', 'Distrital', 'Complemento', 'Certa', 'DF', 3, '2022-05-26 16:18:13.603404', '2022-05-30 16:25:10.409076', false, NULL);
INSERT INTO public.address VALUES (5, '7000000', 'dia30', 'dia30', 'dia30', 'brasilia', 'df', 9, '2022-05-30 14:28:18.893195', NULL, false, NULL);
INSERT INTO public.address VALUES (3, 'string', 'string', 'string', 'string', 'string', 'string', 6, '2022-05-26 19:58:24.029676', '2022-06-01 18:46:11.390111', false, NULL);
INSERT INTO public.address VALUES (9, '70673431', 'SQSW 306 Bloco A', 'Setor Sudoeste', 'APT', 'Brasília', 'DF', 15, '2022-06-02 16:54:21.570687', NULL, false, NULL);
INSERT INTO public.address VALUES (8, '70673431', 'SQSW 306 Bloco A', 'Setor Sudoeste', 'APT', 'Brasília', 'DF', 14, '2022-06-02 16:41:46.85301', '2022-06-02 17:34:31.49277', true, NULL);
INSERT INTO public.address VALUES (10, '72302151', 'place', 'dis', 'asdf', 'asdf', 'asdf', 17, '2022-06-02 19:43:46.44244', NULL, false, NULL);
INSERT INTO public.address VALUES (6, '70743030', 'SQN 107 Bloco C', 'Asa Norte', '411', 'Brasília', 'DF', 10, '2022-05-31 13:04:08.942202', '2022-06-02 19:44:53.894522', true, NULL);


--
-- TOC entry 4385 (class 0 OID 4094972)
-- Dependencies: 213
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: xddarjqthcwysn
--

INSERT INTO public.alembic_version VALUES ('306e612acbb9');


--
-- TOC entry 4386 (class 0 OID 4094976)
-- Dependencies: 214
-- Data for Name: gender; Type: TABLE DATA; Schema: public; Owner: xddarjqthcwysn
--

INSERT INTO public.gender VALUES (1, 'Feminino', '2022-05-26 15:22:28.727448', NULL, NULL, false);
INSERT INTO public.gender VALUES (2, 'Masculino', '2022-05-26 15:22:38.347939', NULL, NULL, false);
INSERT INTO public.gender VALUES (3, 'NaoBinario', '2022-05-26 15:22:50.138667', NULL, NULL, false);


--
-- TOC entry 4388 (class 0 OID 4094984)
-- Dependencies: 216
-- Data for Name: log; Type: TABLE DATA; Schema: public; Owner: xddarjqthcwysn
--



--
-- TOC entry 4390 (class 0 OID 4095002)
-- Dependencies: 218
-- Data for Name: operation; Type: TABLE DATA; Schema: public; Owner: xddarjqthcwysn
--

INSERT INTO public.operation VALUES (1, 'Insert', '2022-05-26 15:25:20.070525', NULL, NULL, false);
INSERT INTO public.operation VALUES (2, 'Update', '2022-05-26 15:25:28.677342', NULL, NULL, false);
INSERT INTO public.operation VALUES (3, 'Delete', '2022-05-26 15:25:38.750503', NULL, NULL, false);
INSERT INTO public.operation VALUES (4, 'Reactivate', '2022-05-26 15:25:49.246551', NULL, NULL, false);


--
-- TOC entry 4392 (class 0 OID 4095008)
-- Dependencies: 220
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: xddarjqthcwysn
--

INSERT INTO public.person VALUES (1, 'teste teste', '1998-06-08', '99426614095', '240123', 'teste@teste.com', '61991585699', '2022-05-26 15:56:04.569769', NULL, NULL, false, 3);
INSERT INTO public.person VALUES (6, 'string', '2022-06-01', 'string', 'string', 'string', 'string', '2022-05-26 19:58:24.026943', '2022-06-01 19:43:44.75054', '2022-06-01 19:43:44.750207', true, 1);
INSERT INTO public.person VALUES (9, 'Funcionário dia 30 de maio', '2022-05-30', '59222540069', 'dia30rg', 'dia30@dia30', 'string', '2022-05-30 14:28:18.698797', '2022-06-01 20:11:12.084109', '2022-06-01 20:11:12.082773', true, 2);
INSERT INTO public.person VALUES (3, 'Funcionario da Rota Certa', '1900-10-10', '03685758101', NULL, 'string@rota.com', 'string', '2022-05-26 16:18:13.600777', '2022-06-01 20:15:30.275974', '2022-06-01 20:15:30.274606', true, 1);
INSERT INTO public.person VALUES (8, 'Teste dia 27', '2022-05-27', '99325940086', 'testedia27', 'testedia27@gmail', 'string', '2022-05-27 16:42:28.870907', '2022-06-01 20:15:45.701297', '2022-06-01 20:15:45.700946', true, 2);
INSERT INTO public.person VALUES (5, 'string teste tres', '2000-05-26', '50167717073', NULL, 'string@teste.com', 'string', '2022-05-26 16:32:22.013022', '2022-06-02 14:17:24.302877', '2022-06-02 14:17:24.301144', true, 1);
INSERT INTO public.person VALUES (15, 'Guilherme', '2022-05-31', '44482830038', '3105921', 'email@teste.com', '61931944141', '2022-06-02 16:54:21.568886', '2022-06-02 17:25:09.444772', '2022-06-02 17:25:09.443934', true, 1);
INSERT INTO public.person VALUES (14, 'Guilherme Teste', '2022-05-30', '01965602177', '3105923', 'guilherme@email.co', '61993142421', '2022-06-02 16:41:46.845469', '2022-06-02 17:34:31.476686', '2022-06-02 17:34:31.475235', true, 1);
INSERT INTO public.person VALUES (17, 'TESTE POST com reactivate', '2022-06-02', '21803985062', '21803985062asdf', 'react@react', 'phne', '2022-06-02 19:43:46.437358', NULL, NULL, false, 2);
INSERT INTO public.person VALUES (10, 'Miguel de Freitas PUT', '1998-03-13', '04809944123', '3135240', 'miguimuniz@gmail.com', '61991244542', '2022-05-31 13:04:08.762472', '2022-06-02 19:44:53.880425', '2022-06-02 19:44:53.879785', true, 1);


--
-- TOC entry 4394 (class 0 OID 4095015)
-- Dependencies: 222
-- Data for Name: profile; Type: TABLE DATA; Schema: public; Owner: xddarjqthcwysn
--

INSERT INTO public.profile VALUES (1, 'Administrador', '2022-05-26 15:21:06.994174', NULL, NULL, false);
INSERT INTO public.profile VALUES (2, 'Operador', '2022-05-26 15:21:15.425943', NULL, NULL, false);
INSERT INTO public.profile VALUES (3, 'Analista', '2022-05-26 15:21:37.285419', NULL, NULL, false);
INSERT INTO public.profile VALUES (4, 'Técnico', '2022-05-26 15:21:43.702963', NULL, NULL, false);


--
-- TOC entry 4396 (class 0 OID 4095021)
-- Dependencies: 224
-- Data for Name: status; Type: TABLE DATA; Schema: public; Owner: xddarjqthcwysn
--

INSERT INTO public.status VALUES (1, 'À fazer', '2022-05-26 15:23:48.288096', NULL, NULL, false);
INSERT INTO public.status VALUES (2, 'Concluído', '2022-05-26 15:24:07.394132', NULL, NULL, false);
INSERT INTO public.status VALUES (3, 'Urgente', '2022-05-26 15:24:18.274339', NULL, NULL, false);
INSERT INTO public.status VALUES (4, 'Pronto', '2022-05-26 15:24:24.523822', NULL, NULL, false);


--
-- TOC entry 4398 (class 0 OID 4095027)
-- Dependencies: 226
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: xddarjqthcwysn
--

INSERT INTO public."user" VALUES (1, 'string', '2022-05-26 16:18:13.606947', NULL, NULL, false, 3, 2);
INSERT INTO public."user" VALUES (2, 'string', '2022-05-26 16:32:22.018188', NULL, NULL, false, 5, 1);
INSERT INTO public."user" VALUES (3, NULL, '2022-05-26 19:58:24.031823', NULL, NULL, false, 6, 1);
INSERT INTO public."user" VALUES (4, 'string', '2022-05-27 16:42:28.899694', NULL, NULL, false, 8, 2);
INSERT INTO public."user" VALUES (5, 'string', '2022-05-30 14:28:19.2007', NULL, NULL, false, 9, 2);
INSERT INTO public."user" VALUES (9, NULL, '2022-06-02 16:54:21.572197', NULL, NULL, false, 15, 1);
INSERT INTO public."user" VALUES (8, NULL, '2022-06-02 16:41:46.86606', '2022-06-02 17:34:31.504297', NULL, true, 14, 1);
INSERT INTO public."user" VALUES (10, 'hashasg', '2022-06-02 19:43:46.444824', NULL, NULL, false, 17, 2);
INSERT INTO public."user" VALUES (6, NULL, '2022-05-31 13:04:08.952232', '2022-06-02 19:44:53.903743', NULL, true, 10, 1);


--
-- TOC entry 4419 (class 0 OID 0)
-- Dependencies: 210
-- Name: action_plan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xddarjqthcwysn
--

SELECT pg_catalog.setval('public.action_plan_id_seq', 50, true);


--
-- TOC entry 4420 (class 0 OID 0)
-- Dependencies: 212
-- Name: address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xddarjqthcwysn
--

SELECT pg_catalog.setval('public.address_id_seq', 10, true);


--
-- TOC entry 4421 (class 0 OID 0)
-- Dependencies: 215
-- Name: gender_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xddarjqthcwysn
--

SELECT pg_catalog.setval('public.gender_id_seq', 3, true);


--
-- TOC entry 4422 (class 0 OID 0)
-- Dependencies: 217
-- Name: log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xddarjqthcwysn
--

SELECT pg_catalog.setval('public.log_id_seq', 1, false);


--
-- TOC entry 4423 (class 0 OID 0)
-- Dependencies: 219
-- Name: operation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xddarjqthcwysn
--

SELECT pg_catalog.setval('public.operation_id_seq', 4, true);


--
-- TOC entry 4424 (class 0 OID 0)
-- Dependencies: 221
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xddarjqthcwysn
--

SELECT pg_catalog.setval('public.person_id_seq', 17, true);


--
-- TOC entry 4425 (class 0 OID 0)
-- Dependencies: 223
-- Name: profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xddarjqthcwysn
--

SELECT pg_catalog.setval('public.profile_id_seq', 4, true);


--
-- TOC entry 4426 (class 0 OID 0)
-- Dependencies: 225
-- Name: status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xddarjqthcwysn
--

SELECT pg_catalog.setval('public.status_id_seq', 4, true);


--
-- TOC entry 4427 (class 0 OID 0)
-- Dependencies: 227
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xddarjqthcwysn
--

SELECT pg_catalog.setval('public.user_id_seq', 10, true);


--
-- TOC entry 4205 (class 2606 OID 4095055)
-- Name: action_plan action_plan_pkey; Type: CONSTRAINT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.action_plan
    ADD CONSTRAINT action_plan_pkey PRIMARY KEY (id);


--
-- TOC entry 4207 (class 2606 OID 4095064)
-- Name: address address_person_code_key; Type: CONSTRAINT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_person_code_key UNIQUE (person_code);


--
-- TOC entry 4209 (class 2606 OID 4095070)
-- Name: address address_pkey; Type: CONSTRAINT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);


--
-- TOC entry 4211 (class 2606 OID 4095080)
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- TOC entry 4213 (class 2606 OID 4095089)
-- Name: gender gender_description_key; Type: CONSTRAINT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.gender
    ADD CONSTRAINT gender_description_key UNIQUE (description);


--
-- TOC entry 4215 (class 2606 OID 4095097)
-- Name: gender gender_pkey; Type: CONSTRAINT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.gender
    ADD CONSTRAINT gender_pkey PRIMARY KEY (id);


--
-- TOC entry 4217 (class 2606 OID 4095102)
-- Name: log log_pkey; Type: CONSTRAINT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.log
    ADD CONSTRAINT log_pkey PRIMARY KEY (id);


--
-- TOC entry 4219 (class 2606 OID 4095111)
-- Name: operation operation_pkey; Type: CONSTRAINT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.operation
    ADD CONSTRAINT operation_pkey PRIMARY KEY (id);


--
-- TOC entry 4226 (class 2606 OID 4095120)
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);


--
-- TOC entry 4228 (class 2606 OID 4095129)
-- Name: profile profile_pkey; Type: CONSTRAINT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (id);


--
-- TOC entry 4230 (class 2606 OID 4095136)
-- Name: status status_pkey; Type: CONSTRAINT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (id);


--
-- TOC entry 4232 (class 2606 OID 4095143)
-- Name: user user_person_code_key; Type: CONSTRAINT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_person_code_key UNIQUE (person_code);


--
-- TOC entry 4234 (class 2606 OID 4095154)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- TOC entry 4220 (class 1259 OID 4095162)
-- Name: ix_person_cpf; Type: INDEX; Schema: public; Owner: xddarjqthcwysn
--

CREATE UNIQUE INDEX ix_person_cpf ON public.person USING btree (cpf);


--
-- TOC entry 4221 (class 1259 OID 4095169)
-- Name: ix_person_email; Type: INDEX; Schema: public; Owner: xddarjqthcwysn
--

CREATE UNIQUE INDEX ix_person_email ON public.person USING btree (email);


--
-- TOC entry 4222 (class 1259 OID 4095176)
-- Name: ix_person_full_name; Type: INDEX; Schema: public; Owner: xddarjqthcwysn
--

CREATE INDEX ix_person_full_name ON public.person USING btree (full_name);


--
-- TOC entry 4223 (class 1259 OID 4095184)
-- Name: ix_person_phone; Type: INDEX; Schema: public; Owner: xddarjqthcwysn
--

CREATE INDEX ix_person_phone ON public.person USING btree (phone);


--
-- TOC entry 4224 (class 1259 OID 4095190)
-- Name: ix_person_rg; Type: INDEX; Schema: public; Owner: xddarjqthcwysn
--

CREATE UNIQUE INDEX ix_person_rg ON public.person USING btree (rg);


--
-- TOC entry 4235 (class 2606 OID 4095200)
-- Name: action_plan action_plan_status_fkey; Type: FK CONSTRAINT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.action_plan
    ADD CONSTRAINT action_plan_status_fkey FOREIGN KEY (status) REFERENCES public.status(id);


--
-- TOC entry 4236 (class 2606 OID 4095207)
-- Name: action_plan action_plan_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.action_plan
    ADD CONSTRAINT action_plan_user_fkey FOREIGN KEY ("user") REFERENCES public."user"(id);


--
-- TOC entry 4237 (class 2606 OID 4095212)
-- Name: address address_person_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_person_code_fkey FOREIGN KEY (person_code) REFERENCES public.person(id);


--
-- TOC entry 4238 (class 2606 OID 4095217)
-- Name: log log_user.id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.log
    ADD CONSTRAINT "log_user.id_fkey" FOREIGN KEY ("user.id") REFERENCES public."user"(id);


--
-- TOC entry 4239 (class 2606 OID 4095229)
-- Name: person person_gender_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_gender_code_fkey FOREIGN KEY (gender_code) REFERENCES public.gender(id);


--
-- TOC entry 4240 (class 2606 OID 4095234)
-- Name: user user_person_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_person_code_fkey FOREIGN KEY (person_code) REFERENCES public.person(id);


--
-- TOC entry 4241 (class 2606 OID 4095243)
-- Name: user user_profile_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: xddarjqthcwysn
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_profile_code_fkey FOREIGN KEY (profile_code) REFERENCES public.profile(id);


--
-- TOC entry 4406 (class 0 OID 0)
-- Dependencies: 4405
-- Name: DATABASE d1r4nd55de4oij; Type: ACL; Schema: -; Owner: xddarjqthcwysn
--

REVOKE CONNECT,TEMPORARY ON DATABASE d1r4nd55de4oij FROM PUBLIC;


--
-- TOC entry 4408 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: xddarjqthcwysn
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO xddarjqthcwysn;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- TOC entry 4409 (class 0 OID 0)
-- Dependencies: 870
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO xddarjqthcwysn;


-- Completed on 2022-06-22 19:13:52

--
-- PostgreSQL database dump complete
--

