/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Estructuras.Arboles;

import Estructuras.Listas.Lista;
import java.nio.file.Files;

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
        insertar(dato,0);
    }
    
    public void insertar(int dato,int peso){
        if(Raiz==null){
            Raiz = new Nodo(dato,0);
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
            
            Nodo Nuevo = new Nodo(dato,peso);
            
            if (dato < Anterior.getData()) 
                Anterior.setHI(Nuevo);
            else
                Anterior.setHD(Nuevo);
            
        }
        n++;
    }  
    
    public void remove(int dato){
        Raiz = remove(Raiz, dato);
    }
    
    private Nodo remove(Nodo root, int data) {
 
        if(root == null) return root;
 
        if(data < root.getData()) {
            root.setHI(remove(root.getHI(), data));
        } else if(data > root.getData()) {
            root.setHD(remove(root.getHD(), data));
        } else {
            // Nodo Hoja
            if(root.getHI() == null && root.getHD() == null) {
                return null;
            } else if(root.getHI() == null) {
                // Nodo con una hoja  (Sin izquierda)
                return root.getHD();
            } else if(root.getHD() == null) {
                // Nodo con una hoja  (Sin derecha)
                return root.getHI();
            } else {
                // Nodo con dos hijos
                // Uno a la derecha y pura izquierda
                int minValue = ValorMinimo(root.getHD());
                root.setData(minValue);
                root.setHD(remove(root.getHD(), minValue));
            } 
            n--;
        }
       
        return root;
    }
    
    private int ValorMinimo(Nodo node) {
 
        if(node.getHI() != null) {
            return ValorMinimo(node.getHI());
        }
        return node.getData();
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
    
    private boolean isHoja(Nodo p,int x){
        if(p == null)
            return false;
        if(p.getData() == x){
            return p.cantidadHijos()== 0;
        }
        return isHoja(p.getHI(), x) || isHoja(p.getHD(), x);
    }
    
    private boolean isHoja(Nodo u){
        return (u!=null && u.cantidadHijos()==0);
    }
    
    private void swap(Nodo u,Nodo v){
        int aux = u.getData();
        u.setData(v.getData());
        v.setData(aux);
    }
    
    public void podar(){
        Raiz = podar(Raiz);
    }
    
    private Nodo podar(Nodo u){
        if(u==null)return u; 
        else if(isHoja(u)) return null; 
        else{
            Nodo I = podar(u.getHI());
            Nodo D = podar(u.getHD());
            u.setHI(I);
            u.setHD(D);
            n--;
            
            return u;
        }
    }
    
    //  Ej. 5. del Practico
    public int cantLadder(){
        return cantLadder(Raiz);
    }
    
    private int cantLadder(Nodo u){
        
        /*
        if(u!=null)
        {
            System.out.println("Recorriendo el Nodo [" + u.getData() + "]");
        }*/
        
        if(u==null)return 0;
        
        int x = cantLadder(u.getHI())+cantLadder(u.getHD());
        
        if(u.cantidadHijos()==2 && u.getHI().getData()==u.getData()-1 && u.getHD().getData()==u.getData()+1){
            x++;
        }
        
        return x;
    }
    
    public int cantGajos(int nodo){
        return cantGajos(buscar(Raiz, nodo));
    }
    
    private int cantGajos(Nodo p){
        if(p == null)
            return 0;
        int c = p.cantidadHijos();
        return cantGajos(p.getHI()) + cantGajos(p.getHD()) + c;
    }
    
    private Nodo buscar(Nodo u,int dato){
        if(u!=null){
            if(u.getData()>dato)
                return buscar(u.getHI(),dato);
            else if(u.getData()<dato)
                return buscar(u.getHD(),dato);
            else
                return u;
        }
        return null;
    }
     //  Ej. 8. del Practico
    public boolean isPadre(int p, int h){
        Nodo temp = buscar(Raiz, p);
        if(temp!=null){
            return ((temp.getHD()!=null && temp.getHD().getData()==h)||(temp.getHI()!=null && temp.getHI().getData()==h));
        }
        return false;
    }
    
    public void delHoja(int dato){
        Nodo tmp = buscar(Raiz, dato);
        if(isHoja(tmp)){
            remove(dato);
        }
            
    }
    
    public int getNodoPeso(int peso){
        return getNodoPesoRec(Raiz,peso,0);
    }
    
    private int getNodoPesoRec(Nodo u,int peso,int cur){
        // Caso Base
        if(u==null || cur>peso)return 0;
        // Si encontramos el nodo, con un peso actual de 'cur' lo devolvemos
        if(cur==peso)return u.getData(); else
        {
            int a,b; a=b=0;
            if(u.getHI()!=null){
                a = getNodoPesoRec(u.getHI(),peso,cur+u.getHI().getPeso());
            }
            if(u.getHD()!=null){
                b = getNodoPesoRec(u.getHD(),peso,cur+u.getHD().getPeso());
            }
            if(a>0)return a;
            if(b>0)return b;
            
        }
        return 0;
    }
    
    
    public int getHoja(int costo){
        return getHoja(Raiz,costo);
    }
    public int getHoja(Nodo p,int costo){
        if(p==null)
            return 0;
        if(costo==CostoHoja(p.getData()))
            return p.getData();
        else{
            
            int HI=getHoja(p.getHI(),costo);
            int HD=getHoja(p.getHD(),costo);
          
            if(HI>0)
                return HI;
              if(HD>0)
                return HD;
        }
        return 0;
    }
    public int CostoHoja(int x){
        return CostoHoja(Raiz,x);
    
    }
       public int CostoHoja(Nodo p,int u){
           int res=0;
           if(buscar(Raiz, u)==null)
               return -1;
           
           if(u==p.getData()){
               res=p.getPeso();
               return res;
           }
           if(u<p.getData())
           res=p.getPeso()+CostoHoja(p.getHI(),u);
            else
           res=p.getPeso()+CostoHoja(p.getHD(),u);
           
           return res;
       }
    
    
}
