#!/bin/bash
echo "enter the filename"
read filename

while read line
do
	echo "$line"
	echo "welcome"
done < $filename

