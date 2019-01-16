#!/bin/bash

while :
do
	for i in $(pgrep dfs-lace); do ps -mo pid,tid,fname,user,psr -p $i && numastat -p $i;done
	for i in $(pgrep sleep); do ps -mo pid,tid,fname,user,psr -p $i && numastat -p $i;done
	sleep 1
done


# Check the status of binary
#pid_list="$(pgrep blackscholes) $(pgrep htop)"
#echo "${pid_list}"
#for pid in ${pid_list}; do
#	state=$(ps -q ${pid} -o state --no-headers)
#	bin=$(ps -p ${pid} -o comm=)
#	echo "${state}-${pid}-${bin}"
#done
