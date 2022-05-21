#! /bin/bash

if ! [ $# -eq 0 ]
then
        if [[ -z $(grep $1 clienti | cut -d "|" -f2) ]]
        then
                echo "client does not exist"
        else
                grep $1 clienti -w | cut -d "|" -f2
                #non va!!!
                grep $1 contatti -w | sed 's/|$1|/ /g'
        fi
else
        echo "No parameter given"
        echo "please insert the code of the client"

fi
