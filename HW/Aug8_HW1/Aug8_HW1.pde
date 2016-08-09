int [] x = new int [50];
int [] y = new int [50];

void setup(){
  size(500, 500);
  background(255);
 
}

void draw(){
  background(255);
  for(int i = 0; i < 49; i++){
    x[i] = x[i+1];
    y[i] = y[i+1];
  }
  
  x[49] = mouseX;
  y[49] = mouseY;
  
  for(int i = 0; i < 50; i++){

    stroke(random(255), random(0), random(255));
    line(x[i], y[i], 250, 250);
    }
}