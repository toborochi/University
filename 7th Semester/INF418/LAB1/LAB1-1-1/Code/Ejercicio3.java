public static void factoresc(LinkedList <Integer> L1,int n,int i){
    int mul=mult(L1);
    if(mul>n){return;} 
    if(mul==n){
        if(iguales(L1)){
            System.out.println(L1);
        } 
        return;
    } 
    int k=i;
    while(k<n){ 
        L1.addLast(k);
        factoresc(L1,n,k);
        L1.removeLast(); 
        k++;
    }
}
