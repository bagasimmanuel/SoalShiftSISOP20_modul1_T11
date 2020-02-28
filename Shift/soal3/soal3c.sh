#!/bin/bash

a=`mkdir kenangan`
b=`mkdir duplicate`
x=1
y=1
tes=`ls | grep "pdkt_kusuma_" | cut -d "_" -f 3 | sort -n | tail -1`

arr=""
for ((i=1;i<=tes;i=i+1))
do

abc=`cat wget.log | grep "Location" | head -$i | tail -1 | cut -d " " -f 2`
dupkah=`echo -e $arr | awk -v loc=$abc 'BEGIN{dupkahlagi=0} {if(loc==$0) dupkahlagi=1} END {printf "%d", dupkahlagi}'`
if [[ $dupkah == 0 ]]
then
arr="$arr$abc\n"
mv pdkt_kusuma_$i kenangan/kenangan_$x
x=`expr $x + 1`
else
mv pdkt_kusuma_$i duplicate/duplicate_$y
y=`expr $y + 1`
fi
done

cat wget.log >> wget.log.bak
rm wget.log

