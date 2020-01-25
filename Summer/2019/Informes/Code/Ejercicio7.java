package appletstest;

import java.awt.Event;
import java.awt.Label;
import java.awt.TextArea;
import java.awt.TextField;


public class EjercicioF extends java.applet.Applet {

    private String s1;
    private Label ls;
    private TextField tf;
    private TextArea ta;

    @Override
    public void init() {
        ls = new Label("Ingresar fibonacci mas cercano a:");
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
                    int numero = 10, fibo1, fibo2, i;

        fibo1 = 1;
        fibo2 = 1;
        ta.append(String.valueOf(fibo1) + " ");
        for (i = 2; i <= n; i++) {
            ta.append(String.valueOf(fibo1) + " ");
            fibo2 = fibo1 + fibo2;
            fibo1 = fibo2 - fibo1;
        }
        }
        return true;
    }
                       
    private void initComponents() {

        setLayout(new java.awt.BorderLayout());
    }                  
}