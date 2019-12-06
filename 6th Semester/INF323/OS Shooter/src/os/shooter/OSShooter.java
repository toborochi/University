/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package os.shooter;

import Core.Enemigo;
import Input.KeyInput;
import java.awt.Canvas;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.awt.image.BufferStrategy;
import javax.swing.JFrame;
import rendering.SpriteSheet;
import rendering.Texture;
import rendering.Sprite;
import Input.KeyInput;
import Input.MouseInput;
import java.awt.event.KeyEvent;
import java.awt.event.MouseEvent;

/**
 *
 * @author Asus
 */
public class OSShooter extends Canvas implements Runnable{

    public static final String TITULO = "OS Shooter";
    public static final int WIDTH = 720,HEIGHT = WIDTH / 4*3;
    

    public static boolean running;
    
    private Texture texture,t2;
    private SpriteSheet sheet,sheet2;
    private Sprite sprite,sprite2,sprite3,sprite4,sprite5;
    private double sX=200,sY=200;
    
    private Enemigo enem = new Enemigo();
      private Enemigo enem2 = new Enemigo();
      private Enemigo enem3 = new Enemigo();
      private Enemigo enem4 = new Enemigo();
      
    public OSShooter(){
        texture = new Texture("star");
        t2 = new Texture("star");
        sheet = new SpriteSheet(new Texture("NaveJugador"),64,64);
        sheet2 = new SpriteSheet(new Texture("NaveEnemiga"),64,64);
        
        sprite = new Sprite(sheet,1,1);
        
        sprite2 = new Sprite(sheet2,1,1);
        sprite3 = new Sprite(sheet2,1,1);
        sprite4 = new Sprite(sheet2,1,1);
        sprite5 = new Sprite(sheet2,1,1);
        
        
        
        addKeyListener(new KeyInput());
        MouseInput mi= (new MouseInput());
        addMouseListener(mi);
        addMouseMotionListener(mi);
    }
    
    // Started
    private void start(){
        
        if(running)return;
        running =true;
        new Thread(this,"OSShooter-Thread").start();
        
       
        enem.start();
        enem2.start();
        enem3.start();
        enem4.start();
    }
    
    double angle = 0;
    private void tick(){
       if(KeyInput.isKeyDown(KeyEvent.VK_D) || KeyInput.isKeyDown(KeyEvent.VK_RIGHT)){
           sX+=5;
       }
       if(KeyInput.isKeyDown(KeyEvent.VK_A) || KeyInput.isKeyDown(KeyEvent.VK_LEFT)){
           sX-=5;
       }
       if(KeyInput.isKeyDown(KeyEvent.VK_S) || KeyInput.isKeyDown(KeyEvent.VK_DOWN)){
           sY+=5;
       }
       
       if(KeyInput.isKeyDown(KeyEvent.VK_W) || KeyInput.isKeyDown(KeyEvent.VK_UP)){
           sY-=5;
       }
       
       if(KeyInput.isKeyDown(KeyEvent.VK_F)  && MouseInput.isMoving()){
           System.out.println("X: "+MouseInput.getX() + " Y: "+MouseInput.getY());
       }
       
       /*
       if(MouseInput.isDown(MouseEvent.BUTTON1)){
           System.out.println("UNO");
       }
       
       if(MouseInput.wasPressed(MouseEvent.BUTTON3)){
           System.out.println("DOS");
       }*/
    }
    
  
    private void render(){
        BufferStrategy bs = getBufferStrategy();
        if(bs==null)
        {
            // Triple Buffer
            createBufferStrategy(3);
            return;
        }
        Graphics g = bs.getDrawGraphics();
        g.setColor(new Color(40,40,80));
        g.fillRect(0, 0, WIDTH, HEIGHT);
        
        
        
        //texture.render(g, 200, 200);
        //t2.render(g, 150, 150);
        sprite.render(g, sX, sY);
        
        sprite2.render(g, 128 +enem.x,128+ enem.y);
        sprite3.render(g, 256 + enem2.x,64+enem2.y);
        sprite4.render(g, 384 +enem3.x,128+ enem3.y);
        sprite5.render(g, 512 + enem4.x,64+enem4.y);
        
        g.dispose();
        bs.show();
    }
    
    // Main Loop
    @Override
    public void run(){
        requestFocus();
        double target = 60.0;
        double nsPerTick = 1000000000.0 / target;
        long lastTime = System.nanoTime();
        long timer = System.currentTimeMillis();
        
        int fps = 0; // fps: Frames Per Second
        int tps = 0; // tps: Ticks Per Second
        
        boolean canRender = false;
        double unprocess = 0.0;
        
        while(running)
        {
            long now = System.nanoTime();
            unprocess += (now-lastTime)/nsPerTick;
            lastTime=now;
            
            if(unprocess>=1.0){
                tick();
                KeyInput.update();
                MouseInput.update();
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
                //Aca RENDERIZAMOS todo
                render();
                fps++;
            }
            
            if(System.currentTimeMillis()-1000  > timer){
                timer+=1000;
                //System.out.printf("FPS %d | TPS %d\n",fps,tps);
                fps = tps = 0;
            }
            
        }
        
         System.exit(0);
    }
    
    private void stop(){
        if(!running)return;
        running = false;
       
    }
    
    public static void main(String[] args) {
        
        // Preambulo a Iniciar
        /////////////////////////////////////////////////////////
        OSShooter game = new OSShooter();
        JFrame frame = new JFrame(TITULO);
        frame.add(game);
        frame.setSize(WIDTH,HEIGHT);
        frame.setResizable(false);
        frame.setFocusable(true);
        frame.addWindowListener(new WindowAdapter(){
            @Override
            public void windowClosing(WindowEvent e){
                System.err.println("EXIT!");
                game.stop();
            }
        });
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
        frame.requestFocus();
        
        /////////////////////////////////////////////////////////
        game.start();
    }
    
}
