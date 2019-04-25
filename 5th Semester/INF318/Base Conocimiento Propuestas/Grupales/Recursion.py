# Mostrar Divisores Descendiente (Iterativo)
def ite_mostrarDivisoresDesc(n):
	i = n
	while(i>=1):
		if(n%i==0):
			print(i)
		i=i-1
		
# Mostrar Divisores Descendiente (Recursivo)
def rec_mostrarDivisoresDesc(n):
	mostrarDivisoresDesc(n,1)

def mostrarDivisoresDesc(n,i):
	if(i<=n):
		mostrarDivisoresDesc(n,i+1)
		if(n%i==0):
			print(i)
			
# Es primo(Iterativo)
def ite_primo(n):
	if(n==1):
		return False
	i = 2
	while(i<n):
		if(n%i==0):
			return False
		i = i + 1
	return True

# Mostrar Factorial hasta N (Iterativo)
def ite_mostrarFactoriales(n):
	i = 1
	f = 1
	while(i<=n):
		f = f * i
		print(str(i)+"!="+str(f))
		i = i + 1
		
# Mostrar Fibonacci hasta el n-esimo termino
def ite_mostrarFib(n):
	i = 1
	a = 0
	b = 1
	print(1)
	while(i<n):
		f = a + b
		print(f)
		a = b
		b = f
		i = i + 1
