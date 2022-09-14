#!/bin/bash

#    1
#   2 3
#  4 5 6
# 7 8 9 10

num=1

for (( i = 1; i < 5; i++ )); do # determines each row

  for (( j = i; j < 5; j++ )); do # determines spacing on the left
    echo -ne "*"
  done

  for (( k = 0 ; k < i ; k++ )); do # determines what's written each row
    echo -ne "$num "
    ((num++))
#    echo -ne "k is $k"
  done

echo;

done

