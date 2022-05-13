#!/bin/bash
echo "Esercizio 04 - EMANUELE MONCADA"
# --------------------- SCALETTA -----------------------------
# 1.CREARE ARRAY VUOTI DI LUNGHEZZA INDEFINITA
# 2.CREARE UN CICLO PER PRENDERE I DATI IN INPUT
# 3.SE VIENE PREMUTO 0 SALVARE IN UNA VARIABILE TEMPORANEA L'INDICE IN MODO DA DEFINIRE LA LUNGHEZZA DEL SECONDO ARRAY

#Array
array1=()
array2=()

#Condizione di loop
loop=1
while [ $loop = '1' ]
do
    echo "Inserisci un valore-iesimo"
    read val

    #RIEMPIMENTO ARRAY CON CONTROLLO
    while [ $array1[i] = 0 ]
        do
            loop="0"      
            #echo "[${array1[@]}]"
        done
    $array1[i]=$val
    echo "[${array1[i]}]"

done
#echo "[${array1[@]}]"