public static void sumandosDif(LinkedList<Integer> L,
                                   LinkedList<LinkedList<Integer>> L2,
                                   int i,
                                   int n){
        int sum = suma(L);
        if(sum>n)return;
        if(sum==n && distintos(L)){
            L2.add((LinkedList)L.clone());
        }
        for(int k=i;k<=n;++k){
            L.add(k);
            sumandosDif(L,L2,k,n);
            L.removeLast();
        }
    }