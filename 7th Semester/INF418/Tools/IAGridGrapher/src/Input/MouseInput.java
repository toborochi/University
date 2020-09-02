package Input;

import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class MouseInput extends MouseAdapter {

    public static int xpos = 0, ypos = 0;
    public static boolean click = false;

    @Override
    public void mouseMoved(MouseEvent evt) {
        xpos = evt.getX();
        ypos = evt.getY();
    }
    
    
   

    @Override
    public void mousePressed(MouseEvent evt) {
         click = evt.getClickCount()>=1;
    }
    
    
    

}
