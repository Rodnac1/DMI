k=0
m=1
l = 0
f = open("meta.bin", "rb")
arr = []
while 1:
    f.seek(k)
    b = f.read(1)
    if not b:
        break
    f.seek(m)
    v= f.read(1)
    if not v:
        break
    n = hex(ord(v))
    z = hex(ord(b))
    x = int(z,16)
    #print n
    #print x
    l=l+x
    f1 = open("data.bin", "rb")
    f1.seek(l)
    c = f1.read(1)
    xx = hex(ord(c))
    r = hex(ord(c) ^ ord(v))
    #print r
    #print chr(ord(c) ^ ord(v))
    arr.append(chr(ord(c) ^ ord(v)))
    #print xx
    #print hex(ord(b))
    #print chr(ord(b))
    k=k+2
    m=m+2
print ''.join(arr)
f.close()
