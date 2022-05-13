#!/bin/bash
echo "Esercizio 02 - EMANUELE MONCADA"

if
    [ $# == 2 ] 
then
    #LOG OK
    num1=$1
    num2=$2
fi

if [ -z "$1" ] && [ -z "$2" ] 
then 
    #SE NON SONO STATI MESSI I PARAMETRI POSIZIONALI
    echo "Inserisci il primo numero"
    read num1
    echo "Inserisci il secondo numero"
    read num2                   
elif [ -n "$1" ] && [ -z "$2" ] 
then #SE E STATO MESSO IL PRIMO MA NON IL SECONDO PARAMETRO
    echo "Inserisci il secondo numero"
    read num2
    num1=$1
fi
    #LOG PER VERIFICARE IL VALORE DELLE VARIABILI
    echo "Numero 1 [$num1] || Numero 2 [$num2]"

#CONTROLLO DEL MAGGIORE
if [ $num1 -gt $num2 ]
then
    for (( i=$num1; i>$num2+1; i-- ))
    do
    echo "$((i-1))"
    done
fi

if [ $num2 -gt $num1 ]
then
    for (( i=$num2; i>=$num1+2; i-- ))
    do
    echo "$((i-1))"
    done
fi