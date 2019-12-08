package States.FreeStates;


import Entities.Player;
import States.State;
import States.StateManager;
import java.awt.Graphics2D;
import opsis.Game;


public class GameState implements State {

    
    Player player = new Player("NaveJugador", 64, 64,opsis.Game.WIDTH/2 ,opsis.Game.HEIGHT/2);

    @Override
    public void init() {
        
    }

    @Override
    public void enter() {}

    @Override
    public void tick(StateManager stateManager) {
        player.tick();
    }

    @Override
    public void render(Graphics2D g) {
        player.render(g);
    }

    @Override
    public void exit() {
    }

    @Override
    public String getName() {
        return "level1";
    }

}