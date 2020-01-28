public static void intersection(List L1,List L2,List L3){
        for(int i=0;i<L1.size();++i){
            for(int j=0;j<L2.size();++j){
                if( L1.get(i).equals(L2.get(j))  && !L3.contains(L1.get(i))){
                    L3.add(L1.get(i));
                }
            }
        }
    }