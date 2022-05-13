#Crea un programma che permetta di egesuire somma,sottrazione,montiflicazione,divisione,tabellina,sommavettore,exit

#!/bin/bash
clear
echo "CALC.SH by EMAN\n"
echo "Inserisci il primo valore"
read n1
echo "Inserisci il secondo valore"
read n2
ris=0
echo "\nQuale operazione vuoi eseguire (digita il simbolo)"
echo "|| [sm] = Somma || || [st] Sottrazione || || [molt] Montiflicazione || [div] Divisione || || [ex] = Tabellina || [sarr] = Sommatoria\n"
read scelta
#Scelta
case $scelta in
    #SOMMA
    sm)
    ris=$n1+$n2
    clear
    echo "La somma tra [$n1] e [$n2] e [$((ris))]"
    exit
    ;;

    #SOTTRAZIONE
    st)
    ris=$n1-$n2
    clear
    echo "La sottrazione tra [$n1] e [$n2] e [$((ris))]"
    exit
    ;;

    #MOLTIPLICAZIONE
    molt)
    ris=$n1*$n2
    clear
    echo "La moltiplicazione tra [$n1] e [$n2] e [$((ris))]"
    exit
    ;;

    #DIVISIONE
    div)
    ris=$n1/$n2
    clear
    echo "La divisione tra [$n1] e [$n2] e [$((ris))]"
    exit
    ;;

    #TABELLINA
    ex)
    echo "Il numer0 [$n1] sara moltiplicato [$n2] volte"
    for (( i=1; i<=$n2; i++ ))
    do
    echo "[$n1] * [$i] = [$((n1*i))]"
    done
    exit
    ;;

    sarr)
    echo "Inserisci gli elementi dell'array"
    
    exit
    ;;

    #NaN Command
    *)
    echo "Il valore inserito non e' valido"
    exit
    ;;
esac
