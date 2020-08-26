public static boolean checkMaximumDiference(LinkedList<Integer> L,int d){      
        for(int i=0;i<L.size();++i){
            int u=L.get(i);
            for(int j=i+1;j<L.size();++j){
                int v = L.get(j);
                if(Math.abs(u-v)>d){
                    return false;
                }
            }
        }
        return true;
    }
    
    
    public static void sumandosMaxDif(LinkedList<Integer> L,int i,int n,int d){
        int sum = suma(L);
        if(sum>n)return;
        if(sum==n && checkMaximumDiference(L,d)){System.out.println(L);}
        for(int k=i;k<=n;++k){
            L.add(k);
            sumandosMaxDif(L,k,n,d);
            L.removeLast();
        }
    }