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


# Valor Inicial

def g(x):
	return (1.6*x+13)**(1./3)


p0 = 2.49
i  = 0
MAX = 50
TOL = 0.0005

while(i<=MAX):
	p1 = g(p0)
	p2 = g(p1)
	p = p0 - (((p1-p0)**2)/(p2-2*p1+p0))
	print(str(i)+" "+str(p0)+" "+str(p1)+" "+str(p2)+" "+str(p))
	if (abs(p-p0)<TOL) :
		break
	i = i + 1
	p0 = p

