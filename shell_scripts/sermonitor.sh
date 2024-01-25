#!/bin/bash

services="sshd jenkings"
for i in $services
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		echo $i is not working | mail -s "SERVICES NOT WORKING" "yatishsai23@gmail.com"
	fi
done

