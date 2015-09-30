class Walker {  
  
  float x, y, sigma, offset;
  color c;
  
  //Our Walker begins in the middle of the screen
  Walker() {
    x = 0;
    y = 0;
    offset = (height / 2); 
    sigma = 5;
    c = color(255);
  }
  
  Walker(int xstart, int ystart, color tempC) {
    c = tempC;
    x = xstart;
    offset = xstart;
  }
  
  void render() {
    stroke(c);
    point(x,y);
  }
  
  //Randomly move to any neighbouring pixel
  void step() {

    float stepy = randomGaussian() * sigma;
    x += 0.25;
    y = (y/2) + stepy;
    translate(0, height/2);
    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
  }
}
