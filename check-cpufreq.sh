#!/bin/bash

nthCore=63

for i in $(seq 0 ${nthCore}); do
	cat "/sys/devices/system/cpu/cpu${i}/cpufreq/scaling_setspeed"
done
