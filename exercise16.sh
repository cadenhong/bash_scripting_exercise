#!/bin/bash

# Read ‘n’ and print the greatest Fibonacci number less than or equal to n

# Prerequisites:
# - Knowledge about Fibonacci series.

# Objective:
# - Learn to implement existing algorithms using loops

# Requirements:
# - Remember n is not nth number of series.
# - It is the greatest element to print.

read -p "What is the greatest Fibonacci number (or something very close) you wish to see? " n

prev2=0
prev1=1
cur=$((prev1+prev2))

while [[ "$prev2" -le "$n" ]]; do
    prev2=$prev1
    prev1=$cur
    cur=$((prev1+prev2))
done

echo "It is: $((prev1-prev2))"