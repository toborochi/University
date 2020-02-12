public static boolean esInvertidoDe(List l1, List l2){
        if(l1.size()!= l2.size()){
            return false;
        }
        else{
            boolean b = true;
            int pos = l1.size()-1;
            for(int i = 0 ; i < l1.size(); i ++){
                if(!l1.get(i).equals(l2.get(pos))){
                    return false;
                }
                pos--;
            }
            return b;
        }
    }