#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\n~~~~~ Number guess ~~~~~\n"

# get username
echo "Enter your username:"
read USERNAME

# get games
GAMES_PLAYED=$($PSQL "
	SELECT 
		COUNT(*)
	FROM games 
	WHERE username='$USERNAME'
")

# get best game
BEST_GAME=$($PSQL "
	SELECT 
		MIN(guesses)
	FROM games 
	WHERE username='$USERNAME'
")

# if user has games
if [[ $GAMES_PLAYED > 0 ]]
then
	echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
else
	# if user has not games
	echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
fi

# get secret number
SECRET_NUMBER=$(($RANDOM % 1000 + 1))

GUESSES=0
GET_GUESS() {
	if [[ $1 ]]
  then
    echo -e "\n$1"
  fi

	read GUESS
	((GUESSES++))

	if [[ $GUESS =~ [^0-9]+$ ]]
	then
		echo -e "\nThat is not an integer, guess again:"
	
	# if guess is lower than secret number
	elif [[ $GUESS -lt $SECRET_NUMBER ]]
	then
		GET_GUESS "\nIt's higher than that, guess again:"
	
	# if guess is higher than secret number
	elif [[ $GUESS -gt $SECRET_NUMBER ]]
	then
		GET_GUESS "\nIt's lower than that, guess again:"
	
	# if guess is right
	elif [[ $GUESS -eq $SECRET_NUMBER ]]
	then
		echo -e "\nYou guessed it in $GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!\n"
		# insert game
		BEST_GAME=$($PSQL "
			INSERT INTO 
				games(username, guesses)
				VALUES('$USERNAME', '$GUESSES')
		")
	fi
}

GET_GUESS "Guess the secret number between 1 and 1000:"
