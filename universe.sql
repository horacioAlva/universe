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
-- Name: continents; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.continents (
    continents_id integer NOT NULL,
    name character varying(30),
    description character varying(30) NOT NULL
);


ALTER TABLE public.continents OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    description text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer,
    age integer NOT NULL,
    description text,
    diameter numeric(8,2)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    star_id integer,
    age integer NOT NULL,
    description text,
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer,
    age integer NOT NULL,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: continents; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.continents VALUES (1, 'continent1', 'isgay');
INSERT INTO public.continents VALUES (2, 'continent2', 'isgay');
INSERT INTO public.continents VALUES (3, 'continent3', 'isgay');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 12, 'isgay1', false);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 12, 'isgay2', false);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 12, 'isgay3', false);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 12, 'isgay4', true);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 12, 'isgay5', true);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 12, 'isgay6', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 1, 5, 'isgay', 45.34);
INSERT INTO public.moon VALUES (2, 'moon2', 1, 5, 'isgay', 45.34);
INSERT INTO public.moon VALUES (3, 'moon3', 1, 5, 'isgay', 45.34);
INSERT INTO public.moon VALUES (4, 'moon4', 1, 5, 'isgay', 45.34);
INSERT INTO public.moon VALUES (5, 'moon5', 1, 5, 'isgay', 45.34);
INSERT INTO public.moon VALUES (6, 'moon6', 1, 5, 'isgay', 45.34);
INSERT INTO public.moon VALUES (7, 'moon7', 1, 5, 'isgay', 45.34);
INSERT INTO public.moon VALUES (8, 'moon8', 1, 5, 'isgay', 45.34);
INSERT INTO public.moon VALUES (9, 'moon9', 1, 5, 'isgay', 45.34);
INSERT INTO public.moon VALUES (10, 'moon10', 1, 5, 'isgay', 45.34);
INSERT INTO public.moon VALUES (11, 'moon11', 2, 5, 'isgay', 45.34);
INSERT INTO public.moon VALUES (12, 'moon12', 2, 5, 'isgay', 25.34);
INSERT INTO public.moon VALUES (13, 'moon13', 2, 5, 'isgay', 25.34);
INSERT INTO public.moon VALUES (14, 'moon14', 2, 5, 'isgay', 25.34);
INSERT INTO public.moon VALUES (15, 'moon15', 2, 5, 'isgay', 25.34);
INSERT INTO public.moon VALUES (16, 'moon16', 2, 5, 'isgay', 25.34);
INSERT INTO public.moon VALUES (17, 'moon17', 2, 5, 'isgay', 25.34);
INSERT INTO public.moon VALUES (18, 'moon18', 2, 5, 'isgay', 25.34);
INSERT INTO public.moon VALUES (19, 'moon19', 2, 5, 'isgay', 25.34);
INSERT INTO public.moon VALUES (20, 'moon20', 2, 5, 'isgay', 25.34);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 1, 8, 'isgay', false);
INSERT INTO public.planet VALUES (2, 'planet2', 1, 8, 'isgay', false);
INSERT INTO public.planet VALUES (3, 'planet3', 1, 8, 'isgay', false);
INSERT INTO public.planet VALUES (4, 'planet4', 1, 8, 'isgay', false);
INSERT INTO public.planet VALUES (5, 'planet5', 1, 8, 'isgay', false);
INSERT INTO public.planet VALUES (6, 'planet6', 1, 8, 'isgay', false);
INSERT INTO public.planet VALUES (7, 'planet7', 2, 8, 'isgay', false);
INSERT INTO public.planet VALUES (8, 'planet8', 2, 8, 'isgay', false);
INSERT INTO public.planet VALUES (9, 'planet9', 2, 8, 'isgay', false);
INSERT INTO public.planet VALUES (10, 'planet10', 2, 8, 'isgay', false);
INSERT INTO public.planet VALUES (11, 'planet11', 2, 8, 'isgay', false);
INSERT INTO public.planet VALUES (12, 'planet12', 2, 8, 'isgay', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 1, 15, 'isgay');
INSERT INTO public.star VALUES (2, 'star2', 1, 15, 'isgay');
INSERT INTO public.star VALUES (3, 'star3', 1, 15, 'isgay');
INSERT INTO public.star VALUES (4, 'star4', 2, 15, 'isgay');
INSERT INTO public.star VALUES (5, 'star5', 2, 15, 'isgay');
INSERT INTO public.star VALUES (6, 'star6', 2, 15, 'isgay');


--
-- Name: continents continents_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continents
    ADD CONSTRAINT continents_name_key UNIQUE (name);


--
-- Name: continents continents_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continents
    ADD CONSTRAINT continents_pkey PRIMARY KEY (continents_id);


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

