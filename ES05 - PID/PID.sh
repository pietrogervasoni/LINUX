#! /bin/bash
#! create a file with the PID of the process with the name inserted as parameter

name=$1
if [[ -z $nome ]]; then

	echo $(pidof $name) > temp
	echo $(cut -f2 -d " " temp) > result
	rm -f temp
fi

cat result
