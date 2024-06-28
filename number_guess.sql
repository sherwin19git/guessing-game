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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 12);
INSERT INTO public.games VALUES (2, 5, 450);
INSERT INTO public.games VALUES (3, 5, 987);
INSERT INTO public.games VALUES (4, 6, 145);
INSERT INTO public.games VALUES (5, 6, 883);
INSERT INTO public.games VALUES (6, 5, 738);
INSERT INTO public.games VALUES (7, 5, 1);
INSERT INTO public.games VALUES (8, 5, 655);
INSERT INTO public.games VALUES (9, 1, 13);
INSERT INTO public.games VALUES (10, 7, 557);
INSERT INTO public.games VALUES (11, 7, 201);
INSERT INTO public.games VALUES (12, 8, 202);
INSERT INTO public.games VALUES (13, 8, 870);
INSERT INTO public.games VALUES (14, 7, 215);
INSERT INTO public.games VALUES (15, 7, 443);
INSERT INTO public.games VALUES (16, 7, 776);
INSERT INTO public.games VALUES (17, 9, 651);
INSERT INTO public.games VALUES (18, 9, 819);
INSERT INTO public.games VALUES (19, 10, 349);
INSERT INTO public.games VALUES (20, 10, 231);
INSERT INTO public.games VALUES (21, 9, 849);
INSERT INTO public.games VALUES (22, 9, 31);
INSERT INTO public.games VALUES (23, 9, 157);
INSERT INTO public.games VALUES (24, 11, 272);
INSERT INTO public.games VALUES (25, 11, 329);
INSERT INTO public.games VALUES (26, 12, 334);
INSERT INTO public.games VALUES (27, 12, 558);
INSERT INTO public.games VALUES (28, 11, 981);
INSERT INTO public.games VALUES (29, 11, 501);
INSERT INTO public.games VALUES (30, 11, 180);
INSERT INTO public.games VALUES (31, 13, 688);
INSERT INTO public.games VALUES (32, 13, 400);
INSERT INTO public.games VALUES (33, 14, 472);
INSERT INTO public.games VALUES (34, 14, 660);
INSERT INTO public.games VALUES (35, 13, 460);
INSERT INTO public.games VALUES (36, 13, 658);
INSERT INTO public.games VALUES (37, 13, 471);
INSERT INTO public.games VALUES (38, 15, 513);
INSERT INTO public.games VALUES (39, 15, 223);
INSERT INTO public.games VALUES (40, 16, 232);
INSERT INTO public.games VALUES (41, 16, 880);
INSERT INTO public.games VALUES (42, 15, 474);
INSERT INTO public.games VALUES (43, 15, 868);
INSERT INTO public.games VALUES (44, 15, 233);
INSERT INTO public.games VALUES (45, 17, 577);
INSERT INTO public.games VALUES (46, 17, 81);
INSERT INTO public.games VALUES (47, 18, 561);
INSERT INTO public.games VALUES (48, 18, 306);
INSERT INTO public.games VALUES (49, 17, 82);
INSERT INTO public.games VALUES (50, 17, 717);
INSERT INTO public.games VALUES (51, 17, 621);
INSERT INTO public.games VALUES (52, 19, 628);
INSERT INTO public.games VALUES (53, 19, 552);
INSERT INTO public.games VALUES (54, 20, 741);
INSERT INTO public.games VALUES (55, 20, 847);
INSERT INTO public.games VALUES (56, 19, 632);
INSERT INTO public.games VALUES (57, 19, 729);
INSERT INTO public.games VALUES (58, 19, 358);
INSERT INTO public.games VALUES (59, 21, 143);
INSERT INTO public.games VALUES (60, 21, 636);
INSERT INTO public.games VALUES (61, 22, 901);
INSERT INTO public.games VALUES (62, 22, 892);
INSERT INTO public.games VALUES (63, 21, 732);
INSERT INTO public.games VALUES (64, 21, 54);
INSERT INTO public.games VALUES (65, 21, 929);
INSERT INTO public.games VALUES (66, 23, 698);
INSERT INTO public.games VALUES (67, 23, 983);
INSERT INTO public.games VALUES (68, 24, 210);
INSERT INTO public.games VALUES (69, 24, 262);
INSERT INTO public.games VALUES (70, 23, 191);
INSERT INTO public.games VALUES (71, 23, 58);
INSERT INTO public.games VALUES (72, 23, 497);
INSERT INTO public.games VALUES (73, 25, 309);
INSERT INTO public.games VALUES (74, 25, 624);
INSERT INTO public.games VALUES (75, 26, 468);
INSERT INTO public.games VALUES (76, 26, 240);
INSERT INTO public.games VALUES (77, 25, 225);
INSERT INTO public.games VALUES (78, 25, 507);
INSERT INTO public.games VALUES (79, 25, 508);
INSERT INTO public.games VALUES (80, 27, 869);
INSERT INTO public.games VALUES (81, 27, 480);
INSERT INTO public.games VALUES (82, 28, 999);
INSERT INTO public.games VALUES (83, 28, 343);
INSERT INTO public.games VALUES (84, 27, 487);
INSERT INTO public.games VALUES (85, 27, 908);
INSERT INTO public.games VALUES (86, 27, 117);
INSERT INTO public.games VALUES (87, 29, 844);
INSERT INTO public.games VALUES (88, 29, 113);
INSERT INTO public.games VALUES (89, 30, 180);
INSERT INTO public.games VALUES (90, 30, 50);
INSERT INTO public.games VALUES (91, 29, 354);
INSERT INTO public.games VALUES (92, 29, 323);
INSERT INTO public.games VALUES (93, 29, 221);
INSERT INTO public.games VALUES (94, 31, 951);
INSERT INTO public.games VALUES (95, 31, 410);
INSERT INTO public.games VALUES (96, 32, 336);
INSERT INTO public.games VALUES (97, 32, 774);
INSERT INTO public.games VALUES (98, 31, 522);
INSERT INTO public.games VALUES (99, 31, 810);
INSERT INTO public.games VALUES (100, 31, 957);
INSERT INTO public.games VALUES (101, 33, 11);
INSERT INTO public.games VALUES (102, 33, 204);
INSERT INTO public.games VALUES (103, 34, 183);
INSERT INTO public.games VALUES (104, 34, 192);
INSERT INTO public.games VALUES (105, 33, 166);
INSERT INTO public.games VALUES (106, 33, 838);
INSERT INTO public.games VALUES (107, 33, 726);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'sherwin');
INSERT INTO public.users VALUES (5, 'user_1719543083729');
INSERT INTO public.users VALUES (6, 'user_1719543083728');
INSERT INTO public.users VALUES (7, 'user_1719544059229');
INSERT INTO public.users VALUES (8, 'user_1719544059228');
INSERT INTO public.users VALUES (9, 'user_1719544279034');
INSERT INTO public.users VALUES (10, 'user_1719544279033');
INSERT INTO public.users VALUES (11, 'user_1719544293514');
INSERT INTO public.users VALUES (12, 'user_1719544293513');
INSERT INTO public.users VALUES (13, 'user_1719544663062');
INSERT INTO public.users VALUES (14, 'user_1719544663061');
INSERT INTO public.users VALUES (15, 'user_1719544911520');
INSERT INTO public.users VALUES (16, 'user_1719544911519');
INSERT INTO public.users VALUES (17, 'user_1719545009862');
INSERT INTO public.users VALUES (18, 'user_1719545009861');
INSERT INTO public.users VALUES (19, 'user_1719545034016');
INSERT INTO public.users VALUES (20, 'user_1719545034015');
INSERT INTO public.users VALUES (21, 'user_1719545137869');
INSERT INTO public.users VALUES (22, 'user_1719545137868');
INSERT INTO public.users VALUES (23, 'user_1719545624594');
INSERT INTO public.users VALUES (24, 'user_1719545624593');
INSERT INTO public.users VALUES (25, 'user_1719545626380');
INSERT INTO public.users VALUES (26, 'user_1719545626379');
INSERT INTO public.users VALUES (27, 'user_1719545628313');
INSERT INTO public.users VALUES (28, 'user_1719545628312');
INSERT INTO public.users VALUES (29, 'user_1719545630155');
INSERT INTO public.users VALUES (30, 'user_1719545630154');
INSERT INTO public.users VALUES (31, 'user_1719545631830');
INSERT INTO public.users VALUES (32, 'user_1719545631829');
INSERT INTO public.users VALUES (33, 'user_1719545814394');
INSERT INTO public.users VALUES (34, 'user_1719545814393');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 107, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 34, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

