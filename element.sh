#!/bin/bash

if [[ -z $1 ]]; then
  echo "Please provide an element as an argument."
  exit 0
fi

ELEMENT="$1"

QUERY_RESULT=$(psql --username=freecodecamp --dbname=periodic_table --no-align --tuples-only -c "
SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius
FROM elements
JOIN properties USING(atomic_number)
JOIN types USING(type_id)
WHERE atomic_number::text = '$ELEMENT'
   OR symbol = INITCAP('$ELEMENT')
   OR name = INITCAP('$ELEMENT');
")

if [[ -z $QUERY_RESULT ]]; then
  echo "I could not find that element in the database."
  exit 0
fi

