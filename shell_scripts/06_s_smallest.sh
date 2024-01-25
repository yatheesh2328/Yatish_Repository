#!/bin/bash
#checking largest of 3 numbers

read -p "ENTER THE NUMBER A " num1
read -p "ENTER THE NUMBER B " num2
read -p "ENTER THE NUMBER C " num3

#using elif to check

if [ $num1 -lt $num2 ] && [ $num1 -lt $num3 ]
then
	echo "NUMBER A HAVING $num1 IS LARGEST"
elif [ $num2 -lt $num1 ] && [ $num2 -lt $num3 ]
then
	echo "NUMBER B HAVING $num2 IS LARGEST"
elif [ $num1 -eq $num2 ] && [ $num2 -eq $num3 ]
then 
	echo "A B C HAVING $num1 $num2 $num3 ARE EQUAL"
else
	echo "NUMBER HAVING $num3 is LARGEST"
fi
