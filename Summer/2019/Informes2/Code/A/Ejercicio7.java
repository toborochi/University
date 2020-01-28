public static void invertir(List l1, List l2){
        while(!l1.isEmpty()){
            l2.add(l1.get(l1.size()-1));
            l1.remove(l1.size()-1);
        }
    }