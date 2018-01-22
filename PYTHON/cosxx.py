# -*- coding: utf-8 -*-
from math import cos

def mans_cos(x):
      k=0
      a=(-1)**0*x**0/(1)
      s= a
      while k < 500:
              k=k+1
              R = (1/4*(-x)**4)/((2*k-1)*(2*k))
              a = a * R
              s = s + a
              if k == 499:
                      print "a%d = %6.2f s%d = %6.2f"%(k,a,k,s)


      # print "izdruka no liet.f. Beigas"

      return s
x = 1. * input ("ievadi argumentu")
y = cos(x*x)
print "standarta cos(%.2f)=%.2f"%(x,y)
yy = mans_cos(x)
print type(yy)
print "mans cos(%.2f)=%.2f"%(x,yy)

print "   500 "
print "     ---       k    4*k                       4 "
print "     \     (-1) * x                 0.25 *(-x) "
print "s(x)= | ------------------       R=-----------------  "
print "     /            (2*k)"
print "     ---  (2*k)!*2                 (2k-1)(2k) "
print "     n=0                         "
