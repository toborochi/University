public static void intercalar(List l1, List l2, List l3) {
   int i = 0 ;
   while(i< l1.size() && i< l2.size()){
       l3.add(l1.get(i));
       l3.add(l2.get(i));
       i++;
   }
   while(i<l1.size()){
       l3.add(l1.get(i));
       i++;
   }
   while(i<l2.size()){
       l3.add(l2.get(i));
       i++;
   }
}