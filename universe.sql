--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: blackholes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackholes (
    blackholes_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(40),
    year integer,
    diametro_km numeric(10,2),
    description text
);


ALTER TABLE public.blackholes OWNER TO freecodecamp;

--
-- Name: blackholes_bh_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackholes_bh_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackholes_bh_id_seq OWNER TO freecodecamp;

--
-- Name: blackholes_bh_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackholes_bh_id_seq OWNED BY public.blackholes.blackholes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    "diametro_años_luz" integer,
    tipo character varying(30),
    discovered_by character varying(30),
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    year integer,
    diametro_km numeric(10,2),
    planet_id integer NOT NULL,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    year integer,
    diametro_km numeric(10,2),
    habitable boolean,
    star_id integer NOT NULL,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    year integer,
    diametro_km numeric(10,2),
    is_alive boolean,
    galaxy_id integer NOT NULL,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: blackholes blackholes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholes ALTER COLUMN blackholes_id SET DEFAULT nextval('public.blackholes_bh_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: blackholes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackholes VALUES (1, 1, 'Sagitario A*', 13000, 24000000.00, NULL);
INSERT INTO public.blackholes VALUES (2, 2, 'Andromeda A*', 10000, 30000000.00, NULL);
INSERT INTO public.blackholes VALUES (3, 3, 'M33 X-7', 5000, 42.00, NULL);
INSERT INTO public.blackholes VALUES (4, 4, 'NGC 4594*', 9000, 60000000.00, NULL);
INSERT INTO public.blackholes VALUES (5, 5, 'NGC 4826*', 9000, 6000000.00, NULL);
INSERT INTO public.blackholes VALUES (6, 6, 'M82 X-1', 10000, 300.00, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 100000, 'Espiral barrada', 'Civilizaciones antiguas', NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 220000, 'Espiral barrada', 'Abd al-rahman al-Sufi', NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulo', 60000, 'Espiral', 'Giovanni Battista Hodierna', NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 50000, 'Espiral lenticular', 'Pierre Mechain', NULL);
INSERT INTO public.galaxy VALUES (5, 'Ojo Negro', 54000, 'Espiral', 'Edward Pigott', NULL);
INSERT INTO public.galaxy VALUES (6, 'Cigarro', 37000, 'Starbust/Espiral irregular', 'Johann Elert Bode', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 4500, 3474.00, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Fobos', 4500, 22.00, 2, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 4500, 12.00, 2, NULL);
INSERT INTO public.moon VALUES (4, 'Almach-b I', 100, 800.00, 3, NULL);
INSERT INTO public.moon VALUES (5, 'Almach-b II', 90, 600.00, 3, NULL);
INSERT INTO public.moon VALUES (6, 'Almach-c I', 80, 1500.00, 4, NULL);
INSERT INTO public.moon VALUES (7, 'Almach-c II', 70, 1000.00, 4, NULL);
INSERT INTO public.moon VALUES (8, 'Var83-I a', 60, 3000.00, 5, NULL);
INSERT INTO public.moon VALUES (9, 'Var83-I b', 50, 2000.00, 5, NULL);
INSERT INTO public.moon VALUES (10, 'Var 83-II a', 40, 1500.00, 6, NULL);
INSERT INTO public.moon VALUES (11, 'Var83-II b', 30, 800.00, 6, NULL);
INSERT INTO public.moon VALUES (12, 'Sombrero-1a', 60, 2000.00, 7, NULL);
INSERT INTO public.moon VALUES (13, 'Sombrero-1b', 55, 1700.00, 7, NULL);
INSERT INTO public.moon VALUES (14, 'Sombrero-2a', 45, 1300.00, 8, NULL);
INSERT INTO public.moon VALUES (15, 'Sombrero-2b', 40, 1000.00, 8, NULL);
INSERT INTO public.moon VALUES (16, 'ON-a1', 60, 1600.00, 9, NULL);
INSERT INTO public.moon VALUES (17, 'ON-a2', 55, 1200.00, 9, NULL);
INSERT INTO public.moon VALUES (18, 'ON-b1', 50, 800.00, 10, NULL);
INSERT INTO public.moon VALUES (19, 'ON-b2', 45, 600.00, 10, NULL);
INSERT INTO public.moon VALUES (20, 'Cigarro-Ia', 25, 1400.00, 11, NULL);
INSERT INTO public.moon VALUES (21, 'Cigarro-Ib', 20, 1000.00, 11, NULL);
INSERT INTO public.moon VALUES (22, 'Cigarro-IIa', 22, 1200.00, 12, NULL);
INSERT INTO public.moon VALUES (23, 'Cigarro-IIb', 18, 900.00, 12, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', 4540, 12742.00, true, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Marte', 4600, 6779.00, false, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Almach b', 200, 15000.00, false, 2, NULL);
INSERT INTO public.planet VALUES (4, 'Almach c', 150, 13000.00, true, 2, NULL);
INSERT INTO public.planet VALUES (5, 'Var83-I', 100, 40000.00, false, 3, NULL);
INSERT INTO public.planet VALUES (6, 'Var83-II', 80, 12000.00, true, 3, NULL);
INSERT INTO public.planet VALUES (7, 'Sombrero-1', 90, 16000.00, false, 4, NULL);
INSERT INTO public.planet VALUES (8, 'Sombrero-2', 50, 14000.00, true, 4, NULL);
INSERT INTO public.planet VALUES (9, 'OjoNegro-a', 70, 11000.00, true, 5, NULL);
INSERT INTO public.planet VALUES (10, 'OjoNegro-b', 60, 8000.00, false, 5, NULL);
INSERT INTO public.planet VALUES (11, 'Cigarro-I', 30, 15000.00, false, 6, NULL);
INSERT INTO public.planet VALUES (12, 'Cigarro-II', 25, 13000.00, true, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 4600, 1392700.00, true, 1, NULL);
INSERT INTO public.star VALUES (2, 'Almach', 200, 67000000.00, true, 2, NULL);
INSERT INTO public.star VALUES (3, 'M33-Var83', 50, 1400000.00, false, 3, NULL);
INSERT INTO public.star VALUES (4, 'NGC 4594-V1', 100, 1200000.00, false, 4, NULL);
INSERT INTO public.star VALUES (5, 'NGC 4826-V2', 60, 1500000.00, true, 5, NULL);
INSERT INTO public.star VALUES (6, 'M82-X2', 20, 1800000.00, true, 6, NULL);


--
-- Name: blackholes_bh_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackholes_bh_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackholes blackholes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholes
    ADD CONSTRAINT blackholes_pkey PRIMARY KEY (blackholes_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: blackholes unique_bh_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholes
    ADD CONSTRAINT unique_bh_name UNIQUE (name);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: blackholes blackholes_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholes
    ADD CONSTRAINT blackholes_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

