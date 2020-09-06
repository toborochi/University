public static void mochila_ab(LinkedList<Integer> L1,LinkedList<Integer> L2,int a,int b,int max,int i){
        int sum=suma(L2);
        if(sum>max){return;}
            if(rango(L2,a,b)){
                System.out.println(L2);
            }
        int k=i;
        while(k<L1.size()){
            L2.addLast(L1.get(k));
            mochila_ab(L1,L2,a,b,max,k+1);
            L2.removeLast();
            k++;
        }
    }
