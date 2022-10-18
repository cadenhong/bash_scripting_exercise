#!/bin/bash

# Use a recursive function to print each argument passed to the function

# Prerequisites:
# - Working of functions in script.
# - Argument passing to functions.
# - Recursive functions.

# Objective:
# - Learn more about functions

# Requirements:
# - We pass command-line arguments to script.
# - Script call function with same arguments.
# - Regardless of how many arguments are passed, you are allowed to echo only the first positional argument (echo $1).

function echo_recursion() {
    ctr=$#
    item=$1
    items=( "$@" )
    
    if [[ $ctr -eq 0 ]]; then
        echo $items
        echo "Done"
    else
        echo $item
        echo ${items[@]/$item}
    fi
}

echo_recursion