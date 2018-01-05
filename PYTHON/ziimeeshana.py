import numpy as np
import matplotlib.pyplot as plt

# evenly sampled time at 200ms intervals
t = np.arange(0., 5., 0.2)

# red dashes, blue squares and green triangles
plt.plot(t, t, 'r--', t, t**2, 'bs', t, t**3, 'g^')
plt.plot(t, t**2, 'b', t, t**3, 'g')
plt.show()


'''
import matplotlib.pyplot as plt
plt.plot([1,2,3,4], [1,4,9,16], 'ro')
plt.plot([1,2,3,4], [1,4,9,16], 'b')
plt.axis([0, 6, 0, 20])
plt.show()
'''


'''
import matplotlib.pyplot as plt
#plt.plot([1,2,3,4])
plt.plot([-2,0,1],[4,0,-3],'s',markerfacecolor='red', markersize=50)
plt.xlabel('some other numbers')
plt.ylabel('some numbers')
plt.show()
'''
