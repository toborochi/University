def mostrarDivisoresDesc(n):
	i = n
	while(i>=1):
		if(n%i==0):
			print(i)
		i=i-1

def mostrarDivisoresDesc(n,i):
	if(i<=n):
		f(n,i+1)
		if(n%i==0):
			print(i)
		
