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
