#!/bin/bash

# Write a script to sort a given number in ascending or descending order

# Prerequisites:
# - Knowledge about arrays.
# - Bubble sort.

# Objective:
# - Learn about sorting mechanisms.
# - Better array manipulations.

# Requirements:
# - Pass numbers through command-line arguments.
# - Provide a menu for user to choose ascending or descending.
# - Show sorted array according to user choice.

unsorted=$@
ctr=$#

for n in $unsorted; do
    echo $n
    c=0
    newarr[]=$n
done

echo $newarr

# for (( i = 0 ; i < $ctr ; i++ )); do
#     echo ${unsorted[$i]}
# done


# echo "Select an option to sort the numbers in ascending or descending order:"
# echo "1. Ascend"
# echo "2. Descend"
# read -p "Enter 1 or 2: " order