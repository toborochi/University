# tabla

def mostrar(i, j):
	print(i, 'x', j, '\t=', i*j, '\n')
	
def mostrar3(i, j,k):
	print(i, 'x', j, 'x',k,'\t=', i*j*k, '\n')

# Tabla de Multiplicar ixj
def tabla(n):
	for i in range(1,n+1):
		for j in range(1,n+1):
			mostrar(i,j)

def tabla(n, i):
	if (i <= n):
		cj(n, i, 1)
		tabla(n, i+1)

			
def cj(n, i, j):
	if (j<=n):
		mostrar(i, j)
		cj(n, i, j+1)
			
# tabla Ascendente y Descendente ixj
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
		
# tabla pares ixj			
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
# Tabla factores iguales ixjxk
def tablaIguales(n):
	for i in range(1, n+1):
		for j in range(1, n+1):
			for k in range(1, n+1):
				if (i==j and j==k):
					mostrar3(i, j, k)
					
# tabla sin repeticion de permutacion ixjxk
def tablaSinRepeticion(n):
        for i in range(1,n+1):
                for j in range(i,n+1):
                        for k in range(j,n+1):
                                mostrar3(i,j,k)
                                
