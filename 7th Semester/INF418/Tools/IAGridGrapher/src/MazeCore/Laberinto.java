package MazeCore;

import java.awt.Point;
import java.util.LinkedList;
import java.util.Queue;

public class Laberinto {

    Queue<Point> ins;
    int c =0;
    
    private void mostrar(int m[][]){
        for(int i=0;i<m.length;++i){
            for(int j=0;j<m[i].length;++j){
                System.out.print(""+m[i][j]+" ");
            }
            System.out.println("");
        }
    }
    
    public Queue<Point> Instrucciones(int m[][],int i,int j,int ifin,int jfin){
        
        m[i][j]=0;
        LinkedList<Point> L = new LinkedList<>();
        ins = new LinkedList();
        c=0;
        laberintoC(m, i, j, ifin, jfin, 1,L);
        
        System.out.println("InicioX: "+i);
        System.out.println("InicioY: "+j);
        System.out.println("FinY: "+ifin);
        System.out.println("FinY: "+jfin);
        System.out.println("Soluciones: "+c);
        System.out.println("Movimientos: "+ins.size());
        return ins;
    }

    public boolean posValida(int m[][], int i, int j) {
        return i >= 0 && i < m.length
                && j >= 0 && j < m[i].length && (m[i][j] == 0);
    }

    private LinkedList<Regla> reglasAplicables(int m[][], int i, int j) {
        LinkedList<Regla> L1 = new LinkedList();
        if (posValida(m, i, j - 1)) {
            L1.add(new Regla(i, j - 1));
        }
        if (posValida(m, i - 1, j)) {
            L1.add(new Regla(i - 1, j));
        }
        if (posValida(m, i, j + 1)) {
            L1.add(new Regla(i, j + 1));
        }
        if (posValida(m, i + 1, j)) {
            L1.add(new Regla(i + 1, j));
        }

        return L1;
    }

    private void laberintoC(int m[][], int i, int j, int ifin, int jfin, int paso,LinkedList<Point> acum) {

        if (!posValida(m, i, j))return;
        
        // ANADIR ESTO
        acum.addLast(new Point(i,j));
        
        
        m[i][j] = paso;
        if (i == ifin && j == jfin) {
            c++;        
            //mostrar(m);
            // ANADIR ESTO
            for(int k=0;k<acum.size();++k){
                ins.add((Point)acum.get(k).clone());
            }
            
        }

        LinkedList<Regla> L1 = reglasAplicables(m, i, j);
        while (!L1.isEmpty()) {
            Regla R = L1.removeFirst();
            laberintoC(m, R.fil, R.col, ifin, jfin, paso + 1,acum);
            m[R.fil][R.col] = 0;

        }
        
        // ANADIR ESTO
        acum.removeLast();
    }

}
