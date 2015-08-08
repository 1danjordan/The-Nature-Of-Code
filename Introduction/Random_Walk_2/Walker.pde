class Walker {  
  
  int x, y;
  color c;
  
  //Our Walker begins in the middle of the screen
  Walker() {
    x = width/2;
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
    x += stepx;
    y += stepy;
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
  }
}
