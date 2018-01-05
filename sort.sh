#!/bin/bash
a=$1
b=$2
c=$3
# ja c ir > par b (un > c) un b > a
if (( $c > $b && $b > $a ))
then
    echo "GATAVS(1.): $a $b $c"
fi

echo "$a $c $b"
echo "$b $a $c"
echo "$b $c $a"
echo "$c $a $b"
echo "$c $b $a"
