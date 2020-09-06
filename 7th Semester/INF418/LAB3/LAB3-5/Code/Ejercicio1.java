private static void _permutCR(LinkedList<Character> L1, LinkedList<Character> L2, int r) {
        if (L2.size() == r) {

            boolean ans = true;
            for (int i = 0; i < L2.size(); i++) {
                char c = L2.get(i);
                boolean isVowel = (c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U');
                if (!isVowel && i % 2 == 1) {
                    ans = false;
                }
            }
            if (ans) {
                System.out.println(L2);
            }
            return;
        }
        int k = 0;
        while (k < L1.size()) {
            L2.add(L1.get(k));
            _permutCR(L1, L2, r);
            L2.removeLast();
            k = k + 1;
        }
    }