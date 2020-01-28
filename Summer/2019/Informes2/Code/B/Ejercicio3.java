public void permuSR(ArrayList<Integer> L1, LinkedList<Integer> L2, int r) {
        if (L2.size() == r) {
            System.out.println(L2);
            return;
        }
        int i = 0;
        while (i < L1.size()) {
            if (!L2.contains(L1.get(i))) {
                L2.add(L1.get(i));
                permuSR(L1, L2, r);
                L2.removeLast();
            }
            i = i + 1;
        }
    }