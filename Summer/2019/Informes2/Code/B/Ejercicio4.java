public void permuCR(ArrayList<Integer> L1, LinkedList<Integer> L2, int r) {
        if (L2.size() == r) {
            System.out.println(L2);
            return;
        }
        int i = 0;
        while (i < L1.size()) {
            L2.add(L1.get(i));
            permuCR(L1, L2, r);
            L2.removeLast();
            i = i + 1;
        }
    }