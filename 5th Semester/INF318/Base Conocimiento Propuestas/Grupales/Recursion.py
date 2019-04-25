def ite_mostrarDivisoresDesc(n):
	i = n
	while(i>=1):
		if(n%i==0):
			print(i)
		i=i-1
		
def rec_mostrarDivisoresDesc(n):
	mostrarDivisoresDesc(n,1)

def mostrarDivisoresDesc(n,i):
	if(i<=n):
		mostrarDivisoresDesc(n,i+1)
		if(n%i==0):
			print(i)
		

def ite_primo(n):
	if(n==1):
		return False
	i = 2
	while(i<n):
		if(n%i==0):
			return False
		i = i + 1
	return True
	
def rec_primo(n):
	primo(n,2)

def primo(n,i):
	if(i>n/2):
		return True
	if(n%i==0):
		return False
	return primo(n,i+1)
