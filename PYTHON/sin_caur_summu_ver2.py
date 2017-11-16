# -*- coding: utf-8 -*-
# a0, a1, a2, a3
# S0, S1, S2, S3 -> S
from math import sin

x = input("Lietotaj, ludzu, ievadi argumentu (x): ")
print type(x)
y = sin(x)
print "sin(%.2f)=%.2f"%(x,y)


a0 = (-1)**0*x**1/(1)
#S0 = a0
S = a0
print "a0 = %6.2f s0 = %6.2f"%(a0,S)
#a1 = (-1)**1*x**3/(1*2*3)
a1 = a0 * (-1) * x**2 /(2*3)
S = S + a1
print "a1 = %6.2f s1 = %6.2f"%(a1,S)

#a2 = (-1)**2*x**5/(1*2*3*4*5)
a2 = a1 * (-1) * x**2 /(4*5)
S = S + a2
print "a2 = %6.2f s2 = %6.2f"%(a2,S)

#a3 = (-1)**3*x**7/(1*2*3*4*5*6*7)
a3 = a1 * (-1) * x**2 /(6*7)
S = S + a3
print "a3 = %6.2f s3 = %6.2f"%(a3,S)

