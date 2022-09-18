#!/bin/bash

# Write a script to print a given number in reverse order

# Prerequisites:
# - How to use command-line arguments in script.
# - How to do use modules operators in script.
# - How to use loops in scripts.

# Objective:
# - To understand working of command-line arguments
# - To learn arithmetic operations in shell script

# Requirements:
# - Read a multi-digit number from user and reverse the number.
# - It's not just printing in reverse order
# - You have to extract each digit and convert to reverse.
# - When ‘0’ comes as last digit, discard while reversing.

len=${#1} # length of multi-digit number passed (interprets it as a string)
rev_len=-$len # negative value of length of the string
reverse="" # string variable to hold reversed string value

for (( i = -1; i >= $rev_len; i-- )); do # strong reversed value in reverse variable
    reverse+=${1:$i:1}
done

go=true

while $go; do
    if [ "${reverse:0:1}" == "0" ]; then # checks first digit to see if it's a 0
        reverse=${reverse:1} # if true, then set reverse string as substring of everything after first digit
    else
        go=false
    fi
done

echo $reverse