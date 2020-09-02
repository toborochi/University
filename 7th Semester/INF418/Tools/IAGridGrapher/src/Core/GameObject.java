/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Core;


import Input.KeyInput;
import java.awt.Graphics2D;
import iagridgrapher.Game;

public abstract class GameObject extends Thread{
    
    public String tag ="";
    public int id=-1;
    public boolean destroy=false;
    
    public abstract void render(Graphics2D g);
    
    public abstract void tick();
    
    @Override
    public void run(){
        
        double target = 60.0;
        double nsPerTick = 1000000000.0 / target;
        long lastTime = System.nanoTime();
        long timer = System.currentTimeMillis();
        double unprocessed = 0.0;

        boolean canRender = false;

        while (iagridgrapher.Game.running && !destroy) {
            long now = System.nanoTime();
            unprocessed += (now - lastTime) / nsPerTick;
            lastTime = now;

            if (unprocessed >= 0.5) {
                tick();
                unprocessed=0;
                canRender = true;
            } else canRender = false;

            try {
                Thread.sleep(1);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

           

        }
        //System.out.println("TERMINO GAMEOBJECT");
    }
}
