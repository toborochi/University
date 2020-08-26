static int knapSack(int W, 
					LinkedList<Integer> wt, 
					LinkedList<Integer> val, int n) 
    { 
        // Caso Base
        if (n == 0 || W == 0) 
            return 0; 
        
        if (wt.get(n-1) > W) 
            return knapSack(W, wt, val, n - 1); 
        else
            return Math.max( 
                val.get(n-1) + knapSack(W - wt.get(n - 1), 
                                      wt, val, n - 1), 
                knapSack(W, wt, val, n - 1)); 
    } 