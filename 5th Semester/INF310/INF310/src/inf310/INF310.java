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
      
      ArbolBin.insertar(10);
      ArbolBin.insertar(5);
      ArbolBin.insertar(30);
      ArbolBin.insertar(20);
      ArbolBin.insertar(60);
      ArbolBin.insertar(15);
      ArbolBin.insertar(25);
      ArbolBin.insertar(50);
      ArbolBin.insertar(70);
      ArbolBin.insertar(40);
      
      ArbolBin.remove(30);
      
      
      ArbolBin.Inorder();
      ArbolBin.PostOrder();
      ArbolBin.PreOrder();
      
    }
    
}
