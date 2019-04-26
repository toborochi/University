def rec_mostrarDivisoresDesc(n):
	mostrarDivisoresDesc(n,1)

def mostrarDivisoresDesc(n,i):
	if(i<=n):
		mostrarDivisoresDesc(n,i+1)
		if(n%i==0):
			print(i)