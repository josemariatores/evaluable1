#!/bin/bash
logeados=0
numlinia=1
maxlinias=`cat usuarios.txt | wc -l `
read -p "dime tu nombre de usuario" usuario
while  [ $numlinia -le $maxlinias ];do
linia=`cat usuarios.txt | head -$numlinia | tail -1 `
dias=`echo $linia | awk '{print $2}'`
mes=`echo $linia | awk '{print $3}'`
user=`echo $linia | awk '{print $1}'`
if [ $usuario = $user ]; then
logeados=$((logeados+1))
fi
numlinia=$((numlinia+1))
done
if [ $logeados = "0" ]; then
echo "no se reconoce nadie con ese usuario"
else
echo "$logeados"
fi

