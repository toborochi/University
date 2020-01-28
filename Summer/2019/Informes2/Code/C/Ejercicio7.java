    public static void invertir(List l1, List l2) {
        ListIterator i = l1.listIterator(l1.size());
        while (!l1.isEmpty()) {
            l2.add(i.previous());
            i.remove();
        }
    }