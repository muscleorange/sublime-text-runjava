#!/bin/bash
# @author muscle orange <muscleorangee@gmail.com>
# @date 2014-12-04

dir=${1%/*}
cd $dir
name=${1##*/}
baseName=${name%.*}

[ -f "${baseName}.class" ] && rm ${baseName}.class
echo "Compiling ${name}......"
javac ${name}
if [ -f "${baseName}.class" ]
then
    echo "-----------OUTPUT-----------"
    java ${baseName}
else
    echo ""
fi
