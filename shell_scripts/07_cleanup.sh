#!/bin/bash
echo "Enter the number of files to retain"
read count

ls -lt | awk -F " " ' NR>1{print$NF}' > retain

total=`cat retain | wc -l`
i=`expr $total - $count`
head -$i retain
