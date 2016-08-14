Plant giselle;
Plant kitty;
Plant karla;
Plant rio;

color color1 = color(5, 255, 170);
color color2 = color(20, 25, 150);
color color3 = color(15, 255, 220);
color color4 = color(5, 200, 100);

float xRandom;

void setup(){
  size(700, 500);
  xRandom = random (100, 200);
  
  giselle = new Plant (xRandom);
  kitty = new Plant (xRandom + 100);
  karla = new Plant (xRandom +200);
  rio = new Plant (xRandom + 300);
  
  noStroke();
  ellipseMode(CENTER);
}

void draw(){
  background(170, 230, 255);
  giselle.display(color1, 6, 250);
  kitty.display(color2, 12, 50);
  karla.display(color3, 10, 150);
  rio.display(color4, 50, 75);
  
  fill(50, 250, 90);
  rect(0, 350, 700, 150);
  
}