#!/bin/bash
echo "enter the string"
read string

var=$string

for i in $var
do
	echo "length of the string is length=${#var}"
done



