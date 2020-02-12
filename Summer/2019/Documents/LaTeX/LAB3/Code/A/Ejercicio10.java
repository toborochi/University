public static void productoPotencia(List l1, List l2){
        for(int i = 0 ; i < l1.size() ; i ++){
            for(int j=i+1; j <=l1.size(); j ++){
                l2.add(l1.subList(i, j));
            }
        }
    }