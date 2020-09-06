// REINA
     private LinkedList<Regla> reglasAplicablesReina(int m[][], int i, int j) {
        LinkedList<Regla> L1 = new LinkedList();
        
        int pi,pj;
        
        pi=i-1;
        pj=j;
        while(posValida(m, pi, pj)){
            L1.add(new Regla(pi,pj));
            pi--;
        }
        
        pi=i-1;
        pj=j-1;
        while(posValida(m, pi, pj)){
            L1.add(new Regla(pi,pj));
            pi--;
            pj--;
        }
        
        pi=i;
        pj=j-1;
        while(posValida(m, pi, pj)){
            L1.add(new Regla(pi,pj));
            pj--;
        }
        
        pi=i+1;
        pj=j-1;
        while(posValida(m, pi, pj)){
            L1.add(new Regla(pi,pj));
            pi++;
            pj--;
        }
        
        pi=i+1;
        pj=j;
        while(posValida(m, pi, pj)){
            L1.add(new Regla(pi,pj));
            pi++;
        }
        
        pi=i+1;
        pj=j+1;
        while(posValida(m, pi, pj)){
            L1.add(new Regla(pi,pj));
            pi++;
            pj++;
        }
        
        pi=i;
        pj=j+1;
        while(posValida(m, pi, pj)){
            L1.add(new Regla(pi,pj));
            pj++;
        }
        
        pi=i-1;
        pj=j+1;
        while(posValida(m, pi, pj)){
            L1.add(new Regla(pi,pj));
            pi--;
            pj++;
        }
        
        

        return L1;
    }
    
     private void reinaA(int m[][], int i, int j, int paso, LinkedList<Point> acum) {

        if (!posValida(m, i, j)) {
            return;
        }
        m[i][j] = paso;

        // ANADIR ESTO
        //mostrar(m);
        steps.add(paso);
        acum.addLast(new Point(i, j));
        int[][] copy = Arrays.stream(m).map(int[]::clone).toArray(int[][]::new);
        results.add(copy);
        for (int k = 0; k < acum.size(); ++k) {
            ins.add((Point) acum.get(k).clone());
        }

        LinkedList<Regla> L1 = reglasAplicablesReina(m, i, j);
        while (!L1.isEmpty()) {
            Regla R = L1.removeFirst();
            reinaA(m, R.fil, R.col, paso + 1, acum);
            m[R.fil][R.col] = 0;

        }

        // ANADIR ESTO
        acum.removeLast();
    }
     
     private void reinaB(int m[][], int i, int j, int paso, LinkedList<Point> acum) {

        if (!posValida(m, i, j)) {
            return;
        }
        acum.addLast(new Point(i, j));
        m[i][j] = paso;

        if (paso == floodSize) {
            // ANADIR ESTO
            //mostrar(m);
            steps.add(paso);
            
            int[][] copy = Arrays.stream(m).map(int[]::clone).toArray(int[][]::new);
            results.add(copy);
            for (int k = 0; k < acum.size(); ++k) {
                ins.add((Point) acum.get(k).clone());
            }
        }
        LinkedList<Regla> L1 = reglasAplicablesReina(m, i, j);
        while (!L1.isEmpty()) {
            Regla R = L1.removeFirst();
            reinaB(m, R.fil, R.col, paso + 1, acum);
            m[R.fil][R.col] = 0;

        }

        // ANADIR ESTO
        acum.removeLast();
    }
     
     
     private void reinaC(int m[][], int i, int j, int ifin, int jfin, int paso, LinkedList<Point> acum) {

        if (!posValida(m, i, j)) {
            return;
        }

        // ANADIR ESTO
        acum.addLast(new Point(i, j));

        m[i][j] = paso;
        if (i == ifin && j == jfin) {
            c++;
            steps.add(paso);
            int[][] copy = Arrays.stream(m).map(int[]::clone).toArray(int[][]::new);
            results.add(copy);
            //mostrar(copy);
            for (int k = 0; k < acum.size(); ++k) {
                ins.add((Point) acum.get(k).clone());
            }

        }

        LinkedList<Regla> L1 = reglasAplicablesReina(m, i, j);
        while (!L1.isEmpty()) {
            Regla R = L1.removeFirst();
            reinaC(m, R.fil, R.col, ifin, jfin, paso + 1, acum);
            m[R.fil][R.col] = 0;

        }

        // ANADIR ESTO
        acum.removeLast();
    }