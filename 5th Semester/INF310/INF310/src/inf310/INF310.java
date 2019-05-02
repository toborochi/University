/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package inf310;

import Estructuras.Arboles.BST;
import Estructuras.Listas.Lista;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;


/**
 *
 * @author Asus
 */
public class INF310 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException {
      BufferedReader reader =  
                   new BufferedReader(new InputStreamReader(System.in));
      
      BST ArbolBin = new BST();
      
      int nodos = Integer.parseInt(reader.readLine());
      
      for(int i=0;i<nodos;++i){
          int x = Integer.parseInt(reader.readLine());
          ArbolBin.insertar(x);
      }
      
      
        System.out.println(ArbolBin.isPadre(50,50));
        System.out.println(ArbolBin.cantLadder());
      
    }
    
}
