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
    name character varying(40) NOT NULL,
    dist_from_earth_in_ly integer,
    solar_mass numeric(4,4),
    description text,
    traversable boolean,
    num_of_planets integer
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
    name character varying(40) NOT NULL,
    dist_from_earth_in_ly integer,
    solar_mass numeric(4,4),
    description text,
    habitable boolean,
    radius_in_km integer,
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
    name character varying(40) NOT NULL,
    dist_from_earth_in_ly integer,
    solar_mass numeric(4,4),
    description text,
    habitable boolean,
    radius_in_km integer,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    dist_from_earth_in_ly integer,
    solar_mass numeric(4,4),
    description text,
    traversable boolean,
    radius_in_km integer,
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
-- Name: wormholes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.wormholes (
    wormholes_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer
);


ALTER TABLE public.wormholes OWNER TO freecodecamp;

--
-- Name: wormholes_wormhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.wormholes_wormhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wormholes_wormhole_id_seq OWNER TO freecodecamp;

--
-- Name: wormholes_wormhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.wormholes_wormhole_id_seq OWNED BY public.wormholes.wormholes_id;


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
-- Name: wormholes wormholes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.wormholes ALTER COLUMN wormholes_id SET DEFAULT nextval('public.wormholes_wormhole_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'ab12', 100, 0.2512, 'generic description', true, 15);
INSERT INTO public.galaxy VALUES (2, 'acb132', 200, 0.5312, 'generic description', true, 11);
INSERT INTO public.galaxy VALUES (3, 'acb1sad32', 240, 0.6712, 'generic description', true, 22);
INSERT INTO public.galaxy VALUES (4, 'acb1sa64d32', 440, 0.8882, 'generic description', false, 27);
INSERT INTO public.galaxy VALUES (5, 'acb1sxzza64d32', 740, 0.9582, 'generic description', false, 141);
INSERT INTO public.galaxy VALUES (6, 'xzza64d32', 1240, 0.9599, 'generic description', true, 541);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'ganymede1', 9823, 0.0999, 'generic description', false, 3500, 3);
INSERT INTO public.moon VALUES (2, 'ganymede2', 9823, 0.0999, 'generic description', false, 3500, 3);
INSERT INTO public.moon VALUES (3, 'ganymede3', 9823, 0.0999, 'generic description', false, 3500, 3);
INSERT INTO public.moon VALUES (4, 'ganymede4', 9823, 0.0999, 'generic description', false, 3500, 3);
INSERT INTO public.moon VALUES (5, 'ganymede5', 9823, 0.0999, 'generic description', false, 3500, 3);
INSERT INTO public.moon VALUES (6, 'ganymede6', 9823, 0.0999, 'generic description', false, 3500, 3);
INSERT INTO public.moon VALUES (7, 'ganymede7', 9823, 0.0999, 'generic description', false, 3500, 3);
INSERT INTO public.moon VALUES (8, 'ganymede8', 9823, 0.0999, 'generic description', false, 3500, 3);
INSERT INTO public.moon VALUES (9, 'ganymede9', 9823, 0.0999, 'generic description', false, 3500, 3);
INSERT INTO public.moon VALUES (10, 'ganymedea', 9823, 0.0999, 'generic description', false, 3500, 3);
INSERT INTO public.moon VALUES (11, 'ganymedeb', 9823, 0.0999, 'generic description', false, 3500, 3);
INSERT INTO public.moon VALUES (12, 'ganymedec', 9823, 0.0999, 'generic description', false, 3500, 3);
INSERT INTO public.moon VALUES (13, 'ganymeded', 9823, 0.0999, 'generic description', false, 3500, 3);
INSERT INTO public.moon VALUES (14, 'ganymedee', 9823, 0.0999, 'generic description', false, 3500, 3);
INSERT INTO public.moon VALUES (15, 'ganymedef', 9823, 0.0999, 'generic description', false, 3500, 3);
INSERT INTO public.moon VALUES (16, 'ganymedef1', 9823, 0.0999, 'generic description', false, 3500, 3);
INSERT INTO public.moon VALUES (17, 'ganymedef2', 9823, 0.0999, 'generic description', false, 3500, 3);
INSERT INTO public.moon VALUES (18, 'ganymedef3', 9823, 0.0999, 'generic description', false, 3500, 3);
INSERT INTO public.moon VALUES (19, 'ganymedef4', 9823, 0.0999, 'generic description', false, 3500, 3);
INSERT INTO public.moon VALUES (20, 'ganymedef5', 9823, 0.0999, 'generic description', false, 3500, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'dkic1981', 8484, 0.8781, 'generic description', true, 34000, 1);
INSERT INTO public.planet VALUES (2, 'dsmkic1981', 8498, 0.1001, 'generic description', false, 3000, 1);
INSERT INTO public.planet VALUES (3, 'dlgkic1981', 9085, 0.9991, 'generic description', false, 73000, 1);
INSERT INTO public.planet VALUES (4, 'gkic1981', 9045, 0.9991, 'generic description', true, 13000, 2);
INSERT INTO public.planet VALUES (5, 'lmagkic1981', 1000, 0.4449, 'generic description', true, 17622, 2);
INSERT INTO public.planet VALUES (6, 'smagkic1981', 1500, 0.0149, 'generic description', false, 4622, 1);
INSERT INTO public.planet VALUES (7, 'smagkic1982', 1500, 0.0149, 'generic description', false, 4622, 3);
INSERT INTO public.planet VALUES (8, 'smagkic1983', 1500, 0.0149, 'generic description', false, 4622, 3);
INSERT INTO public.planet VALUES (9, 'smagkic1984', 1500, 0.0149, 'generic description', false, 4622, 3);
INSERT INTO public.planet VALUES (10, 'smagkic1985', 1500, 0.0149, 'generic description', false, 4622, 3);
INSERT INTO public.planet VALUES (11, 'smagkic1988', 1500, 0.0149, 'generic description', false, 4622, 3);
INSERT INTO public.planet VALUES (12, 'smagkic1998', 1500, 0.0149, 'generic description', false, 4622, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, '9012ab', 1240, 0.9599, 'generic description', false, 541, 1);
INSERT INTO public.star VALUES (2, '1192xzab', 120, 0.0999, 'generic description', false, 31000, 2);
INSERT INTO public.star VALUES (3, '11qw2xkab', 520, 0.0199, 'generic description', false, 34022, 3);
INSERT INTO public.star VALUES (4, 'sv11qw2xkab', 723, 0.5199, 'generic description', false, 44222, 3);
INSERT INTO public.star VALUES (5, 'sv11qw2xkabv1', 723, 0.5199, 'generic description', false, 44222, 4);
INSERT INTO public.star VALUES (6, 'lhjsivbv1', 420, 0.7199, 'generic description', false, 25622, 5);
INSERT INTO public.star VALUES (7, 'lh1234234', 42096, 0.3449, 'generic description', false, 85622, 6);


--
-- Data for Name: wormholes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.wormholes VALUES (1, 'ibc1', 2);
INSERT INTO public.wormholes VALUES (2, 'ibc2', 3);
INSERT INTO public.wormholes VALUES (4, 'ibc3', 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: wormholes_wormhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.wormholes_wormhole_id_seq', 4, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: wormholes wormholes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.wormholes
    ADD CONSTRAINT wormholes_name_key UNIQUE (name);


--
-- Name: wormholes wormholes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.wormholes
    ADD CONSTRAINT wormholes_pkey PRIMARY KEY (wormholes_id);


--
-- Name: moon moon_is_of_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_is_of_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_has_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_has_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_belongs_to_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_belongs_to_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: wormholes wormholes_closest_to_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.wormholes
    ADD CONSTRAINT wormholes_closest_to_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

