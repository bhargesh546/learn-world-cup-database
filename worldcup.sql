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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(25) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_tead_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_tead_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_tead_id_seq OWNER TO freecodecamp;

--
-- Name: teams_tead_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_tead_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_tead_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (53, 2018, 'Final', 49, 50, 2, 4);
INSERT INTO public.games VALUES (54, 2018, 'Third Place', 51, 52, 0, 2);
INSERT INTO public.games VALUES (55, 2018, 'Semi-Final', 50, 52, 1, 2);
INSERT INTO public.games VALUES (56, 2018, 'Semi-Final', 49, 51, 0, 1);
INSERT INTO public.games VALUES (57, 2018, 'Quarter-Final', 50, 53, 2, 3);
INSERT INTO public.games VALUES (58, 2018, 'Quarter-Final', 52, 54, 0, 2);
INSERT INTO public.games VALUES (59, 2018, 'Quarter-Final', 51, 55, 1, 2);
INSERT INTO public.games VALUES (60, 2018, 'Quarter-Final', 49, 56, 0, 2);
INSERT INTO public.games VALUES (61, 2018, 'Eighth-Final', 52, 57, 1, 2);
INSERT INTO public.games VALUES (62, 2018, 'Eighth-Final', 54, 58, 0, 1);
INSERT INTO public.games VALUES (63, 2018, 'Eighth-Final', 51, 59, 2, 3);
INSERT INTO public.games VALUES (64, 2018, 'Eighth-Final', 55, 60, 0, 2);
INSERT INTO public.games VALUES (65, 2018, 'Eighth-Final', 50, 61, 1, 2);
INSERT INTO public.games VALUES (66, 2018, 'Eighth-Final', 53, 62, 1, 2);
INSERT INTO public.games VALUES (67, 2018, 'Eighth-Final', 56, 63, 1, 2);
INSERT INTO public.games VALUES (68, 2018, 'Eighth-Final', 49, 64, 3, 4);
INSERT INTO public.games VALUES (69, 2014, 'Final', 65, 64, 0, 1);
INSERT INTO public.games VALUES (70, 2014, 'Third Place', 66, 55, 0, 3);
INSERT INTO public.games VALUES (71, 2014, 'Semi-Final', 64, 66, 0, 1);
INSERT INTO public.games VALUES (72, 2014, 'Semi-Final', 65, 55, 1, 7);
INSERT INTO public.games VALUES (73, 2014, 'Quarter-Final', 66, 67, 0, 1);
INSERT INTO public.games VALUES (74, 2014, 'Quarter-Final', 64, 51, 0, 1);
INSERT INTO public.games VALUES (75, 2014, 'Quarter-Final', 55, 57, 1, 2);
INSERT INTO public.games VALUES (76, 2014, 'Quarter-Final', 65, 49, 0, 1);
INSERT INTO public.games VALUES (77, 2014, 'Eighth-Final', 55, 68, 1, 2);
INSERT INTO public.games VALUES (78, 2014, 'Eighth-Final', 57, 56, 0, 2);
INSERT INTO public.games VALUES (79, 2014, 'Eighth-Final', 49, 69, 0, 2);
INSERT INTO public.games VALUES (80, 2014, 'Eighth-Final', 65, 70, 1, 2);
INSERT INTO public.games VALUES (81, 2014, 'Eighth-Final', 66, 60, 1, 2);
INSERT INTO public.games VALUES (82, 2014, 'Eighth-Final', 67, 71, 1, 2);
INSERT INTO public.games VALUES (83, 2014, 'Eighth-Final', 64, 58, 0, 1);
INSERT INTO public.games VALUES (84, 2014, 'Eighth-Final', 51, 72, 1, 2);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (49, 'France');
INSERT INTO public.teams VALUES (50, 'Croatia');
INSERT INTO public.teams VALUES (51, 'Belgium');
INSERT INTO public.teams VALUES (52, 'England');
INSERT INTO public.teams VALUES (53, 'Russia');
INSERT INTO public.teams VALUES (54, 'Sweden');
INSERT INTO public.teams VALUES (55, 'Brazil');
INSERT INTO public.teams VALUES (56, 'Uruguay');
INSERT INTO public.teams VALUES (57, 'Colombia');
INSERT INTO public.teams VALUES (58, 'Switzerland');
INSERT INTO public.teams VALUES (59, 'Japan');
INSERT INTO public.teams VALUES (60, 'Mexico');
INSERT INTO public.teams VALUES (61, 'Denmark');
INSERT INTO public.teams VALUES (62, 'Spain');
INSERT INTO public.teams VALUES (63, 'Portugal');
INSERT INTO public.teams VALUES (64, 'Argentina');
INSERT INTO public.teams VALUES (65, 'Germany');
INSERT INTO public.teams VALUES (66, 'Netherlands');
INSERT INTO public.teams VALUES (67, 'Costa Rica');
INSERT INTO public.teams VALUES (68, 'Chile');
INSERT INTO public.teams VALUES (69, 'Nigeria');
INSERT INTO public.teams VALUES (70, 'Algeria');
INSERT INTO public.teams VALUES (71, 'Greece');
INSERT INTO public.teams VALUES (72, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 84, true);


--
-- Name: teams_tead_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_tead_id_seq', 72, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

