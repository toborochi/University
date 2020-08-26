public static void sumandosb(LinkedList <Integer> L1,int n,int i){ 
    int sum=suma(L1);
    if(sum>n){return;}
    if(sum==n){ 
        if(diferentes(L1)){
            System.out.println(L1);
        }
        return;
    }
    int k=i;
    while(k<=n){
        L1.addLast(k);
        sumandosb(L1,n,k);
        L1.removeLast();
        k++;
    }
}
