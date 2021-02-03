import matplotlib.pyplot as plt
import numpy as np

x=np.linspace(0,10,21)

fig = plt.figure()
ax = fig.add_axes([0,0,1,1])
ax.plot(x,x*2)

plt.show()