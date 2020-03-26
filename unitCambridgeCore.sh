#!/bin/bash
src="Nutaro"
fldr="/home/arka/Dropbox/Books/Systems-Dynamics-Modelling/Simulation/${src}"
fls=$(ls ${fldr}/*.pdf)
oldfldr=${PWD}
# echo ${fls}
cd ${fldr} && pdfunite ${fls} ${src}.pdf
mv ${src}.pdf ${fldr}/..
cd ${oldfldr}