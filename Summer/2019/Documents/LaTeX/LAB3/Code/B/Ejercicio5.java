    @Override
    public void sumandos(LinkedList<Integer> L1, int n, int i) {
        int sum = suma(L1);
        if (sum > n) {
            return;
        }
        if (sum == n) {
            System.out.println(L1);
            return;
        }
        int k = i;
        while (k <= n) {
            L1.addLast(k);
            sumandos(L1, n, k);
            L1.removeLast();
            k++;
        }

    }

    private static int suma(LinkedList<Integer> L1) {
        int sum = 0;
        for (Integer j : L1) {
            sum = j + sum;
        }
        return sum;
    }