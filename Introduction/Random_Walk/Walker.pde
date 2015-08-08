//Random Walk

//Declaring the Walker class
class Walker {
  int x, y;
  
  //Our Walker begins in the middle of the screen
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  //Walker is displayed as a point at (x,y)
  void display() {
    stroke(0);
    point(x,y);
  }
  
  //step() determines whether Walker goes l, r, u or d
  void step() {
    int choice = int(random(4));
    
    if (choice == 0) {
      x++;
    } else if (choice == 1) {
      x--;
    } else if (choice == 2) {
      y++;
    } else {
      y--;
    }
  }
}
