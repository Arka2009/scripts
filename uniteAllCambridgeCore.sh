#!/bin/bash

srcDir="/home/arka/Dropbox/Books/ECE/InformationTheory"
srcList=$(ls -d ${srcDir}/cambridge-core*)
#srcList=$(find $HOME/Dropbox -type d -name cambridge-core*)
for fl in ${srcList} ; do
    IFS='/' read -r -a array <<< "$fl"
    # echo ${array[-1]}
    # echo "----------"
    # echo ${IFS}
    # echo ${src}
    # echo ${fldr}
    # echo "----------"

    src=${array[-1]}
    fldr=${fl}
    echo "Merging ${src}"
    fls=$(ls ${fldr}/*.pdf)
    oldfldr=${PWD}
    cd ${fldr} && pdfunite ${fls} ${src}.pdf
    mv ${src}.pdf ${fldr}/..
    cd ${oldfldr}
done