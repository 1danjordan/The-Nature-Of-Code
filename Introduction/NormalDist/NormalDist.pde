Random generator;

void setup() {
  size(600, 400);
  generator = new Random();
}

void draw() {
  float num = (float) generator.nextGaussian();
  float sd = 60;
  float mean = 300;
  
  float x = num*sd + mean;
  noStroke();
  fill(255,10);
  ellipse(x, 200, 16, 16);
}

