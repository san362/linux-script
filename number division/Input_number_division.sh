#!/bin/bash

num=$1

if [ $((num % 15)) -eq 0 ]; then
  echo "tomcat"
elif [ $((num % 5)) -eq 0 ]; then
  echo "cat"
elif [ $((num % 3)) -eq 0 ]; then
  echo "tom"
else
  echo "Number is not divisible by 3, 5 or 15."
fi