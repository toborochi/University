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
			
def tablaAscDesc(n):
	for i in range(1, n+1, 1):
		for j in range(n, 0, -1):
			mostrar(i,j)
			
def tablaAscDesc(n, i):
	if (i <= n):
		cj2(i, n)
		tablaAscDesc(n, i+1)
		
def cj2(i, j):
	if (j > 0):
		mostrar(i, j)
		cj2(i, j-1)
			
def tablaPares(n):
	for i in range(2, n+1,2):
		for j in range(2, n+1,2):
			mostrar(i, j)
			
			
def tablaPares(n, i):
	if (i <= n):
		cj3(n, i, 1)
		tablaPares(n, i+1)
		
def cj3(n, i, j):
	if (j <= n):
		if (j%2 == 0):
			mostrar(i, j)
		cj3(n, i, j+1)
