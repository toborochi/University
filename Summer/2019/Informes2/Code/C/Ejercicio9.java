    public static boolean esInvertidoDe(List l1, List l2) {
        if (l1.size() != l2.size()) {
            return false;
        } else {
            boolean b = true;
            ListIterator i1 = l1.listIterator();
            ListIterator i2 = l2.listIterator(l2.size());
            while (i1.hasNext()) {
                if (!i1.next().equals(i2.previous())) {
                    return false;
                }
            }
            return b;
        }
    }