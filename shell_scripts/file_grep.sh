#!/bin/bash
echo "enter the pattern to find the filesname in which it contains"
read pattern

grep -l "$pattern" * > grepdata

if [ $? -eq 0 ]
then
	echo "The files names are"
	cat grepdata
else
	echo "Files not found"
fi
