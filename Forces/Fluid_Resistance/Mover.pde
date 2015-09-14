class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;

  Mover() {
    location = new PVector(random(width),random(height));
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    mass = random(1,10);
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
  
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(location.x,location.y, mass*2, mass*2);
  }

  void checkEdges() {

    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } else if (location.x < 0) {
      velocity.x *= -1;
      location.x = 0;
    }

    if (location.y > height) {
      velocity.y *= -1;
      location.y = height;
    }

  }
  
  boolean isInsideLiquid(Liquid liquid){
    if(location.x > liquid.x && location.x < (liquid.w + liquid.x) && location.y > liquid.y && location.y < liquid.y + liquid.h){
      return true;
    } else {
      return false;
    }
  }
  
  void drag(Liquid liquid){
    
    float speed = velocity.mag();
    float dragMag = speed * speed * liquid.c;
    
    PVector drag = velocity.get();
    drag.mult(-1);
    drag.normalize();
    drag.mult(dragMag);
    
    applyForce(drag);
  }
}
