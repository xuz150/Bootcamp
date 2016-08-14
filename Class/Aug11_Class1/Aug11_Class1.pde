ArrayList<Particle>particles;


void setup(){
  size(800, 800);
  particles = new ArrayList<Particle>();
  smooth();
}

void draw(){
  background(255);
  
  for(int i = 0; i < particles.size(); i++){
    Particle p = particles.get(i);
    p.run();
    p.gravity();
    p.display();
  
  if(p.y > height){
  p.bounce();
  }
  
  if(p.x < 0 || p.x > width){
    p.sideBounce();
  }
  if(p.y < 0){
    particles.remove(i);
  }
 }
}
 
void mousePressed(){
  particles.add(new Particle());
}