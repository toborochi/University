    public static void difference(List L1, List L2, List L3) {
        Iterator i = L1.iterator();
        while (i.hasNext()) {
            Object s = i.next();
            if (!L2.contains(s)) {
                L3.add(s);
            }
        }
    }