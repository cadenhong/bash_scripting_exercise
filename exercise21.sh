#!/bin/bash

# Write script called say_hello, which will print greetings based on time

# Prerequisites:
# - Knowledge about date command
# - Filter commands, cut and tr
# - Bash configuration files

# Objective:
# - Using time in script
# - Understanding bash configuration files

# Requirements:
# - The script should run as soon as you log-on to system
# - Print greetings based on time as follows:
#       “Good morning” (5 AM – 12 PM)
#       “Good noon” (12 PM – 1 PM)
#       “Good afternoon” (1 PM – 5 PM)
#       “Good evening” (5PM – 9 PM)
#       “Good night” (9 PM – 5 AM)

##### To have this script run upon login, copy or move this script inside /etc/profile.d
time=$(date '+%H%M%S')
timeDisplayToUser=$(date '%D [%A], %H:%M:S')

if [ $time -ge 50001 ] && [ $time -le 120000 ]; then
    echo "Good morning! It's $timeDisplayToUser" > /home/caden/Desktop/greetings.txt
elif [ $time -ge 120001 ] && [ $time -le 130000 ]; then
    echo "Good noon! It's $timeDisplayToUser" > /home/caden/Desktop/greetings.txt
elif [ $time -ge 130001 ] && [ $time -le 170000 ]; then
    echo "Good afternoon! It's $timeDisplayToUser" > /home/caden/Desktop/greetings.txt
elif [ $time -ge 170001 ] && [ $time -le 210000 ]; then
    echo "Good evening! It's $timeDisplayToUser" > /home/caden/Desktop/greetings.txt
else
    echo "Good night! It's $timeDisplayToUser" > /home/caden/Desktop/greetings.txt
fi