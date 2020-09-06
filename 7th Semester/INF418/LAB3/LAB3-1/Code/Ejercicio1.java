public static void allPermutations(LinkedList<Integer> L,
	LinkedList<LinkedList<Integer>> ANS){
        
        for(int i=0;i<L.size();++i){
            LinkedList<Integer> L2 = new LinkedList<>();
            combiSR(L,L2,ANS,i+1,0);
        }
        
        System.out.println(ANS);
    }
    
    
    public static void combiSR(LinkedList<Integer> L1,
	LinkedList<Integer> L2,
	LinkedList<LinkedList<Integer>> ANS,int r, int i) {
        if (L2.size() == r) {
            
            ANS.add((LinkedList<Integer>)L2.clone());
            //System.out.println(L2);
            return;
        }
        int k = i;
        while (k < L1.size()) {
            L2.add(L1.get(k));
            combiSR(L1, L2,ANS, r, k + 1);
            L2.removeLast();
            k = k + 1;
        }
    }