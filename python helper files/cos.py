import numpy as np
import matplotlib.pyplot as plt

n=16
cos = np.array([np.round(128*np.cos(np.pi*x / (2*n)), 0) for x in range(n)])
sin = np.array([np.round(128*np.sin(np.pi*x / (2*n)), 0) for x in range(n)])
cos_inv = np.array([128*128 // cos[x] if cos[x] != 0 else 0 for x in range(n)])
sin_inv = np.array([128*128 // sin[x] if sin[x] != 0 else 0 for x in range(n)])

def ret_cos(x):
    mask = 63
    idx = x & mask

    if idx==16 or idx==48:
        return 0
    if idx==32:
        return -cos[0]
    
    if x&16:
        idx = -x
    
    if bool(x&32) ^ bool(x&16):
        return -cos[idx&15]
    else:
        return cos[idx&15]

def ret_sin(x):
    mask = 63
    idx = x & mask
    if idx==16:
        return 127
    if idx==48:
        return -128
    
    if x&16:
        idx = -x
    
    if (x&32):
        return -sin[idx&15]
    else:
        return sin[idx&15]

def ret_cos_inv(x):
    mask = 63
    idx = x & mask

    if idx==16 or idx==48:
        return 0
    if idx==32:
        return -cos_inv[0]
    
    if x&16:
        idx = -x
    
    if bool(x&32) ^ bool(x&16):
        return -cos_inv[idx&15]
    else:
        return cos_inv[idx&15]

def ret_sin_inv(x):
    mask = 63
    idx = x & mask
    if idx==16:
        return 128
    if idx==48:
        return -128
    
    if x&16:
        idx = -x
    
    if (x&32):
        return -sin_inv[idx&15]
    else:
        return sin_inv[idx&15]

# plt.stem(np.array([ret_cos(x) for x in range(-100, 100)]))
# plt.plot(np.array([128*np.cos(np.pi*x / (2*n)) for x in range(-100, 100)]))
# plt.show()

plt.stem(np.array([ret_sin(x) for x in range(-100, 100)]))
plt.plot(np.array([128*np.sin(np.pi*x / (2*n)) for x in range(-100, 100)]))
plt.show()

# plt.stem(np.array([ret_cos_inv(x) for x in range(-100, 100)]))
# plt.plot(np.array([128/np.cos(np.pi*x / (2*n)) if np.abs(np.cos(np.pi*x / (2*n))) >= 0.001 else 0 for x in range(-100, 100)]), 'r')
# plt.show()

plt.stem(128*np.array([ret_sin_inv(x) for x in range(-100, 100)]))
plt.plot(128*np.array([128/np.sin(np.pi*x / (2*n)) if np.abs(np.sin(np.pi*x / (2*n))) >= 0.001 else 0 for x in range(-100, 100)]), 'r')
plt.show()


for val in sin:
    print("17'd"+str(int(val))+",")