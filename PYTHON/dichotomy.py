# -*- coding: utf-8 -*-
import numpy as np
import matplotlib.pyplot as plt

def mans_sinuss(x):
    k = 0
    a = (-1)**0*x**1/(1)
    S = a
    while k<500:
        k = k + 1
        R = (-1) * x**2 /((2*k)*(2*k+1))
        a = a * R
        S = S + a
    return S

a = 1.57 # pi/2
b = 4.71 # 3*pi/2
x = np.arange(a,b,0.01)
y = mans_sinuss(x)
plt.plot(x,y)
plt.grid()
#plt.show()

funa = mans_sinuss(a)
funb = mans_sinuss(b)
if funa * funb > 0:
    print "[%.2f,%.2f] intervālā saknes nav"%(a,b),
    print "vai ir pāru sakņu skaits"
    exit()

print "Turpinājums, ja sakne tomēr ir:"
delta_x = 1.e-5 # 1.e3 VS 0.001 vai 1*10^(-3)
k = 0
while b-a > delta_x:
    k = k + 1
    x = (a+b)/2
    funx = mans_sinuss(x)
    print "%3d.: a=%.5f f(%.5f)=%8.5f b=%.5f"%(k,a,x,funx,b)
    if funa * funx > 0:
        a = x
    else:
        b = x

print "Gala rezultāts:"
print "a=%.5f f(a)=%.5f"%(a,mans_sinuss(a)),
print "x=%.5f f(x)=%.5f"%(x,funx),
print "b=%.5f f(b)=%.5f"%(b,mans_sinuss(b))
print "Rezultāts ir sasniegts %d iterācijās"%(k)
