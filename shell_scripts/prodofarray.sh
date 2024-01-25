#!/bin/bash

var="5 2 3 333"
prod=1

for i in $var
do
	prod=`expr $i \* $prod`
done
echo "prod of an array is $prod"
