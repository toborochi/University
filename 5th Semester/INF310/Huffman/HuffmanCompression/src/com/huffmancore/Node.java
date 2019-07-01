/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.huffmancore;

/**
 *
 * @author Asus
 */
public class Node implements Comparable<Node>{
    
    private char character;
    private byte percentage;
    private Node L,R;
    
    
    public Node(){
        this((byte)0);
    }
    
    public Node(byte percentage){
        this.percentage = percentage;
        character = (char)0;
        L = R = null;
    }
    
    public Node getLeftNode(){
        return L;
    }
    
    public Node getRightNode(){
        return R;
    }
    
    public void setLeftNode(Node node){
        this.L = node;
    }
    
    public void setRightNode(Node node){
        this.R = node;
    }
    
    public byte getPercentage(){
        return percentage;
    }
    
    public char getCharacter(){
        return character;
    }
    
    
    public void setPercentage(byte percentage){
       this.percentage = percentage;
    }
    
    public void setCharacter(char character){
        this.character = character;
    }
    
    @Override
    public int compareTo(Node otherNode){
        return (this.percentage-otherNode.percentage);
    }
}
