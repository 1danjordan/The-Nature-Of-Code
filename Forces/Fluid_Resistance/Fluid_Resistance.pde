Mover[] movers = new Mover[10];
Liquid liquid;
float xoff, yoff, w, m, coef;

void setup(){
  
  size(640,360);
  for(int i = 0; i < 10; i++) {
  movers[i] = new Mover();
  }
  xoff = 0;
  liquid = new Liquid(width/3, 0, width/3, height, 0.1);
}

void draw(){
  
  background(0);
  
  liquid.display();
  
  PVector wind = new PVector(map(noise(xoff), 0, 1, -0.5, 0.5), 0);
  
  for(int i = 0; i < movers.length; i++){
    
    if(movers[i].isInsideLiquid(liquid)){
      movers[i].drag(liquid);
    }
    
    m = movers[i].mass;
    PVector gravity = new PVector(0,0.1 * m);
    
    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);
    
    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }   
    xoff += 0.01;
    yoff += 0.01;
}


