import numpy as np
import matplotlib.pyplot as plt


fig = plt.figure()
x = np.linspace(-3,3, 100)
y = 3*x**3 - 1.25*x**2 + 0.5*x + 2


ax = fig.add_subplot(1, 1, 1)
ax.set_title(r'$3x^3-1.25x^2+0.5x+2$')
ax.plot(x, y)
ax.spines['left'].set_position('zero')
ax.spines['right'].set_color('none')
ax.spines['bottom'].set_position('zero')
ax.spines['top'].set_color('none')
ax.spines['left'].set_smart_bounds(True)
ax.spines['bottom'].set_smart_bounds(True)
ax.xaxis.set_ticks_position('bottom')
ax.yaxis.set_ticks_position('left')

plt.show()
