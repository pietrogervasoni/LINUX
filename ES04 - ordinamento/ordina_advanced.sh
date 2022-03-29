#!/bin/bash
#!order x nubers

rm -f risultato
array=("$@")

for ((i=0; i<$#; i++))
do
min=i
        for ((x=(($i+1)); x<$#; x++))
        do
                if [[ ${array[x]}<${array[min]} ]]; then
                min=$x
                fi
        done
        temp=${array[i]}
        array[$i]=${array[min]}
        array[$min]=$temp
done

for ((i=0; i<$#; i++))
do
        echo ${array[i]} >> risultato
done
cat risultato
