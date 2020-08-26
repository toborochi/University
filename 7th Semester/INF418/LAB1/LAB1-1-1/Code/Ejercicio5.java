public static void factorese(LinkedList <Integer> L1,int n,int a,int b){
    int mul=mult(L1);
    if(mul>n){return;} 
    if(mul==n){ 
        if(rango(L1,a,b)){
            System.out.println(L1);
        }
        return;
    }
    int k=a; 
    while(k<n){
        L1.addLast(k); 
        factorese(L1,n,a,b);
        L1.removeLast();
        k++;
    }
}
