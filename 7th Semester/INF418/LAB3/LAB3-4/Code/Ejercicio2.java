public static void PermSegunFrec(LinkedList<String> L1, LinkedList<String> L2, int cantRepe, String letra, int n, int r, int i) {
        if (L2.size() == r) {
            System.out.println(L2);
            c++;
            return;
        }
        int k = 0;
        while (k < n) {
            if (!L1.get(k).equals(letra) && cantRepe > 0) {
                L2.add(L1.get(k));
                PermSegunFrec(L1, L2, cantRepe - 1, letra, n, r, k);
                L2.removeLast();
            }
            k = k + 1;
        }
    }

    public static int cantRep(LinkedList<String> L1, String letra) {
        int c = 0;
        for (int i = 0; i < L1.size(); i++) {
            if (L1.get(i).equals(letra)) {
                c++;
            }
        }
        return c;
    }
}
