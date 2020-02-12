public static void intersection(List L1, List L2, List L3) {
        Iterator it = L1.iterator();
        while (it.hasNext()) {
            Object s1 = it.next();
            Iterator it2 = L2.iterator();
            while (it2.hasNext()) {
                Object s2 = it2.next();
                if (s1.equals(s2) && !L3.contains(s1)) {
                    L3.add(s1);
                }
            }
        }
    }