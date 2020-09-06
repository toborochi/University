public static void mochila(LinkedList<Integer> L1,
                                   LinkedList<Integer> L2,
                                   LinkedList<LinkedList<Integer>> L3,int max,int i){
        int sum = suma(L2);
        if(sum>max) return;
        L3.add((LinkedList)L2.clone());
        int k = i;
        while(k<L1.size()){
            L2.add(L1.get(k));
            mochila(L1,L2,L3,max,k+1);
            L2.removeLast();
            k++;
        }
    }