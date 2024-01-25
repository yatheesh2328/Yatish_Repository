#!/bin/bash
#THRESHOLD VALUE 25

set -x
usage=`df -h . | awk -F " " 'NR>1{print$(NF-1)}' | sed 's/%//g'`
echo "MEMORY USAGE IS $usage"
if [ $usage -ge 20 ]
then
	echo "THRESHOLD VALUE REACHED" | mail -s "CRITICAL" "yatishsai23@gmail.com"
fi
	
