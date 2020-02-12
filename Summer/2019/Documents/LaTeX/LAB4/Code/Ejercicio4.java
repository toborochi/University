package Lab4;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Frame;
import java.awt.*;
import java.awt.event.*;

public class Tablero extends Panel{
    public Tablero() {
        
        setBackground(Color.GREEN);

        Dimension d = Toolkit.getDefaultToolkit().getScreenSize();
        int ancho=300, alto=350;        
        setSize(ancho, alto);
        setLocation(d.width/2-ancho/2,d.height/2-alto/2);        

        setLayout(new BorderLayout(20,20));     

        Font fuente = new Font("Arial", Font.BOLD, 20);
        Label etiq = new Label("A J E D R E Z ", Label.CENTER);
        etiq.setFont(fuente);
        etiq.setForeground(new Color(100,0,50));
        
        add(etiq, BorderLayout.NORTH);
        
        Panel tablero = new Panel();
        tablero.setLayout(new GridLayout(8,8));

        for (int i=1; i<=8; i++)
           for (int j=1; j<=8; j++)
                if ((i+j) % 2 == 0) {
                    Button blanca = new Button(" ");
                    blanca.setBackground(Color.white);          
                    blanca.setEnabled(false);
                    tablero.add(blanca);
                    }
                else {
                    Button negra = new Button(" ");
                    negra.setBackground(Color.black);
                    negra.setEnabled(false);
                    tablero.add(negra);    
                }
                               

        add(tablero,BorderLayout.CENTER);
                  

        Panel botones = new Panel();
        Button empezar = new Button("Empezar");
        Button acabar = new Button("Acabar");

        acabar.setEnabled(false);
        
        botones.add(empezar);
        botones.add(acabar);
        
        add(botones, BorderLayout.SOUTH);
         

        Panel izq = new Panel();
        Panel der = new Panel(); 
        add(izq,BorderLayout.EAST);
        add(der,BorderLayout.WEST);
     
    }   
}
class ParaAcabar extends WindowAdapter {
    public void windowClosing(WindowEvent e) {        
       System.exit(0);    
     }
}