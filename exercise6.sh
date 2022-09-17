#!/bin/bash

# Write a script for arithmetic calculator using command line arguments
#
# Pattern:
#    1
#   2 3
#  4 5 6
# 7 8 9 10
# 
# Prerequisites:
# - How to use command-line arguments in script.
# - How to do arithmetic operations in script.
# - How to use piping in commands.
# 
# Objective:
# - To understand working of command-line arguments
# - To understand working of piping.
# - To learn arithmetic operations in shell script
# 
# Requirements:
# - User must provide two numbers and operator through command-line
# - Based on input do the operation and show the output.
# - Use case to handle multiple operations
# - Use expr or bc commands.

read -p "Enter the first number: " num1
read -p "Enter the first number: " num2
read -p "Enter an operator (+, -, *, /): " operator

case $operator in
    +) total=`echo "scale=2; $num1+$num2" | bc` ;;
    -) total=`echo "scale=2; $num1-$num2" | bc` ;;
    '*') total=`echo "scale=2; $num1*$num2" | bc` ;;
    /) total=`echo "scale=2; $num1/$num2" | bc` ;;
    *) echo "Invalid operator!" ;;
esac

echo $total

if [ -z "$total" ]; then
    echo "Exiting without creating pattern due to invalid operator input..."

else
    for (( i = 1 ; i <= 4 ; i++ )); do # determines number of rows

        for (( j = i ; j <= 4 ; j++ )); do # determines number of spaces on left
            echo -ne " "
        done

        for (( k = 0 ; k < i ; k++ )); do # determines what gets written each line
            echo -ne "$total "
        done

        echo
    done
fi