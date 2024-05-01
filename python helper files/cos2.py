import numpy as np
import matplotlib.pyplot as plt

n=256
cos = np.array([np.round(128*np.cos(np.pi*x / (2*n)), 0) for x in range(n)])
cos_inv = np.array([128*128 // cos[x] if cos[x] != 0 else 0 for x in range(n)])

def ret_cos(x):
    mask = 4*n-1
    idx = x & mask

    if idx==n or idx==3*n:
        return 0
    if idx==2*n:
        return -cos[0]
    
    if x&n:
        idx = -x
    
    if bool(x&(2*n)) ^ bool(x&(n)):
        return -cos[idx&(n-1)]
    else:
        return cos[idx&(n-1)]

def ret_sin(x):
    return ret_cos(x-n)

def ret_cos_inv(x):
    mask = 4*n-1
    idx = x & mask

    if idx==n or idx==3*n:
        return 0
    if idx==2*n:
        return -cos_inv[0]
    
    if x&n:
        idx = -x
    
    if bool(x&(2*n)) ^ bool(x&(n)):
        return -cos_inv[idx&(n-1)]
    else:
        return cos_inv[idx&(n-1)]

def ret_sin_inv(x):
    return ret_cos_inv(x-n)

vals = range(-4*n, 4*n)

plt.stem(np.array([ret_cos(x) for x in vals]))
plt.plot(np.array([128*np.cos(np.pi*x / (2*n)) for x in vals]), 'r')
plt.show()

plt.stem(np.array([ret_sin(x) for x in vals]))
plt.plot(np.array([128*np.sin(np.pi*x / (2*n)) for x in vals]), 'r')
plt.show()

plt.stem(np.array([ret_cos_inv(x) for x in vals]))
plt.plot(np.array([128/np.cos(np.pi*x / (2*n)) if np.abs(np.cos(np.pi*x / (2*n))) >= 0.001 else 0 for x in vals]), 'r')
plt.show()

plt.stem(128*np.array([ret_sin_inv(x) for x in vals]))
plt.plot(128*np.array([128/np.sin(np.pi*x / (2*n)) if np.abs(np.sin(np.pi*x / (2*n))) >= 0.001 else 0 for x in vals]), 'r')
plt.show()


for val in cos_inv:
    print("17'd"+str(int(val))+",")