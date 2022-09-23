#!/bin/bash

# Read ‘n’ and generate Fibonacci numbers less than or equal to n

# Prerequisites:
# Knowledge about Fibonacci series (0, 1, 1, 2, 3, 5, 8, 13, 21, 34...)

# Objective:
# Learn to implement existing algorithms using loops

# Requirements:
# Remember n is not number of elements to print -
# it's the boundary of elements to print.

read -p "Enter a number to print all numbers up to or including your input from the Fibonacci sequence: " n

prev2=0
prev1=1
cur=$((prev1+prev2))

while [[ "$prev2" -le "$n" ]]; do
    echo -n "$prev2 "
    prev2=$prev1
    prev1=$cur
    cur=$((prev1+prev2))
done