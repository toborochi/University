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
          for(int i=1;i<=n;++i){
              for(int j=1;j<=m;++j){
                 
                Button x = new Button("   ");
                
                if(j==1 || j==m || i==1 || i ==n){
                    x.setBackground(Color.blue);
                }
                
                
                this.add(x);
              }
              
          }
      }      
}

package appletprojects;

import UtilPanel.Puzzle;
import java.applet.Applet;
import java.awt.Button;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.GridLayout;


public class Ejercicio extends Applet {

    private Puzzle p1,p2;
    Button b1,b2;
    
    @Override
    public void init() {
        
        b1 = new Button("Flood");
        b2 = new Button("Pick");
        
        p1 = new Puzzle(10, 10);
        p1.setLayout(new GridLayout(10,10));
        
        p1.generarInicial();
        
        
        add(p1);
        add(b1);
        add(b2);
    }
    
    
    @Override
    public void paint(Graphics g){
        
    }
}

