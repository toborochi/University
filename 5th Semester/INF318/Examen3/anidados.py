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

def tablarec(n, i):
	if (i <= n):
		cj(n, i, 1)
		tablarec(n, i+1)

			
def cj(n, i, j):
	if (j<=n):
		mostrar(i, j)
		cj(n, i, j+1)
			
# tabla Ascendente y Descendente ixj
def tablaAscDesc(n):
	for i in range(1, n+1, 1):
		for j in range(n, 0, -1):
			mostrar(i,j)
			
def tablaAscDescrec(n, i):
	if (i <= n):
		cj2(i, n)
		tablaAscDescrec(n, i+1)
		
def cj2(i, j):
	if (j > 0):
		mostrar(i, j)
		cj2(i, j-1)
		
# tabla pares ixj			
def tablaPares(n):
	for i in range(2, n+1,2):
		for j in range(2, n+1,2):
			mostrar(i, j)
			
			
def tablaParesrec(n, i):
	if (i <= n):
		cj3(n, i, 1)
		tablaParesrec(n, i+1)
		
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
					
def igual(a,b,c):
	if(a==b and b==c and c==a):
		return True
	else:
		return False

def tablaIgualesrec(n, i):
	if (i <= n):
		cj5(n, i, 1)
		tablaIgualesrec(n, i+1)

def cj5(n, i, j):
	if (j <= n):
		ck5(n, i, j, 1)
		cj5(n, i, j+1)

def ck5(n, i, j, k):
	if (k <= n):
		if (igual(i, j, k)):
			mostrar3(i, j, k)
		ck5(n, i, j, k+1)
					
# tabla sin repeticion de permutacion ixjxk
def tablaSinRepeticion(n):
        for i in range(1,n+1):
                for j in range(i,n+1):
                        for k in range(j,n+1):
                                mostrar3(i,j,k)
