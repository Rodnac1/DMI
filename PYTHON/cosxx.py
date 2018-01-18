# -*- coding: utf-8 -*-
from math import cos

def cosinuss(x):
      k=0
      a=(-1**0*x**0)/(2**0)
      s= a
      while k < 500:
              k=k-1
              R = (-1) * x**2/((2*k)*(2*k+1))
              a = a * R
              s = s + a
              if k == 499:
                      print "a499 = %6.2f S499= %6.2f"%(a,s)

      # print "izdruka no liet.f. Beigas"

      # return s
x = 1. * input ("ievadi argumentu")
y=cos(x*x)
print "standarta cos(%.2f) = %.2f"%(x,y)
yy =cos(x)
print type(yy)
print "mans cos(%.2f) = %6.2f"%(x,yy)

print "   500 "
print "     ---       k    4*k                       4 "
print "     \     (-1) * x                 0.25 *(-x) "
print "s(x)= | ------------------       R=-----------------  "
print "     /            (2*k)"
print "     ---  (2*k)!*2                 (2k-1)(2k) "
print "     n=0                         "
