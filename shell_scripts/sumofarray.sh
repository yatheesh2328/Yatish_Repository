#!/bin/bash

array="10 20 30 40 50"
sum=0

for i in $array
do
	sum=`expr $i + $sum`
done
echo "sum of array is $sum"
