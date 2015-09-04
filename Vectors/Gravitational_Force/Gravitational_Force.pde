Mover[] movers = new Mover[20];
  
void setup() {
    size(1800,1800);
    noCursor();
    for(int i = 0; i < movers.length; i ++){
      movers[i] = new Mover();
    }
}   
  
void draw() {
    background(0);
    for(int i = 0; i < movers.length; i++){
    movers[i].update();
    movers[i].display();
    }
}
