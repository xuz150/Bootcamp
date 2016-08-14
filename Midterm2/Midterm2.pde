PImage map;
int countriesX[] = {761, 294, 503, 866, 834, 506, 526, 541, 524};
int countriesY[] = {289, 271, 237, 284, 280, 248, 252, 235, 262};
PVector hometown;
PVector destinations;
PVector path;
int i;

float exponent = 4;
float step=0.01;
float pct = 0.0;

void setup(){
  size(1027, 550);
  map = loadImage("map.jpg");
  
  hometown = new PVector(countriesX[0], countriesY[0]);
  destinations = new PVector(countriesX[i], countriesY[i]);
  path = new PVector(0, 0);
}

void draw(){
  background(map);
  pct += step;
  if(pct<1.0){
    for(i = 1; i <9; i++){
      path.x = 
      
      
    
}