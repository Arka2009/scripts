#!/bin/bash

target_freq=1000000
for id in $(seq 0 255); do
	echo userspace > /sys/devices/system/cpu/cpu${id}/cpufreq/scaling_governor
	echo ${target_freq} > /sys/devices/system/cpu/cpu${id}/cpufreq/scaling_min_freq
	echo ${target_freq} > /sys/devices/system/cpu/cpu${id}/cpufreq/scaling_setspeed
done 
