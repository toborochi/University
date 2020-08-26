public static void productosRango(LinkedList<Integer> L,
                                      LinkedList<LinkedList<Integer>> L2,
                                      int i,
                                      int a,
                                      int b,
                                      int n){
        int prod = producto(L);
        if(prod>n)return;
        if(prod==n && rango(L,a,b)){
            L2.add((LinkedList)L.clone());
        }
        for(int k=i;k<=n;++k){
            if(n%k==0){
                L.add(k);
                productosRango(L,L2,k,a,b,n);
                L.removeLast();
            }
        }
    }