import numpy as np
import matplotlib.pyplot as plt

n=16
x = np.linspace(0, 16, n, endpoint=False)

inv_arr = ((4)/(x+1))**2

plt.stem(inv_arr)
plt.show()

for val in inv_arr:
    print("4'b{:04b},".format(int(val)))