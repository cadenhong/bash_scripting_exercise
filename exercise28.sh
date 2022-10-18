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
    items=$@
    
    if [[ $ctr -eq 0 ]]; then
        exit 0
    else
        echo $1
        items=${items[@]/$1}
        echo_recursion $items
    fi
}

echo_recursion $@

# Resource:
# https://linuxhint.com/remove-specific-array-element-bash/