public static boolean pares(LinkedList<Integer> L){
        for(int i=0;i<L.size();++i){
            if(L.get(i)%2!=0)
                return false;
        }
        return true;
    }

public static void sumandosPares(LinkedList<Integer> L,int i,int n){
        int sum = suma(L);
        if(sum>n)return;
        if(sum==n && pares(L)){System.out.println(L);}
        for(int k=i;k<=n;++k){
            L.add(k);
            sumandosPares(L,k,n);
            L.removeLast();
        }
    }