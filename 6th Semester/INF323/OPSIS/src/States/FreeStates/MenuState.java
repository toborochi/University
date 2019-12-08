
package States.FreeStates;

import opsis.Game;
import Input.KeyInput;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.event.KeyEvent;
import java.awt.event.MouseEvent;
import States.State;
import States.StateManager;
import Utils.Fonts;

public class MenuState implements State {
    private final String[]  options = {"Start","Credits","Exit"};
    public int              current = 0;
    
    @Override
    public void init(){
        
    }
    
    @Override
    public void enter(){
        
    }
    
    @Override
    public void tick(StateManager manager){
        if(KeyInput.wasPressed(KeyEvent.VK_DOWN) && current+1<options.length){
            current++;
        }
        
        if(KeyInput.wasPressed(KeyEvent.VK_UP) && current-1>=0){
            current--;
        }
        
        if(KeyInput.wasPressed(KeyEvent.VK_ENTER)){
            select(manager);
        }
    }
    
    public void select(StateManager manager){
        switch(current){
            case 0: 
                manager.setState("level1");
                break;
            case 1: 
                break;
            case 2: 
                opsis.Game.INSTANCE.stop();
                break;
        }
    }
    
    @Override
    public void  exit(){
        
    }
    
    @Override
    public String getName(){
        return "menu";
    }
    
    public void render(Graphics2D g){
        g.setColor(Color.BLACK);
        g.fillRect(0, 0, Game.WIDTH, Game.HEIGHT);
        Fonts.drawString(g, new Font("AvantGarde",Font.BOLD,72), Color.red, Game.TITTLE,48, 200);
            
        for(int i=0;i<options.length;++i){
            if(i==current){
                
                Fonts.drawString(g, new Font("AvantGarde",Font.BOLD,28), Color.YELLOW, options[i], 48, 250+i*22 );
            }else{
                Fonts.drawString(g, new Font("AvantGarde",Font.PLAIN,24), Color.WHITE, options[i], 48,250+i*22);
            }
                
        }
    }

}