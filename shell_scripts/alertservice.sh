#!/bin/bash

services="sshd jenkings"
for i in $services
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		echo "$i" >> service.txt
	fi
done
if [ -s service.txt ]
then
cat service.txt | echo "$i" - service is not working | mail -s "SERVICES ALERT " "yatishsai23@gmail.com"
	fi

