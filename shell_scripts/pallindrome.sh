#!/bin/bash
echo "enter the string to find out whether it is an pallindrome or not"
read string

palin=$(echo $string | rev)
echo "$palin"
if [ $palin == $string ];then
	echo "IT IS AN PALLINDROME"
else
	echo "IT IS NOT AN PALLINDROME"
fi
