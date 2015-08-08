Walker w;
Walker w2;
Walker w3;

void setup() {
  size(200, 400);
  
  //create walker object
  w = new Walker();
  w2 = new Walker(width/2, height/4, color(0, 128, 255));
  w3 = new Walker(width/2, height*3/4, color(255, 0 ,255));
  //set background to black
  background(0);
}

void draw() {
  
  //Run the walker object
  w.step();
  w.render();
  
  w2.step();
  w2.render();
  
  w3.step();
  w3.render();
}
