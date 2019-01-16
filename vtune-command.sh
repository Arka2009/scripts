#!/bin/bash

echo "$1"
echo "VTune Analyses (Instruction Retired and Clock Cycles)..."
#amplxe-cl -start-paused -r log/amplrpt2 -collect-with runsa -knob event-config=CPU_CLK_UNHALTED.THREAD,INST_RETIRED.ANY,MEM_UOPS_RETIRED.ALL_LOADS,MEM_UOPS_RETIRED.L1_MISS_LOADS,MEM_UOPS_RETIRED.L2_HIT_LOADS,MEM_UOPS_RETIRED.L2_MISS_LOADS,ICACHE.MISSES -- ./${exe} ${prbs1} ${user} log  0 0
#amplxe-cl -R summary -result-dir=log/amplrpt2 -report-output ${ds_f}/general.csv -format csv -csv-delimiter comma
