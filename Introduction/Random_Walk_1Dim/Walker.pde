class Walker {  
  
  float x;
  int y;
  color c;
  
  //Our Walker begins in the middle of the screen
  Walker() {
    x = 0;
    y = height/2;
    c = color(255);
  }
  
  Walker(int xstart, int ystart, color tempC) {
    c = tempC;
    x = xstart;
    y = ystart;
  }
  
  void render() {
    stroke(c);
    point(x,y);
  }
  
  //Randomly move to any neighbouring pixel
  void step() {
    int stepx = int(random(3))-1;
    int stepy = int(random(3))-1;
    x += 0.25;
    y += stepy;
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
  }
}
