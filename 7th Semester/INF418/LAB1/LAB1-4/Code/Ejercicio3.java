public static boolean impares(LinkedList<Integer> L){
        for(int i=0;i<L.size();++i){
            if(L.get(i)%2==0)
                return false;
        }
        return true;
    }
    
    
    public static void productosImpares(LinkedList<Integer> L,int i,int n){
        int prod = producto(L);
        if(prod>n)return;
        if(prod==n && impares(L)){System.out.println(L);}
        for(int k=i;k<=n;++k){
            if(n%k==0){
                L.add(k);
                productosImpares(L,k,n);
                L.removeLast();
            }
        }
    }