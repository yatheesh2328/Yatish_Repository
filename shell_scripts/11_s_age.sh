#!/bin/bash
echo "enter the filename"
read filename
num=1
while read line
do
count=`echo "$line" | awk -F " " '{print$2}'`
if [ $num -ge 1 ]
then
	if [ $count -gt 30 ]
	then
	name=`echo "$line" | awk -F " " '{print$1}'`	
echo "$name"
fi
fi
num=`expr $num + 1`
done < $filename

