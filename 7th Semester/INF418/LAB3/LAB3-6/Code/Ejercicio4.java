public static boolean isPerfectSquare(double x)  
    { 
        double sr = Math.sqrt(x); 
        return ((sr - Math.floor(sr)) == 0); 
    } 
    
    public static boolean cuadradosPerfectos(LinkedList<Integer> L){
        for(int i=0;i<L.size();++i){
            if(!isPerfectSquare(L.get(i)))
                return false;
        }
        return true;
    }
    
    public static void productosCuadrados(LinkedList<Integer> L,int i,int n){
        int prod = producto(L);
        if(prod>n)return;
        if(prod==n && cuadradosPerfectos(L)){System.out.println(L);}
        for(int k=i;k<=n;++k){
            if(n%k==0){
                L.add(k);
                productosImpares(L,k,n);
                L.removeLast();
            }
        }
    }