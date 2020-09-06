public void mochilaClosest(LinkedList<Integer> L1,
                             LinkedList<Integer> L2,
                             LinkedList<LinkedList<Integer>> L3,
                             int max,
                             int i
                             ){
        LinkedList<Integer> sol = _mochilaClosest(L1, L2, max, i);
		
        _mochilaClosestSoluciones(L1, L2, sol.size(), L3, max, i);
		
        System.out.println(L3);
    }

public static LinkedList<Integer>  _mochilaClosest(LinkedList<Integer> L1,LinkedList<Integer> L2,int max,int i){
        
        int sum = suma(L2);
        if(sum>max) return new LinkedList<>();
        
        int k = i;
        LinkedList<Integer> T= (LinkedList)L2.clone();
        LinkedList<Integer> TMP;
        while(k<L1.size()){
            L2.add(L1.get(k));
            TMP = _mochilaClosest(L1,L2,max,k+1);
            if(diferencia(TMP,max)<diferencia(T,max)){
                T = TMP;
            }
            L2.removeLast();
            k++;
        }
       
        return T;
    }

public static void _mochilaClosestSoluciones(LinkedList<Integer> L1,
                                              LinkedList<Integer> L2,
                                              int s,
                                              LinkedList<LinkedList<Integer>> L4,
                                              int max,int i){
        int sum = suma(L2);
		
        if(sum>max) return;
        
        if(diferencia(L2.size())==s){
            L4.add((LinkedList)L2.clone());
        }
        
        int k = i;
        while(k<L1.size()){
            L2.add(L1.get(k));
            
			_mochilaClosestSoluciones(L1,L2,s,L4,max,k+1);
			
            L2.removeLast();
            k++;
        }
    
	
    }