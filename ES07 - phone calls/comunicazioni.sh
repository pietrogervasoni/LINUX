#! /bin/bash

if ! [ $# -eq 0 ]
then
        if [[ -z $(grep $1 clienti | cut -d "|" -f2) ]]
        then
                echo "client does not exist"
        else
		temp=$(grep $1 clienti | cut -d "|" -f2)
		if ! [[ -z $( grep "|${temp}|" contatti | grep -w ${2}) ]]
		then
			echo "contact does not exist"
		else
                	grep "|${2}|" contatti -w | cut -d "|" -f3
		fi
        fi
else
        echo "No parameter given"
        echo "please insert the code of the client and of the contact"

fi
