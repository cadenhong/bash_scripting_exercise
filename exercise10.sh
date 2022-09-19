#!/bin/bash

# Write a script to perform arithmetic operation on digits of a given number depending upon the operator

# Prerequisites:
# - Knowledge about arrays in script
# - Use of loops
# - How to access elements of a string

# Objective:
# - To learn more string manipulation in scripts

# Requirements:
# - Read a string from user, must end with a operator symbol
# - Number can be any length but must end with an operator character
# - Always do left to right operations
# - If 8312– passed do 8-3-1-2 = 2

read -p "Enter numbers with an operator (+,-,*,/) at the end (i.e. 8312-): " string

len=${#string} # store length of string passed as len

if [[ ${string:$len-1:1} == '+' ]] || [[ ${string:$len-1:1} == '-' ]] || [[ ${string:$len-1:1} == '*' ]] || [[ ${string:$len-1:1} == '/' ]]; then # checks if the last character matches an operator
    operator=${string:$len-1:1} # store last character of passed string as operator
    result=${string:0:1} # store first digit of string as result

    for (( i = 1 ; i < $len-1 ; i++ )); do # for loop to go from 2nd character to the 2nd to last character of user input string
        result=$(($result $operator ${string:$i:1})) # perform arithmetic operation and store value in result variable
    done

    echo $result

else # if the last character is not an operator
    echo "String must end with an operator (+,-,*,/)!"
fi