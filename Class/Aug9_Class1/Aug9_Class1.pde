float x;
float y;
float xSpeed;
float ySpeed;

float r, g, b;

int radius;

void setup(){
  size(500, 500);
  background(0);
  
  xSpeed = 5;
  ySpeed = 6;
  smooth();
  x = width/2;
  y = height/2;
  
  radius = 100;
}

void draw(){
  fill(0, 10);
  rect(0, 0, width, height);
  
  x = x + xSpeed;
  y = y + ySpeed;
  
  if(x < radius/2 || x > width - radius/2){
    xSpeed = xSpeed*-1;
  }
  
  if(y < radius/2 || y > height - radius/2){
    ySpeed = ySpeed*-1;
  }
  
  if( x <= radius/2 || x >= width - radius/2){
    r = random(255);
    g = random(255);
    b = random(255);
  }
  
    if( y <= radius/2 || y >= width - radius/2){
    r = random(255);
    g = random(255);
    b = random(255);
  }
  
  noStroke();
  fill(r, g, b);
  ellipse(x, y, radius, radius);
  
}