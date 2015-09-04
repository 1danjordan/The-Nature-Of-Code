class Car {
  PVector location, velocity, acceleration;
  PVector up = new PVector(0,-0.001);
  PVector down = new PVector(0,0.001);
  PVector left = new PVector(-0.001,0);
  PVector right = new PVector(0.001,0);
  float[] chars;
  float topspeed;

  Car() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(random(-2,2), random(-2, 2));
    acceleration = new PVector(-0.0, 0.0);
    topspeed = 5;
  }
  
  void update(){  
    velocity.add(acceleration);
    location.add(velocity);  
    velocity.limit(topspeed);
  }
  
  void keyPressed() {
    if(key == CODED) {
      if(keyCode == UP) {
        acceleration.add(up);
      } else if(keyCode == DOWN) {
        acceleration.add(down);
      } else if(keyCode == RIGHT) {
        acceleration.add(right);
      } else if(keyCode == LEFT) {
        acceleration.add(left);
      } else {}
    }
  }
  
  void setChars() {
    chars = acceleration.array();
  }
    
/*    void keyReleased() {
      if(arrow.mag() > 0) {
        arrow.set(0,0);
      }
    }
*/
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 16, 16);
  }
  
  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
    
      if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
}
