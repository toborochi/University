package appletstest;


import java.applet.*;
import java.awt.*;
import java.awt.event.*;
import java.util.Random;

public class NewApplet extends Applet implements KeyListener{

    private String s1;
    private Label ls,ls1,ls2,ls3;
    private TextField tf1;
    private TextField tf2;
    private TextArea ta;
@Override
public void keyPressed( KeyEvent e ) { }
@Override
public void keyReleased( KeyEvent e ) { }
@Override   
public void keyTyped( KeyEvent e ) {
      char c = e.getKeyChar();
      if ( c != KeyEvent.CHAR_UNDEFINED ) {

         repaint();
         e.consume();
      }
   }
    
    
    public boolean action(Event e,Object o){
        
        
        
        if(e.target==tf1 || e.target==tf2){
                
                fila = Integer.valueOf(tf1.getText());
                columna = Integer.valueOf(tf2.getText());
                matrix = new int[fila][columna];
                randomMatrix();
                
                
                
                
        }
        return true;
    }
    
   
    
    
    int matrix[][],fila,columna;
    int sumcol[]= new int[1000];
    int mincol[]= new int[1000];
    
    public void randomMatrix(){
        Random random = new Random();
        
        for(int i=0;i<columna;++i){
            mincol[i]=Integer.MAX_VALUE;
        }
        
        for(int i=0;i<fila;++i){
            for(int j=0;j<columna;++j){
                int rnd = 10+random.nextInt(90);
                
                matrix[i][j]=rnd;
                sumcol[j]+=rnd;
                mincol[j] = Math.min(rnd, mincol[j]);
                
            }
        }
        

        
        for(int i=0;i<fila;++i){
            for(int j=0;j<columna;++j){
                ta.append("["+matrix[i][j]+"] ");
            }
            ta.append("\n");
        }
        ta.append("\n");
        ta.append("Sumatoria por Columna: \n");
        for(int i=0;i<columna;++i){
            ta.append(""+sumcol[i]+" ");
        }
        ta.append("\n");
        ta.append("Minimo por Columna: \n");
        for(int i=0;i<columna;++i){
            ta.append(""+mincol[i]+" ");
        }
        
    }
    
    public void init() {
        
      addKeyListener( this );
        ls = new Label("Matriz:"); 
        ls1 = new Label("[ n"); 
        tf1 = new TextField(20);
        ls2 = new Label("x m");
        tf2 = new TextField(20); 
        ls3 = new Label("]");
        ta = new TextArea(20,60);
        
        this.add(ls);
        this.add(ls1);
        this.add(tf1);
        this.add(ls2);
        this.add(tf2);
        this.add(ls3);
        this.add(ta);
        
        
        
    }

    // TODO overwrite start(), stop() and destroy() methods
}
