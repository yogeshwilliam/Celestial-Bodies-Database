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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    year_discovered integer,
    meaning text,
    star_id integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    meaning text,
    is_visible_to_naked_eye boolean,
    constellation_id integer
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
    name character varying(30) NOT NULL,
    year_discovered integer,
    diameter_in_km integer,
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
    name character varying(30) NOT NULL,
    orbital_period_in_year numeric(5,2),
    rotation_period_in_days numeric(5,2),
    has_moon boolean,
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
    name character varying(30) NOT NULL,
    distance_in_light_year numeric(5,2),
    brightness_of_star numeric(3,2),
    approved_date date,
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Aquarius', NULL, 'Water-bearey', 1);
INSERT INTO public.constellation VALUES (2, 'Aries', NULL, 'Ram', 2);
INSERT INTO public.constellation VALUES (3, 'Bootes', NULL, 'Herdsman', 3);
INSERT INTO public.constellation VALUES (4, 'Capricomus', NULL, 'Sea goat', 4);
INSERT INTO public.constellation VALUES (5, 'Centaurus', NULL, 'Centaur', 5);
INSERT INTO public.constellation VALUES (6, 'Cetus', NULL, 'Sea monster', 9);
INSERT INTO public.constellation VALUES (7, 'Coma Berenices', 1536, 'Bereniceis heir', 6);
INSERT INTO public.constellation VALUES (8, 'Leo', NULL, 'Lion', 7);
INSERT INTO public.constellation VALUES (9, 'OPhiuchus', NULL, 'Serpent_bearer', 12);
INSERT INTO public.constellation VALUES (10, 'Pegasus', NULL, 'Pegasus', 10);
INSERT INTO public.constellation VALUES (11, 'Sagittarius', NULL, 'Archer', 11);
INSERT INTO public.constellation VALUES (12, 'Taurus', NULL, 'Bull', 8);
INSERT INTO public.constellation VALUES (13, 'Virgo', NULL, 'Virgin', 13);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Backward Galaxy', 'It seems to rotate in the opposite direction', false, 5);
INSERT INTO public.galaxy VALUES (2, 'Contaurus A', 'Named because it located in the contaurus', true, 5);
INSERT INTO public.galaxy VALUES (3, 'Black Eye Galaxy', 'It looks like an eye with a dark stripe', false, 7);
INSERT INTO public.galaxy VALUES (4, 'Coma Pinwheel Galaxy', 'It looks like a paper Pinwheel', false, 7);
INSERT INTO public.galaxy VALUES (5, 'Malin I', 'Named after its discovered', false, 7);
INSERT INTO public.galaxy VALUES (6, 'Mice Galaxies', 'Two galaxies with long talls', false, 7);
INSERT INTO public.galaxy VALUES (7, 'Needle Galaxy', 'Named because of its thin', false, 7);
INSERT INTO public.galaxy VALUES (8, 'Butterfly Galaxies', 'Binary galaxies', false, 13);
INSERT INTO public.galaxy VALUES (9, 'Sombrero Galaxy', 'Looks like a Sombrero', false, 13);
INSERT INTO public.galaxy VALUES (10, 'Little Sombrero Galaxy', 'It look like a Sombrero', false, 10);
INSERT INTO public.galaxy VALUES (11, 'Milky way', 'Our own galaxy', true, 11);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, 3476, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 1877, 23, 4);
INSERT INTO public.moon VALUES (3, 'Delmas', 1877, 13, 4);
INSERT INTO public.moon VALUES (4, 'Io', 1610, 3630, 4);
INSERT INTO public.moon VALUES (5, 'Thebe', 1979, 90, 4);
INSERT INTO public.moon VALUES (6, 'Europa', 1610, 3138, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 1610, 4800, 5);
INSERT INTO public.moon VALUES (8, 'Pan', 1985, 20, 5);
INSERT INTO public.moon VALUES (9, 'Enceladus', 1789, 502, 6);
INSERT INTO public.moon VALUES (10, 'Titan', 1655, 5150, 6);
INSERT INTO public.moon VALUES (11, 'Puck', 1985, 170, 6);
INSERT INTO public.moon VALUES (12, 'Umbriel', 1851, 1190, 7);
INSERT INTO public.moon VALUES (13, 'Titania', 1787, 1610, 7);
INSERT INTO public.moon VALUES (14, 'Oberon', 1787, 1550, 7);
INSERT INTO public.moon VALUES (15, 'Triton', 1846, 2720, 8);
INSERT INTO public.moon VALUES (16, 'Nereld', 1949, 340, 8);
INSERT INTO public.moon VALUES (17, 'Charon', 1978, 1200, 8);
INSERT INTO public.moon VALUES (18, 'Nix', 2005, 46, 11);
INSERT INTO public.moon VALUES (19, 'Keberos', 2011, 28, 11);
INSERT INTO public.moon VALUES (20, 'Hydra', 2005, 61, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0.24, 58.65, false, 13);
INSERT INTO public.planet VALUES (2, 'Venus', 0.62, 243.02, false, 7);
INSERT INTO public.planet VALUES (3, 'Earth', 1.00, 1.00, true, 5);
INSERT INTO public.planet VALUES (4, 'Mars', 1.88, 1.03, true, 8);
INSERT INTO public.planet VALUES (5, 'Jupiter', 11.86, 0.41, true, 9);
INSERT INTO public.planet VALUES (6, 'Saturn', 29.45, 0.44, true, 9);
INSERT INTO public.planet VALUES (7, 'Uranus', 84.02, 0.72, true, 4);
INSERT INTO public.planet VALUES (8, 'Neptune', 164.79, 0.67, true, 1);
INSERT INTO public.planet VALUES (9, 'Ceres', 4.60, 0.38, false, 7);
INSERT INTO public.planet VALUES (10, 'Sedna', 120.59, 0.43, false, 8);
INSERT INTO public.planet VALUES (11, 'Pluto', 247.90, 6.39, true, 11);
INSERT INTO public.planet VALUES (12, 'Eris', 559.00, 14.56, true, 9);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sadalsuud', 612.00, 2.90, '2016-08-21', 11);
INSERT INTO public.star VALUES (2, 'Hamal', 66.00, 2.01, '2016-07-20', 11);
INSERT INTO public.star VALUES (3, 'Arcturus', 37.00, 0.05, '2017-02-01', 11);
INSERT INTO public.star VALUES (4, 'Deneb Algebi', 39.00, 2.85, '2017-02-01', 11);
INSERT INTO public.star VALUES (5, 'Rigil Kentaurus', 4.36, 0.01, '2016-11-06', 11);
INSERT INTO public.star VALUES (6, 'Beta Comao Berenices', 30.00, 4.26, NULL, 11);
INSERT INTO public.star VALUES (7, 'Regulus', 77.00, 1.36, '2016-06-30', 11);
INSERT INTO public.star VALUES (8, 'Aldebaran', 65.23, 0.85, '2016-06-30', 11);
INSERT INTO public.star VALUES (9, 'Diphda', 96.22, 2.04, '2016-08-21', 11);
INSERT INTO public.star VALUES (10, 'Enif', 688.20, 2.40, '2016-07-20', 11);
INSERT INTO public.star VALUES (11, 'Kaus Australis', 143.20, 1.65, '2016-07-20', 11);
INSERT INTO public.star VALUES (12, 'Rasathague', 48.60, 2.08, '2016-07-20', 11);
INSERT INTO public.star VALUES (13, 'Spica', 260.90, 1.04, '2016-06-30', 11);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 13, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: constellation constellation_constellation_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_constellation_id_key UNIQUE (constellation_id);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: constellation constellation_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: galaxy galaxy_constellation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


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

