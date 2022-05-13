#!/bin/bash
if
    [ $# == 2 ] #Se inseriamo entrambi i parametri (pro) assegna i
    valori ad file e cartella
then
    #LOG OK
    file=$1     # echo "file = "${file}
    cartella=$2 # echo "cartella = "${cartella}
#Controllo per evitare che qualcuno metta più di due parametri posizionali
elif [ $# -lt 0 ] || [ $# -ge 3 ]; then
    echo "|| ERROR || Puoi mettere solo due parametri"
    exit 0
fi
if [ -z "$1" ] && [ -z "$2" ]; then #Caso in cui mancano $1 e $2
    #LOG OK
    echo "Inserisci il nome del file"
    read file # echo "file = "${file}
    echo "Inserisci il nome della cartella"
    read cartella                     # echo "cartella = "${cartella}
elif [ -n "$1" ] && [ -z "$2" ]; then #Caso in cui abbiamo $1 ma no $2
    echo "Inserisci il nome della cartella"
    read cartella
    file=$1 # echo "cartella = "${cartella}
fi
if [ -r $file ]; then
    echo "ESISTE || [$file]"
else
    touch $file."txt"
    echo "CREATO || [$file]"
fi
if [ -d $cartella ]; then
    echo "ESISTE || [$cartella]"
else
    mkdir $cartella
    echo "CREATO || [$cartella]"
fi
cp $file."txt" $cartella
echo "[FILE CORRETTAMENTE COPIATO IN $cartella]"
