def ite_mostrarFib(n):
	i = 1
	a = 0
	b = 1
	while(i<n):
		print(b)
		f = a + b
		a = b
		b = f
		i = i + 1
