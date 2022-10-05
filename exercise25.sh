#!/bin/bash

# Write a script for generating random 8-character passwords including alpha numeric characters

# Prerequisites:
# - Knowledge about rand, tr and cut commands.
# - Use of /dev/urandom file.
# - Piping

# Objective:
# - Piping between multiple commands.
# - Generate random values.

# Requirements:
# - Every time a new password must created.
# - Password must contains a alpha-numeric and special characters.

password=$(tr -dc "A-Za-z0-9\!\@\#$%^&*/." < /dev/urandom | head -c 8)

while [[ $password =~ ^[\!\@\#$%^&*\/.] ]]; do
    password=$(tr -dc "A-Za-z0-9\!\@\#$%^&*/." < /dev/urandom | head -c 8)
done

echo $password

# for char in $special;
#     if grep -q "$char" <<< "$password"; then

#     fi

# done