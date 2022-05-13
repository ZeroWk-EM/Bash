#!/bin/bash
command=$1
loop="1"
echo `${command}`
while [ "${loop}" = "1" ]
do
    echo "Che comando vuoi eseguire - Inserire exit per uscire dal programma"
    read command
        if [ "${command}" = "esci" ]
        then
        loop="0"
        elif [ "${command}" != "esci" ]
        then  
        echo `${command}`
        fi
done