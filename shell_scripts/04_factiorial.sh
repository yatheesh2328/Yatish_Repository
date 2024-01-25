#!/bin/bash

read -p "enter the number to find the factorial : " num
fact=1

while [ $num -gt 0 ]
do
fact=`expr $num \* $fact`
num=`expr $num - 1`
done
echo " THE FACTORIAL OF  IS : $fact"


