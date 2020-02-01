public class GameTab extends Panel {
    public List<Button> botones = new ArrayList<>();
    
    public GameTab(ActionListener a){
        for(int i=0;i<9;++i){
            Button tmp = new Button("   ");
            tmp.addActionListener(a);
            this.add(tmp);
            botones.add(tmp);
        }
    }
}

public class TTT extends Applet implements ActionListener{
    private GameTab tablero;
    boolean turn = false;
    
    @Override
    public void actionPerformed(ActionEvent e) {
        for(int i=0;i<tablero.botones.size();++i){
            if(e.getSource()==tablero.botones.get(i) && tablero.botones.get(i).getLabel().equals(new String("   ")) ){
                tablero.botones.get(i).setLabel( ((turn)?"X":"O") );
                turn = !turn;
                break;
            }
        }
    }
    
    @Override
    public void init() {
        tablero = new GameTab(this);
        tablero.setLayout(new GridLayout(3,3));
        
        add(tablero);
    }
}
