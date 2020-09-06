public static void sumandosRango(LinkedList<Integer> L,
                                     LinkedList<LinkedList<Integer>> L2,
                                     int a,
                                     int b,
                                     int i,
                                     int n){
        int sum = suma(L);
        if(sum>n)return;
        if(sum==n && rango(L,a,b)){
            L2.add((LinkedList)L.clone());
        }
        for(int k=i;k<=n;++k){
            L.add(k);
            sumandosRango(L,L2,a,b,k,n);
            L.removeLast();
        }
    }