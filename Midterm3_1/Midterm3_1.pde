PImage map;
int countriesX[] = {761, 294, 503, 866, 834, 506, 526, 541, 524};
//int countriesY[] = {289, 271, 237, 284, 280, 248, 252, 235, 262};
int countriesY[] = {342, 320, 280, 336, 331, 293, 298, 278, 310};
float beginX;
float beginY;
float endX;
float endY;
float distX;
float distY;
float x;
float y;

float exponent = 4;
float step=0.005;
float pct = 0.0;

void setup(){
  //size(1027, 550);
  size(1027, 650);
  //map = loadImage("map.jpg");  
  map = loadImage("map2.jpg");  
  noStroke();
  background(map);
}
 

void draw(){
  
  pct += step;
  if(pct<1.0){
    for(int i = 1; i<9; i++){
    x = countriesX[0] + (pct*(countriesX[i]-countriesX[0]));
    y = countriesY[0] + (pow(pct, exponent)* (countriesY[i]-countriesY[0]));
  //}
  //for(int i = 1; i< 9; i++){
    fill(255,0, 0);
    ellipse (x, y, 2, 2);
    }
  }   
}