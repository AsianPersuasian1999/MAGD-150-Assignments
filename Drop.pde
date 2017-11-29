class Drop{
float a= random(width);
float b = random(-600,-200);
float c = random(0,20);
float len = map(c,0,20, 5,25);
float bspeed = map(c,0,20,5,10);
//bspeed affects how fast the rain will fall

void fall(){
  b = b + bspeed;
  float grav = map(c,0,20,0,0.2);
  bspeed = bspeed+grav;
  if (b > height) {
    b = random(-600,-200);
    bspeed = map(c,0,20,5,10);
    //map function will made some raindrops appear closer and others further away
}
}
void show(){
  float thick = map(c,0,20,1,2);
  strokeWeight(thick);
  stroke(80,100,150);
  line(a,b,a+2,b+len);
  //This is the rain being formed
}
}