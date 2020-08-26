public static void sumandosPrimos(LinkedList<Integer> L,
                                      LinkedList<LinkedList<Integer>> L2,
                                      int i,
                                      int n){
        criba();
        _sumandoPrimos(L,L2, i, n);
    }
    
private static void _sumandoPrimos(LinkedList<Integer> L,
                                       LinkedList<LinkedList<Integer>> L2,
                                       int i,
                                       int n){
        int sum = suma(L);
        if(sum>n)return;
        if(sum==n && primos(L)){
             L2.add((LinkedList)L.clone());
        }
        for(int k=i;k<=n;++k){
            L.add(k);
            sumandosPrimos(L,L2,k,n);
            L.removeLast();
        }
    }