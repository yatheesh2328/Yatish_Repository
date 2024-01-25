#!/bin/bash
services="sshd jenkins"
for i in $services
do
	ps -C $i
	if [ $? -eq 0 ]
	then
		echo "RUNNING SERVICES ARE $i"
	elif [ $? -eq 1 ]
	then
		echo "$i SERVICES ARE NOT RUNNING, NOTIFICATION SENT" 
		echo " $i SERVICES ARE NOT RUNNING" | mail -s "SERVICE NOT RUNNING" "yatishsai23@gmail.com"
fi
done
