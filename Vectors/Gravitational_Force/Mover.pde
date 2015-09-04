class Mover {
  
  PVector location, mouse, acceleration, velocity;
  float topspeed, radius; 
  
  Mover() {
    
    location = new PVector(random(width), random(height));
    velocity = new PVector(0,0);
    topspeed = 15;
    radius = random(25);

  }
  
  void update() {
    
    mouse = new PVector(mouseX, mouseY);
    acceleration = PVector.sub(mouse, location);
    
    acceleration.normalize();
    acceleration.mult(acceleration.mag());
    
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
    
  }
  
  void display() {
    stroke(0);
    strokeWeight(2);
    fill(175,200);
    ellipse(location.x, location.y, radius, radius);
  }
}
