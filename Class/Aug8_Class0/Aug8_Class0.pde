PVector v1, v2;

void setup (){
  v1 = new PVector (10, 40);
  v2 = new PVector (50, 60);
}

void draw(){
  v2.add(v1);
  println(v2);
}
  