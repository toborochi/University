package States;

import java.awt.Graphics2D;

public interface State {

    public void init();
    public void enter();
    public void tick(StateManager stateManager,double delta);
    public void render(Graphics2D g);
    public void exit();
    public String getName();
}