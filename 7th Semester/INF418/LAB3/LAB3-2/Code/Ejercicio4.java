public static void mochilaMayorCantidad(LinkedList<Integer> L1,LinkedList<Integer> L2,int max,int k){ 
         
        LinkedList<Integer> L3 = new LinkedList(); 
        auxiliar(L1,L2,L3,max,k); 
        int may = mayorLista(L3); 
        mochilaMayor1(L1,L2,max,k,may); 
    } 

public static void auxiliar(LinkedList<Integer> L1,LinkedList<Integer> L2,LinkedList<Integer> L3,int max,int k){ 
        int sum = suma(L2); 
        if(sum>max)return; 
        L3.add(L2.size());  
        int i = k; 
        while(i<L1.size()){ 
            L2.add(L1.get(i)); 
            auxiliar(L1,L2,L3,max,i+1); 
            L2.removeLast(); 
            i++; 
        } 
    } 

public static int mayorLista(LinkedList<Integer> L1){ 
         
        int may = 0; 
        for(int i=0;i<L1.size();i++){ 
            if(L1.get(i)>may){ 
                may = L1.get(i); 
            } 
        } 
        return may; 
    } 

 private static void mochilaMayor1(LinkedList<Integer> L1,LinkedList<Integer> L2,int max,int k,int cant){ 
        int sum = suma(L2); 
        if(sum>max)return; 
        if(L2.size()==cant){ 
           System.out.println(L2);   
        }  
        int i = k; 
        while(i<L1.size()){ 
            L2.add(L1.get(i)); 
            mochilaMayor1(L1,L2,max,i+1,cant); 
            L2.removeLast(); 
            i++; 
        } 
    } 
