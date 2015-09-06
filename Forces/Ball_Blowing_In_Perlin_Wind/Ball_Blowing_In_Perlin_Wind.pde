Mover m;
float xoff, yoff, w;

void setup() {
  
  size(640,360);
  m = new Mover(); 
  xoff = 0;
}

void draw() {
  background(255);
  
  PVector wind = new PVector(map(noise(xoff), 0, 1, -0.1, 0.1), 0);
  PVector gravity = new PVector(0,0.1);
  m.applyForce(wind);
  m.applyForce(gravity);
  xoff += 0.01;
  yoff += 0.01;

  m.update();
  m.display();
  m.checkEdges();

}
