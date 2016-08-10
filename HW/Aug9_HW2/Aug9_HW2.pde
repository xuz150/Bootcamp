PVector positionA;
PVector positionB;
float theta;
float a = 5;

void setup(){
  size(500, 500);
  background(0);
  
  positionA = new PVector (0,0);
  positionB = new PVector (0,0);
  
}

void draw(){
  
  positionA.x = a*cos(theta);
  positionA.y = a*sin(theta);
  positionB.x = -a*sin(theta);
  positionB.y = -a*cos(theta);
  
  a += 0.5;
  theta += 0.1;
  
  stroke(100, random(255), random(255));
  line(width/2 + positionA.x, height/2 + positionA.y, width/2 + positionB.x, height/2 + positionB.y);
}