#!/bin/bash

echo "enter two numbers to check if they are equal ot not ? "

read -p "Enter number A : " num1
read -p "Enter number B : " num2

#using if condition to verify if they are equal or not

if [ $num1 -eq $num2 ]
then
	echo "A and B are equal"
else
	echo "A and B are not equal"

fi
