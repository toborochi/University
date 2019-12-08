package Entities;

import Input.KeyInput;
import Rendering.Texture;
import java.awt.event.KeyEvent;


public class Player extends Entity {
    
    public double speed = 5;
    
    public Player(String spriteName,int width,int height,double x,double y){
        super(spriteName, width, height, x, y);
    }
    
    @Override 
    public void tick(){
        
        if(KeyInput.isDown(KeyEvent.VK_D)){
            setX(x+speed);
        }
        if(KeyInput.isDown(KeyEvent.VK_A)){
            setX(x-speed);
        }
        if(KeyInput.isDown(KeyEvent.VK_W)){
            setY(y-speed);
        }
        if(KeyInput.isDown(KeyEvent.VK_S)){
            setY(y+speed);
        }
        
        if(KeyInput.wasPressed(KeyEvent.VK_SPACE)){
            System.out.println("DISPARO!!");
        }
        
        //System.out.println(getX()+" "+getY());
        
        if(getX()<=0)setX(0);
        if(getX()>=opsis.Game.WIDTH)setX(opsis.Game.WIDTH);
        if(getY()<=0)setY(0);
        if(getY()>=opsis.Game.HEIGHT)setY(opsis.Game.HEIGHT);   
    }
}
