class Plant{
  float plantHeight;
  int leafs;
  color plantColor;
  float x;
  
  Plant(float tempX){
    x = tempX;
  }
  
  void display(color tempColor, int tempLeafNum, float tempYHeight){
    plantHeight = tempYHeight;
    fill(tempColor);
    rect(x, plantHeight, 10, 500);
    
    leafs = tempLeafNum;
    
    for(int i = 0; i < leafs; i++){
      float ly = plantHeight + 30*i;
      ellipse(x, ly, 50+(i*5), 20);
    }
  }
}