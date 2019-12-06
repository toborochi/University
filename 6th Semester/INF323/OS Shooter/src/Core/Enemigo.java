/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Core;

import os.shooter.OSShooter;
import rendering.Sprite;
import rendering.SpriteSheet;
import rendering.Texture;

/**
 *
 * @author Asus
 */
public class Enemigo extends Thread {
    
    private Municion m;
        private SpriteSheet sheet;
    private Sprite sprite;
    public Enemigo(){
        sheet = new SpriteSheet(new Texture("NAVE"),88,92);
        sprite = new Sprite(sheet,1,1);
    }
    public double x = 0,y=0;
    double angulo = 0;
    
    boolean running = true;
    
   
    boolean shoot = false;
    private void tick(){
        
        if(angulo>300 && !shoot){
            
            m= new Municion();
            m.start();
            shoot=true;
        }
        
        
        x =  Math.cos(Math.toRadians(angulo))*20 ;
        y =  Math.sin(Math.toRadians(angulo))*20 ;
     
        angulo+=5;
        angulo%=360;
        /*if(x>300){
            running=false;
        }*/
    }
  
    
    @Override
    public void run(){
        double target = 60.0;
        double nsPerTick = 1000000000.0 / target;
        long lastTime = System.nanoTime();
        long timer = System.currentTimeMillis();
        
        int fps = 0; // fps: Frames Per Second
        int tps = 0; // tps: Ticks Per Second
        
        boolean canRender = false;
        double unprocess = 0.0;
        
        
        while(OSShooter.running){
            long now = System.nanoTime();
            unprocess += (now-lastTime)/nsPerTick;
            lastTime=now;
            
            if(unprocess>=1.0){
                tick();
             
                unprocess--;
                tps++;
                canRender=true;
            }else
            {
                canRender=false;
            }
            
            try{
                Thread.sleep(1);
            }catch(InterruptedException e){
                e.printStackTrace();
            }
            
            if(canRender)
            {
                fps++;
            }
            
            if(System.currentTimeMillis()-1000  > timer){
                timer+=1000;
                //System.out.printf("FPS %d | TPS %d\n",fps,tps);
                fps = tps = 0;
            }
        }
        System.out.println("FINALIZO EL THREAD");
        
    }
}
