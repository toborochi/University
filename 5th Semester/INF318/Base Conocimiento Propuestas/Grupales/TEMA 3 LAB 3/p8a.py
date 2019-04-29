def anteriorPrimo(n):
	# En caso de ser 1
	if(n<2):
		return -1
	# Hacemos uso de la funcion primo(n)
	while(primo(n)!=True and n>1):
		n = n - 1
	return n
