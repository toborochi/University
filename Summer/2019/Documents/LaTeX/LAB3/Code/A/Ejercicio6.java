public static void unirListas(List l1, List l2, List l3){
        
    for(int i = 0 ; i < l1.size(); i ++){
        l3.add(l1.get(i));
    }
    
    for(int i = 0 ; i < l2.size(); i ++){
        l3.add(l2.get(i));
    }
}