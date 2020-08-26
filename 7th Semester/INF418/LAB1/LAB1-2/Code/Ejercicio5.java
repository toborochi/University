public static void mochilaProx(LinkedList<Integer> L1,LinkedList<Integer> L2,int max,int k){ 
         
        LinkedList<Integer> L3 = new LinkedList(); 
        auxiliar2(L1,L2,L3,max,k); 
        int prom = promedio(L3); 
         
        mochilaProx1(L1,L2,max,k,prom); 
    } 

public static void auxiliar2(LinkedList<Integer> L1,LinkedList<Integer> L2,LinkedList<Integer> L3,int max,int k){ 
        int sum = suma(L2); 
        if(sum>max)return; 
        L3.add(sum);  
        int i = k; 
        while(i<L1.size()){ 
            L2.add(L1.get(i)); 
            auxiliar2(L1,L2,L3,max,i+1); 
            L2.removeLast(); 
            i++; 
        } 
    } 
      
public static int promedio(LinkedList<Integer> L1){ 
         
        return suma(L1)/L1.size(); 
    } 
    
    private static void mochilaProx1(LinkedList<Integer> L1,LinkedList<Integer> L2,int max,int k,int prom){ 
         
        int sum = suma(L2); 
        if(sum>max)return; 
        if(sum>prom){ 
            System.out.println(L2);     
        } 
         
        int i = k; 
        while(i<L1.size()){ 
            L2.add(L1.get(i)); 
            mochilaProx1(L1,L2,max,i+1,prom); 
            L2.removeLast(); 
            i++; 
        }
    }
