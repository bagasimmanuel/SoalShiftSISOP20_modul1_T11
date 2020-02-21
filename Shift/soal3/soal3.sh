#!/bin/bash

tes=`ls | grep "pdkt_kusuma_" | cut -d "_" -f 3 | sort -n | tail -1`
echo $tes

if [[ $tes < 1 ]]
then
tes=0
fi

a=`expr $tes + 1`
b=`expr $tes + 28`

for ((i=a;i<b;i=i+1))
do
wget -a wget.log -O "pdkt_kusuma_$i" https://loremflickr.com/320/240/cat
done

