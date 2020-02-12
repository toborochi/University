package magictrick;

import java.applet.Applet;
import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics;
import java.awt.Rectangle;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Random;
import javax.imageio.ImageIO;
import magictrick.Sprites.SpriteSheetBuilder;
import magictrick.Sprites.SpriteSheet;


public class RPS extends Applet implements ActionListener{

    private SpriteSheet spriteSheet;
    ArrayList<Integer> cards = new ArrayList<>();
    Button b1,b2;

    
    
     
    @Override
    public void init() {
        try{
        //File f = new File("cardsMagic.png");
        BufferedImage sheet = ImageIO.read(getClass().getResourceAsStream("/dice.png"));
        spriteSheet  = new SpriteSheetBuilder().
                    withSheet(sheet).
                    withColumns(6).
                    withRows(2).
                    withSpriteCount(12).
                    build();
        }catch(Exception e){
        }
        b1= new Button("Tirar");
        b2= new Button("Tirar");
        
        b1.setBounds(80,128,64,32);
        b2.setBounds(240,128,64,32);
            add(b1);
            add(b2);
        setLayout(new BorderLayout());
        resize(400,200);
    
    }
    
    @Override
    public void actionPerformed(ActionEvent e) {
        
    }
    
    @Override
    public void paint(Graphics g){
         drawCenteredString("New Match:", 400,30, g);
           g.drawImage(spriteSheet.getSprite(0), 64 , 32 , this); 
           g.drawImage(spriteSheet.getSprite(1), 192+32 , 32 , this); 
    }
    
      public void drawCenteredString(String s, int w, int h, Graphics g) {
    FontMetrics fm = g.getFontMetrics();
    int x = (w - fm.stringWidth(s)) / 2;
    int y = (fm.getAscent() + (h - (fm.getAscent() + fm.getDescent())) / 2);
    g.drawString(s, x, y);
  }

    


}
