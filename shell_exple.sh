#!/bin/bash


#4. piemērs
echo -e "\n"
echo "Atbilde uz jautājumu - kas tiek pildīts?" $0
#echo $n
echo "Skriptam nodoto argumenti skaits" $#
echo "Argumentu saraksts (attēlešana/grupēšana 1. veids)" $*
echo "Argumentu saraksts (attēlešana/grupēšana 2. veids)" $@
#ech "Argumentu saraksts (attēlešana/grupēšana 2. veids)" $@
echo "Ieprieks. komand. izpildes rezultāta kļūdas kods: " $?
#0 - kļūda
#126 - permission denied
#127 - command not found
echo "Tekoša procesa numurs: " $$
echo "Enā palaista  (pedēja) procesa numurs: " $!

#3. piemērs
#NAME="Vārds Uzvārds"
#echo $NAME
#unset NAME
#echo $NAME

#2. piemērs
#NAME="Vārds Uzvārds"
#readonly NAME
#echo $NAME
#NAME="Uzvārds Vārds"
#echo $NAME

#1. piemērs
#NAME="Vārds Uzvārds"
#echo $NAME

echo -e "\n"
