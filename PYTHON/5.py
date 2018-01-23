import random
import numpy as np
import matplotlib.pyplot as plt

def mans_funkcija(x):
    k = 0
    a = x**0/1
    S = a
    while k < 500:
        k = k + 1
        R = -(x**4)/((2*k-1)*(2*k))
        a = a * R
        S = S + a
    return S

N = 100000
x = []
y = []
a = 1.
b = 4#np.pi
c = -4.
d = 4.

for i in range(N):
    x.append(random.uniform(a,b))
    #print "Ka veidojas x masivs: ",x
for i in range(N):
    y.append(random.uniform(c,d))
    #print "Ka veidojas y masivs: ",y


red_x = []
red_y = []
green_x = []
green_y = []

for i in range(N):
    if (y[i] < mans_funkcija(x[i]) and y[i] > 0) \
    or (y[i] > mans_funkcija(x[i]) and y[i] < 0):
        green_x.append(x[i])
        green_y.append(y[i])
    else:
        red_x.append(x[i])
        red_y.append(y[i])
        
plt.plot(green_x,green_y,'go')
plt.plot(red_x,red_y,'rv')
plt.grid()
plt.show()

areaRect = (b-a)*(d-c)
areaFunc = areaRect * len(green_x) / N
print areaFunc
