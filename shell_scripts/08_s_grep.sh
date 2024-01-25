#!/bin/bash
echo "enter the pattern to find"
read pattern
grep -rl $pattern * > bould

if [ $? = 0 ]
then
	echo "the file which contains the pattern are"
       	cat bould
else
	echo "pattern not found"
	fi
