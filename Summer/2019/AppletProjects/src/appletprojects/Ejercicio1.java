package appletprojects;

import java.applet.*;
import java.awt.*;
import java.awt.event.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;


public class Ejercicio1 extends Applet implements ActionListener{

    int appletWidth=480,appletHeight=480,grid=8;
    
    boolean debug = true;
    Button button1,button2;
    TextField tf;
    
    @Override
    public void init() {
        button1 = new Button("Ejecutar");        
        button2 = new Button("Ejecutar");

	tf = new TextField();
        
        add(button1);
        add(button2);
        add(tf);
    }
    
    @Override
    public void start(){

        button1.addActionListener(this);
        button2.addActionListener(this);
        
        button1.setBounds(getPosition(1,1, 10,3));
        button2.setBounds(getPosition(1,5, 10,3));
        tf.setBounds(getPosition(12,1, 10,3));
        
        setLayout(new BorderLayout());
        resize(appletWidth,appletHeight);
        
    }
    
    
    private Rectangle getPosition(int x,int y,int width,int height){
        return new Rectangle(x*grid,y*grid,width*grid,height*grid);
    }
    
    @Override
    public void actionPerformed(ActionEvent e) {
	if(e.getSource()==button1){
            System.out.println("xxx");
        }else
        if(e.getSource()==button2)
        {   
            debug=!debug;
            repaint();
            System.out.println("xxs");
        }
    }
    
    @Override
    public void paint(Graphics g){
        if(debug){
            g.setColor(Color.LIGHT_GRAY);
            for(int j=0;j<appletHeight/grid;++j){
                g.drawLine(j*grid, 0, j*grid, appletHeight);
            }
            for(int i=0;i<appletWidth/grid;++i){    
                g.drawLine(0,i*grid,appletWidth,i*grid);
            }
        }
    }
}
