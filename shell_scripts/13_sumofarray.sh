#!/bin/bash
var="10 20 30 10"
sum=0
for i in $var
do
	sum=`expr $i + $sum`
done
echo "SUM OF AN ARRAY IS $sum"
