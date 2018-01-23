# -*- coding: utf-8 -*-
from math import sin
import numpy as np
import matplotlib.pyplot as plt

def mans_cos(x):
    k = 0
    a = x**0/(1)
    S = a
    while k<500:
        k = k + 1
        R = -(x)**4/((2*k-1)*(2*k))

        a = a * R
        S = S + a
    return S

def citafunkcija(x):
    return mans_cos(x)-10



a = 2.57 #pi/2
b = 4.71 #3*pi/2
x = np.arange(a,b,0.01)
y = np.cos(x*x)
yy = mans_cos(x)
plt.plot(x,y)
plt.plot (x,yy)
plt.grid()
plt.show()




funa = citafunkcija(a)
funb = citafunkcija(b)
if funa * funb > 0:
    print "[%.2f,%.2f] intervala saknes nav"%(a,b)
    print "vai ir paru saknu skaits"



print "Turpnajums, ja sakne tomer ir:"
delta_x = 1.e-3 # 1.e3 vs 0.001 vai 1*10^(-3)
k = 0
while b-a > delta_x:
    k = k+1
    x = (a+b)/2
    funx = citafunkcija(x)
    print "%3d.: a=%.5f f(%.5f)=%8.5f b=%.5f"%(k,a,x,funx,b)
    if funa * funx > 0:
        a = x
    else:
        b = x




print "Gala rezultats:"
print "a=%.5f f(a)=%.5f"%(a,citafunkcija(a)),
print "x=%.5f f(x)=%.5f"%(x,funx),
print "b=%.5f f(b)=%.5f"%(b,citafunkcija(b)),
print "Rezultats ir sasniegts %d iteracijas"%(k)
print "Sakne ir %.5f, tāpēc ka y ir vienāds ar %.5f."%(x,citafunkcija(x))


print "Parāda, kur tiek krustota x ass ,kad ir veikta nobīde par -10 vienībām. (Lai dihotomijas metodi varētu pielietot mums vajag, lai y vērtība būtu 0 vai arī mums interesējošā intervālā funkcijas zīme mainītos.Funkcijai cos(x*x) dotajā intervālā sakņu nav,bet pārveidojot funkciju tā, lai funkcija būtu vienāda ar nulli (f(x)=a;f(x)-a=0) mēs varam atrast sakni, kur tiek krustota x ass.)"
print "Sakne tiek meklēta tik ilgi kamēr b-a ir lielāks par 1.e-3.Kad b-a vērtība kļūst mazāka par 1.e-3 meklēšana beidzas. "
