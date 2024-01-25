#!/bin/bash

echo "enter the number to find its prod"
read num
prod=1

while [ $num -gt 1 ]
do
	prod=`expr $num \* $prod`
	num=`expr $num - 1`
done
echo "the product is $prod"

