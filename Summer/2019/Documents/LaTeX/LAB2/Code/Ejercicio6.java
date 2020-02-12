package appletstest;

import java.applet.*;
import java.awt.*;
import java.awt.event.*;


public class NewApplet1 extends Applet{
    
    private String s1;
    private Label ls;
    private TextField tf;
    private TextArea ta;


    @Override
    public void init() {
        ls = new Label("Ingresar cantidad de primos a visualizar:");
        tf = new TextField(20);
        ta = new TextArea(10, 20);
        this.add(ls);
        this.add(tf);
        this.add(ta);
        
    }

    
    @Override
    public boolean action(Event e, Object o) {
        System.out.println("entra");
        if (e.target == tf) {
            s1 = tf.getText();
            int n = Integer.valueOf(s1);
            System.out.println(n);
            int c = 1;
            int p = 2;
            int d = 2;
            while (c <= n) {
                if (p % d == 0) {
                    if (p == d) {
                        ta.append(String.valueOf(p)+" ");
                        c++;
                    }
                    d = 2;
                    p++;
                } else {
                    d++;
                }
            }
        }
        return true;
    }
}