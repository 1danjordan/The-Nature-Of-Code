Mover[] movers = new Mover[10];
float xoff, yoff, w, m, coef;

void setup(){
  
  size(640,360);
  for(int i = 0; i < 10; i++) {
  movers[i] = new Mover();
  }
  xoff = 0;
}

void draw(){
  background(0);
  
  PVector wind = new PVector(map(noise(xoff), 0, 1, -0.1, 0.1), 0);

  
  for(int i = 0; i < movers.length; i++){
    
    //Let coef be the friction coefficient
    //Take velocity, reverse it, normalize and multiply be the coef
    //This example constantly applies a small amount of friction
    // to the ball so we might imagine it to be air resistance
    coef = 0.01;
    PVector friction = movers[i].velocity.get();
    friction.mult(-1);
    friction.normalize();
    friction.mult(coef);
    
    m = movers[i].mass;
    PVector gravity = new PVector(0,0.1*m);
    
    movers[i].applyForce(friction);
    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);
    
    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }   
    xoff += 0.01;
    yoff += 0.01;
}
