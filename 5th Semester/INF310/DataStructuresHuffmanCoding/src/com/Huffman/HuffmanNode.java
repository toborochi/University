/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Huffman;

/**
 *
 * @author Asus
 */
public class HuffmanNode implements Comparable<HuffmanNode>{
    
    // <editor-fold desc="Private Attributes"> 
    private HuffmanNode HNLeft,HNRight;
    private byte percentage;
    private byte character;
    // </editor-fold> 
    
    // <editor-fold desc="Constructors"> 
    public HuffmanNode(){
        this((byte)0,(byte)0);
    }
    
    public HuffmanNode(byte character,byte percentage){
        this.character = character;
        this.percentage= percentage;
        HNLeft = HNRight = null;
    }
    // </editor-fold> 
    
    // <editor-fold desc="Setters"> 
    public void setChar(byte character){
        this.character = character;
    }
    
    public void setPercentage(byte percentage){
        this.percentage = percentage;
    }
    
    public void setLeft(HuffmanNode Node){
        HNLeft = Node;
    }
    
    public void setRight(HuffmanNode Node){
        HNRight = Node;
    }
    // </editor-fold> 
    
    // <editor-fold desc="Getters"> 
    public HuffmanNode getLeft(){
        return HNLeft;
    }
    
    public HuffmanNode getRight(){
        return HNRight;
    }
    
    public byte getChar(){
        return character;
    }
    
    public byte getPercentage(){
        return percentage;
    }
    // </editor-fold>
    
    // <editor-fold desc="Overrides"> 
     @Override
    public int compareTo(HuffmanNode otherNode){
        return (getPercentage()-otherNode.getPercentage());
    }
    @Override 
    public String toString(){
        return ("["+character+":"+percentage+"]");
    }
    // </editor-fold> 
}
