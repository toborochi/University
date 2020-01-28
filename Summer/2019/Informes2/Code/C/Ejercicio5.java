    public static void intercalar(List l1, List l2, List l3) {
        Iterator i = l1.iterator();
        Iterator i2 = l2.iterator();
       
        while (i.hasNext() && i2.hasNext()) {
            l3.add(i.next());
            l3.add(i2.next());
        }
        while (i.hasNext()) {
            l3.add(i.next());
        }
        while (i2.hasNext()) {
            l3.add(i2.next());
        }
    }