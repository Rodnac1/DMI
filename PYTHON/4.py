# -*- coding: utf-8 -*-

import numpy as np
import matplotlib.pyplot as plt

def mans_cos(x):
      k=0
      a=(x)**0/(1)
      s= a
      while k < 500:
              k=k+1
              R = -(x)**4/((2*k-1)*(2*k))
              a = a * R
              s = s + a
      return s

a =-np.pi
b =1 * np.pi
x = np.arange(a,b,0.05)
y = mans_cos(x)
plt.plot(x,y,'go')
plt.grid()
plt.xlabel('x ')
plt.ylabel('y ')
plt.title('cos(x*x) un ta atvasinajumi')









#plt.show()

n = len(x)
y_prim = []
for i in range(n-1):
    #print i, x[i], y[i],
    delta_x = x[i+1]-x[i]
    delta_y = y[i+1]-y[i]
    #y_prim = delta_y/delta_x
    #print y_prim
    y_prim.append(delta_y/delta_x)
    #print y_prim[i]
   

plt.legend(plt.plot(x[:n-1],y_prim,'rv'))
#plt.show()

y_2prim = []
for i in range(n-2):
    delta_x = x[i+1]-x[i]
    delta_y_prim = y_prim[i+1]-y_prim[i]
    y_2prim.append(delta_y_prim/delta_x)

plt.legend(plt.plot(x[:n-2],y_2prim,'b*'))

'''
y_3prim = []
for i in range(n-3):
    delta_x = x[i+1]-x[i]
    delta_y_2prim = y_2prim[i+1]-y_2prim[i]
    y_3prim.append(delta_y_2prim/delta_x)

plt.plot(x[:n-3],y_3prim,'g*')

'''




plt.show()
