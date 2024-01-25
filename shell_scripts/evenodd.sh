#!/bin/bash
echo "enter the number 1"
read num1
rem=`expr $num1 % 2`
echo "reminder is $rem"
if [ $rem -eq 0 ]
then
	echo "num is even"
else
	echo "num is odd"
fi
