#!/bin/bash

modprobe msr
for cpu in $(seq 0 1 $(nproc --all)); do
	rdmsr --processor ${cpu} --bitfield 2:0 0x1a4
	#wrmsr --processor ${cpu} 0x1a4 0x0 # 0x0 - enable, 0x3 - disables
done
