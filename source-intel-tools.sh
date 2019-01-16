#!/bin/bash

INTELROOT="/opt/intel"
ARCH="intel64"
source ${INTELROOT}/compilers_and_libraries/linux/bin/compilervars.sh ${ARCH}
source ${INTELROOT}/vtune_amplifier_2018/amplxe-vars.sh quiet
source ${INTELROOT}/compilers_and_libraries_2018.2.199/linux/daal/bin/daalvars.sh ${ARCH}
source ${INTELROOT}/compilers_and_libraries_2018.2.199/linux/mpi/intel64/bin/mpivars.sh
source ${INTELROOT}/compilers_and_libraries_2018.2.199/linux/tbb/bin/tbbvars.sh ${ARCH}
source ${INTELROOT}/compilers_and_libraries_2018.2.199/linux/mkl/bin/mklvars.sh ${ARCH}
source ${INTELROOT}/compilers_and_libraries_2018.2.199/linux/ipp/bin/ippvars.sh ${ARCH} linux
source ${INTELROOT}/itac/2018.2.020/intel64/bin/itacvars.sh
source ${INTELROOT}/parallel_studio_xe_2018.2.046/bin/psxevars.sh
source ${INTELROOT}/clck/2018.3/bin/clckvars.sh
