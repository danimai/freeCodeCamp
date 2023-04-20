--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14 (Ubuntu 12.14-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.14 (Ubuntu 12.14-0ubuntu0.20.04.1)

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
    username character varying(22) NOT NULL,
    guesses integer NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 'Me', 7);
INSERT INTO public.games VALUES (2, 'Me', 21);
INSERT INTO public.games VALUES (3, 'Me', 15);
INSERT INTO public.games VALUES (4, 'user_1682029374672', 660);
INSERT INTO public.games VALUES (5, 'user_1682029374672', 702);
INSERT INTO public.games VALUES (6, 'user_1682029374671', 466);
INSERT INTO public.games VALUES (7, 'user_1682029374671', 784);
INSERT INTO public.games VALUES (8, 'user_1682029374672', 988);
INSERT INTO public.games VALUES (9, 'user_1682029374672', 6);
INSERT INTO public.games VALUES (10, 'user_1682029374672', 921);
INSERT INTO public.games VALUES (11, 'Dan', 3);
INSERT INTO public.games VALUES (12, 'user_1682029477446', 368);
INSERT INTO public.games VALUES (13, 'user_1682029477446', 663);
INSERT INTO public.games VALUES (14, 'user_1682029477445', 741);
INSERT INTO public.games VALUES (15, 'user_1682029477445', 470);
INSERT INTO public.games VALUES (16, 'user_1682029477446', 661);
INSERT INTO public.games VALUES (17, 'user_1682029477446', 983);
INSERT INTO public.games VALUES (18, 'user_1682029477446', 550);
INSERT INTO public.games VALUES (19, 'user_1682029793579', 201);
INSERT INTO public.games VALUES (20, 'user_1682029793579', 376);
INSERT INTO public.games VALUES (21, 'user_1682029793578', 520);
INSERT INTO public.games VALUES (22, 'user_1682029793578', 642);
INSERT INTO public.games VALUES (23, 'user_1682029793579', 112);
INSERT INTO public.games VALUES (24, 'user_1682029793579', 843);
INSERT INTO public.games VALUES (25, 'user_1682029793579', 942);
INSERT INTO public.games VALUES (26, 'user_1682029859264', 297);
INSERT INTO public.games VALUES (27, 'user_1682029859264', 382);
INSERT INTO public.games VALUES (28, 'user_1682029859263', 902);
INSERT INTO public.games VALUES (29, 'user_1682029859263', 469);
INSERT INTO public.games VALUES (30, 'user_1682029859264', 708);
INSERT INTO public.games VALUES (31, 'user_1682029859264', 310);
INSERT INTO public.games VALUES (32, 'user_1682029859264', 81);
INSERT INTO public.games VALUES (33, 'user_1682029871342', 778);
INSERT INTO public.games VALUES (34, 'user_1682029871342', 228);
INSERT INTO public.games VALUES (35, 'user_1682029871341', 748);
INSERT INTO public.games VALUES (36, 'user_1682029871341', 14);
INSERT INTO public.games VALUES (37, 'user_1682029871342', 693);
INSERT INTO public.games VALUES (38, 'user_1682029871342', 854);
INSERT INTO public.games VALUES (39, 'user_1682029871342', 227);
INSERT INTO public.games VALUES (40, 'user_1682030019019', 841);
INSERT INTO public.games VALUES (41, 'user_1682030019019', 136);
INSERT INTO public.games VALUES (42, 'user_1682030019018', 895);
INSERT INTO public.games VALUES (43, 'user_1682030019018', 123);
INSERT INTO public.games VALUES (44, 'user_1682030019019', 990);
INSERT INTO public.games VALUES (45, 'user_1682030019019', 910);
INSERT INTO public.games VALUES (46, 'user_1682030019019', 12);
INSERT INTO public.games VALUES (47, 'user_1682030052176', 66);
INSERT INTO public.games VALUES (48, 'user_1682030052176', 674);
INSERT INTO public.games VALUES (49, 'user_1682030052175', 402);
INSERT INTO public.games VALUES (50, 'user_1682030052175', 599);
INSERT INTO public.games VALUES (51, 'user_1682030052176', 674);
INSERT INTO public.games VALUES (52, 'user_1682030052176', 546);
INSERT INTO public.games VALUES (53, 'user_1682030052176', 739);
INSERT INTO public.games VALUES (54, 'user_1682030061414', 532);
INSERT INTO public.games VALUES (55, 'user_1682030061414', 689);
INSERT INTO public.games VALUES (56, 'user_1682030061413', 479);
INSERT INTO public.games VALUES (57, 'user_1682030061413', 836);
INSERT INTO public.games VALUES (58, 'user_1682030061414', 67);
INSERT INTO public.games VALUES (59, 'user_1682030061414', 21);
INSERT INTO public.games VALUES (60, 'user_1682030061414', 61);
INSERT INTO public.games VALUES (61, 'user_1682030179147', 568);
INSERT INTO public.games VALUES (62, 'user_1682030179147', 789);
INSERT INTO public.games VALUES (63, 'user_1682030179146', 586);
INSERT INTO public.games VALUES (64, 'user_1682030179146', 992);
INSERT INTO public.games VALUES (65, 'user_1682030179147', 715);
INSERT INTO public.games VALUES (66, 'user_1682030179147', 716);
INSERT INTO public.games VALUES (67, 'user_1682030179147', 817);
INSERT INTO public.games VALUES (68, 'user_1682030206684', 392);
INSERT INTO public.games VALUES (69, 'user_1682030206684', 31);
INSERT INTO public.games VALUES (70, 'user_1682030206683', 738);
INSERT INTO public.games VALUES (71, 'user_1682030206683', 532);
INSERT INTO public.games VALUES (72, 'user_1682030206684', 421);
INSERT INTO public.games VALUES (73, 'user_1682030206684', 16);
INSERT INTO public.games VALUES (74, 'user_1682030206684', 864);
INSERT INTO public.games VALUES (75, 'user_1682030222444', 856);
INSERT INTO public.games VALUES (76, 'user_1682030222444', 887);
INSERT INTO public.games VALUES (77, 'user_1682030222443', 452);
INSERT INTO public.games VALUES (78, 'user_1682030222443', 433);
INSERT INTO public.games VALUES (79, 'user_1682030222444', 748);
INSERT INTO public.games VALUES (80, 'user_1682030222444', 775);
INSERT INTO public.games VALUES (81, 'user_1682030222444', 338);
INSERT INTO public.games VALUES (82, 'user_1682030232755', 992);
INSERT INTO public.games VALUES (83, 'user_1682030232755', 504);
INSERT INTO public.games VALUES (84, 'user_1682030232754', 972);
INSERT INTO public.games VALUES (85, 'user_1682030232754', 427);
INSERT INTO public.games VALUES (86, 'user_1682030232755', 578);
INSERT INTO public.games VALUES (87, 'user_1682030232755', 716);
INSERT INTO public.games VALUES (88, 'user_1682030232755', 939);
INSERT INTO public.games VALUES (89, 'user_1682030276931', 439);
INSERT INTO public.games VALUES (90, 'user_1682030276931', 67);
INSERT INTO public.games VALUES (91, 'user_1682030276930', 118);
INSERT INTO public.games VALUES (92, 'user_1682030276930', 222);
INSERT INTO public.games VALUES (93, 'user_1682030276931', 623);
INSERT INTO public.games VALUES (94, 'user_1682030276931', 380);
INSERT INTO public.games VALUES (95, 'user_1682030276931', 895);
INSERT INTO public.games VALUES (96, 'user_1682030325177', 843);
INSERT INTO public.games VALUES (97, 'user_1682030325177', 798);
INSERT INTO public.games VALUES (98, 'user_1682030325176', 477);
INSERT INTO public.games VALUES (99, 'user_1682030325176', 572);
INSERT INTO public.games VALUES (100, 'user_1682030325177', 78);
INSERT INTO public.games VALUES (101, 'user_1682030325177', 218);
INSERT INTO public.games VALUES (102, 'user_1682030325177', 492);
INSERT INTO public.games VALUES (103, 'user_1682030388554', 596);
INSERT INTO public.games VALUES (104, 'user_1682030388554', 443);
INSERT INTO public.games VALUES (105, 'user_1682030388553', 406);
INSERT INTO public.games VALUES (106, 'user_1682030388553', 795);
INSERT INTO public.games VALUES (107, 'user_1682030388554', 917);
INSERT INTO public.games VALUES (108, 'user_1682030388554', 587);
INSERT INTO public.games VALUES (109, 'user_1682030388554', 825);
INSERT INTO public.games VALUES (110, 'user_1682030439803', 154);
INSERT INTO public.games VALUES (111, 'user_1682030439803', 498);
INSERT INTO public.games VALUES (112, 'user_1682030439802', 800);
INSERT INTO public.games VALUES (113, 'user_1682030439802', 953);
INSERT INTO public.games VALUES (114, 'user_1682030439803', 785);
INSERT INTO public.games VALUES (115, 'user_1682030439803', 602);
INSERT INTO public.games VALUES (116, 'user_1682030439803', 18);
INSERT INTO public.games VALUES (117, 'user_1682030469997', 460);
INSERT INTO public.games VALUES (118, 'user_1682030469997', 602);
INSERT INTO public.games VALUES (119, 'user_1682030469996', 678);
INSERT INTO public.games VALUES (120, 'user_1682030469996', 872);
INSERT INTO public.games VALUES (121, 'user_1682030469997', 277);
INSERT INTO public.games VALUES (122, 'user_1682030469997', 610);
INSERT INTO public.games VALUES (123, 'user_1682030469997', 510);
INSERT INTO public.games VALUES (124, 'user_1682030524927', 237);
INSERT INTO public.games VALUES (125, 'user_1682030524927', 793);
INSERT INTO public.games VALUES (126, 'user_1682030524926', 681);
INSERT INTO public.games VALUES (127, 'user_1682030524926', 916);
INSERT INTO public.games VALUES (128, 'user_1682030524927', 723);
INSERT INTO public.games VALUES (129, 'user_1682030524927', 101);
INSERT INTO public.games VALUES (130, 'user_1682031866360', 72);
INSERT INTO public.games VALUES (131, 'user_1682031866360', 241);
INSERT INTO public.games VALUES (132, 'user_1682031866359', 438);
INSERT INTO public.games VALUES (133, 'user_1682031866359', 549);
INSERT INTO public.games VALUES (134, 'user_1682031866360', 847);
INSERT INTO public.games VALUES (135, 'user_1682031866360', 842);
INSERT INTO public.games VALUES (136, 'user_1682031910606', 348);
INSERT INTO public.games VALUES (137, 'user_1682031910606', 220);
INSERT INTO public.games VALUES (138, 'user_1682031910605', 505);
INSERT INTO public.games VALUES (139, 'user_1682031910605', 974);
INSERT INTO public.games VALUES (140, 'user_1682031910606', 785);
INSERT INTO public.games VALUES (141, 'user_1682031910606', 620);
INSERT INTO public.games VALUES (142, 'user_1682032334808', 849);
INSERT INTO public.games VALUES (143, 'user_1682032334808', 435);
INSERT INTO public.games VALUES (144, 'user_1682032334807', 625);
INSERT INTO public.games VALUES (145, 'user_1682032334807', 377);
INSERT INTO public.games VALUES (146, 'user_1682032334808', 364);
INSERT INTO public.games VALUES (147, 'user_1682032334808', 892);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 147, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- PostgreSQL database dump complete
--

