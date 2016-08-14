PImage map;
int countriesX[] = {761, 294, 503, 866, 834, 506, 526, 541, 524};
int countriesY[] = {289, 271, 237, 284, 280, 248, 252, 235, 262};
//String countryNames[] = {"China", "USA", "UK", "Japan", "Korea", "France", "Switzerland", "Germany", "Monaco"};

float beginX;
float beginY;
float endX;
float endY;
float distX;
float distY;
float x;
float y;
float exponent = 2;
float step=0.005;
float pct = 0.0;

int state = 0;

void setup(){
  size(1027, 550);
  map = loadImage("map.jpg");  
  noStroke();
  background(map);
}
 

void draw(){
 if (mousePressed == true){
   state = 1;}
   
  if(state == 1){
    pct += step;
    if(pct<1.0){
      if (mousePressed == true){
      x = countriesX[0] + (pct*(countriesX[1]-countriesX[0]));
      y = countriesY[0] + (pow(pct, exponent)* (countriesY[1]-countriesY[0]));
      fill(0);
      ellipse (x, y, 1, 1);
      }
    }   
  }
 }