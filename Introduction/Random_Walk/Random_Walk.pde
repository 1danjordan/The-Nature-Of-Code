Walker w;

void setup() {
  
  size(640, 360);
  
  //create a walker object
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}
