public static boolean palindrome(List L){
        for(int i=0;i<L.size();++i){
            if(!L.get(i).equals(L.get(L.size()-1-i))){
                return false;
            }
        }
        return true;
}