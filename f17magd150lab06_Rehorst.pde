

//rainfall is to be multicolored
// background will be black

Drop [] drops= new Drop[700];

void setup(){
  size(600,400);
  for(int i= 0; i < drops.length; i++){
  drops[i]= new Drop(); 
}
}
//there should be 700 raindrops falling down

void draw(){
  background(0);
  for (int i =0; i < drops.length; i++) {
  drops[i].show();
  drops[i].fall();
}
}