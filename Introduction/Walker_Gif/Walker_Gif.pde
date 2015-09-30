import gifAnimation.*;

GifMaker gifExport;
int frames = 0;
int totalFrames = 500;

Walker w;
Walker w2;
Walker w3;

void setup() {
  size(400, 200);
  gifExport = new GifMaker(this, "export.gif", 100);
  gifExport.setRepeat(0); // make it an "endless" animation
  
  //create walker object
  w = new Walker();
  w2 = new Walker(width/4, height/2, color(0, 128, 255));
  w3 = new Walker(width*3/4, height/2, color(255, 0 ,255));
  //set background to black
  background(0);
}

void draw() {
  
  //Run the walker object
  w.step();
  w.render();
  
  w2.step();
  w2.render();
  
  w3.step();
  w3.render();
  
  export();
}

void export() {
  if(frames < totalFrames) {
    gifExport.setDelay(60);
    gifExport.addFrame();
    frames++;
  } else {
    gifExport.finish();
    frames++;
    println("gif saved");
    exit();
  }
}
