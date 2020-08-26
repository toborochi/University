public static void mochilaPesoDif(LinkedList<Integer>L1,
                               LinkedList<Integer>L2, int max, int i){
        int sum= suma(L2);
        eliminarDup(L1);
        if(sum>max)return;
        System.out.println(L2);
        int k=i;
        while(k<L1.size()){
            L2.add(L1.get(k));
            mochila(L1,L2,max,k+1);
            L1.removeLast();
            k=k+1;
        }
    }
