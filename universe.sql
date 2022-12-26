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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(80) NOT NULL,
    age integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    is_spherical boolean NOT NULL
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(80) NOT NULL,
    age integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    is_spherical boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(80) NOT NULL,
    age integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    is_spherical boolean NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(80) NOT NULL,
    age integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    is_spherical boolean NOT NULL,
    star_id integer,
    race text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(80) NOT NULL,
    age integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    is_spehrical boolean NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (82882, 'calaku', 32, 347, true);
INSERT INTO public.earth VALUES (73373, 'bambam', 34, 742, false);
INSERT INTO public.earth VALUES (83774, 'unaka', 35, 321, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1263646, 'handy', 77, 7733, true);
INSERT INTO public.galaxy VALUES (9873, 'notsy', 99, 837, true);
INSERT INTO public.galaxy VALUES (973, 'footsy', 88, 748, true);
INSERT INTO public.galaxy VALUES (783778, 'bambu', 48, 8938, true);
INSERT INTO public.galaxy VALUES (8448, 'bambudh', 474, 8902, true);
INSERT INTO public.galaxy VALUES (7282, 'hankipan', 823, 89384, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (38383, 'hanlak', 48, 83938, true, NULL);
INSERT INTO public.moon VALUES (34563, 'hanldfak', 64, 8678, true, NULL);
INSERT INTO public.moon VALUES (93745, 'banda', 100, 7882, false, NULL);
INSERT INTO public.moon VALUES (9183, 'vastle', 101, 28382, true, NULL);
INSERT INTO public.moon VALUES (91856, 'vased', 101, 2832, true, NULL);
INSERT INTO public.moon VALUES (918234, 'vassse', 101, 2832, true, NULL);
INSERT INTO public.moon VALUES (910484, 'vasfe', 101, 2832, true, NULL);
INSERT INTO public.moon VALUES (9893894, 'marshhd', 101, 2832, true, NULL);
INSERT INTO public.moon VALUES (98753, 'mcoreyd', 101, 2832, true, NULL);
INSERT INTO public.moon VALUES (99948, 'mcoefd', 101, 2832, true, NULL);
INSERT INTO public.moon VALUES (94895, 'otoe', 101, 2832, true, NULL);
INSERT INTO public.moon VALUES (909, 'otfdoe', 101, 2832, true, NULL);
INSERT INTO public.moon VALUES (90994874, 'leicese', 101, 2832, true, NULL);
INSERT INTO public.moon VALUES (98822, 'leicesedse', 101, 2832, true, NULL);
INSERT INTO public.moon VALUES (848723, 'barnesydh', 101, 2832, true, NULL);
INSERT INTO public.moon VALUES (23453, 'buttler', 101, 2832, true, NULL);
INSERT INTO public.moon VALUES (294765, 'bufrr', 101, 2832, true, NULL);
INSERT INTO public.moon VALUES (294949, 'bufsd', 101, 2832, true, NULL);
INSERT INTO public.moon VALUES (2976348, 'brs', 101, 2832, true, NULL);
INSERT INTO public.moon VALUES (209489858, 'longstsss', 101, 2832, true, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (87387, 'dakar', 64, 898922, true, NULL, NULL);
INSERT INTO public.planet VALUES (74672, 'brand', 71, 84733, true, NULL, NULL);
INSERT INTO public.planet VALUES (6732, 'tiley', 97, 74664, false, NULL, NULL);
INSERT INTO public.planet VALUES (73774, 'teamer', 70, 4734, true, NULL, NULL);
INSERT INTO public.planet VALUES (7848, 'vardy', 76, 783, true, NULL, NULL);
INSERT INTO public.planet VALUES (78458, 'vardey', 76, 783, true, NULL, NULL);
INSERT INTO public.planet VALUES (78844, 'vadey', 76, 783, true, NULL, NULL);
INSERT INTO public.planet VALUES (793901, 'marrtey', 936, 783, true, NULL, NULL);
INSERT INTO public.planet VALUES (76601, 'joels', 476, 9722, true, NULL, NULL);
INSERT INTO public.planet VALUES (76021, 'josds', 6, 92, true, NULL, NULL);
INSERT INTO public.planet VALUES (76022, 'josdsq', 61, 93, true, NULL, NULL);
INSERT INTO public.planet VALUES (76024, 'josdsqw', 62, 94, true, NULL, NULL);
INSERT INTO public.planet VALUES (76025, 'josdsqwr', 63, 95, true, NULL, NULL);
INSERT INTO public.planet VALUES (76046, 'josdsre', 64, 96, true, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (8888, 'boyat', 83, 873736638, true, NULL);
INSERT INTO public.star VALUES (626772, 'chaos', 62, 839748, false, NULL);
INSERT INTO public.star VALUES (827473, 'bandaladosh', 100, 8267, true, NULL);
INSERT INTO public.star VALUES (8927468, 'lister', 78, 9876, false, NULL);
INSERT INTO public.star VALUES (93894, 'kraraktus', 84, 849, true, NULL);
INSERT INTO public.star VALUES (6823, 'tiana', 99, 6732, false, NULL);
INSERT INTO public.star VALUES (77632, 'newcaas', 39, 8847, true, NULL);


--
-- Name: earth earth_earth_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_earth_id_key UNIQUE (earth_id);


--
-- Name: earth earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_key UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_key PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


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

