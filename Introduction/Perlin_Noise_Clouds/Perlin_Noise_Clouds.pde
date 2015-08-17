//Simulate clouds textures with Perlin noise

size(500,500);
loadPixels();

float perlx = 0;
for (int x = 0; x < width; x++) {
  float perly = 0;
  
  for (int y = 0; y < height; y++) {
    
    float bright = map(noise(perlx, perly), 0, 1, 0, 255);
    pixels[x+y*width] = color(bright);
    
    perly += 0.005;
  }
  
  perlx += 0.01;
}
updatePixels();
