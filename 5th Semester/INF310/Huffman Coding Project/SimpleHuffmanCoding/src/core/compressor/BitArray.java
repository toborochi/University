package core.compressor;


import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class BitArray {
    
    
    private int bits;
    private ArrayList<Byte> data;
    private int excess;
    
    // <editor-fold desc="Constructor"> 
    public BitArray(int bits){
        this.bits = bits;
        int bytes = bits/8 + (((bits%8)==0)?0:1);
        excess = bytes*8 - bits;
        data = new ArrayList<Byte>(Collections.nCopies(bytes,(byte)0));
    }
    
    public BitArray(){
        this(0);
    }
    // </editor-fold> 
    
    public int getExcess(){
        return excess;
    }
    
    // <editor-fold desc="Methods"> 
    public void addBytes(byte data){
        this.data.add(data);
        bits+=8;
    }
    
    public int byteSize(){
        return data.size();
    }
    
    public int bitSize(){
        return bits;
    }
    // </editor-fold> 
   
    // <editor-fold desc="Setters"> 
    public void setByte(int position,byte data){
        this.data.set(position, data);
    }
    
    public void setBitAt(int position){
        int bytePosition = position/8;       
        int bitPosition  = position%8;
        
        byte temporalBit = data.get(bytePosition);
        temporalBit|=(byte)(1<<bitPosition);
        data.set(bytePosition, temporalBit);

    }
    // </editor-fold> 
    
    // <editor-fold desc="Getters"> 
     public byte getByte(int position){
        return data.get(position);
    }
    
    public int getBitAt(int position){
       int bytePosition = position/8;
       int bitPosition  = position%8;
       
       return (int)((data.get(bytePosition) >> bitPosition) & 1);
    }
    // </editor-fold> 
    
}
