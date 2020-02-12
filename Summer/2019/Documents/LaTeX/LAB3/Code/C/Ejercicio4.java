    public static void complement(List U, List S, List LC) {
        Iterator i = U.iterator();
        while (i.hasNext()) {
            Object s = i.next();
            if (!S.contains(s)) {
                LC.add(s);
            }
        }
    }