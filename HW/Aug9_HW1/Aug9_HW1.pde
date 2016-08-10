PVector position;
float theta;
float a = 6;
float b = 9;
int w, h;

void setup(){
  size(500, 500);
  background(0);
  
  position = new PVector (0,0);
}

void draw(){
  
  position.x = a*cos(theta);
  position.y = b*sin(theta);
  
  
  a += 0.3;
  b -= 0.3;
  theta += 1;
  
  noStroke();
  fill(random(255), random(255), random(255));
  rect(position.x + width/2, position.y + height/2, abs(position.x), abs(position.y));
  
}