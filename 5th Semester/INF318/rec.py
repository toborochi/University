def primo(n):
	if(n==1):
		return False	
	i = 2	
	while(i<=(n/2)):
		if(n%i==0):
			return False
		i = i+1		
	
def primoRecursivo(n):
        return primorec(n,2)

def primorec(n,i):
	if(n==1):
		return False
	if(i>n/2):
		return True
	if(n%i==0):
		return False
	return primorec(n,i+1)
	
def divisores(n):
	i = 1
		while(i<=n):
			if(n%i==0):
				print(str(i))
			i=i+1

>>> def mostrardivisores(n):
	divisores(n,1)

	
>>> def divisores(n,i):
	if(i>n):
		return
	if(n%i==0):
		print(str(i))
	divisores(n,i+1)
	
def mostrarDivisoresPrimos(n):
	divPrimos(n,2)
	
def divPrimos(n,i):
	if(i>n/2):
		return
	if(primo(i) and n%i==0):
		print(str(i))
	divPrimos(n,i+1)

def mostrarDivPrimos(n):
	i = 2
	while(i<=n):
		if(primo(i) and n%i==0):
			print(str(i))
		i = i+1

def mostrarPrimos(a,b):
	while(a<=b):
		if(primo(a)):
			print(a)
		a = a + 1

def mostrarPrimos(a,b):
