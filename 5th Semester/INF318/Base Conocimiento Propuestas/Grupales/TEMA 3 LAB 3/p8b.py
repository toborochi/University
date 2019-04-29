def anteriorPrimo(n):
	# De igual manera que el anterior usamos un limite
	if(n<2):
		return -1
	if(primo(n)):
		return n
	return anteriorPrimo(n-1)