    public static void unirListas(List l1, List l2, List l3) {
        Iterator i = l1.iterator();
        while (i.hasNext()) {
            l3.add(i.next());
        }
        Iterator i2 = l2.iterator();
        while (i2.hasNext()) {
            l3.add(i2.next());
        }
    }