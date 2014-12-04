#!/bin/bash

dir=${1%/*}
cd $dir
name=${1##*/}
baseName=${name%.*}

[ -f "${baseName}.class" ] && rm ${baseName}.class
echo "Compiling ${baseName}.java........"
javac ${baseName}.java
if [ -f "${baseName}.class" ]
then
    echo "-----------OUTPUT-----------"
    java ${baseName}
else
    echo ""
fi
