public static void difference(List L1,List L2,List L3){
        for(int i=0;i<L1.size();++i){
            if(!L2.contains(L1.get(i))){
                L3.add(L1.get(i));
            }
        }
}