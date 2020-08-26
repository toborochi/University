public static void pizzasCR(LinkedList<String> L1,
LinkedList<String> L2, int r, int i){
        if (L2.size()==r) {
            System.out.println(L2);
            c=c+1;
            return;
        }
        int k=i;
        while (k<L1.size()) {            
            L2.add(L1.get(k));
            pizzasCR(L1, L2, r, k);
            L2.removeLast();
            k++;
        }
    }
