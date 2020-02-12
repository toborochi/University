public static void subListas(List l1){
        for(int i = 0 ; i < l1.size() ; i ++){
            for(int j=i+1; j <=l1.size(); j ++){
                System.out.println(l1.subList(i, j));
            }
        }
    }