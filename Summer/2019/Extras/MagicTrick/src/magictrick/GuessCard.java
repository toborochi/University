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


public class GuessCard extends Applet implements ActionListener{

    
    int iter=0,col=-1;
    private SpriteSheet spriteSheet;
    ArrayList<Integer> cards = new ArrayList<>();
    
    ArrayList<Integer> c1 = new ArrayList<>();
    ArrayList<Integer> c2 = new ArrayList<>();
    ArrayList<Integer> c3 = new ArrayList<>();
    
    Button col1,col2,col3;
    
    public void randomSeed(){
        
        while(cards.size()<21){
        Random rnd = new Random();
            int seed = rnd.nextInt(52);
            if(!cards.contains(seed)){
                 cards.add(seed);
            }
           
        }
       
    }
    
    
     
    @Override
    public void init() {
        try{
        //File f = new File("cardsMagic.png");
        BufferedImage sheet = ImageIO.read(getClass().getResourceAsStream("/cardsMagic.png"));
        spriteSheet  = new SpriteSheetBuilder().
                    withSheet(sheet).
                    withColumns(13).
                    withRows(4).
                    withSpriteCount(52).
                    build();
        }catch(Exception e){
        }
        
        randomSeed();
        
        
        col1 = new Button("1");
        col2 = new Button("2");
        col3 = new Button("3");
        
        col1.addActionListener(this);
        col2.addActionListener(this);
        col3.addActionListener(this);
        
        col1.setBounds(32,248,32,32);
        col2.setBounds(96,248,32,32);
        col3.setBounds(160,248,32,32);
        
        add(col1);
        add(col2);
        add(col3);
        
        setLayout(new BorderLayout());
        resize(224,384);
        
    }
    
    @Override
    public void actionPerformed(ActionEvent e) {
        if(iter<3){
            
            //Borramos toda la lista
            cards.removeAll(cards);
            
            if(e.getSource()==col1){
                
                cards.addAll(c2);
                cards.addAll(c1);
                cards.addAll(c3);
                col=0;
                iter++;
            }else
            if(e.getSource()==col2){
                
                cards.addAll(c1);
                cards.addAll(c2);
                cards.addAll(c3);
                col=1;
                iter++;
             }else
            if(e.getSource()==col3){
                
                cards.addAll(c1);
                cards.addAll(c3);
                cards.addAll(c2);
                col=2;
                iter++;
            }
            c1.removeAll(c1);
            c2.removeAll(c2);
            c3.removeAll(c3);
            repaint();
            System.out.println(col);
        }
            
    }
    
    @Override
    public void paint(Graphics g){
        drawCenteredString("Choose a card and select a column:", 224, 48, g);
        
        int j=0;
        for(int i=0;i<cards.size();++i){
            int Row = i / 3; 
            int Column = i % 3;
            
            switch(Column){
                case 0:
                    c1.add(cards.get(i));
                    break;
                case 1: 
                    c2.add(cards.get(i));
                    break;
                case 2: 
                    c3.add(cards.get(i));
                    break;
            }
            g.drawImage(spriteSheet.getSprite(cards.get(i)), 32 + Column*64 , 48+24*Row , this); 
            
        }
        
        if(iter==3){
             drawCenteredString("Your card is:", 224, 600, g);
             g.drawImage(spriteSheet.getSprite(cards.get(10)), 96 , 320 , this); 
            
        
        }
                       
    }
    
   public void drawCenteredString(String s, int w, int h, Graphics g) {
    FontMetrics fm = g.getFontMetrics();
    int x = (w - fm.stringWidth(s)) / 2;
    int y = (fm.getAscent() + (h - (fm.getAscent() + fm.getDescent())) / 2);
    g.drawString(s, x, y);
  }

}
