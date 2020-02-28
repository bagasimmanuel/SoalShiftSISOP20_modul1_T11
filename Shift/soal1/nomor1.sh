#!/bin/bash
echo "Region yang memiliki profit paling Sedikit : "
satua=`awk -F "," 'FNR>1{(seen[$13]+=$NF)}END{for(i in seen) print i, seen[i]}' Sample-Superstore.csv | sort -gk2 | awk 'FNR < 2{print $1}'`
echo "$satua"
echo "$2 State dengan Profit terkecil adalah : "
satub=`awk -F "," -v a=$satua 'NR>1 {if(match($13, a))seen[$11]+=$NF} END{for(i in seen) printf "%s,%f\n", i, seen[i]}' Sample-Superstore.csv | sort -g -t "," -k2 | awk -F "," 'FNR < 3{printf "%s ", $1}'`

c1=`echo "$satub" | awk -F " " '{printf "%s ",$1}'`
c2=`echo "$satub" | awk -F " " '{printf "%s",$2}'`

echo "$c1"
echo "$c2"

echo " "
echo -e "10 produk dengan profit terkecil dari State $c1 dan State $c2 adalah \n"

satuc2=`awk -F "," -v x2=$c2 -v x1=$c1 'NR>1 {if((match($11, x2)) || (match($11,x1)))seen[$17]+=$NF}END{for(i in seen) printf "%s^%f\n", i,seen[i]}' Sample-Superstore.csv | sort -g -t "^" -k2 | awk -F "^" 'NR < 11 {print $0}'`
echo "$satuc2"

#satuc1=`awk -F "," -v x1=$c1 'NR>1 {if(match($11, x1))seen[$17]+=$NF}END{for(i in seen) printf "%s^%f\n", i,seen[i]}' Sample-Superstore.csv | sort -g -t "^" -k2 | awk -F "^" 'NR < 11 {print $0}'`
#echo "$satuc1"
#satuc=`awk -F "@" $satuc1$satuc2 | sort -g -k2`
#echo $satuc 
#echo "$satuc1$satuc2" | sort -g -t "^" -k2 | awk  -F "^" '{printf "%s%f\\n\n",$1,$2}'
#echo -e "$satuc1$satuc2" | awk -F "^" '{printf "%s%f\\n",$1,$2}' | sort -g -t "^" -k2 | awk -F "^"  'NR < 11 {printf "%s\n",$1}'
#echo -e "$satuc1$satuc2" | awk -F "^" '{printf "%s^%f\n",$1,$2}' | sort -n -t "^" -k2 | awk -F "^" '{printf "%s%f\\n\n",$1,$2}'
#echo -e "$satuc2$satuc1" | sort -n | awk -F "^" '{printf "%f%s\n",$1,$2}'
