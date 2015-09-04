import gifAnimation.*;

GifMaker gifExport;
int frames = 0;
int totalFrames = 500;

Mover[] movers = new Mover[20];
  
void setup() {
    size(800,800);
    noCursor();
    gifExport = new GifMaker(this, "export.gif", 100);
    gifExport.setRepeat(0); // make it an "endless" animation
    
    for(int i = 0; i < movers.length; i ++){
      movers[i] = new Mover();
    }
}
  
void draw() {
    background(0);
    for(int i = 0; i < movers.length; i++){
    movers[i].update();
    movers[i].display();
    }
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
