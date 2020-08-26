public static void sumandose(LinkedList <Integer> L1,int n,int a,int b){ 
    int sum=suma(L1);
    if(sum>n){return;} 
    if(sum==n){ 
        if(rango(L1,a,b)){
            System.out.println(L1);
        }
        return;
    } 
    int k=a;
    while(k<n){ 
        L1.addLast(k);
        sumandose(L1,n,a,b); 
        L1.removeLast();
        k++;
    } 
}
