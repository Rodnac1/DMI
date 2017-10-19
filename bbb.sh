#!/bin/sh

a=10
b=20
#3.piemers
echo "Vai skailtis $a nav vienāds ar skaitli $b?" 
if [ $a -ne $b ]
then
echo"Jā, $a un $b nav vienādi"
else
echo "Nē, $a un $b ir vienādi"
if


:<<`END`
#2.piemērs salīdzinašana vai ir vienads operacija
echo "----------------------2.piemers----------------------"
echo "Vai skaitli $a ir vienadi ar skaitli $b"
if [ $a -ne $b ]
then
echo "Jā" # "tikai ja  atbilde uz jautujumu  a ir vienāds ar skaitli b" is true
echo  "$a un $b ir vienādi skailti"
else
echo "Nē" # "#tikai ja atbilde uz jautujumu  a ir vienāds ar skailti b" ir false"
echo  "$a un $b ir dažadi skailti"
fi
echo "----------------------2.piemers----------------------"
END
:<<`END` komentara bloka sākums
#1. piemērs salīdzinašana 
echo "----------------------1.piemers----------------------"
echo "Vai skaitli $a ir vienadi ar skaitli $b"
if [ $a -eq $b ]
then
echo "Jā" # "tikai ja  atbilde uz jautujumu  a ir vienāds ar skaitli b" is true
echo  "$a un $b ir vienādi skailti"
else
echo "Nē" # "#tikai ja atbilde uz jautujumu  a ir vienāds ir false"
echo  "$a un $b ir dažadi skailti"
fi
echo "----------------------1.piemers----------------------"
END
# komentara bloka beigas
