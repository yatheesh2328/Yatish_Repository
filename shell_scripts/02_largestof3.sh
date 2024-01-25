#!/bin/bash

read -p "ENTER THE VALUE OF A : " num1
read -p "ENTER THE VALUE OF B : " num2
read -p "ENTER THE VALUE OF C : " num3

if [ $num1 -gt $num2 ] 
then
	if [ $num1 -gt $num3 ]
	then
		echo "$num1 is greater"
	fi
elif [ $num2 -gt $num1 ]
then
	if [ $num2 -gt $num3 ]
	then
		echo "$num2 is greater"
	else
		echo "$num3 is greater"
	fi
fi
if [ $num1 -eq $num2 ] && [ $num2 -eq $num3 ]
then
	echo "ALL THE VALUES $num1 $num2 $num3 ARE EQUAL"
fi
