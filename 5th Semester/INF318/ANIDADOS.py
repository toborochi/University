# tabla

def mostrar(i, j):
	print(i, 'x', j, '\t=', i*j, '\n')

def tabla(n):
	for i in range(1,n+1):
		for j in range(1,n+1):
			mostrar(i,j)
			
def cj(n, i, j):
	if (j<=n):
		mostrar(i, j)
		cj(n, i, j+1)

def tabla(n, i):
	if (i <= n):
		cj(n, i, 1)
		tabla(n, i+1)
			
