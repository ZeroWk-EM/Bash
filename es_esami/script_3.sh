
Esame Finale
Giuseppe Grasso
•
22 mar
100 punti
Scadenza: 22 mar, 13:45

Compito SO - 2022.pdf
PDF
Commenti sul corso
Il tuo lavoro
Consegnato

emanuele_moncada_esercizio01.sh
File sconosciuto

emanuele_moncada_esercizio02.sh
File sconosciuto

emanuele_moncada_esercizio03.sh
File sconosciuto

emanuele_moncada_esercizio04.sh
File sconosciuto
Commenti privati
#!/bin/bash
clear
echo "Esercizio 03 - EMANUELE MONCADA"
loop=1
while [ $loop = '1' ]
do
    echo "Quale comando vuoi eseguire"
    echo "|| [cp] = Copia File || [ls] = Lista file || [mkdir] = Crea Cartella || [touch] = Crea file || [ex] = Uscita dal programma"
    read comando
    #SCELTA
    case $comando in
        #COPIA
        cp)
        if [ -s $nomefile."txt" ] 
        then
        echo "Il file esiste || [$nomefile]"
        else
        echo "Come vuoi chiamare il file"
        read nomefile
        touch $nomefile."txt"
        fi
        cp $nomefile."txt" $nomefile"_copia"."txt"
        if [ -s $nomefile_copia."txt" ] 
        then
        echo "Il file è stato copiato correttamente || [$nomefile_copia]"
        fi
        ;;

        #LISTA
        ls)
        echo "Di quale cartella vuoi la lista - premi INVIO per farlo nella cartella corrente"
        read dirLista
        if [ -z "$dirLista" ]
        then
        ls
        elif [ -n "$dirLista" ]
        then
        ls $dirLista
        fi
        ;;

        #CARTELLA
        mkdir)
        echo "Inserisci il nome della cartella"
        read dirName
        while [ -z "$dirName"]
        do
        echo "ERRORE - Dare un nome alla cartella"
        read dirName
        done
        mkdir $dirName
        ;;

        #FILE
        touch)
        echo "Inserisci il nome del file"
        read nameFile
        while [ -z "$nameFile" ]
        do
        echo "ERRORE - Dare un nome al file"
        read nameFile
        done

        if [ -d $nameFile ]
        then
        echo "Esiste una cartella con lo stesso nome"   
        else
        touch $nameFile."txt"         
        fi
        ;;

        #ESCI
        ex)
        loop="0"
        ;;

        #Comando errato
        *)
        echo "Il valore inserito non e' valido"
        ;;
    esac
done