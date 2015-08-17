// A random walker object!

class Walker {
  float x, y;
  
  float tx, ty;

  Walker() {
    x = width/2;
    y = height/2;
    
    tx = 0;
    ty = 1000;
  }

  void render() {
    stroke(0);
    strokeWeight(2);
    point(x, y);
  }

  // Use Gaussian to move the walker around the screen
  void step() {
    x += map(noise(tx), 0, 1, -1, 1);
    y += map(noise(ty), 0, 1, -1, 1);
    
    tx += 0.01;
    ty += 0.01;
    
    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
  }
}
