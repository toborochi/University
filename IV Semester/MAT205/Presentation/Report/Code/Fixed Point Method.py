# Valor Inicial

import numpy as np
from tabulate import tabulate

def g(x):
	return np.log(x**2 + x + 2)+1

valores = []
print("Metodo de Punto Fijo")
valores.append(["Iteracion","p_i","p","Error"])

p0 = 1
i  = 0
MAX = 50
TOL = 0.0005

while(i<=MAX):
	p = g(p0)
	valores.append([i,p0,p,abs(p-p0)])
	if (abs(p-p0)<TOL) :
		break
	i = i + 1
	p0 = p
print(tabulate(valores,tablefmt="fancy_grid"))
