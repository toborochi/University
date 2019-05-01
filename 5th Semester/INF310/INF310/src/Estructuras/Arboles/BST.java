/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Estructuras.Arboles;

/**
 *
 * @author Asus
 */
public class BST {
    private Nodo Raiz;
    private int n;
    
    public BST(){
        Raiz = null;
        n = 0;
    }
    
    public int cantidadNodos(){
        return n;
    }
    
    public void insertar(int dato){
        if(Raiz==null){
            Raiz = new Nodo(dato);
        }else{
            Nodo Anterior = null;
            Nodo Actual   = Raiz;
            
            while (Actual!=null){
                Anterior=Actual;
                if (dato < Actual.getData())  
                    Actual = Actual.getHI();
                else if (dato > Actual.getData())
                        Actual=Actual.getHD();
                else return;  //Salir. x ya está en el árbol.
            }
            
            Nodo Nuevo = new Nodo(dato);
            
            if (dato < Anterior.getData()) 
                Anterior.setHI(Nuevo);
            else
                Anterior.setHD(Nuevo);
            
        }
        n++;
    }  
    
    public void remove(int dato){
        Nodo Actual = Raiz;
            
            while (Actual!=null){
                if (dato < Actual.getData())  
                    Actual = Actual.getHI();
                else if (dato > Actual.getData())
                        Actual=Actual.getHD();
                else break;
            }
            
            
           
    }
    
    public void Inorder(){
        System.out.print("InOrder: ");
        if(Raiz==null){
            System.out.print("Arbol Vacio!");
        }else
        {
            InOrder(Raiz);
        }
        System.out.println();
    }
    
    private void InOrder(Nodo u){
        if(u==null)return; else {
            InOrder(u.getHI());
            System.out.print(u.getData()+" ");
            InOrder(u.getHD());
        }
    }
    
    public void PreOrder(){
        System.out.print("PreOrder: ");
        if(Raiz==null){
            System.out.print("Arbol Vacio!");
        }else
        {
            PreOrder(Raiz);
        }
        System.out.println();
    }
    
    private void PreOrder(Nodo u){
        if(u==null)return; else{
            System.out.print(u.getData()+" ");
            PreOrder(u.getHI());
            PreOrder(u.getHD());
        }
    }
    
    public void PostOrder(){
        System.out.print("PostOrder: ");
        if(Raiz==null){
            System.out.print("Arbol Vacio!");
        }else
        {
            PostOrder(Raiz);
        }
        System.out.println();
    }
    
    private void PostOrder(Nodo u){
        if(u==null)return; else{
            
            PostOrder(u.getHI());
            PostOrder(u.getHD());
            System.out.print(u.getData()+" ");
        }
    }   
    
    private boolean Hoja(Nodo u){
        return (u!=null && u.cantidadHijos()==0);
    }
    
    private void swap(Nodo u,Nodo v){
        int aux = u.getData();
        u.setData(v.getData());
        v.setData(aux);
    }
    
  
}
