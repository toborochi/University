def rec_primo(n):
        return primo(n,2)

def primo(n,i):
	if(n==1):
		return False
	if(i>n/2):
		return True
	if(n%i==0):
		return False
	return primo(n,i+1)