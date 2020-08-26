public static void productos(LinkedList<Integer> L,
                                 LinkedList<LinkedList<Integer>> L2,
                                 int i,
                                 int n){
        int prod = producto(L);
        if(prod>n)return;
        if(prod==n){
            L2.add((LinkedList)L.clone());
        }
        for(int k=i;k<=n;++k){
            if(n%k==0){
                L.add(k);
                productos(L,L2,k,n);
                L.removeLast();
            }
        }
    }