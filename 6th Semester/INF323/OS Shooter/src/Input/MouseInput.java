/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Input;

import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
/**
 *
 * @author Asus
 */
public class MouseInput extends MouseAdapter{
    
    private static int NUM_BUT = 10;
    
    private static final boolean[] buttons = new boolean[NUM_BUT];
    private static final boolean [] lastButtons= new boolean[NUM_BUT];
    private static int x=-1,y=-1;
    private static int lastX=x,lastY=y;
    private static boolean moving;
    
     public static int getX(){
        return x;
    }
    
    public static int getY(){
        return y;
    }
    
    @Override
    public void mousePressed(MouseEvent e){
        buttons[e.getButton()]=true;
    }
    
    @Override
    public void mouseReleased(MouseEvent e){
        buttons[e.getButton()]=false;
    }
    
   public static boolean isMoving(){
       return moving;
   }
    
    @Override
    public void mouseMoved(MouseEvent e){
       x =e.getX();
        y =e.getY();
        
        
        moving=true;
    }
    
    public static void update(){

        for(int i=0;i<NUM_BUT;++i){
            lastButtons[i]=buttons[i];
        }
        
        if(x==lastX && y==lastY)moving=false;
        lastX=x;
        lastY=y;
    }
    
    public static boolean isDown(int button){
        return buttons[button];
    }
    
    public static boolean wasPressed(int keyCode){
        return isDown(keyCode) && !lastButtons[keyCode];
    }
    
    public static boolean wasReleased(int keyCode){
        return !isDown(keyCode) && lastButtons[keyCode];
    }
}
