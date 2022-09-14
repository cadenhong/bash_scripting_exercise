#!/bin/bash

# Read 'n' and generate a pattern given below:
#    1
#   2 3
#  4 5 6
# 7 8 9 10
#
# Read a value from user and create pattern as mentioned above.

read -p "Enter the number 1: " n

# determines the number of rows
for (( i = 1 ; i < 5 ; i++ )); do

  # determines the number of spaces on the left
  for (( j = i ; j < 5 ; j++ )); do
    echo -ne " "
  done

  # determines what will print each row
  for (( k = 1 ; k <= i ; k++ )); do
    echo -ne "$n "
    ((n++))
  done

  echo;

done
