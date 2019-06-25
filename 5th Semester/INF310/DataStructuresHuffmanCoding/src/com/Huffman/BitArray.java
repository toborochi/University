package com.Huffman;


import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Asus
 */
public class BitArray {
    
    private int bits;
    private ArrayList<Byte> data;
    
    public BitArray(int bits){
        this.bits = bits;
        int bytes = bits/8 + (((bits%8)==0)?0:1);
        data = new ArrayList<Byte>(Collections.nCopies(bytes,(byte)0));
    }
    
    public void addBytes(byte data){
        this.data.add(data);
        bits+=8;
    }
    
    public BitArray(){
        this(0);
    }
    
    public int byteSize(){
        return data.size();
    }
    
    public int bitSize(){
        return bits;
    }
    
    public byte getByte(int position){
        return data.get(position);
    }
    
    public void setByte(int position,byte data){
        this.data.set(position, data);
    }
    
    public void setBitAt(int position){
        int bytePosition = position/8;       
        int bitPosition  = position%8;
        
        byte temporalBit = data.get(bytePosition);
        temporalBit|=(byte)(1<<bitPosition);
        data.set(bytePosition, temporalBit);
        //data[bytePosition]|= (byte)(1<<bitPosition);

    }
    
    public int getBitAt(int position){
       int bytePosition = position/8;
       int bitPosition  = position%8;
       
       return (int)((data.get(bytePosition) >> bitPosition) & 1);
    }
    
}
