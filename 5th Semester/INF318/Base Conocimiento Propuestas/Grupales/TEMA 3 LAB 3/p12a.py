def mostrarFactoriales(n):
	f = 1
	i = 1
	while(i<=n):
		f = f*i
		print(str(i)+"!="+str(f))
		i = i + 1