public void mochilaMayor(LinkedList<Integer> L1,
                             LinkedList<Integer> L2,
                             LinkedList<LinkedList<Integer>> L3,
                             int max,
                             int i
                             ){
        LinkedList<Integer> sol = _mochilaMayor(L1, L2, max, i);
		
        _mochilaMayorSoluciones(L1, L2, sol.size(), L3, max, i);
		
        System.out.println(L3);
    }
	
	
	
public static void _mochilaMayorSoluciones(LinkedList<Integer> L1,
                                              LinkedList<Integer> L2,
                                              int s,
                                              LinkedList<LinkedList<Integer>> L4,
                                              int max,int i){
        int sum = suma(L2);
		
        if(sum>max) return;
        
        if(L2.size()==s){
            L4.add((LinkedList)L2.clone());
        }
        
        int k = i;
        while(k<L1.size()){
            L2.add(L1.get(k));
            
			_mochilaMayorSoluciones(L1,L2,s,L4,max,k+1);
			
            L2.removeLast();
            k++;
        }
    
	
    }