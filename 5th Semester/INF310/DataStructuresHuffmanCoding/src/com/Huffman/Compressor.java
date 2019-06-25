/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Huffman;

import com.sun.net.httpserver.Headers;
import java.io.RandomAccessFile;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.PriorityQueue;
import java.util.stream.Collectors;

/**
 *
 * @author Asus
 */
public class Compressor {
    private HuffmanNode Tree;
    private final Map<Byte,Integer> frequencyMap;  
    private final Map<Byte,Byte>    entropyMap;
    private final Map<Byte,String>  codeMap;
    private final PriorityQueue<HuffmanNode> nodeQueue;
    private byte[] mainData;

    static byte[] readFile(String path)
    {
        try{
        byte[] encoded = Files.readAllBytes(Paths.get(path));
        return encoded;
        }catch(Exception ex){
              System.out.println(ex.toString());
        }
        return new byte[0];
    }
    
    public Compressor(){
        Tree = new HuffmanNode();
        frequencyMap = new HashMap<>();    
        entropyMap = new HashMap<>();
        codeMap = new HashMap<>();
        nodeQueue = new PriorityQueue<>();
    }
    
    public void loadData(String path){
        
        mainData = readFile(path);
        
        // Cargamos el mapa con las apariciones de los caracteres
        for(int i=0;i<mainData.length;++i){
            if(!frequencyMap.containsKey(mainData[i])){
                frequencyMap.put(mainData[i],1);
            }else
            {
                frequencyMap.put(mainData[i],frequencyMap.get(mainData[i])+1);
            }
        }
        
        // Calculamos la entropia para cada caracter
        for (Map.Entry<Byte, Integer> item : frequencyMap.entrySet()) {
             byte freq = (byte)((float)item.getValue()/(float)mainData.length * 100.0f + 0.5f); // 0.5 factor de perdida de entropia
             entropyMap.put(item.getKey(), freq);
        }
        
 
        /*
        for (Map.Entry<Byte, Byte> item : entropyMap.entrySet()) {
            byte d = item.getKey();
            char c = (char)d;
             System.out.println(item.getKey()+ " " + item.getValue());
        }
        */
        
        BuildTree();
        
    }
    
    private void BuildTree(){
        for (Map.Entry<Byte, Byte> item : entropyMap.entrySet()) {
            nodeQueue.add(new HuffmanNode(item.getKey(),item.getValue()));
        }
        
        while(nodeQueue.size()>1){
            HuffmanNode Node1 = nodeQueue.poll();    
            HuffmanNode Node2 = nodeQueue.poll();
            byte totalEntropy = Node1.getPercentage();
            totalEntropy+=Node2.getPercentage();
            HuffmanNode newNode = new HuffmanNode((byte)0,totalEntropy);
            newNode.setLeft(Node1);            
            newNode.setRight(Node2);

            nodeQueue.add(newNode);
        }
        
        Tree = nodeQueue.poll();
        
        generateCode(Tree,"");
    }
    
    private void generateCode(HuffmanNode tree, String code)
    {
        if(tree==null)
            return;
        if(tree.getLeft()==null && tree.getRight()==null){
            codeMap.put(tree.getChar(), code);
        }
        
        generateCode(tree.getLeft(), code+"0");      
        generateCode(tree.getRight(), code+"1");

    }
    
    public void compress(String path){
        try{
            int longHeader = entropyMap.size()*2  + 1;
            
            RandomAccessFile f = new RandomAccessFile(path,"rw");
            f.writeInt(longHeader); 
            
            //System.out.println(longHeader);
             
             for (Map.Entry<Byte, Byte> item : entropyMap.entrySet()) {
                 f.writeByte(item.getKey());             
                 f.writeByte(item.getValue());
                 
            }
             
             
            int totalBits = 0,pivot=0;
            for(int i=0;i<mainData.length;++i){
                totalBits+= codeMap.get(mainData[i]).length();
            }
            
            BitArray CompressedData = new BitArray(totalBits);
            
            byte excess = (byte)((totalBits/8 + (((totalBits%8)==0)?0:1))*8 - totalBits);
            
            f.writeByte(excess);
            //System.out.println("Exceso: "+excess);
            
            for(int i=0;i<mainData.length;++i){
                String code = codeMap.get(mainData[i]);
                for(int j=0;j<code.length();++j){
                    if(code.charAt(j)=='1'){
                        CompressedData.setBitAt(pivot);
                    }
                    pivot++;
                }
            }
            
            for(int i=0;i<CompressedData.byteSize();++i){
                f.writeByte(CompressedData.getByte(i));
            }
            
           
            f.close();
            
        }catch(Exception ex){
            System.out.println(ex.toString());
        }
            
    }
    
    public void decompress(String compressed,String decompressed){
        try{
           
            RandomAccessFile reader = new RandomAccessFile(compressed,"r");
            int headerSize = reader.readInt();
            int elements = (headerSize-1)/2;

            for(int i=0;i<elements;++i){
                byte c = reader.readByte();      
                byte p = reader.readByte();
                entropyMap.put(c, p);
            }
            byte bexcess = reader.readByte();
            int  excess = bexcess;
           
            BuildTree();
            
            int startSeek = 4 + headerSize;
           
            BitArray ba = new  BitArray();
            
            while(startSeek<reader.length()){
                ba.addBytes(reader.readByte());
                startSeek++;
            }
            reader.close();
            
            RandomAccessFile writer = new RandomAccessFile(decompressed,"rw");
            
            Map<String,Byte>  inverseCodeMap = invert(codeMap);            
           
           StringBuilder checker = new StringBuilder();
           for(int i=0;i<ba.bitSize()-excess;++i){
               if(ba.getBitAt(i)==(byte)1){
                   checker.append("1");
               }else
               {
                   checker.append("0");
               }
               if(inverseCodeMap.containsKey(checker.toString())){
                   
                   writer.writeByte(inverseCodeMap.get(checker.toString()));
                   checker = new StringBuilder();
               }
           }
           
           writer.close();
            
        }catch(Exception ex){
            
        }
    }
    
    public static <V, K> Map<V, K> invert(Map<K, V> map) {
    return map.entrySet()
              .stream()
              .collect(Collectors.toMap(Entry::getValue, Entry::getKey));
}
}
