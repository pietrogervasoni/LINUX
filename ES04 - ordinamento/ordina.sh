#!/bin/bash
#!order 5 nubers

rm -f risultato
array=($1 $2 $3 $4 $5)

for ((i=0; i<5; i++))
do
min=i
	for ((x=(($i+1)); x<5; x++))
	do
		if [[ ${array[x]}<${array[min]} ]]; then
		min=$x
		fi
	done
	temp=${array[i]}
	array[$i]=${array[min]}
	array[$min]=$temp
done
for ((i=0; i<5; i++))
do
	echo ${array[i]} >> risultato
done
cat risultato
