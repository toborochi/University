// 1 Laberinto ejercicio NRO 3
import java.util.*;

public class Main {
    public static void main(String[] args) {
        int m[][] = new int [2][2];
        laberintoIFcualquiera(m, 0, 0, 1, 1, 1);
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
    
    public static void laberintoIFcualquiera(int m[][], int i, int j, int ifin, int jfin, int paso){
        if(!posvalida(m,i,j)){return;}
        m[i][j] = paso;
        if(i == ifin && j==jfin){mostrar(m);}
        
        laberintoIFcualquiera(m, i, j-1, ifin, jfin, paso+1);
        laberintoIFcualquiera(m, i-1, j, ifin, jfin, paso+1);
        laberintoIFcualquiera(m, i, j+1, ifin, jfin, paso+1);
        laberintoIFcualquiera(m, i+1, j, ifin, jfin, paso+1);
        
        m[i][j]=0;
    }
    
}