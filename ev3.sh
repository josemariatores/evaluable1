#!/bin/bash
echo " que dias han entrado los usuarios a tu web"
read -p "introduce el dia: " dias
read -p "introduce el mes: " meses
numero=1
maxlinias=`cat usuarios.txt | wc -l`
while [ $numero -le $(($maxlinias + 1)) ];do
linia=`cat usuarios.txt | head -$numero |tail -1`
mes=`echo $linia | awk '{print $3}'`
dia=`echo $linia | awk '{print $2}'`
usuario=`echo $linia | awk '{print $1}'`
if [ $mes = $meses ] && [ $dia = $dias ];then
echo "$usuario"
fi
numero=$(($numero +1))
done



