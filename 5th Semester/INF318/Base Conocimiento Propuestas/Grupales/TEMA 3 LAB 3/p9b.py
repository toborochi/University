def mostrarPrimos(a,b):
        if(proximoPrimo(a)<=b):
                a = proximoPrimo(a)
                print(a)
                a=a+1
                mostrarPrimos(a,b)
