public void combiCR(ArrayList<Integer> L1, LinkedList<Integer> L2, int r, int i) {
        if (L2.size() == r) {
            System.out.println(L2);
            return;
        }
        int k = i;
        while (k < L1.size()) {
            L2.addLast(L1.get(k));
            combiCR(L1, L2, r, k);
            L2.removeLast();
            k = k + 1;
        }
    }