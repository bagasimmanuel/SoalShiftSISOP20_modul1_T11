#!/bin/bash
a=$(echo $1 | tr -d [:digit:])
x1="`< /dev/urandom tr -dc a-z | head -c1`"
x2="`< /dev/urandom tr -dc A-Z | head -c1`"
x3="`< /dev/urandom tr -dc 0-9 | head -c1`"
x4="`< /dev/urandom tr -dc a-zA-Z0-9 | head -c25`"
password=$x1$x2$x3$x4
echo -e $password > $a.txt
b=`date +%H`
echo "$a;$b" >> log.csv
