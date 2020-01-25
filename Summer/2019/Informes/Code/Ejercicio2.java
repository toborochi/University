package LAb2;

import java.applet.Applet;
import java.applet.Applet;
import java.awt.Event;
import java.awt.Graphics;
import java.awt.Label;
import java.awt.TextArea;
import java.awt.TextField;
import java.util.Random;

public class Ejercicio2 extends Applet {

    
    private Label ls;
    private Label ls2;
    private TextField tf;
    private TextArea ta;
    private TextArea ta1;
    

    static int dim = 60;
    static int m[][] = new int[7][7];
    static int f[] = new int[13];

    
    public void init() {
        ls = new Label("Ingrese la cadena aqui");
        tf = new TextField(20);
        ta = new TextArea(15,50);
        ta1 = new TextArea(1,40);        
        this.add(ls);
        this.add(tf);        
        this.add(ta);
        ls2 = new Label("sumas de los dados");
        this.add(ls2);
        this.add(ta1);
    }
    
    public void mostrarRespuesta() {        
        for (int i = 1; i < 7; i++) {
            for (int j = 1; j < 7; j++) {
                ta.append("" + m[i][j] + "\t");
            }
            ta.append("\n"+"");            
        }

        for (int i = 1; i < 13; i++) {
            ta1.append("" + f[i] +"    ");
        }
    }

//    public void adjust() {
//        this.setSize(dim * 10, dim * 7);
//    }

    public void randomPool(int a) {
        Random random = new Random();
        for (int i = 0; i < a; i++) {
            int dice1 = random.nextInt(6) + 1;
            int dice2 = random.nextInt(6) + 1;
            f[dice1 + dice2]++;
            m[dice1][dice2]++;
        }
    }
    public boolean action( Event e, Object o){
        if (e.target == tf) {
            int a = Integer.valueOf(tf.getText());
            randomPool(a);
            mostrarRespuesta();
        }
        return true;
    }
}
