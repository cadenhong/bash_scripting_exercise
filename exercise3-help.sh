#!/bin/bash

number=1
rows=4

# determines number of rows
for (( i=1; i<=rows; i++ )); do

  # determines what gets printed each row
  for (( j=1; j<=i; j++ )); do
    echo -n "$number "
    number=$((number + 1))
  done

  echo

done
