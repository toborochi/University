/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package b;

import java.util.LinkedList;

/**
 *
 * @author cartory
 */
public class Caballo implements lista {

    int m[][];

    public Caballo(int[][] m) {
        this.m = m;
    }
    
    @Override
    public LinkedList<Regla> reglasAplicables(int[][] m, int i, int j) {
        LinkedList<Regla> L1 = new LinkedList();
        if (posValida(m, i - 2, j - 1)) {
            L1.add(new Regla(i - 2, j - 1));
        }
        if (posValida(m, i - 2, j + 1)) {
            L1.add(new Regla(i - 2, j + 1));
        }
        if (posValida(m, i - 1, j + 2)) {
            L1.add(new Regla(i - 1, j + 2));
        }
        if (posValida(m, i + 1, j + 2)) {
            L1.add(new Regla(i + 1, j + 2));
        }
        if (posValida(m, i + 2, j + 1)) {
            L1.add(new Regla(i + 2, j + 1));
        }
        if (posValida(m, i + 2, j - 1)) {
            L1.add(new Regla(i + 2, j - 1));
        }
        if (posValida(m, i + 1, j - 2)) {
            L1.add(new Regla(i + 1, j - 2));
        }
        if (posValida(m, i - 1, j - 2)) {
            L1.add(new Regla(i - 1, j - 2));
        }
        return L1;
    }

    @Override
    public void mostrar(int[][] m) {
        for (int i = 0; i < m.length; i++) {
            for (int j = 0; j < m[i].length; j++) {
                System.out.print("" + m[i][j] + '\t');
            }
            System.out.println(" ");
        }
        System.out.println(" ");
    }

    @Override
    public boolean posValida(int[][] m, int i, int j) {
        return i >= 0 && i < m.length && j >= 0 && j < m[i].length && m[i][j] == 0;
    }

    @Override
    public Regla mejorRegla(LinkedList<Regla> L1, int i1, int j1) {
        double menorDist = Double.MAX_VALUE;
        int i = 0;
        int posMen = 0;
        while (i < L1.size()) {
            double a = L1.get(i).fil - i1;
            double b = L1.get(i).col - j1;
            double dist = Math.sqrt(a * a + b * b);
            if (dist < menorDist) {
                menorDist = dist;
                posMen = i;
            }
            i = i + 1;
        }
        return L1.remove(posMen);
    }

    @Override
    public void laberintoHeuristica(int[][] m, int i, int j, int i1, int j1, int paso) {
        m[i][j] = paso;
        if ((i == i1 && j == j1)) {
            mostrar(m);
        }
        LinkedList<Regla> L1 = reglasAplicables(m, i, j);
        while (!L1.isEmpty()) {
            Regla R = mejorRegla(L1, i1, j1);
            m[R.fil][R.col] = paso;
            laberinto(m, R.fil, R.col, i1, j1, paso + 1);
            m[R.fil][R.col] = 0;
        }
    }

    @Override
    public void laberinto(int[][] m, int i, int j, int i1, int j1, int paso) {
        m[i][j] = paso;
        if ((i == i1 && j == j1)) {
            mostrar(m);
        }
        LinkedList<Regla> L1 = reglasAplicables(m, i, j);
        while (!L1.isEmpty()) {
            Regla R = L1.poll();
            m[R.fil][R.col] = paso;
            laberinto(m, R.fil, R.col, i1, j1, paso + 1);
            m[R.fil][R.col] = 0;
        }
    }
    
    public static void main(String[] args) {
        int m[][] = {
            {0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 1, 0},
            {0, 1, 0, 1, 0, 1, 0},
            {0, 1, 0, 1, 0, 1, 0},
            {0, 1, 0, 1, 0, 1, 1},
            {0, 1, 1, 1, 0, 1, 0},
            {0, 0, 0, 1, 0, 0, 0}
        };
        Caballo lab = new Caballo(m);
        lab.laberinto(m, 0, 0, 6, 6, 1);
        lab.laberintoHeuristica(m, 0, 0, 0, 0, 0);
    }
}