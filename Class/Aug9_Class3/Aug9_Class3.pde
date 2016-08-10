float r = 50;

PVector position;
float theta;

void setup(){
  size(500, 500);
  background(0);
  
  position = new PVector (0, 0);
}

void draw(){
  //position.x = r*cos(frameCount);
  //position.y = -r*sin(frameCount);
  
  position.x = -r*cos(theta);
  position.y = -r*sin(theta);
  
  r += .2;
  theta += 0.1;
  
  
  fill(0, 255, 255);
  noStroke();
  ellipse(position.x + width/2, position.y + height/2, 5, 5);
}