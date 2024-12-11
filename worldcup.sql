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
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (801, 2018, 'Final', 601, 602, 4, 2);
INSERT INTO public.games VALUES (802, 2018, 'Third Place', 603, 604, 2, 0);
INSERT INTO public.games VALUES (803, 2018, 'Semi-Final', 602, 604, 2, 1);
INSERT INTO public.games VALUES (804, 2018, 'Semi-Final', 601, 603, 1, 0);
INSERT INTO public.games VALUES (805, 2018, 'Quarter-Final', 602, 605, 3, 2);
INSERT INTO public.games VALUES (806, 2018, 'Quarter-Final', 604, 606, 2, 0);
INSERT INTO public.games VALUES (807, 2018, 'Quarter-Final', 603, 607, 2, 1);
INSERT INTO public.games VALUES (808, 2018, 'Quarter-Final', 601, 608, 2, 0);
INSERT INTO public.games VALUES (809, 2018, 'Eighth-Final', 604, 609, 2, 1);
INSERT INTO public.games VALUES (810, 2018, 'Eighth-Final', 606, 610, 1, 0);
INSERT INTO public.games VALUES (811, 2018, 'Eighth-Final', 603, 611, 3, 2);
INSERT INTO public.games VALUES (812, 2018, 'Eighth-Final', 607, 612, 2, 0);
INSERT INTO public.games VALUES (813, 2018, 'Eighth-Final', 602, 613, 2, 1);
INSERT INTO public.games VALUES (814, 2018, 'Eighth-Final', 605, 614, 2, 1);
INSERT INTO public.games VALUES (815, 2018, 'Eighth-Final', 608, 615, 2, 1);
INSERT INTO public.games VALUES (816, 2018, 'Eighth-Final', 601, 616, 4, 3);
INSERT INTO public.games VALUES (817, 2014, 'Final', 617, 616, 1, 0);
INSERT INTO public.games VALUES (818, 2014, 'Third Place', 618, 607, 3, 0);
INSERT INTO public.games VALUES (819, 2014, 'Semi-Final', 616, 618, 1, 0);
INSERT INTO public.games VALUES (820, 2014, 'Semi-Final', 617, 607, 7, 1);
INSERT INTO public.games VALUES (821, 2014, 'Quarter-Final', 618, 619, 1, 0);
INSERT INTO public.games VALUES (822, 2014, 'Quarter-Final', 616, 603, 1, 0);
INSERT INTO public.games VALUES (823, 2014, 'Quarter-Final', 607, 609, 2, 1);
INSERT INTO public.games VALUES (824, 2014, 'Quarter-Final', 617, 601, 1, 0);
INSERT INTO public.games VALUES (825, 2014, 'Eighth-Final', 607, 620, 2, 1);
INSERT INTO public.games VALUES (826, 2014, 'Eighth-Final', 609, 608, 2, 0);
INSERT INTO public.games VALUES (827, 2014, 'Eighth-Final', 601, 621, 2, 0);
INSERT INTO public.games VALUES (828, 2014, 'Eighth-Final', 617, 622, 2, 1);
INSERT INTO public.games VALUES (829, 2014, 'Eighth-Final', 618, 612, 2, 1);
INSERT INTO public.games VALUES (830, 2014, 'Eighth-Final', 619, 623, 2, 1);
INSERT INTO public.games VALUES (831, 2014, 'Eighth-Final', 616, 610, 1, 0);
INSERT INTO public.games VALUES (832, 2014, 'Eighth-Final', 603, 624, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (601, 'France');
INSERT INTO public.teams VALUES (602, 'Croatia');
INSERT INTO public.teams VALUES (603, 'Belgium');
INSERT INTO public.teams VALUES (604, 'England');
INSERT INTO public.teams VALUES (605, 'Russia');
INSERT INTO public.teams VALUES (606, 'Sweden');
INSERT INTO public.teams VALUES (607, 'Brazil');
INSERT INTO public.teams VALUES (608, 'Uruguay');
INSERT INTO public.teams VALUES (609, 'Colombia');
INSERT INTO public.teams VALUES (610, 'Switzerland');
INSERT INTO public.teams VALUES (611, 'Japan');
INSERT INTO public.teams VALUES (612, 'Mexico');
INSERT INTO public.teams VALUES (613, 'Denmark');
INSERT INTO public.teams VALUES (614, 'Spain');
INSERT INTO public.teams VALUES (615, 'Portugal');
INSERT INTO public.teams VALUES (616, 'Argentina');
INSERT INTO public.teams VALUES (617, 'Germany');
INSERT INTO public.teams VALUES (618, 'Netherlands');
INSERT INTO public.teams VALUES (619, 'Costa Rica');
INSERT INTO public.teams VALUES (620, 'Chile');
INSERT INTO public.teams VALUES (621, 'Nigeria');
INSERT INTO public.teams VALUES (622, 'Algeria');
INSERT INTO public.teams VALUES (623, 'Greece');
INSERT INTO public.teams VALUES (624, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 832, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 624, true);


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
-- Name: games fk_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

