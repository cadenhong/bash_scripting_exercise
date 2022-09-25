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

unsorted=( "$@" )
ctr=$#

echo "Current array: ${unsorted[@]}"
read -p "Enter 1 to sort in ascending order, or 2 to sort in descending order: " order

case $order in
    1)
        for (( i = 0 ; i < $ctr ; i++ )); do
            for (( j = $i ; j < $ctr ; j++ )); do 
                if [ ${unsorted[$i]} -gt ${unsorted[$j]} ]; then
                    t=${unsorted[$i]}
                    unsorted[$i]=${unsorted[$j]}
                    unsorted[$j]=$t
                fi
            done
        done

        echo "Ascending Order: ${unsorted[@]}"
        ;;

    2)
        for (( i = 0 ; i < $ctr ; i++ )); do
            for (( j = $i ; j < $ctr ; j++ )); do 
                if [ ${unsorted[$i]} -lt ${unsorted[$j]} ]; then
                    t=${unsorted[$i]}
                    unsorted[$i]=${unsorted[$j]}
                    unsorted[$j]=$t
                fi
            done
        done

        echo "Descending Order: ${unsorted[@]}"
        ;;

    *)
        echo "Invalid input!"
        ;;
esac
