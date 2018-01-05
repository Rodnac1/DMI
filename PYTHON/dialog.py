
#!/usr/bin/python
# -*- coding: utf-8 -*-

a = raw_input("Lietotāj, lūdzu, ievadi savu vārdu: ")
b = raw_input("Lietotāj, lūdzu, ievadi savu uzvārdu: ")
print "Tātad, Tevi sauc - %s"%(a + ' ' + b)
print "Tātad, Tevi sauc - %s"%(a + chr(32) + b)



'''
#shell:
#echo "Lietotāj, lūdzu, ievadi kaut ko: "
#read a
#python:
#print "Lietotāj, lūdzu, ievadi kaut ko: "
#a = input()
a = input("Lietotāj, lūdzu, ievadi kaut ko: ")
print "Tu esi ievadījis %s tipa datus"%(type(a))
print a * a
print a + a
a = raw_input("Lietotāj, lūdzu, ievadi kaut ko: ")
print "Tu esi ievadījis %s tipa datus"%(type(a))
#print a * a
print a + a
'''

