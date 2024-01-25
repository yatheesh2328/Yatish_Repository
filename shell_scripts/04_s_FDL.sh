#!/bin/bash
#checking if the path is related to file link or directory

read -p "ENTER THE PATH NAME : " path

#using if condition and system derived cariable -f -d -L

if [ -f $path ]
then
	echo "ENTERRED PATH $path belongs to FILE"
elif [ -d $path ]
then
	echo "ENTERRED PATH $path belongs to DIRECTORY"
elif [ -L $path ]
then
	echo "ENTERRED PATH $path belongs to LINK"
else
	echo "ENTERRED PATH NOT FOUND"
fi
