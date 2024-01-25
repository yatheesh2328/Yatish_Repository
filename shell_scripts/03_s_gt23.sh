#!/bin/bash

echo "ENTER THE NUMBER TO CHECK IF IT IS GREATER THAN OR EQUAL TO 23"
read number

if [ $number -gt 23 ]
then
	echo "$number is greater than 23"
elif [ $number -eq 23 ]
then
	echo "$number is equal to 23"
else
	echo "$number is not equal to 23"
fi

