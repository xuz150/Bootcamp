PImage map;
int countriesX[] = {911, 156, 511, 1013, 974, 524, 545, 550, 541};
int countriesY[] = {211, 167, 112, 179, 178, 140, 136, 120, 149};
String countryNames[] = {"China", "USA", "UK", "Japan", "Korea", "France", "Switzerland", "Germany", "Monaco"};
int c =1;
//c is counter


float beginX;
float beginY;
float endX;
float endY;
float distX;
float distY;
float x;
float y;

float exponent = 2;
float step=0.01;
float pct = 0.0;

int state = 0;
PFont f;

import ddf.minim.*;

Minim minim;
AudioPlayer song;

void setup(){
  size(1250, 578);
  f = loadFont("ArialNarrow-Bold-48.vlw" );
  map = loadImage("map.png");  
  noStroke();
  background(map);
  minim = new Minim(this);
}
 

void draw(){
 if (keyPressed == true){
   state = 1;
   fill(255, 0,0);
   textFont(f, 18);
   text(countryNames[0], countriesX[0]-13, countriesY[0]-8);

 }
   
  if(state == 1){
    pct += step;
    if(pct<1.0){
      x = countriesX[0] + (pct*(countriesX[c]-countriesX[0]));
      y = countriesY[0] + (pow(pct, exponent)* (countriesY[c]-countriesY[0]));
      fill(0);
      ellipse (x, y, 1, 1);
      text(countryNames[c], countriesX[c], countriesY[c]);
      song = minim.loadFile("airland.mp3");
      song.play(0);
      }
    }
}

void mousePressed(){
  pct = 0.0;
  c += 1;
}