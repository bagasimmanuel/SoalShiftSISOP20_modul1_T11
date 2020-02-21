#!/bin/bash

a=`mkdir kenangan`
b=`mkdir duplicate`

tes=`ls | grep "pdkt_kusuma_" | cut -d "_" -f 3 | sort -n | tail -1`

arr=""
for ((i=1;i<=tes;i=i+1))
do
abc="`cat wget.log | grep "Location" | head -$i | tail -1 | cut -d " " -f 2`"
dupkah=`echo -e $arr | awk -v loc=$abc 'BEGIN{dupkahlagi=1} {if(loc==0) dupkahlagi=0} END' {printf "%d", dupkahlagi}`
echo $dupkah

if [ $dupkah==0 ]
then

arr=`$arr$log\n`
mv pdkt_kusuma_$i kenangan/kenangan_$i

else
mv pdkt_kusuma_$i duplicate/duplicate_$i
fi
done

cat wget.log >> wget.log.bak
rm wget.log