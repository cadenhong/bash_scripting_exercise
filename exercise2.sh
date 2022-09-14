#!/bin/bash

# Read 'n' and generate a pattern given below:
#    1
#   1 2
#  1 2 3
# 1 2 3 4

# Read a value from user and create pattern as mentioned above.

read -p "Enter a number: " input

for ((m = 1 ; m <= 4 ; m++)); do

  for ((a = m ; a <= 4 ; a++)); do
    echo -ne " "
  done

  for ((n = $input ; n <= m ; n++)); do
    echo -ne $n " "
  done

  echo;
done
