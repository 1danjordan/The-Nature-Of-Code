class Mover {
  
  PVector location, mouse, acceleration, velocity;
  float topspeed, radius; 
  int r;
  color[] palette;
  
  Mover() {
    
    location = new PVector(random(width), random(height));
    velocity = new PVector(0,0);
    topspeed = 15;
    radius = random(10, 40);
    color[] palette = {#3DBBED, #ED1D24, #F9ECD1};
    r = int(random(palette.length));
    
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
    color[] palette = {#F2F2F2, #04F2DB, #F20404, #BF0909, #D9DF3B};
    fill(palette[r]);

    ellipse(location.x, location.y, radius, radius);
/*    beginShape();
    vertex(location.x, location.y); 
    bezierVertex(50, -5, 90, 5, 50, 40); 
    vertex(location.x, location.y); 
    bezierVertex(50, -5, 10, 5, 50, 40); 
    endShape();
    */
  }
}
