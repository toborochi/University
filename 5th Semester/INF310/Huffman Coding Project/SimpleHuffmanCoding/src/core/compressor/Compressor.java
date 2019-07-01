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
import java.util.stream.Collectors;

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
       
       int totalBits = 0;
       short HeaderSize = (short)(EntropyMap.size()*2+3);
        
        for (Map.Entry<Byte,Integer> item : OcurrenceMap.entrySet()){
           totalBits+= item.getValue() * codingMap.get(item.getKey()).length();
           //System.out.println(item.getKey()+" " +codingMap.get(item.getKey()));
       }
       
       
        
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
            BitArray CompressedData = new BitArray(totalBits);
            writer.writeByte(CompressedData.getExcess());
            
           
            
            // COMPRESSED DATA
            
            int pivot = 0;
            
            for(int i=0;i<RawData.length;++i){
                String code = codingMap.get(RawData[i]);
                for(int j=0;j<code.length();++j){
                    if(code.charAt(j)=='1'){
                        CompressedData.setBitAt(pivot);
                    }
                    pivot++;
                }
            }
            
            for(int i=0;i<CompressedData.byteSize();++i){
                writer.writeByte(CompressedData.getByte(i));
            }
            
            
            writer.close();
            
        }catch(Exception ex){
            System.err.println(ex.toString());
        }
    }
    
    public void Decompress(String from, String to){
        try{
            RandomAccessFile reader = new RandomAccessFile(from, "r");
            
            Map<Byte,Byte> EntropyMap = new TreeMap<>();
            PriorityQueue<HuffmanNode> NodesHeap = new PriorityQueue<>();
        
            short HeaderSize = reader.readShort();
            short Elements = (byte)((HeaderSize-3)/2 );
            
            for(int i=0;i<Elements;++i){
                byte s = reader.readByte();
                byte e = reader.readByte();
                NodesHeap.add(new HuffmanNode(s,e));
                EntropyMap.put(s,e);
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
            
            Tree=NodesHeap.poll();
            
            generateCode(Tree, "");
            
            BitArray CompressedData = new BitArray();
            
            byte excess = reader.readByte();
            //System.out.println(excess);
            
            for(int i=HeaderSize;i<reader.length();++i){
                byte info = reader.readByte();
                CompressedData.addBytes(info);
            }
            
            reader.close();
            
            RandomAccessFile writer = new RandomAccessFile(to, "rw");
            
            Map<String,Byte>  inverseCodeMap = invert(codingMap);  
            StringBuilder checker = new StringBuilder();
           for(int i=0;i<CompressedData.bitSize()-excess;++i){
               if(CompressedData.getBitAt(i)==(byte)1){
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
    
    public static <V, K> Map<V, K> invert(Map<K, V> map) {
    return map.entrySet()
              .stream()
              .collect(Collectors.toMap(Map.Entry::getValue, Map.Entry::getKey));
}
}

