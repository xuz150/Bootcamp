int numberLines = 100;
int [] lineX1 = new int[numberLines];
int [] lineY1 = new int[numberLines];
int [] lineX2 = new int[numberLines];
int [] lineY2 = new int [numberLines];

color [] baseColor = new int[numberLines];
color [] drawColor = new int [numberLines];

void setup(){
  size(700, 700);
  background(255);
  
  for(int i = 0; i<numberLines; i++){
  baseColor[i] = color(random(255), random(255), random(255)); 
  drawColor [i] = color(baseColor[i]);
  }
  
}


void draw(){
  for(int i = 0; i<numberLines; i++){
    stroke(drawColor[i]);
    line(lineX1[i], lineY1[i], lineX2[i], lineY2[i]);
  }
  
}