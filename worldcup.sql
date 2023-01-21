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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
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
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
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
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


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

INSERT INTO public.games VALUES (369, 370, 1, 2018, 'Final', 4, 2);
INSERT INTO public.games VALUES (371, 372, 2, 2018, 'Third Place', 2, 0);
INSERT INTO public.games VALUES (370, 372, 3, 2018, 'Semi-Final', 2, 1);
INSERT INTO public.games VALUES (369, 371, 4, 2018, 'Semi-Final', 1, 0);
INSERT INTO public.games VALUES (370, 373, 5, 2018, 'Quarter-Final', 3, 2);
INSERT INTO public.games VALUES (372, 374, 6, 2018, 'Quarter-Final', 2, 0);
INSERT INTO public.games VALUES (371, 375, 7, 2018, 'Quarter-Final', 2, 1);
INSERT INTO public.games VALUES (369, 376, 8, 2018, 'Quarter-Final', 2, 0);
INSERT INTO public.games VALUES (372, 377, 9, 2018, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (374, 378, 10, 2018, 'Eighth-Final', 1, 0);
INSERT INTO public.games VALUES (371, 379, 11, 2018, 'Eighth-Final', 3, 2);
INSERT INTO public.games VALUES (375, 380, 12, 2018, 'Eighth-Final', 2, 0);
INSERT INTO public.games VALUES (370, 381, 13, 2018, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (373, 382, 14, 2018, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (376, 383, 15, 2018, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (369, 384, 16, 2018, 'Eighth-Final', 4, 3);
INSERT INTO public.games VALUES (385, 384, 17, 2014, 'Final', 1, 0);
INSERT INTO public.games VALUES (386, 375, 18, 2014, 'Third Place', 3, 0);
INSERT INTO public.games VALUES (384, 386, 19, 2014, 'Semi-Final', 1, 0);
INSERT INTO public.games VALUES (385, 375, 20, 2014, 'Semi-Final', 7, 1);
INSERT INTO public.games VALUES (386, 387, 21, 2014, 'Quarter-Final', 1, 0);
INSERT INTO public.games VALUES (384, 371, 22, 2014, 'Quarter-Final', 1, 0);
INSERT INTO public.games VALUES (375, 377, 23, 2014, 'Quarter-Final', 2, 1);
INSERT INTO public.games VALUES (385, 369, 24, 2014, 'Quarter-Final', 1, 0);
INSERT INTO public.games VALUES (375, 388, 25, 2014, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (377, 376, 26, 2014, 'Eighth-Final', 2, 0);
INSERT INTO public.games VALUES (369, 389, 27, 2014, 'Eighth-Final', 2, 0);
INSERT INTO public.games VALUES (385, 390, 28, 2014, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (386, 380, 29, 2014, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (387, 391, 30, 2014, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (384, 378, 31, 2014, 'Eighth-Final', 1, 0);
INSERT INTO public.games VALUES (371, 392, 32, 2014, 'Eighth-Final', 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (369, 'France');
INSERT INTO public.teams VALUES (370, 'Croatia');
INSERT INTO public.teams VALUES (371, 'Belgium');
INSERT INTO public.teams VALUES (372, 'England');
INSERT INTO public.teams VALUES (373, 'Russia');
INSERT INTO public.teams VALUES (374, 'Sweden');
INSERT INTO public.teams VALUES (375, 'Brazil');
INSERT INTO public.teams VALUES (376, 'Uruguay');
INSERT INTO public.teams VALUES (377, 'Colombia');
INSERT INTO public.teams VALUES (378, 'Switzerland');
INSERT INTO public.teams VALUES (379, 'Japan');
INSERT INTO public.teams VALUES (380, 'Mexico');
INSERT INTO public.teams VALUES (381, 'Denmark');
INSERT INTO public.teams VALUES (382, 'Spain');
INSERT INTO public.teams VALUES (383, 'Portugal');
INSERT INTO public.teams VALUES (384, 'Argentina');
INSERT INTO public.teams VALUES (385, 'Germany');
INSERT INTO public.teams VALUES (386, 'Netherlands');
INSERT INTO public.teams VALUES (387, 'Costa Rica');
INSERT INTO public.teams VALUES (388, 'Chile');
INSERT INTO public.teams VALUES (389, 'Nigeria');
INSERT INTO public.teams VALUES (390, 'Algeria');
INSERT INTO public.teams VALUES (391, 'Greece');
INSERT INTO public.teams VALUES (392, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 392, true);


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
#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

#Script to insert each unique team from games.csv into teams table of worldcup database.
#year,round,winner,opponent,winner_goals,opponent_goals
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT W_GOALS O_GOALS
do
  if [[ $WINNER != winner ]]
  then
    #get winner_name
    WINNER_NAME="$($PSQL "SELECT DISTINCT(name) FROM teams WHERE name='$WINNER'")"
    #if not found
    if [[ -z $WINNER_NAME ]]
    then 
      #insert winner
      INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    fi
  fi

  if [[ $OPPONENT != opponent ]]
  then
    #get opponent_name
    OPPONENT_NAME="$($PSQL "SELECT DISTINCT(name) FROM teams WHERE name='$OPPONENT'")"
    #if not found
    
    if [[ -z $OPPONENT_NAME ]]
    then 
      #insert opponent
      INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    fi
  fi
done

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT W_GOALS O_GOALS
  do
    if [[ $YEAR != year ]]
      then
      #get game_info
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      GAME_INFO=$($PSQL "SELECT * FROM games WHERE year=$YEAR AND round='$ROUND' AND winner_id=$WINNER_ID")
       #if not found
       if [[ -z $GAME_INFO ]]
       then 
        #insert game
        OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
        #year,round,winner,opponent,winner_goals,opponent_goals
        INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $W_GOALS, $O_GOALS)")
       fi
    fi
  done
Footer
© 2023 GitHub, Inc.
Footer navigation
Terms
#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=worldcup --no-align --tuples-only -c"

# Do not change code above this line. Use the PSQL variable above to query your database.

echo -e "\nTotal number of goals in all games from winning teams:"
echo "$($PSQL "SELECT SUM(winner_goals) FROM games")"

echo -e "\nTotal number of goals in all games from both teams combined:" #90
echo "$($PSQL "SELECT SUM(COALESCE(winner_goals,0) + COALESCE(opponent_goals,0)) FROM games")"

echo -e "\nAverage number of goals in all games from the winning teams:"
echo "$($PSQL "SELECT AVG(winner_goals) FROM games")"

echo -e "\nAverage number of goals in all games from the winning teams rounded to two decimal places:"
echo "$($PSQL "SELECT ROUND(AVG(winner_goals),2) FROM games")"

echo -e "\nAverage number of goals in all games from both teams:"
echo "$($PSQL "SELECT AVG(winner_goals + opponent_goals) FROM games")"

echo -e "\nMost goals scored in a single game by one team:"
echo "$($PSQL "SELECT MAX(GREATEST(winner_goals,opponent_goals)) FROM games")"

echo -e "\nNumber of games where the winning team scored more than two goals:"
echo "$($PSQL "SELECT COUNT(*) FROM games WHERE winner_goals>2")"

echo -e "\nWinner of the 2018 tournament team name:"
echo "$($PSQL "SELECT name FROM teams INNER JOIN games ON teams.team_id=games.winner_id WHERE round='Final' AND year=2018")"

echo -e "\nList of teams who played in the 2014 'Eighth-Final' round:"
echo "$($PSQL "SELECT DISTINCT(name) FROM teams FULL JOIN games AS g1 ON teams.team_id=g1.winner_id FULL JOIN games AS g2 ON teams.team_id=g2.opponent_id WHERE (g1.year=2014 OR g2.year=2014) AND (g1.round='Eighth-Final' OR g2.round='Eighth-Final')")"

echo -e "\nList of unique winning team names in the whole data set:"
echo "$($PSQL "SELECT DISTINCT name FROM teams RIGHT JOIN games ON teams.team_id=games.winner_id ORDER BY name")"

echo -e "\nYear and team name of all the champions:"
echo "$($PSQL "SELECT DISTINCT year, name FROM teams RIGHT JOIN games ON teams.team_id=games.winner_id WHERE round='Final'")"

echo -e "\nList of teams that start with 'Co':"
echo "$($PSQL "SELECT DISTINCT name FROM teams WHERE name LIKE 'Co%'")"
