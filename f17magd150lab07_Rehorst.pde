Drop [] drops= new Drop[1500];
void setup() {
  size(1000,500);
  for(int i= 0; i < drops.length; i++){
  drops[i]= new Drop(); 
  }
}
void draw() {
  background(0);
//the background is supposed to be pitch black because carnivals look better at night  
  PVector mouse= new PVector(mouseX, mouseY);
  PVector center= new PVector(width/2, height/2);
  mouse.sub(center);
  mouse.normalize();
  mouse.mult(200);
  translate(width/2,height/2);
  stroke(250,240,20);
  strokeWeight(20);
  line(0,0,mouse.x,mouse.y);
  line(0,0,-mouse.x,-mouse.y);
  scale(-1,1);
  line(0,0,-mouse.x,-mouse.y);
  line(0,0,mouse.x,mouse.y);  
  line(2,20,-100,400);
  stroke(50);
  fill(120,100,131);
//The lines with a -mouse.x and .y are used to make full length beams
  
  for (int i =0; i < drops.length; i++) {
  drops[i].show();
  drops[i].fall();
  }
}