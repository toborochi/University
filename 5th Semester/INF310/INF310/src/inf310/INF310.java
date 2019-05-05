/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package inf310;

import Estructuras.Arboles.BST;
import Estructuras.Esotericas.ColaX;
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
       
       ArbolBin.insertar(30);
       ArbolBin.insertar(20,10);
       ArbolBin.insertar(40,5);
       ArbolBin.insertar(15,8);
       ArbolBin.insertar(25,5);
       ArbolBin.insertar(35,18);
       ArbolBin.insertar(50,10);
       ArbolBin.insertar(10,20);
       ArbolBin.insertar(22,15);
       ArbolBin.insertar(28,6);
      
       System.out.println(ArbolBin.getHoja(40));
      System.out.println(ArbolBin.getNodoPeso(40));
      
    }
    
}
