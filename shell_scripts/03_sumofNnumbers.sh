#!/bin/bash
read -p "ENTER THE NUMBER TO FIND SUM OF N NUMBERS : " num1
sum=0
#using while condition

while [ $num1 -gt 0 ]
do
	sum=`expr $num1 + $sum`
	num1=`expr $num1 - 1`
done
echo "TOTAL SUM OF N NUMBERS ARE : $sum "
