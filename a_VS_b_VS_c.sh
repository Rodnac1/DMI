#!/bin/bash

echo "Input a: "; read a
echo "Input b: "; read b
echo "Input c: "; read c

if (( $a == $b == $c ))
then
echo "a ($a) ir vienāds ar b ($b) un ar c ($c)"
elif (( $a > $b > $c ))
then
echo "a ($a) ir lielāks  par b ($b)







 

if (( $a == $b ))
then
echo "a ($a) ir vienāds ar b ($b)"
elif (( $a > $b ))
then
echo "a ($a) ir lielāks par b ($b)"
else "a ($a ir mazāks par b ($b)"
if



: <<`END` komentara bloka sākums 
if (( $a == $b ))
then
echo "a ($a) ir vienadi ar b ($b)"
fi
if (( $a > $b ))
then
echo "a ($a) ir lielāks ar b ($b)"
fi
if (( $a < $b ))
then
echo "a ($a) ir mazāks ar b ($b)"
fi
END
