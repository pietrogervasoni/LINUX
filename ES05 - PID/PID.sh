#! /bin/bash
#! create a file with the PID of the process with the name inserted as parameter

name=$1
#! -x ceck only the process with that specific name
if pgrep -x $1 > /dev/null
then

	echo $(pidof $name) > temp
	echo $(cut -f2 -d " " temp) > result
	rm -f temp
	cat result
else

	echo non-existent process
fi
