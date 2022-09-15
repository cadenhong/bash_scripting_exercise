#!/bin/bash

# Write a script for addition of two numbers for real numbers also
#
# Prerequisites:
# - How to add real numbers in script.
# - How to use piping in commands.
#
# Objective:
# - To understand working of piping.
# - To learn arithmetic operations in shell script
#
# Requirements:
# - Ask user to enter two numbers
# - User can enter real numbers also
# - Use bc command and piping to do.

read -p "Enter first number to add: " num1
read -p "Enter second number to add: " num2

total=$(echo $num1 + $num2 | bc)
echo $num1 "+" $num2 "=" $total
