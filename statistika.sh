#!/bin/bash
#sakartosana
num=("$@")

n=$#
#min & max
sortednum=($(printf "%s\n" "${num[@]}" | sort -n))
echo ${sortednum[@]}
echo "MIN:" ${sortednum[0]}

echo "MAX:" ${sortednum[n-1]}
#videja vertiba
sum=0
for((i=0;i<n;i++))
do

    sum=`expr $sum + ${num[$i]}`
done
  vidver=$sum/$n
echo -n "Videja vertiba: "
echo $vidver|bc

#Mediana
if (( n%2 != 0 ))
then
        echo -n "Mediana:"
        echo "${sortednum[($n-1)/2]}" | bc
else
        echo -n "Mediana:"
        echo "scale=1;(${sortednum[$n/2]} + ${sortednum[$n/2-1]})/2" |bc
fi
