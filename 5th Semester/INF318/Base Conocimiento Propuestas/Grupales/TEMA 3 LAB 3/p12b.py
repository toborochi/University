def mostrarFactoriales(n):
	if(n==0 or n==1):
		print(str(n)+"!=1")
		return 1
	f = n*mostrarFactoriales(n-1)
	print(str(n)+"!="+str(f))
	return f