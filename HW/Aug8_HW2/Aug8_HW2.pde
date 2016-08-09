void setup(){
  size(500, 500);
  background(0);
}

void draw(){
  stroke(random(255), random(255), random(255));
    
    for(int y = 0; y <= height; y += 50){
    for(int x = 0; x <= width; x += 50){
      line(x, y, 250, 250);
    }
  }
}