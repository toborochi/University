# Mostrar Factoriales

def mostrarFactoriales(n):
	f = 1
	i = 1
	while(i<=n):
		f = f*i
		print(str(i)+"!="+str(f))
		i = i + 1
		
def mostrarFactoriales_rec(n):
	if(n==0 or n==1):
		print(str(n)+"!=1")
		return 1
	f = n * mostrarFactoriales_rec(n-1)
	print(str(n)+"!="+str(f))
	return f
	
# Primo

def primo(n):
	if(n==1):
		return False
	i = 2
	while(i<=n/2):
		if(n%i==0):
			return False
		i = i + 1
	return True
def primo_rec(n):
	return primo_recp(n,2)

def primo_recp(n,i):
	if(n==1):
		return False
	if(i>n/2):
		return True
	if(n%i==0):
		return False
	return primo_recp(n,i+1)

# Mostrar Primos	

def mostrarPrimos(a,b):
	while(a<=b):
		if(primo(a)):
			print(a)
		a = a + 1
		
def mostrarPrimos_rec(a,b):
	if(a<=b):
		if(primo(a)):
			print(a)
		mostrarPrimos_rec(a+1,b)
		
# Mostrar Divisores Descendientes
		
def mostrarDivisoresDesc(n):
	i = n
	while(i>=1):
		if(n%i==0):
			print(i)
		i = i - 1
		
		
def mostrarDivisoresDesc_rec(n):
	mostrarDivisoresDesc_recp(n,1)
	
def mostrarDivisoresDesc_recp(n,i):
	if(i<=n):
		mostrarDivisoresDesc_recp(n,i+1)
		if(n%i==0):
			print(i)
			
# Coeficiente Binomial
			
def fact(n):
	if(n==0 or n==1):
		return 1
	return n*fact(n-1)
			
def comb(n, r):
	return fact(n)/(fact(n-r)*fact(r))
	
def mostrarCoefBin(n):
	i = 0
	while (i <= n):
		print(comb(n,i))
		i += 1
		
def mostrarCoefBin_rec(n):
	mostrarCoefBinR(n,0)
	
def mostrarCoefBinR(n, i):
	if (i <= n):
		print(comb(n,i))
		mostrarCoefBinR(n, i+1)
