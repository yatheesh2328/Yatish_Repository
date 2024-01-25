#!/bin/bash
echo "enter the filename"
read filename 

while read row
do
	count=`echo "$row" | wc -w`
	echo "$count"
done < $filename
