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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    diameter_ly integer NOT NULL,
    famous_rating integer,
    distance_ly numeric,
    description text,
    big boolean,
    small boolean
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
    name character varying NOT NULL,
    size integer NOT NULL,
    weight numeric,
    description text,
    big boolean,
    small boolean,
    planet_id integer
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
    name character varying NOT NULL,
    size integer NOT NULL,
    weight numeric,
    description text,
    big boolean,
    small boolean,
    star_id integer
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
-- Name: races; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.races (
    races_id integer NOT NULL,
    name character varying NOT NULL,
    population integer NOT NULL,
    avg_height numeric,
    description text,
    magic boolean,
    long_life boolean,
    moon_id integer
);


ALTER TABLE public.races OWNER TO freecodecamp;

--
-- Name: races_races_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.races_races_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.races_races_id_seq OWNER TO freecodecamp;

--
-- Name: races_races_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.races_races_id_seq OWNED BY public.races.races_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    diameter_km integer NOT NULL,
    weight_ekg numeric,
    description text,
    big boolean,
    small boolean,
    galaxy_id integer
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
-- Name: races races_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.races ALTER COLUMN races_id SET DEFAULT nextval('public.races_races_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Tea Way', 100000, 1, 0, 'twin of Milky Way', true, false);
INSERT INTO public.galaxy VALUES (2, 'RMC', 1400, 2, 158000, 'twin of LMC', false, true);
INSERT INTO public.galaxy VALUES (3, 'Undromeda', 220000, 3, 2500000, 'twin of Andromeda', true, false);
INSERT INTO public.galaxy VALUES (4, 'Cigarette', 37000, 4, 11500000, 'twin of Cigar', false, true);
INSERT INTO public.galaxy VALUES (5, 'Pinball', 170000, 5, 20870000, 'twin of Pinwheel', false, true);
INSERT INTO public.galaxy VALUES (6, 'Zombrero', 50000, 6, 29350000, 'twin of Sombrero', false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (5, 'A', 10, 30, 'a', true, false, 3);
INSERT INTO public.moon VALUES (6, 'B', 11, 31, 'b', true, false, 4);
INSERT INTO public.moon VALUES (7, 'C', 12, 32, 'c', true, false, 5);
INSERT INTO public.moon VALUES (8, 'D', 13, 33, 'd', true, false, 6);
INSERT INTO public.moon VALUES (9, 'E', 14, 34, 'e', true, false, 7);
INSERT INTO public.moon VALUES (10, 'F', 15, 35, 'f', true, false, 8);
INSERT INTO public.moon VALUES (11, 'G', 16, 36, 'g', true, false, 9);
INSERT INTO public.moon VALUES (12, 'H', 17, 37, 'h', true, false, 9);
INSERT INTO public.moon VALUES (13, 'I', 18, 38, 'i', true, false, 10);
INSERT INTO public.moon VALUES (14, 'J', 19, 39, 'j', true, false, 11);
INSERT INTO public.moon VALUES (15, 'K', 20, 40, 'k', true, false, 12);
INSERT INTO public.moon VALUES (16, 'L', 21, 41, 'l', true, false, 13);
INSERT INTO public.moon VALUES (17, 'M', 22, 42, 'm', true, false, 14);
INSERT INTO public.moon VALUES (18, 'N', 22, 42, 'n', true, false, 3);
INSERT INTO public.moon VALUES (19, 'O', 24, 44, 'o', true, false, 4);
INSERT INTO public.moon VALUES (20, 'P', 25, 45, 'p', true, false, 5);
INSERT INTO public.moon VALUES (21, 'Q', 26, 46, 'q', true, false, 6);
INSERT INTO public.moon VALUES (22, 'R', 27, 47, 'r', true, false, 7);
INSERT INTO public.moon VALUES (23, 'S', 28, 48, 's', true, false, 8);
INSERT INTO public.moon VALUES (24, 'T', 29, 49, 't', true, false, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Miku', 34, 42, 'anime', false, true, 1);
INSERT INTO public.planet VALUES (4, 'Ausuna', 24, 45, 'swordgirl', false, true, 2);
INSERT INTO public.planet VALUES (5, 'Sora', 36, 48, 'healer', false, true, 3);
INSERT INTO public.planet VALUES (6, 'Ren', 42, 45, 'warrior', false, true, 4);
INSERT INTO public.planet VALUES (7, 'Ram', 41, 45, 'tanker', false, true, 5);
INSERT INTO public.planet VALUES (8, 'Ashe', 31, 50, 'archer', false, true, 6);
INSERT INTO public.planet VALUES (9, 'Lux', 30, 46, 'light mage', false, true, 1);
INSERT INTO public.planet VALUES (10, 'Arhi', 26, 47, 'fox girl', false, true, 2);
INSERT INTO public.planet VALUES (11, 'Jinx', 24, 50, 'jinxed', false, true, 3);
INSERT INTO public.planet VALUES (12, 'Vayne', 24, 49, 'hunter', false, true, 4);
INSERT INTO public.planet VALUES (13, 'Riven', 30, 52, 'berserker', false, true, 5);
INSERT INTO public.planet VALUES (14, 'Zoe', 22, 38, 'mage', false, true, 6);


--
-- Data for Name: races; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.races VALUES (1, 'human', 400000, 180.5, 'hybrid skill', true, false, 5);
INSERT INTO public.races VALUES (2, 'elf', 6500, 175.8, 'magic master', true, false, 6);
INSERT INTO public.races VALUES (3, 'dwarf', 32500, 120.6, 'tech master', false, true, 7);
INSERT INTO public.races VALUES (4, 'Orc', 80000, 210.9, 'Strong Physiq', true, false, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Milk Tea', 12742, 5.72, 'sweet', true, false, 1);
INSERT INTO public.star VALUES (2, 'EMC', 541, 4.56, 'elec', false, true, 2);
INSERT INTO public.star VALUES (3, 'Untra', 89153, 6.39, 'man', true, false, 2);
INSERT INTO public.star VALUES (4, 'Ziggar', 22, 1.2, 'smoke', false, true, 4);
INSERT INTO public.star VALUES (5, 'Balloon', 880000, 11.5, 'hydrogen', true, false, 5);
INSERT INTO public.star VALUES (6, 'Zumba', 952, 3.2, 'dance', false, true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: races_races_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.races_races_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: races races_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.races
    ADD CONSTRAINT races_description_key UNIQUE (description);


--
-- Name: races races_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.races
    ADD CONSTRAINT races_pkey PRIMARY KEY (races_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: races races_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.races
    ADD CONSTRAINT races_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- PostgreSQL database dump complete
--

