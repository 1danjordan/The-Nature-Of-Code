Car car;
  
void setup() {
    size(640,360);
    car = new Car();
    textSize(40);
}
  
void draw() {
    background(255);
    
    car.update();
    car.keyPressed();
    car.setChars();
    //Key Released not functioning as I wanted
    //not too interested in working on it now
    //car.keyReleased();
    car.checkEdges();
    car.display();
    text(car.chars[0], 50, 50);
    text(car.chars[1], 50, 150);
    
}
