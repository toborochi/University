package States;

import java.awt.Graphics2D;
import java.util.HashMap;
import java.util.Map;

public class StateManager {

    private Map<String, State> map;
    private State              currentState;

    public StateManager() {
        map = new HashMap<String, State>();
    }
    
    public void addState(State state){
        map.put(state.getName().toUpperCase(), state);
        state.init();
        if(currentState == null){
            state.enter();
            currentState = state;
        }
    }
    
    public void setState(String name){
        State state = map.get(name.toUpperCase());
        if(state == null){
            System.err.println("No existe Estado: " + state);
            return;
        }
        currentState.exit();
        state.enter();
        currentState = state;
    }
    
    public void tick(double delta){
        currentState.tick(this,delta);
    }
    
    public void render(Graphics2D g){
        currentState.render(g);
    }

}