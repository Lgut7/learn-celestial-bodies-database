--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    number_of_planets integer,
    has_a_black_hole boolean,
    form text
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
    name character varying(255),
    decription text,
    mass integer,
    planet_id integer NOT NULL
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
    name character varying(255) NOT NULL,
    has_water boolean NOT NULL,
    diameter numeric(10,2) NOT NULL,
    star_id integer NOT NULL
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
-- Name: spaceprobe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spaceprobe (
    spaceprobe_id integer NOT NULL,
    name character varying(255) NOT NULL,
    number_of_astronauts integer
);


ALTER TABLE public.spaceprobe OWNER TO freecodecamp;

--
-- Name: spaceprobe_spaceprobe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.spaceprobe_spaceprobe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spaceprobe_spaceprobe_id_seq OWNER TO freecodecamp;

--
-- Name: spaceprobe_spaceprobe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.spaceprobe_spaceprobe_id_seq OWNED BY public.spaceprobe.spaceprobe_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    size integer,
    temperature numeric(8,2),
    galaxy_id integer NOT NULL
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
-- Name: spaceprobe spaceprobe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceprobe ALTER COLUMN spaceprobe_id SET DEFAULT nextval('public.spaceprobe_spaceprobe_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milchstraße', 8, true, 'Ringe');
INSERT INTO public.galaxy VALUES (2, 'alpha1', 28, false, 'Schraube');
INSERT INTO public.galaxy VALUES (3, 'beta2', 13, false, 'Ringe');
INSERT INTO public.galaxy VALUES (4, 'gamma3', 63, true, 'Spirale');
INSERT INTO public.galaxy VALUES (5, 'delat4', 44, true, 'Spirale');
INSERT INTO public.galaxy VALUES (6, 'Bernd', 3, false, 'Reihe');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Trabant1', 'Rund', 23425, 1);
INSERT INTO public.moon VALUES (3, 'Trabant2', 'Oval', 29796965, 1);
INSERT INTO public.moon VALUES (4, 'Trabant3', 'Rechteckig', 96965, 1);
INSERT INTO public.moon VALUES (5, 'Trabant4', '', 96965, 1);
INSERT INTO public.moon VALUES (6, 'Trabant5', '', 234, 1);
INSERT INTO public.moon VALUES (7, 'Trabant6', '', 1134651, 3);
INSERT INTO public.moon VALUES (8, 'Trabant7', '', 143551, 7);
INSERT INTO public.moon VALUES (9, 'Trabant8', '', 1677551, 10);
INSERT INTO public.moon VALUES (11, 'Trabant9', '', 1677551, 10);
INSERT INTO public.moon VALUES (12, 'Trabant10', '', 1677551, 10);
INSERT INTO public.moon VALUES (15, 'Trabant11', '', 13457551, 14);
INSERT INTO public.moon VALUES (16, 'Trabant12', '', 13457551, 13);
INSERT INTO public.moon VALUES (17, 'Trabant13', '', 13457551, 13);
INSERT INTO public.moon VALUES (18, 'Trabant14', '', 13457551, 13);
INSERT INTO public.moon VALUES (19, 'Trabant15', '', 13457551, 13);
INSERT INTO public.moon VALUES (20, 'Trabant16', '', 166666, 8);
INSERT INTO public.moon VALUES (21, 'Trabant17', '', 166666, 7);
INSERT INTO public.moon VALUES (22, 'Trabant18', '', 34266, 3);
INSERT INTO public.moon VALUES (23, 'Trabant19', '', 32777766, 3);
INSERT INTO public.moon VALUES (24, 'Trabant20', '', 3345996, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Erde', true, 12742.00, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', true, 234552.00, 4);
INSERT INTO public.planet VALUES (4, 'Mars', false, 93475.00, 3);
INSERT INTO public.planet VALUES (5, 'Saturn2', false, 234234.00, 2);
INSERT INTO public.planet VALUES (6, 'Venus1', false, 11111.00, 1);
INSERT INTO public.planet VALUES (7, 'Venus2', false, 111234.00, 2);
INSERT INTO public.planet VALUES (8, 'Merkus4', true, 41234.00, 4);
INSERT INTO public.planet VALUES (10, 'Galaxus', true, 923554.00, 3);
INSERT INTO public.planet VALUES (11, 'Crypton', true, 3242344.00, 2);
INSERT INTO public.planet VALUES (12, 'Pluto', true, 1.00, 1);
INSERT INTO public.planet VALUES (13, 'Neptun', true, 2345.00, 1);
INSERT INTO public.planet VALUES (14, 'Mordor', false, 34565.00, 7);


--
-- Data for Name: spaceprobe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spaceprobe VALUES (1, 'MIR', 7);
INSERT INTO public.spaceprobe VALUES (2, 'ISS', 12);
INSERT INTO public.spaceprobe VALUES (3, 'SPUTNIK', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sonne', 23478688, 87835.23, 1);
INSERT INTO public.star VALUES (2, 'Solaris', 2432668, 23435.23, 4);
INSERT INTO public.star VALUES (3, 'Zwerg', 11111, 11111.33, 2);
INSERT INTO public.star VALUES (4, 'Sauron', 1234567, 34584.63, 3);
INSERT INTO public.star VALUES (6, 'Solaris2', 134534252, 300005.43, 6);
INSERT INTO public.star VALUES (7, 'Solaris3', 2345252, 12345.43, 5);


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
-- Name: spaceprobe_spaceprobe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.spaceprobe_spaceprobe_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name UNIQUE (name);


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
-- Name: spaceprobe spaceprobe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceprobe
    ADD CONSTRAINT spaceprobe_name_key UNIQUE (name);


--
-- Name: spaceprobe spaceprobe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceprobe
    ADD CONSTRAINT spaceprobe_pkey PRIMARY KEY (spaceprobe_id);


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
-- PostgreSQL database dump complete
--

