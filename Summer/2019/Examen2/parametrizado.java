package ihc2;

import java.util.*;



public class IHC2 {
    
    // Busqueda Binaria
    public static int binarySearch(List<Integer> L,int x){
        
       int l=0,r=L.size()-1; 
       Collections.sort(L);
       
       while(l<=r){
           int mid = (l+r)/2;
           
           if(L.get(mid)==x){
               return mid;
           }
           if (L.get(mid) < x) 
            l = mid + 1; 
           else
            r = mid - 1; 
       }
       return -1;
    }
    
    // Media Ponderada
    public static double weightAvg(List<Double> W,List<Double> V){
        
        double avg = 0, sum=0;
        
        for(int i=0;i<W.size();++i){
            avg += W.get(i) * V.get(i);
            sum += W.get(i);
        }
        
        avg /= sum;
        
        return avg;
    }
    
    // Algoritmo de Kadane
    public static int kadane(List<Integer> L){
        int a = Integer.MIN_VALUE, b = 0; 
  
        for (int i = 0; i < L.size(); i++) 
        { 
            b = b + L.get(i); 
            if (a < b) 
                a = b; 
  
           if (b < 0) 
                b = 0; 
        }
        return a; 
    }
    
    
    
    
    public static void main(String[] args) {

    
    }
    
}
