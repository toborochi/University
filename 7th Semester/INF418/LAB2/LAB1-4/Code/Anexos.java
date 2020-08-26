public static int suma(LinkedList<Integer> L){
        int total = 0;
        for(int i=0;i<L.size();++i){
            total=total + L.get(i);
        }
        return total;
    }
    
    public static int producto(LinkedList<Integer> L){
        int total = 1;
        for(int i=0;i<L.size();++i){
            total *= L.get(i);
        }
        return total;
    }
    
    public static boolean distintos(LinkedList<Integer> L){
         Set<Integer> s = new HashSet<Integer>(); 
         for(int i=0;i<L.size();++i){
            s.add(L.get(i));
         }
        return L.size()==s.size();
    }
    
    public static boolean iguales(LinkedList<Integer> L){
         Set<Integer> s = new HashSet<Integer>(); 
         for(int i=0;i<L.size();++i){
            s.add(L.get(i));
         }
        return s.size()==1;
    }
    
    public static int n = 500000;
    public static boolean prime[] = new boolean[n+1]; 
    
    public static void criba() 
    { 
       
        for(int i=0;i<n;i++) 
            prime[i] = true; 
        prime[0]=prime[1]=false;
        for(int p = 2; p*p <=n; p++) 
        { 
            if(prime[p] == true) 
            { 
                for(int i = p*p; i <= n; i += p) 
                    prime[i] = false; 
            } 
        } 
    } 
    
    
     public static boolean primos(LinkedList<Integer> L){
         for(int i=0;i<L.size();++i){
            if(!prime[L.get(i)])
                return false;
         }
        return true;
    }
     
     
    public static boolean rango(LinkedList<Integer> L,int a,int b){
         for(int i=0;i<L.size();++i){
            if(L.get(i)<a || L.get(i)>b)
                return false;
         }
        return true;
    } 
    
    public static int diferencia(LinkedList<Integer> L,int max){
        return max-suma(L);
    }