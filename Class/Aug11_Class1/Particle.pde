class Particle{
  float x;
  float y;
  
  float xSpeed;
  float ySpeed;
  
  float size;
  
  int c, r, g, b;
  
  Particle(){
    x = mouseX;
    y = mouseY;
    
    xSpeed = random(-5, 5);
    ySpeed = random(1, 5);
  }
  
  void run(){
    x = x + xSpeed;
    y = y + ySpeed;
  }
  
  void gravity(){
    ySpeed += 0.05;
  }
  
  void bounce(){
    ySpeed = -ySpeed;
  }
  
  void sideBounce(){
    xSpeed = -xSpeed;
  }
  
  void display(){
    c = (int)(abs(xSpeed)+abs(ySpeed)*10+30);
    r = 250 - c;
    g = c;
    b = c + 40;
    
    noStroke();
    fill(r, g, b);
    
    if(abs(xSpeed) > abs(ySpeed)){
      size = abs(xSpeed)*5+5;
    }else{
      size = abs(ySpeed)*5+5;
    }
    
    ellipse(x, y, size, size);
 }
}