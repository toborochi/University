def proximoPrimo(n):
	# La condicion n<=10e6 es usada como un limite por la complejidad 
	# de un test de primalidad (el mejor por ahora AKS, O((log n)^6))
	# y como no es el core de la materia no entramos en detalle :P
	
	# Hacemos uso de la funcion primo(n)
	while(primo(n)!=True and n<=1000000):
		n = n + 1
	return n