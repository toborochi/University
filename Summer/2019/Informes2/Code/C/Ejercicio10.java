    public static void productoPotencia(List l1, List l2) {
        ListIterator i = l1.listIterator();
        while (i.hasNext()) {
            int ii = i.nextIndex();
            i.next();
            ListIterator i2 = l1.listIterator(ii);
            while (i2.hasNext()) {
                int ii2 = i2.nextIndex();
                i2.next();
                l2.add(l1.subList(ii, ii2+1));
            }
        }
    }