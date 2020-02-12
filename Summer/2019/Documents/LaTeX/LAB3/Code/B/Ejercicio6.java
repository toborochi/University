    public void factoresa(LinkedList<Integer> L1, int n, int i) {
        int mul = mult(L1);
        if (mul > n) {
            return;
        }
        if (mul == n) {
            System.out.println(L1);
            return;
        }
        int k = i;
        while (k < n) {
            L1.addLast(k);
            factoresa(L1, n, k);
            L1.removeLast();
            k++;
        }
    }

    private static int mult(LinkedList<Integer> L1) {
        int mul = 1;
        for (Integer j : L1) {
            mul = mul * j;
        }
        return mul;
    }