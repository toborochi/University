/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.huffmancore;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Queue;

/**
 *
 * @author Asus
 */
public class HuffmanTree {
    
    public Node Root;
    public PriorityQueue<Node> heapNodes;
    public Map<Character,String> mapCode;
    
    
    public HuffmanTree(){
        Root = null;
        heapNodes = new PriorityQueue<>();
        mapCode = new HashMap<Character,String>();
    }
    
    public int getCharacters(){
        return heapNodes.size();
    }
    
    public void genTree(){
        generateCode(Root, "");
    }
    
    public void generateCode(Node tree, String code)
    {
        if(tree==null)
            return;
        if(tree.getCharacter()!=(char)0){
            mapCode.put(tree.getCharacter(), code);
        }
        
        generateCode(tree.getLeftNode(), code+"0");      
        generateCode(tree.getRightNode(), code+"1");

    }
    
    
    public void ReconstructTree(PriorityQueue<Node> heapNodesAux){
        

                
        while(heapNodesAux.size()>1){
           Node a = heapNodesAux.poll();
           Node b = heapNodesAux.poll();
           Node n = new Node();
           byte peso = a.getPercentage();
           peso+=b.getPercentage();
           
           n.setLeftNode(a);       
           n.setRightNode(b);
           
           n.setPercentage(peso);
           heapNodesAux.add(n);
           
       }
        
       Root = heapNodesAux.poll();
    }
  

    
    
    public void buildTree(String string){
         Map<Character,Integer> charMap = new HashMap<Character,Integer>();
         
        for(int i=0;i<string.length();++i){
            
            if(!charMap.containsKey(string.charAt(i))){
                charMap.put(string.charAt(i),1);
            }else
            {
                int c = charMap.get(string.charAt(i)); c++;
                charMap.replace(string.charAt(i), c);
            }
        }
        PriorityQueue<Node> heapNodesAux = new PriorityQueue<>();    
        
                charMap.entrySet().stream().map((item) -> {
            Node nodo = new Node();
            nodo.setCharacter(item.getKey());
            float p = (item.getValue()/(float)string.length())*100.0f;
            byte pp = (byte)p;
            //System.out.println(pp); //entry.getValue()
            nodo.setPercentage(pp);
            return nodo;
        }).forEachOrdered((nodo) -> {
            heapNodesAux.add(nodo);
            heapNodes.add(nodo);
            /*Nodos.add(new Node());
            System.out.println("Key = " + entry.getKey() +
            ", Value = " + entry.getValue());  */
        });
                
        while(heapNodesAux.size()>1){
           Node a = heapNodesAux.poll();
           Node b = heapNodesAux.poll();
           Node n = new Node();
           byte peso = a.getPercentage();
           peso+=b.getPercentage();
           
           n.setLeftNode(a);       
           n.setRightNode(b);
           
           n.setPercentage(peso);
           heapNodesAux.add(n);
           
       }
        
       Root = heapNodesAux.poll();
    }
    
    public void printTree(){
        Queue<Node> queue = new LinkedList<>();
        queue.add(Root);
        
        
        while(!queue.isEmpty()){

            
                int tam = queue.size();
                while(tam>0){
                    Node xtmp = queue.element();
                    System.out.print(
                    "[" + xtmp.getCharacter() + " " + xtmp.getPercentage() + "] "
                    );
                    queue.poll();
                    
                    if(xtmp.getLeftNode()!=null){
                        queue.add(xtmp.getLeftNode());
                    }
                    
                    if(xtmp.getRightNode()!=null){
                        queue.add(xtmp.getRightNode());
                    }
                    
                    tam--;
                }
                System.out.println();
        }
    }
    
}
