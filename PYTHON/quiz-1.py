# -*- coding: utf-8 -*-
import random
import numpy as np
def ranges(bars_ranges_local,bars_local,x_local):
for i in range(len(x_local)):
for j in range(len(bars_ranges_local)-1):
if x_local[i] > bars_ranges_local[j] \
and x_local[i] < bars_ranges_local[j+1]:
bars_local[j] = bars_local[j] + 1
#print "Tiek analizēts: ",x_local[i]
#print "Skaitītāju stāvoklis: ",bars_local
if x_local[i] > bars_ranges_local[j+1]:
bars_local[j+1] = bars_local[j+1] + 1
#print "Tiek analizēts: ",x_local[i]
#print "Skaitītāju stāvoklis: ",bars_local
return bars_local
N = 5#100000
x = []
a = 0
b = np.pi
delta = 0.5
#random.seed(0)
for i in range(N):
#random.seed(0)
x.append(random.uniform(a,b))
#x.append(random.triangular(a,b))
#print "Izdruka no uniform cikla: ", x
print x
bars_ranges = np.arange(a,b,delta)
print "Diapazona apakšrobežas: ",bars_ranges
bars = np.zeros(len(bars_ranges))
print "Diapazonu skaitītāji: ",bars
bars = ranges(bars_ranges,bars,x)
print bars
print bars.sum()
