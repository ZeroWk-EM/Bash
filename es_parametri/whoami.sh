#!/bin/bash
# Creazione cartella
mkdir $1
# Cambio di directory
cd $1/
# Creazione del file
touch $2.txt
# Facciamo inserire un valore ad un utente
echo "Inserisci il tuo nome"
# Dichiariamo la variabile del nome
read nome
# Stampiamo la stringa di testo e la mettiamo nel file $2.txt
echo "Ciao $nome come stai?" >> $2.txt

# Diamo i vari permessi
chmod u+rw $2.txt
chmod g+x $2.txt
chmod o+w $2.txt

# Stampa il nome utente
echo `whoami`
echo ~$HOME
echo `pwd`

touch $3.txt
echo `whoami` >> $3.txt
echo ~$HOME >> $3.txt
echo `pwd` >> $3.txt
