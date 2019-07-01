/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.huffmancore;

import java.util.LinkedList;
import java.util.List;

/**
 *
 * @author Asus
 */
public class Bitwise {
    private  int bits;
    public List<Byte> data;
    private int pivot;
    public byte excess=0;
    
    public Bitwise(int bits){
        pivot = 0;
        this.bits = bits;
        int neededBytes = bits/8 + 1;
        
        excess = (byte)(neededBytes*8-bits);
        data = new LinkedList<>();
        for(int i=0;i<neededBytes;++i){
            data.add((byte)0);
        }
    }
    
    public Bitwise(){
        this(0);
    }
    
    
    
    public byte getByte(int index){
        return data.get(index);
    }
    
    public void setByte(int index,byte dat){
        data.set(index, dat);
    }
    
    public void appendByte(byte dat){
        data.add(dat);
    }
    
    
    public int getBytSize(){
        return data.size();
    }
        
    
    public int getSize(){
        return bits;
    }
        
    
    public void setBitAt(int position){
        if(position<bits){
            int fila = position/8;
            int bit  = position%8;
            byte dat = (byte)(1<<(byte)bit);
            
            
            byte temporal = data.get(fila);
            temporal|=dat;
            data.set(fila, temporal);
            //data[fila]|=dat;
        }
    }
    
    public byte getBitAt(int position)
    {
        int fila = position/8;
        int bit  = position%8;
        byte temporal = data.get(fila);
        return (byte)((temporal >> bit) & 1);
    }
    
}
