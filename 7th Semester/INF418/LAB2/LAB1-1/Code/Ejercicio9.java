public static void productosPrimos(LinkedList<Integer> L,
                                       LinkedList<LinkedList<Integer>> L2,
                                       int i, int n){
        criba();
        _productosPrimos(L,L2, i, n);
    }
    
    private static void _productosPrimos(LinkedList<Integer> L,
                                         LinkedList<LinkedList<Integer>> L2,
                                         int i,int n){
        int prod = producto(L);
        if(prod>n)return;
        if(prod==n && primos(L)){
            L2.add((LinkedList)L.clone());
        }
        for(int k=i;k<=n;++k){
            if(n%k==0){
                L.add(k);
                _productosPrimos(L,L2,k,n);
                L.removeLast();
            }
        }
    }