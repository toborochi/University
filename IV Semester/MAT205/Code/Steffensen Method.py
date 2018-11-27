# Metodo de Steffensen

import numpy as np
from tabulate import tabulate

# Definimos la función a evaluar de la forma x=g(x)
def g(x):
	return np.log(x**2 + x + 2)+1

valores = []
print("Metodo de Steffensen")
valores.append(["Iteracion","p_i","p_(i+1)","p_(i+2)","p","Error"])

p0 = 1
i  = 0
MAX = 50
TOL = 0.0005

while(i<=MAX):
	p1 = g(p0)
	p2 = g(p1)
	p = p0 - (((p1-p0)**2)/(p2-2*p1+p0))
	valores.append([i,p0,p1,p2,p,abs(p-p0)])
	if (abs(p-p0)<TOL) :
		break
	i = i + 1
	p0 = p
# Imprimimos la tabla con los resultados
print(tabulate(valores,tablefmt="fancy_grid"))
