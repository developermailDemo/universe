--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    name character varying(100),
    asteroid_id integer NOT NULL,
    age integer NOT NULL,
    price integer NOT NULL,
    distance numeric(10,2),
    des text,
    is_apherical boolean
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(100),
    galaxy_id integer NOT NULL,
    age integer NOT NULL,
    price integer NOT NULL,
    distance numeric(10,2),
    des text,
    is_apherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(100),
    moon_id integer NOT NULL,
    age integer NOT NULL,
    price integer NOT NULL,
    distance numeric(10,2),
    des text,
    is_apherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(100),
    planet_id integer NOT NULL,
    age integer NOT NULL,
    price integer NOT NULL,
    distance numeric(10,2),
    des text,
    is_apherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(100),
    star_id integer NOT NULL,
    age integer NOT NULL,
    price integer NOT NULL,
    distance numeric(10,2),
    des text,
    is_apherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES ('a1', 1, 15, 20, 5.00, 'system', true);
INSERT INTO public.asteroid VALUES ('a2', 2, 15, 20, 5.00, 'system', true);
INSERT INTO public.asteroid VALUES ('a3', 3, 15, 20, 5.00, 'system', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('g1', 1, 15, 20, 5.00, 'system', true);
INSERT INTO public.galaxy VALUES ('g2', 2, 15, 20, 5.00, 'system', true);
INSERT INTO public.galaxy VALUES ('g3', 3, 15, 20, 5.00, 'system', true);
INSERT INTO public.galaxy VALUES ('g4', 4, 15, 20, 5.00, 'system', true);
INSERT INTO public.galaxy VALUES ('g5', 5, 15, 20, 5.00, 'system', true);
INSERT INTO public.galaxy VALUES ('g6', 6, 15, 20, 5.00, 'system', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('m1', 1, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.moon VALUES ('m2', 2, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.moon VALUES ('m3', 3, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.moon VALUES ('m4', 4, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.moon VALUES ('m5', 5, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.moon VALUES ('m6', 6, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.moon VALUES ('m7', 7, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.moon VALUES ('m8', 8, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.moon VALUES ('m9', 9, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.moon VALUES ('m10', 10, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.moon VALUES ('m11', 11, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.moon VALUES ('m12', 12, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.moon VALUES ('m13', 13, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.moon VALUES ('m14', 14, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.moon VALUES ('m15', 15, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.moon VALUES ('m16', 16, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.moon VALUES ('m17', 17, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.moon VALUES ('m18', 18, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.moon VALUES ('m98', 19, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.moon VALUES ('m20', 20, 15, 20, 5.00, 'system', true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('p1', 1, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.planet VALUES ('p2', 2, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.planet VALUES ('p3', 3, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.planet VALUES ('p4', 4, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.planet VALUES ('p5', 5, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.planet VALUES ('p6', 6, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.planet VALUES ('p7', 7, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.planet VALUES ('p8', 8, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.planet VALUES ('p9', 9, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.planet VALUES ('p10', 10, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.planet VALUES ('p11', 11, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.planet VALUES ('p12', 12, 15, 20, 5.00, 'system', true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('s1', 1, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.star VALUES ('s2', 2, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.star VALUES ('s3', 3, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.star VALUES ('s4', 4, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.star VALUES ('s5', 5, 15, 20, 5.00, 'system', true, 1);
INSERT INTO public.star VALUES ('s6', 6, 15, 20, 5.00, 'system', true, 1);


--
-- Name: asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: asteroid asteroid_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_id_key UNIQUE (asteroid_id);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

