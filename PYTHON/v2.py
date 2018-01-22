# -*- coding: utf-8 -*-

from math import cos
import numpy as np

print " 500"
print " -----------"
print " \ "
print " \ 2*k+1"
print " \ X"
print"s(x)=| -----------------------------"
print " / (2*k+1)!"
print " / "
print " / "
print " -----------"
print " k=0"
print
print
print

print " 2"
print " x"
print " R= --------------------"
print " (2*k) (2*k+1)"
def mans_cos(x):
    k = 0
    a = 1
    print ("Pirmais saskaitāmais: a%d = %6.2f")%(k,a)
    S = a
    while k<500:
        k = k + 1
        R = 1/4*((-x)**4)/((2*k-1)*(2*k))
        a = a * R
        S = S + a
        if k>=499:
           print (" a%d = %6.2f")%(k,a)


    return S


x = 1. * input("Lietotāj, lūdzu ievadi argumentu (x):")
#x = np.float128(input("Lietotāj, lūdzu ievadi argumentu (x):"))
print type(x)
y = cos(x*x)
print "standarta cos(%.2f)=%.2f"%(x,y)
yy = mans_cos(x)
print "mans cos(%.2f)=%.2f"%(x,yy)
