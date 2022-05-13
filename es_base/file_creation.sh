#!/bin/bash
#  Crea il file di testo numero 1
touch file1.txt
# Scrive nel file di testo la parola DIO
echo 'DIO' > file1.txt
# Crea il file di testo numero 2
touch file2.txt
# Scrive nel file di testo la parola Santo
echo 'SANTO' > file2.txt
# Crea una directory di nome cont
mkdir cont
# Sposta i file di testo nella cartella cont
mv file1.txt cont/
mv file2.txt cont/
