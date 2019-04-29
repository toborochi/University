def proximoPrimo(n):
	# De igual manera que el anterior usamos un limite
	if(n>1000000):
		return -1
	if(primo(n)):
		return n
	return proximoPrimo(n+1)