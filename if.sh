#!/bin/bash
#if (...) then ... elif (...) then ... else ... fi
a=$1
if (( $a > 0 )); then
    echo "Izdr. no g.zara (jā g.), tad, kad $a ir >0"
elif (( $a == 0 )); then
    echo "Izdr. no alt.zara (jā g.), tad, kad $a ir =0"
else
    echo "Izdr. no g.zara (nē g.), tad, kad $a nav >0"
    echo "Nostrāda tad, kad iestājas nē gad. visos iepr."
fi
echo "Šis teksts tiks attēlots JEBKURĀ GADīJUMĀ!"



