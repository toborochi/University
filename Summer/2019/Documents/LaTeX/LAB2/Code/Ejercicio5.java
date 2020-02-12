package appletstest;

import java.awt.Label;
import java.awt.TextArea;
import java.awt.TextField;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import javafx.event.Event;

public class Cadena extends java.applet.Applet {

    private String s1;
    private Label ls;
    private TextField tf;
    private TextArea ta;

   
    
    public void init() {
        ls = new Label("Ingresar cadena: ");
        tf = new TextField(20);
        ta = new TextArea(10,20);
        this.add(ls);
        this.add(tf);
        this.add(ta);
        try {
            java.awt.EventQueue.invokeAndWait(new Runnable() {
                public void run() {
                    initComponents();
                }
            });
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    

    public boolean action(Event e,Object o){

        if(e.getTarget()==tf){
            s1 = tf.getText();
            for(int i=0;i<s1.length();++i){
                for(int j=i+1;j<= s1.length();++j){
                    ta.append(s1.substring(i,j)+"\n");
                }
            }
        }
        return true;
    }
                        
    private void initComponents() {

        setLayout(new java.awt.BorderLayout());
    }            
}
