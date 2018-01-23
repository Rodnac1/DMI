#!/bin/bash
echo "Ievadi pirmo skaitli:"
read a ;
echo "Ievadi otro skaitli:"
read b ;
echo "Ievadi trešo skaitli:"
read c ;
echo
echo "----------------------"
echo "Pirmais skaitlis = $a |"
echo "Otrais skaitlis = $b |"
echo "Trešais skaitlis = $c |"
echo "----------------------"
#MINIMĀLĀ VĒRTĪBA
if (( $a > $b )) && (( $a > $c )) && (( $b > $c )); then
echo " Minimālā vērtība = $c "
fi
if (( $a > $b )) && (( $a > $c )) && (( $c > $b )); then
echo " Minimālā vērtība = $b "
fi
if (( $b > $a )) && (( $b > $c )) && (( $a > $c )); then
echo " Minimālā vērtība = $c "
fi
if (( $b > $a )) && (( $b > $c )) && (( $c > $a )); then
echo " Minimālā vērtība = $a "
fi
if (( $c > $a )) && (( $c > $b )) && (( $a > $b )); then
echo " Minimālā vērtība = $b "
fi
if (( $c > $a )) && (( $c > $b )) && (( $b > $a )); then
echo " Minimālā vērtība = $a "
fi
if [ $a == $b ] && [ $a == $c ] && [ $b == $c ]; then
echo " Visi ievadītie skaitļi ir vienādi! = $c "
echo " Minimālā vērtība = $a "
echo " Maksimālā vērtība =$a "
fi
if (( $a == $b )) && (( $c < $a )) ; then
echo " Minimālā vērtība = $c "
fi
if (( $a == $c )) && (( $b < $a )) ; then
echo " Minimālā vērtība = $b "
fi
if (( $b == $c )) && (( $a < $b )) ; then
echo " Minimālā vērtība = $a "
fi
echo
#MAKSIMĀLĀ VĒRTĪBA
if (( $a > $b )) && (( $a > $c )) && (( $b > $c )); then
echo " Maksimālā vērtība = $a "
fi
if (( $a > $b )) && (( $a > $c )) && (( $c > $b )); then
echo " Maksimālā vērtība = $a "
fi
if (( $b > $a )) && (( $b > $c )) && (( $a > $c )); then
echo " Maksimālā vērtība = $b "
fi
if (( $b > $a )) && (( $b > $c )) && (( $c > $a )); then
echo " Maksimālā vērtība = $b "
fi
if (( $c > $a )) && (( $c > $b )) && (( $a > $b )); then
echo " Maksimālā vērtība = $c "
fi
if (( $c > $a )) && (( $c > $b )) && (( $b > $a )); then
echo " Maksimālā vērtība = $c "
fi
if [ $a == $b ] && [ $c > $a ] ; then
echo " Maksimālā vērtība = $c "
fi
#if (( $a == $c )) && (( $b > $c )) ; then
#echo " Maksimālā vērtība = $b "
#fi
#if (( $b == $c )) && (( $a > $b )) ; then
#echo " Maksimālā vērtība = $a "
#fi
echo
#VIDĒJĀ VĒRTĪBA
var1=`expr $a + $b + $c`
var2=`expr $var1 % 3`
var3=`expr $var2 \* 10`
var4=`expr $var3 / 3`
var5=`expr $var1 / 3`
echo " Vidējā vērtība = $var5.$var4"
echo
#SAKĀRTOŠANA
if (( $a > $b )) && (( $a > $c )) && (( $b > $c )); then
echo " Augošā secībā $c $b $a Dilstošā secībā $a $b $c "
fi
if (( $a > $b )) && (( $a > $c )) && (( $c > $b )); then
echo " Augošā secībā $b $c $a Dilstošā secībā $a $c $b "
fi
if (( $b > $a )) && (( $b > $c )) && (( $a > $c )); then
echo " Augošā secībā $c $a $b Dilstošā secībā $b $a $c "
fi
if (( $b > $a )) && (( $b > $c )) && (( $c > $a )); then
echo " Augošā secībā $a $c $b Dilstošā secībā $b $c $a "
fi
if (( $c > $a )) && (( $c > $b )) && (( $a > $b )); then
echo " Augošā secībā $b $a $c Dilstošā secība $c $a $b "
fi
if (( $c > $a )) && (( $c > $b )) && (( $b > $a )); then
echo " Augošā secībā $a $b $c Dilstošā secībā $c $b $a "
else
echo " Skaitļi ir vienādi, tāpēc nevar sakārtot augošā vai dilstošā secībā! "
fi
echo
#MEDIANA
if (( $a > $b )) && (( $a > $c )) && (( $b > $c )); then
echo " Mediana = $b "
fi
if (( $a > $b )) && (( $a > $c )) && (( $c > $b )); then
echo " Mediana = $c "
fi
if (( $b > $a )) && (( $b > $c )) && (( $a > $c )); then
echo " Mediana = $a "
fi
if (( $b > $a )) && (( $b > $c )) && (( $c > $a )); then
echo " Mediana = $c "
fi
if (( $c > $a )) && (( $c > $b )) && (( $a > $b )); then
echo " Mediana = $a "
fi
if (( $c > $a )) && (( $c > $b )) && (( $b > $a )); then
echo " Mediana = $b "
fi
echo
#MODA
if (( $a == $b )) ; then
echo " Moda = $a "
fi
if (( $a == $c )) ; then
echo " Moda = $c "
fi
if (( $b == $c )) ; then
echo " Moda = $b "
fi
if (( $a == $b && $a == $c && $b == $c )) ; then
echo " Moda = $c "
fi
if (( $a > $b )) && (( $a > $c )) && (( $b > $c )); then
echo " Modas nav "
fi
if (( $a > $b )) && (( $a > $c )) && (( $c > $b )); then
echo " Modas nav "
fi
if (( $b > $a )) && (( $b > $c )) && (( $a > $c )); then
echo " Modas nav "
fi
if (( $b > $a )) && (( $b > $c )) && (( $c > $a )); then
echo " Modas nav "
fi
if (( $c > $a )) && (( $c > $b )) && (( $a > $b )); then
echo " Modas nav "
fi
if (( $c > $a )) && (( $c > $b )) && (( $b > $a )); then
echo " Modas nav "
fi
#!/bin/bash
echo "Ievadi pirmo skaitli:"
read a ;
echo "Ievadi otro skaitli:"
read b ;
echo "Ievadi trešo skaitli:"
read c ;
echo
echo "----------------------"
echo "Pirmais skaitlis = $a |"
echo "Otrais skaitlis = $b |"
echo "Trešais skaitlis = $c |"
echo "----------------------"
#MINIMĀLĀ VĒRTĪBA
if (( $a > $b )) && (( $a > $c )) && (( $b > $c )); then
echo " Minimālā vērtība = $c "
fi
if (( $a > $b )) && (( $a > $c )) && (( $c > $b )); then
echo " Minimālā vērtība = $b "
fi
if (( $b > $a )) && (( $b > $c )) && (( $a > $c )); then
echo " Minimālā vērtība = $c "
fi
if (( $b > $a )) && (( $b > $c )) && (( $c > $a )); then
echo " Minimālā vērtība = $a "
fi
if (( $c > $a )) && (( $c > $b )) && (( $a > $b )); then
echo " Minimālā vērtība = $b "
fi
if (( $c > $a )) && (( $c > $b )) && (( $b > $a )); then
echo " Minimālā vērtība = $a "
fi
if [ $a == $b ] && [ $a == $c ] && [ $b == $c ]; then
echo " Visi ievadītie skaitļi ir vienādi! = $c "
echo " Minimālā vērtība = $a "
echo " Maksimālā vērtība =$a "
fi
if (( $a == $b )) && (( $c < $a )) ; then
echo " Minimālā vērtība = $c "
fi
if (( $a == $c )) && (( $b < $a )) ; then
echo " Minimālā vērtība = $b "
fi
if (( $b == $c )) && (( $a < $b )) ; then
echo " Minimālā vērtība = $a "
fi
echo
#MAKSIMĀLĀ VĒRTĪBA
if (( $a > $b )) && (( $a > $c )) && (( $b > $c )); then
echo " Maksimālā vērtība = $a "
fi
if (( $a > $b )) && (( $a > $c )) && (( $c > $b )); then
echo " Maksimālā vērtība = $a "
fi
if (( $b > $a )) && (( $b > $c )) && (( $a > $c )); then
echo " Maksimālā vērtība = $b "
fi
if (( $b > $a )) && (( $b > $c )) && (( $c > $a )); then
echo " Maksimālā vērtība = $b "
fi
if (( $c > $a )) && (( $c > $b )) && (( $a > $b )); then
echo " Maksimālā vērtība = $c "
fi
if (( $c > $a )) && (( $c > $b )) && (( $b > $a )); then
echo " Maksimālā vērtība = $c "
fi
if [ $a == $b ] && [ $c > $a ] ; then
echo " Maksimālā vērtība = $c "
fi
#if (( $a == $c )) && (( $b > $c )) ; then
#echo " Maksimālā vērtība = $b "
#fi
#if (( $b == $c )) && (( $a > $b )) ; then
#echo " Maksimālā vērtība = $a "
#fi
echo
#VIDĒJĀ VĒRTĪBA
var1=`expr $a + $b + $c`
var2=`expr $var1 % 3`
var3=`expr $var2 \* 10`
var4=`expr $var3 / 3`
var5=`expr $var1 / 3`
echo " Vidējā vērtība = $var5.$var4"
echo
#SAKĀRTOŠANA
if (( $a > $b )) && (( $a > $c )) && (( $b > $c )); then
echo " Augošā secībā $c $b $a Dilstošā secībā $a $b $c "
fi
if (( $a > $b )) && (( $a > $c )) && (( $c > $b )); then
echo " Augošā secībā $b $c $a Dilstošā secībā $a $c $b "
fi
if (( $b > $a )) && (( $b > $c )) && (( $a > $c )); then
echo " Augošā secībā $c $a $b Dilstošā secībā $b $a $c "
fi
if (( $b > $a )) && (( $b > $c )) && (( $c > $a )); then
echo " Augošā secībā $a $c $b Dilstošā secībā $b $c $a "
fi
if (( $c > $a )) && (( $c > $b )) && (( $a > $b )); then
echo " Augošā secībā $b $a $c Dilstošā secība $c $a $b "
fi
if (( $c > $a )) && (( $c > $b )) && (( $b > $a )); then
echo " Augošā secībā $a $b $c Dilstošā secībā $c $b $a "
else
echo " Skaitļi ir vienādi, tāpēc nevar sakārtot augošā vai dilstošā secībā! "
fi
echo
#MEDIANA
if (( $a > $b )) && (( $a > $c )) && (( $b > $c )); then
echo " Mediana = $b "
fi
if (( $a > $b )) && (( $a > $c )) && (( $c > $b )); then
echo " Mediana = $c "
fi
if (( $b > $a )) && (( $b > $c )) && (( $a > $c )); then
echo " Mediana = $a "
fi
if (( $b > $a )) && (( $b > $c )) && (( $c > $a )); then
echo " Mediana = $c "
fi
if (( $c > $a )) && (( $c > $b )) && (( $a > $b )); then
echo " Mediana = $a "
fi
if (( $c > $a )) && (( $c > $b )) && (( $b > $a )); then
echo " Mediana = $b "
fi
echo
#MODA
if (( $a == $b )) ; then
echo " Moda = $a "
fi
if (( $a == $c )) ; then
echo " Moda = $c "
fi
if (( $b == $c )) ; then
echo " Moda = $b "
fi
if (( $a == $b && $a == $c && $b == $c )) ; then
echo " Moda = $c "
fi
if (( $a > $b )) && (( $a > $c )) && (( $b > $c )); then
echo " Modas nav "
fi
if (( $a > $b )) && (( $a > $c )) && (( $c > $b )); then
echo " Modas nav "
fi
if (( $b > $a )) && (( $b > $c )) && (( $a > $c )); then
echo " Modas nav "
fi
if (( $b > $a )) && (( $b > $c )) && (( $c > $a )); then
echo " Modas nav "
fi
if (( $c > $a )) && (( $c > $b )) && (( $a > $b )); then
echo " Modas nav "
fi
if (( $c > $a )) && (( $c > $b )) && (( $b > $a )); then
echo " Modas nav "
fi

