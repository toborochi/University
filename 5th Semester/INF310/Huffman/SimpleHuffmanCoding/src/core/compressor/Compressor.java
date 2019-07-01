package core.compressor;

import core.huffman.HuffmanNode;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.TreeMap;

public class Compressor {
    private HuffmanNode Tree;
    private byte[] RawData;
    private Map<Byte,String> codingMap;
    
    public Compressor(){
        Tree = null;
        codingMap = new TreeMap<>();
    }
    
    public void LoadSourceData(File file){
        
        try{
            FileInputStream reader = new FileInputStream(file);
            RawData = reader.readAllBytes();
            // System.out.println(RawData.length);
            reader.close();
            }catch(Exception ex){
            System.err.println(ex.toString());
        }
        
    }
    
    public void Compress(String path, String filename){
        
        // Huffman tree generation
        // Map to store the occurrences of each symbol
        Map<Byte,Integer> OcurrenceMap = new TreeMap<>();
        Map<Byte,Byte> EntropyMap = new TreeMap<>();
        
        // Heap to sort Huffman Nodes generated
        PriorityQueue<HuffmanNode> NodesHeap = new PriorityQueue<>();
        
        for(int i=0;i<RawData.length;++i){
            if(!OcurrenceMap.containsKey(RawData[i])){
                OcurrenceMap.put(RawData[i], 1);
            }else
            {
                OcurrenceMap.put(RawData[i], OcurrenceMap.get(RawData[i])+1);
            }
        }
        
        for (Map.Entry<Byte,Integer> item : OcurrenceMap.entrySet()){
            double ent = item.getValue();
            ent/= (float)RawData.length;
            ent*= 100.0f;
            ent+= 0.5f;
            byte e = (byte)ent;
            EntropyMap.put(item.getKey(), e);
            NodesHeap.add(new HuffmanNode(item.getKey(),(byte)e));
        }
        
        
        while(NodesHeap.size()>1){
            HuffmanNode a = NodesHeap.poll();
            HuffmanNode b = NodesHeap.poll();
 
            byte t = a.getPercentage();
            t+=b.getPercentage();
            
            // New node to add in NodeHeap
            HuffmanNode node = new HuffmanNode();
            node.setPercentage(t);
            node.setLeft(a);
            node.setRight(b);
            
            NodesHeap.add(node);
        }
        
       // Root of Huffman Tree 
       Tree = NodesHeap.poll();
       
       // Generate Huffman Coding Map
       generateCode(Tree, "");
       
       short HeaderSize = (short)(EntropyMap.size()*2+3);
        
      
       
        try{
            
            RandomAccessFile writer = new RandomAccessFile(path+filename, "rw");
            
            // HEADER 
            writer.writeShort(HeaderSize);
           
            // HUFFMAN TREE DATA
            
            for (Map.Entry<Byte,Byte> item : EntropyMap.entrySet()){
                writer.writeByte(item.getKey());
                writer.writeByte(item.getValue());
            }
            
            // EXCESS
            
            // COMPRESSED DATA
            
            
            writer.close();
            
        }catch(Exception ex){
            System.err.println(ex.toString());
        }
    }
 
    
    // Generate Huffman Coding
    private void generateCode(HuffmanNode tree, String code)
    {
        if(tree==null)
            return;
        if(tree.getLeft()==null && tree.getRight()==null){
            codingMap.put(tree.getCharacter(), code);
        }
        
        generateCode(tree.getLeft(), code+"0");      
        generateCode(tree.getRight(), code+"1");

    }
}
