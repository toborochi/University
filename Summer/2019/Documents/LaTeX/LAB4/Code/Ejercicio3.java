
package UtilPanel;

import java.awt.Button;
import java.awt.Color;
import java.awt.Panel;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class Puzzle extends Panel{
      private int n,m;
      List<Color> Colores = new ArrayList<>();
      
      public Puzzle(int n,int m){
          this.m = m;
          this.n = n;
          Colores.add(Color.red);
          Colores.add(Color.yellow);
          Colores.add(Color.green);
      }
      
      public void generarInicial(){
          for(int i=1;i<n*m-1;++i){
              Button x = new Button(Integer.toString(i));
              Random rnd = new Random();
              x.setBackground(Colores.get(rnd.nextInt(Colores.size())));
              this.add(x);
          }
          add(new Button("0"));
      }
      
      public void generarFinal(){
          for(int i=1;i<n*m-1;++i){
              Button x = new Button(Integer.toString(i));
              Random rnd = new Random();
              x.setBackground(Colores.get(rnd.nextInt(Colores.size())));
              this.add(x);
          }
          add(new Button("0"));
      }
}
