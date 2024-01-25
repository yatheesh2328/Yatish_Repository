#!/bin/bash

fact="1 2 3 4 5 6 7"
prod=1

for i in $fact
do
	prod=`expr $i \* $fact`
	prod=`expr $i + 1`
done
	echo "factorial of an number is $prod"

