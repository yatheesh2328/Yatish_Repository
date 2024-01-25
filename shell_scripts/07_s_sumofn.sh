#!/bin/bash
#find the sum of n numbers
echo "Enter the number to find the sum"
read val
sum=0

#using while condtion

while [ $val -gt 0 ]
	do
		sum=`expr $val + $sum`
		$val=`expr $val - 1`
	done
	echo "$sum"
