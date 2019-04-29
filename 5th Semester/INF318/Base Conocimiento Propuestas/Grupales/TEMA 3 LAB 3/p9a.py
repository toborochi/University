def mostrarPrimos(a,b):
        while(proximoPrimo(a)<=b):
                a = proximoPrimo(a)
                print(a)
                a = a + 1