#!/bin/bash

read -p "enter the value : " val1

if [ $val1 -gt 25 ]
then
echo "value is greater than 25"
elif [ $val1 -eq 25 ]
then
echo "value is equal to 25"
else
echo "value is not greater than 25"
fi

