#!/bin/bash

# Write a script to replace 20% lines in a C file randomly and replace it with the pattern

# Prerequisites:
# Knowledge about sed command.
# How to create random number.
# Editing file using sed command.

# Objective:
# Learn more about sed command.

# Requirements:
# Provede a .c file to this script through command-line.
# Randomly delete 20% lines from the file.
# Wherever you deleted replace a string.

file=$1

total_lines=$(cat $file | wc -l) # line count of file
((twt_pct=total_lines/5)) # calculating 20% of total line count

echo "Total num of lines $total_lines"
echo "20 percent is $twt_pct"

for (( i=0; i<$twt_pct; i++ )); do # for twt_pct number of times
  line=$(shuf -i 1-$total_lines -n 1) # generate a random num within line count range
  echo "random line num is $line"
  sed -i "${line} c\"THIS LINE HAS BEEN REPLACED" $file # replace that line with replacement variable
done

echo
cat $file
