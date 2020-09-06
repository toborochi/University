public static void ensaladaSR(LinkedList<String> L1, 
LinkedList<String> L2, int cantidad, int n, int inicio) {
        if (L2.size() == n) {
            System.out.println(L2);
            c++;
            return;
        }
        int k = inicio;
        while (k < cantidad) {
            L2.add(L1.get(k));
            ensaladaSR(L1, L2, cantidad, n, k + 1);
            L2.removeLast();
            k = k + 1;
        }
    }

