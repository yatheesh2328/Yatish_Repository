#!/bin/bash
echo "enter the filename"
read filename
while read line
do
count=`echo "$line" | awk -F " " '{print$2}'`
echo "$count"
	if [ $count -gt $a ]
	then
	name=`echo "$line" | awk -F " " 'NR>1{print$1}'`	
echo "$name"
fi
done < $filename
