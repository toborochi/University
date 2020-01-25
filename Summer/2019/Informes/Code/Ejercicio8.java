package appletstest;

import java.awt.Event;
import java.awt.Label;
import java.awt.TextField;


public class Ejercicio8 extends java.applet.Applet {
    private String s1;
    private Label ls;
    private TextField tf;
    private TextField tf2;
    private Label ls2;

    public void init() {
        ls = new Label("Palabra sin Encriptar");
        tf = new TextField(20);
        ls2 = new Label("Palabra Encriptadaa 5 espacios");
        tf2 = new TextField(20);
        this.add(ls);
        this.add(tf);
        this.add(ls2);
        this.add(tf2);
        
    }

    
    @Override
    public boolean action(Event e, Object o) {
        System.out.println("entra");
        if (e.target == tf) {
            s1 = tf.getText();
            tf2.setText(encrypt(s1, 5));
        }
        return true;
    }

    static char[] chars = {
        'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h',
        'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p',
        'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
        'y', 'z', '0', '1', '2', '3', '4', '5',
        '6', '7', '8', '9', 'A', 'B', 'C', 'D',
        'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L',
        'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T',
        'U', 'V', 'W', 'X', 'Y', 'Z', '!', '@',
        '#', '$', '%', '^', '&', '(', ')', '+',
        '-', '*', '/', '[', ']', '{', '}', '=',
        '<', '>', '?', '_', '"', '.', ',', ' '
    };
    static String encrypt(String text, int offset)
    {
        char[] plain = text.toCharArray();

        for (int i = 0; i < plain.length; i++) {
            for (int j = 0; j < chars.length; j++) {
                if (j <= chars.length - offset) {
                    if (plain[i] == chars[j]) {
                        plain[i] = chars[j + offset];
                        break;
                    }
                } 
                else if (plain[i] == chars[j]) {
                    plain[i] = chars[j - (chars.length - offset + 1)];
                }
            }
        }
        return String.valueOf(plain);
    }

                        
    private void initComponents() {

        setLayout(new java.awt.BorderLayout());
    }     
}