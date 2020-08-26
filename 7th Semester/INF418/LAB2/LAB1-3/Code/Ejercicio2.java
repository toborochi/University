public static void contrasenaSR(LinkedList<String> L1,LinkedList<String> L2, int r){
        if (L2.size()==r) {
            System.out.println(L2);
            c=c+1;
        }
        int k=0;
        while(k<L1.size()){
            if (!L2.contains(L1.get(k))) {
                L2.add(L1.get(k));
                contrasenaSR(L1, L2, r);
                L2.removeLast();
            }
            k++;
        }
    }
