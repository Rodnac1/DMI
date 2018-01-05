# -*- coding: utf-8 -*-
#from math import sin
import numpy as np
import matplotlib.pyplot as plt

#def mans_sinuss(x):
def mans_sinuss(x,n):
    k = 0
    a = (-1)**0*x**1/(1)
    S = a
#    while k<0:
    while k<n:
        k = k + 1
        R = (-1) * x**2 /((2*k)*(2*k+1))
        a = a * R
        S = S + a
    return S

x = np.arange(0.,6.28,0.01)
#y = sin(x)
y = np.sin(x)
yy = mans_sinuss(x,2)

plt.plot(x,y,color='#00FF00')
plt.plot(x,yy)
plt.grid()
plt.show()
