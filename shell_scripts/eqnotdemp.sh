#!/bin/bash

echo "enter the value of A"
read val1
echo "enter the value of B"
read val2

if [ $val1 -eq $val2 ]
then
echo "both the number are equal"
else
echo "numbers are not equal"
fi
