def mostrarDivisoresDesc(n):
	recursivo_mostrarDivisoresDesc(n,1)

def recursivo_mostrarDivisoresDesc(n,i):
	if(i<=n):
		recursivo_mostrarDivisoresDesc(n,i+1)
		if(n%i==0):
			print(i)