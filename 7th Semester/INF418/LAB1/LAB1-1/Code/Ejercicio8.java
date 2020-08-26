public static void productosEq(LinkedList<Integer> L,
                                   LinkedList<LinkedList<Integer>> L2,
                                   int i,
                                   int n){
        int prod = producto(L);
        if(prod>n)return;
		
        if(prod==n && iguales(L)){
            L2.add((LinkedList)L.clone());
        }
		
        for(int k=i;k<=n;++k){
                L.add(k);
                productosEq(L,L2,k,n);
                L.removeLast();
            
        }
    }