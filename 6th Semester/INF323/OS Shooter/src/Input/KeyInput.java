/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Input;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;

/**
 *
 * @author Asus
 */
public class KeyInput extends KeyAdapter{
    
    private static final int NUM_KEYS = 256;
    private static final boolean[] keys = new boolean[NUM_KEYS];
    private static final boolean[] lastKeys = new boolean[NUM_KEYS];
    
    @Override
    public void keyPressed(KeyEvent e){
        keys[e.getKeyCode()]=true;
        
    }
    
     @Override
    public void keyReleased(KeyEvent e){
        keys[e.getKeyCode()]=false;
    }
    
    public static void update(){
        for(int i=0;i<NUM_KEYS;++i){
            lastKeys[i]=keys[i];
        }
    }
    
    public static boolean wasPressed(int keyCode){
        return isKeyDown(keyCode) && !lastKeys[keyCode];
    }
    
    public static boolean wasReleased(int keyCode){
        return !isKeyDown(keyCode) && lastKeys[keyCode];
    }
    
    public static boolean isKeyDown(int keyCode){
        return keys[keyCode];
    }
    
   
}
