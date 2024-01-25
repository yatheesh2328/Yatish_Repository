#!/bin/bash

echo "enter the number to find sum of n numbers"
read num
sum=0
while [ $num -gt 0 ]
do
	sum=`expr $num + $sum`
	num=`expr $num - 1`
done
echo "The sum of a number is : $sum"
