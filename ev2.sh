#!/bin/bash
read -p "escribe el mes" m
maxlinia=`cat usuarios.txt | wc -l `
numlinia=1 

while [ $numlinia -le $maxlinia ]; do
linia=`cat usuarios.txt | head -$numlinia | tail -1`
dia=`echo $linia | awk '{print $2 }'`
mes=`echo $linia | awk '{print $3}'`

if [ $m = $mes ]; then
echo "$dia";
else
echo "0";
fi
numlinia=$((numlinia+1));
done
 
