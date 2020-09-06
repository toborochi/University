// 1 Laberinto ejercicio NRO 2
import java.util.*;

public class Main {
    public static void main(String[] args) {
        int m[][] = new int [2][2];
        laberinto(m, 0, 0, 1);
    }
    
    public static boolean posvalida(int m[][], int i, int j){
        return  i>=0 && i<m.length &&
                j>=0 && j<m.length &&
                m[i][j]==0;
    }
    
    public static void mostrar(int m[][]){
        for(int i=0; i<m.length; i++){
            for(int j=0; j<m.length; j++){
                System.out.print("\t"+m[i][j]);
            }
            System.out.println("");
        }
        System.out.println("");
    }
    
    public static void laberinto(int m[][], int i, int j, int paso){
        if(!posvalida(m,i,j)){return;}
        m[i][j] = paso;
        mostrar(m);
        laberinto(m, i, j-1, paso+1);
        laberinto(m, i-1, j, paso+1);
        laberinto(m, i, j+1, paso+1);
        laberinto(m, i+1, j, paso+1);
        
        m[i][j]=0;
    }
    
}