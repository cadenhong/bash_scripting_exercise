#!/bin/bash

#Write a script to print chess board

#Prerequisites:
#Knowledge about printing colors using echo
#Use of nested loops.

#Objective:
#Print colors using echo command.

#Requirements:
#To print a black box echo -e -n “\\\\e[40m” ” “
#To print a white box echo -e -n “\\\\e[47m” ” “
#Call the commands in a loop.
#After 8 columns make to normal color.
#To make it normal echo -e -n “\\\\e[0m” ” “

for (( i = 1 ; i <= 8 ; i++ )); do

    ctr=1

    while [[ $ctr -le 4 ]]; do
        if [[ $i%2 -eq 0 ]]; then
            echo -e -n "\e[1;40m   \e[0m"
            echo -e -n "\e[1;47m   \e[0m"
        else
            echo -e -n "\e[1;47m   \e[0m"
            echo -e -n "\e[1;40m   \e[0m"
        fi
        ctr=$((ctr+1))
    done

    echo

done
