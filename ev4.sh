#!/bin/bash
ultima=0
diamaximo=0
read -p "Introduce tu nombre de usuario: " usuario
if [[ $(cat usuarios.txt | grep -w $usuario | wc -l) -eq 0 ]];then
	echo "el usuario $usuario no se ha logueado"
else
for n  in $(cat usuarios.txt | grep $usuario); do
mes=$(echo $n | cut -d $`\t' -f3) #el cut es para seccionar la tabla
dia=$(echo $n | cut -d $`\t` -f3)
for numeromes in $(seq 0 11); do  #posicion del mes el 0 es el primero y el 11 es el 12
if [[ $mes == $(meses[$numeromes]) ]];  then
posicion=$numeromes
fi
done
