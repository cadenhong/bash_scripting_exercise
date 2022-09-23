#!/bin/bash

Write a script to print chess board

Prerequisites:
Knowledge about printing colors using echo
Use of nested loops.

Objective:
Print colors using echo command.

Requirements:
To print a black box echo -e -n “\\\\e[40m” ” “
To print a white box echo -e -n “\\\\e[47m” ” “
Call the commands in a loop.
After 8 columns make to normal color.
To make it normal echo -e -n “\\\\e[0m” ” “

for (( i = 1 ; i <= 8 ; i++ )); do

    for (( j = 1 ; j <= 8 ; j+2 )); do
        echo -e -n “\\\\e[40m” ” “
    done

    for (( k = 2 ; k <= 8 ; k+2 )); do
        echo -e -n “\\\\e[47m” ” “
    done
done