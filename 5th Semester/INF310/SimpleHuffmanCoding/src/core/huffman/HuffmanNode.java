package core.huffman;

public class HuffmanNode implements Comparable<HuffmanNode>{
    
    // <editor-fold desc="Attributes">
    private HuffmanNode left,right;
    private byte character,percentage;
    // </editor-fold>
    
    // <editor-fold desc="Constructor">
    public HuffmanNode(){
        left = right = null;
        character = percentage = (byte)0;
    }
    
    public HuffmanNode(byte character, byte percentage){
        this();
        this.character = character;        
        this.percentage = percentage;
    }
    // </editor-fold> 
    
    // <editor-fold desc="Getters">
    public byte getCharacter(){
        return character;
    }
    
    public byte getPercentage(){
        return character;
    }
    
    public HuffmanNode getLeft(){
        return left;
    }
    
    public HuffmanNode getRight(){
        return right;
    }
    // </editor-fold>
    
    // <editor-fold desc="Setters">
    public void setCharacter(byte character){
        this.character = character;
    }
    
    public void setPercentage(byte percentage){
        this.percentage = percentage;
    }
    
    public void setLeft(HuffmanNode node){
        this.left = node;
    }
    
    public void setRight(HuffmanNode node){
        this.right = node;
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
