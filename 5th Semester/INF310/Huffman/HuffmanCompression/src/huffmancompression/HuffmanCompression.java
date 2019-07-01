/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package huffmancompression;

import com.huffmancore.Bitwise;
import com.huffmancore.HuffmanTree;
import com.huffmancore.Node;
import java.io.EOFException;
import java.io.IOError;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Map.Entry;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.Set;
import java.util.stream.Collectors;


public class HuffmanCompression {

    static String readFile(String path, Charset encoding) 
  throws IOException 
{
  byte[] encoded = Files.readAllBytes(Paths.get(path));
  
  return new String(encoded, encoding);
}
 
    public static void main(String[] args) throws IOException {
      
   
        String str = readFile("C:\\Users\\Asus\\Documents\\NetBeansProjects\\HuffmanCompression\\build\\classes\\original.grm",Charset.defaultCharset());
        
        HuffmanTree HT= new HuffmanTree();
        HT.buildTree(str);
        //HT.printTree();
        
        
        int longHeader = (2*HT.getCharacters()+1); 
        
          System.out.println("Elementos Header: "+HT.getCharacters());
        System.out.println("Longitud Header: "+longHeader);
        
        RandomAccessFile f = new RandomAccessFile("C:\\Users\\Asus\\Documents\\NetBeansProjects\\HuffmanCompression\\build\\classes\\compressed.grm","rw");  
        
        f.writeInt(longHeader); // Longitud del header
 
        
        Iterator value = HT.heapNodes.iterator(); 
        while(value.hasNext()){
            

            Node xe = (Node)value.next();
            f.writeByte(xe.getCharacter());           
            f.writeByte(xe.getPercentage());
        }
        
        
        HT.genTree();
        
        int totalBits = 0;
        String temp = "";
        for(int i=0;i<str.length();++i){
            temp+=HT.mapCode.get(str.charAt(i));
            totalBits+= HT.mapCode.get(str.charAt(i)).length();
        }
        
        Bitwise ByteData = new Bitwise(totalBits);

        
        for(int i=0;i<temp.length();++i){
          if(temp.charAt(i)=='1'){
              ByteData.setBitAt(i);
          }
        }
        
       
        f.writeByte(ByteData.excess);
        
        System.out.println("Bits Sobrantes: " + ByteData.excess);
        
        for(int i=0;i<ByteData.getBytSize();++i){
            f.writeByte(ByteData.getByte(i));
        }
        
        f.close();  
        
        
        HuffmanTree HT2 = new HuffmanTree();
        
        
        try{
        RandomAccessFile ff = new RandomAccessFile("C:\\Users\\Asus\\Documents\\NetBeansProjects\\HuffmanCompression\\build\\classes\\compressed.grm","r");  
            
            int longHeaderRecover = ff.readInt();
            int carProb = (longHeaderRecover-1) / 2;
            
            System.out.println("Elementos Header: "+carProb);
            System.out.println("Longitud Header: "+longHeaderRecover);
            
            for(int i=0;i<carProb;++i){
                byte caracter     = ff.readByte();
                byte probabilidad = ff.readByte();
                
                
                Node nodo = new Node();
                nodo.setCharacter((char)caracter);            
                nodo.setPercentage(probabilidad);
                HT2.heapNodes.add(nodo);

                
                
                //System.out.println("Datos: " + (char)caracter + " " +probabilidad);
            }
            
            HT2.ReconstructTree(HT2.heapNodes);
            
            //System.out.println(HT2.Root.getPercentage()); 
            
            //HT2.printTree();
            
            
            
            HT2.genTree();
            
            byte btssobrantes = ff.readByte();
            
            
            
            System.out.println("Bits Sobrantes: " + btssobrantes);
            
            
           Bitwise bw2 = new Bitwise();
            
            while(true){
                try{
                    byte byteleido = ff.readByte();
                    bw2.appendByte(byteleido);
                }catch(EOFException ex){
                    break;
                }
            }
            
            bw2.data.remove(0);
            
            System.out.println(ByteData.getBytSize());
            System.out.println(bw2.getBytSize());
            
            /*
            for(int i =0;i<ByteData.data.size();++i){
                System.out.println(ByteData.data.get(i) + " " + bw2.data.get(i));
            }*/
            
            Map<String,Character> inverso = invert(HT2.mapCode);          
            
            String pivote="";
            for(int i=0;i<bw2.data.size()*8 - btssobrantes;++i){
                pivote+= ((bw2.getBitAt(i)==1)?"1":"0");
                if(inverso.containsKey(pivote)){
                    System.out.print(inverso.get(pivote));
                    pivote="";
                }
               
            }
            
            
            ff.close();
        }
        catch(Exception e)
        {
            
        }

      
    }
    public static <V, K> Map<V, K> invert(Map<K, V> map) {
    return map.entrySet()
              .stream()
              .collect(Collectors.toMap(Entry::getValue, Entry::getKey));
}
    
}
