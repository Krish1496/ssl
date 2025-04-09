from operator import itemgetter as ig
import numpy as np

l = [1,2,3,7,3,2]
d = [('a',2),('b',3),('c',5),('c',3),('a',3)]

d_s = sorted(d,key=lambda x: (-x[1], x[0]))
print(d)
print(d_s)

d_s2 = sorted(d,key=ig(1,0))
print(d_s2)

a = np.array([2,3,5,6])
print(a)