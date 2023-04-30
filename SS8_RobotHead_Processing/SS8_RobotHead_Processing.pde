//oriagianal skeatch from SS3_Assemble RobotHead

float y = 0;
float x = 0;


float y2 = 0;
float x2 = 0;
color ccolor = color (255,255,255);

int val=0; //to send over Serial

import processing.serial.*;  //import Serial library

Serial myPort;  // create object from Serial class

void setup() {
  size(700, 700);
  rectMode (CENTER);


  //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[4]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
}

void draw() {
  background(ccolor);
  for(int x2 = 10; x2<=width; x2+=55){
  for(int y2 = 10; y2<=height; y2+=35){
fill(0,128,255);
rect(x2,y2,50,50);
ellipse(x2,y2,30,30);
}
}
fill(ccolor);
rect(width/2,height/2,100,100);


if (mouseX > width/2 -25 && mouseX < width/2 + 25 && mouseY >height/2 -25 && mouseY <height/2 + 25) {

for (int x=0; x<=width; x+=15){
        fill(255);
        ellipse (x, y, 30, 30);
        
}
for(int y =0; y<=height; y+=15){
fill(255);
ellipse (x, y, 30, 30); 
  }
x+=1;
y+=0.8;
}

/*if(x >= 1 && y >= 1){
  val = 0;
myPort.write(val);
}*/

  if(x >= 320){
  //left eyes
ellipse(320,350,30,30);
fill(0);
ellipse(320,350,20,20);
fill(255);
ellipse(320,350,10,10);

   val = 1;
   myPort.write(val);
}  if(x >= 380){
//right eyes
ellipse(380,350,30,30);
fill(0);
ellipse(380,350,20,20);
fill(255);
ellipse(380,350,10,10);

  val = 2;
  myPort.write(val);
}

if (y >= 300){
fill(204,229,255);
ellipse(300,300,30,30);
fill(204,204,255);
ellipse(400,300,30,30);
  val = 3;
  myPort.write(val);
}

if (y >= 350){
//mouth
rect(350,380,70,20);
 val = 4;
 myPort.write(val);
}

}

void mousePressed(){
ccolor = color(random(255),random(255),random(255));
}
