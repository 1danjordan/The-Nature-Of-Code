//1D Random walk over time
//simulating a stochastic process

//Autoregressive Schotastic Process

Walker w;

void setup() {
  size(1000, 200);
  
  //create walker object
  w = new Walker();
  //set background to black
  background(0);
}

void draw() {
  
  //Run the walker object
  w.step();
  w.render();
}
