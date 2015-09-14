Mover[] movers = new Mover[10];
float xoff, yoff, w, m;

void setup(){
  
  size(640,360);
  for(int i = 0; i < 10; i++) {
  movers[i] = new Mover();
  }
  xoff = 0;
}

void draw(){
  background(255);
  
  PVector wind = new PVector(map(noise(xoff), 0, 1, -0.1, 0.1), 0);

  
  for(int i = 0; i < movers.length; i++){
    m = movers[i].mass;
    PVector gravity = new PVector(0,0.1*m);
    
    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);
    
    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }   
    xoff += 0.01;
    yoff += 0.01;
}
