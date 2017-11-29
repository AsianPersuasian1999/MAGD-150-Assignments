import processing.pdf.*;

 //these are meant to be subheadings
  String[] headlines = {
    "One night makes all the difference.",
    "You shouldn't bend for other people.",
    "Reality can be colder than the worst winters.",
    "You don't know fear until you forget your past.",
  };

PFont f;// Determines what the global font is
float x; //Determines the location
int index = 0;
PFont timesNewRoman;
PFont sourceCodeBold;

String a = "DarkWolf Productions Presents:";
String b = "Renaissance of The Dog Days";

void setup(){
  size(600,800);
f=createFont("Georgia", 10);
x=width;

 printArray(PFont.list());
  sourceCodeBold = createFont("Rockwell", 25, true);
  timesNewRoman = createFont(PFont.list()[352], 30, true);
 println("a's length: " + a.length());
  println("b's length: " + b.length());

beginRecord(PDF, "output.pdf");
}

void draw(){
    background(5);
  
  textAlign(CENTER, CENTER);
  textFont(sourceCodeBold);
  fill(255, 0, 0);
  // The title is set to be red and bold
  text(a.toUpperCase(), width / 2.0, 20);
 
  textAlign(BOTTOM,CENTER);
  textFont(timesNewRoman);
  fill(310,330,10);
  text(b.toUpperCase(),80,45);

  //This should display the flashing subheadings
  textFont(f, 30);
  fill(random(200),random(200),random(250));
  textAlign (LEFT);
  text(headlines[index],x, height-20);
  x= x-2;
  float w= textWidth(headlines[index]);
  if (x<-w){
  x=width;
  index=(index+1)% headlines.length;
  
  rect(200,200,400,400);
  fill(20,20,140);
 endRecord();
}
}
  