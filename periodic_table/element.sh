#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t -c"

EXIT() {
  echo "I could not find that element in the database."
  exit
}

if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
else
  case $1 in
    [0-9]|[0-9][0-9]) QUERY="atomic_number=$1" ;;
    [A-Za-z]*) QUERY="symbol='$1' OR name='$1'" ;;
    *) EXIT ;;
  esac
  echo $($PSQL "
    SELECT atomic_number, symbol, name, type, atomic_mass, melting_point_celsius, boiling_point_celsius
    FROM elements 
    JOIN properties USING(atomic_number) 
    JOIN types USING(type_id) 
    WHERE $QUERY
  ") | while read ATOMIC_NUMBER BAR SYMBOL BAR NAME BAR TYPE BAR ATOMIC_MASS BAR MELTING_POINT BAR BOILING_POINT
  do
    if [[ -z $ATOMIC_NUMBER ]]
    then
      EXIT
    else
      echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
    fi
  done
fi
