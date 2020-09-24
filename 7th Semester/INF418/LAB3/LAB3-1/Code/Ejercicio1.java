public static void laberinto(int m[][], int i, int j, int i1, int j1, int paso, List po) {
        if (!posValida(m, i, j)) {
            return;
        }
        m[i][j] = paso;
        if (i == i1 && j == j1) {
            mostrar(m, po);
        }
        laberinto(m, i, j - 1, i1, j1, paso + 1, po);
        laberinto(m, i - 1, j, i1, j1, paso + 1, po);
        laberinto(m, i, j + 1, i1, j1, paso + 1, po);
        laberinto(m, i + 1, j, i1, j1, paso + 1, po);
        m[i][j] = 0;
    }

    public static void laberintoCaballo(int m[][], int i, int j, int i1, int j1, int paso) {
        if (!posValida(m, i, j)) {
            return;
        }
        m[i][j] = paso;
        if ((i == i1 && j == j1)) {
            mostrarcaba(m);
        }
        laberintoCaballo(m, i + 1, j - 3, i1, j1, paso + 1);
        laberintoCaballo(m, i - 1, j - 3, i1, j1, paso + 1);
        laberintoCaballo(m, i - 3, j - 1, i1, j1, paso + 1);
        laberintoCaballo(m, i - 3, j + 1, i1, j1, paso + 1);
        laberintoCaballo(m, i - 1, j + 3, i1, j1, paso + 1);
        laberintoCaballo(m, i + 1, j + 3, i1, j1, paso + 1);
        laberintoCaballo(m, i + 3, j + 1, i1, j1, paso + 1);
        laberintoCaballo(m, i + 3, j - 1, i1, j1, paso + 1);
        m[i][j] = 0;
    }
 private static boolean posValida(int[][] m, int i, int j) {
        return i >= 0 && i < m.length && j >= 0 && j < m[i].length && m[i][j] == 0;
    }

    private static void mostrar(int[][] m, List po) {
        int t = 0;
        for (int i = 0; i < m.length; i++) {
            for (int j = 0; j < m[i].length; j++) {
                System.out.print("" + m[i][j] + '\t');
                if (m[i][j] != 0) {
                    t++;
                }
            }
            System.out.println(" ");
        }
        po.add(t);
        System.out.println(" ");
        System.out.println("Longuitud :" + t);
        System.out.println(" ");
    }