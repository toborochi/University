public static boolean complement(List U,List S,List LC){
    for(int i=0;i<U.size();++i){
        if(!S.contains(U.get(i))){
            LC.add(U.get(i));
        }
    }
}