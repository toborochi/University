def ite_primo(n):
	if(n==1):
		return False
	i = 2
	while(i<n):
		if(n%i==0):
			return False
		i = i + 1
	return True