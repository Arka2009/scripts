#!/bin/bash

start1=$(date +%s.%N)
sleep 2
dur1=$(echo "$(date +%s.%N) - $start1" | bc)
echo "${dur1}"
